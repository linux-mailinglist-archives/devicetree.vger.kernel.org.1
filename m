Return-Path: <devicetree+bounces-90754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8847E946B64
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 00:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 071CE1F21D71
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2024 22:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55FB61FF6;
	Sat,  3 Aug 2024 22:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EGHCAvI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444463F8E4
	for <devicetree@vger.kernel.org>; Sat,  3 Aug 2024 22:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722725728; cv=none; b=J7vaGJlBFCpmTVUfi7T53ch0iwzfPOCjvIznJ0yzSyHzoPKXcOXHid8WMO7F21gQ0IXmLkk7JzqV3Y7HtlZlGGcsYQVE3kebZ4ctCJuMbocbDavhcHAo3m3Y2S4RNja5xCPV78ja4p4rBWDZtKIwRqVsQpxtYp77w8JdrwUKQWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722725728; c=relaxed/simple;
	bh=Ob/lgOsw4tVEVWt237mcmK9/mG+RUXlFuY51d9q6PC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VjzVu5wNPcD+6jUb+769wLRh3K+ApNRtzAGrPunIjcEu4l7gFMC+eVIw0+JbfaYVD0lkwdp46KoE2pAlccoqVieLHMJHR8t20q3a9Yez+alPKQyAjm5u/NkSbT5igScNhYhup/gDbQwR2cHdKzxtc6XUCOuxqKZbzn3k6CcOqJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EGHCAvI7; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f040733086so106440621fa.1
        for <devicetree@vger.kernel.org>; Sat, 03 Aug 2024 15:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722725725; x=1723330525; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJvTkCcKGogempzQ6AS7OBxpnGmGQsGSl3kzHF88S1M=;
        b=EGHCAvI7A2cebhDXJrNuBzO5UyiJy4WR5vy9W0gLgAndFDIGkjvecnFO9FfXzEmmU8
         af3RcWN7XbXe1RWhFCgrntnqdVPqUX5ue6NQV3hi8AT+ArT+Lo1m6CpuPf9YMi4pwhQT
         vNprEFJd1UXaIjilxvnmiNz5ZhEpUyoEK2ZsV5EJMYzHbPBL7i9V1jO3iBt30YhHexrl
         /PBmNzQ2svHoKMe997810d3phnuXK07Faxsl5Cc0vWsoap6Lzl4aU6gCIbl7N8O0bT8U
         6wEJO7TpoenkZwaB6MRGE3N/I7ogfh8DxBsiu0YSof6FPohL3zOjH2dNInhh3mRaNmOc
         j33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722725725; x=1723330525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJvTkCcKGogempzQ6AS7OBxpnGmGQsGSl3kzHF88S1M=;
        b=A/dJxleojMzDqb0sAsF29zHlRXO85uPgG+BuySDJfP58mxRHg/0WHB76NylIwVaEor
         sY0wfFKvK4r8cROSPxTRxv9oRFH69V2+iX1RGgIbd6rjKbl1qeIL28GrL8ZlmetO1f/7
         sgJxg4v9QA7CiuktXc7w6t8l90EXpPEWqupCtgxQxTQLHtwmyTr/10bAoloispC8hMle
         MyT3/4utVRrGYNjKrhaVT3ePDuu1OmlSy06Q58tc7yoAIB3YymT6nZlmJ7iRVzYC18AJ
         VF42GjL1je/AzRHlZhPYZ76LWJiBKaZ877taLx4fqxyDnh8fA1dIPmBjzsEDl5Uo9MI2
         gjAw==
X-Forwarded-Encrypted: i=1; AJvYcCUfzAyXXv1eReu3hNcJxAC0LFgnZ4n0OlEXpuF4iXGE9HTi/bSjUQqV5V75W7YJ3R8sq6lRxAFTX8hHtp5J6ji1we7GljZX+t8Vcw==
X-Gm-Message-State: AOJu0YyON5Dfg5QvHDsNTmBlEq8VhzhuEesD7ks5QklRX+Oo1wLvSYnf
	yVWCBfBpmzl5pIAWvnlYkle3VKGccBblUaMWE8rhycp5vIp019Og8daqPA12AnfyMgMbQ7AYcoZ
	JU2uFoojb10UwsLjMfUocIFm+IgcIjUG9n5SJyA==
X-Google-Smtp-Source: AGHT+IEdpC8eTuC8LLUHFYijYUhuKdFxFgzp8L+Y5p4MBOQ0osrXIKeUIAiXufWYWdUQ/kpYHVGFuCg9ELi2J9TaDT8=
X-Received: by 2002:a2e:730a:0:b0:2ef:2b56:36b9 with SMTP id
 38308e7fff4ca-2f15aac1f60mr45347171fa.22.1722725725043; Sat, 03 Aug 2024
 15:55:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB495346246245074234D337A6BBAC2@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB495346246245074234D337A6BBAC2@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 4 Aug 2024 00:55:14 +0200
Message-ID: <CACRpkdZT1VH4isc-LCoMOMrxYM7Qr2auees7J7JwNDvTJ8ARyQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: pinconf-generic: Add "input-schmitt-microvolt"
 property
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2024 at 4:23=E2=80=AFAM Inochi Amaoto <inochiama@outlook.co=
m> wrote:

> On Sophgo CV18XX platform, threshold strength of schmitt trigger can
> be configured. As this standard property is already supported by the
> common pinconf code. Add "input-schmitt-microvolt" property in
> pincfg-node.yaml so that other platforms requiring such feature can
> make use of this property.
>
> See the previous patch discussion about why add "microvolt" suffix:
> https://lore.kernel.org/all/IA1PR20MB4953BB6E71CA3216E652E8B8BBA02@IA1PR2=
0MB4953.namprd20.prod.outlook.com/
>
> Changed for the original patch series:
> 1. add "microvolt" suffix
>
> Inochi Amaoto (2):
>   dt-bindings: pincfg-node: Add "input-schmitt-microvolt" property
>   pinctrl: pinconf-generic: Add support for "input-schmitt-microvolt"
>     property

Patches applied!

Yours,
Linus Walleij

