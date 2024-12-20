Return-Path: <devicetree+bounces-133076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDAB9F929B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFFF916DB9C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF4A2153EB;
	Fri, 20 Dec 2024 12:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Whu4t/Gi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4662153C9
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699278; cv=none; b=d8v7ZmVkcZGCanl8L/1CZbfvDEe+BqxlYdV3RxyOff9sOizKRlr7t1Zwa6GQ2RXV/WOCEFgh2hvcYmYIvVLDy3FPGfivT/eNyKouAf3b9AlA2Py2lVLO3mIQ61ZKW1l2D614ypF9mEwmwGv0WWN8YMz1ZGmcFDSYtCUFRa7UCJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699278; c=relaxed/simple;
	bh=1j+mQD0oE4PTClsZ4uL4jDtvx982MniklSfBe6bzTvw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dYRMDd0P/rCnpbgcMq64Lpv6R5w5sTSiVVRYXTVjIe0SlLqliPoO0oVsp2j9SoBDoVm7VMcabr/OG8xhxtjUewcITGzRDrDVawaWelZrQCXNnTBCVsdiDpDPwjAvdLzVEQNVAleEWFl0bF0Wsu/NCBfcrU18XN8hgl1DSdJjjUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Whu4t/Gi; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54024aa9febso2008716e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734699275; x=1735304075; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1j+mQD0oE4PTClsZ4uL4jDtvx982MniklSfBe6bzTvw=;
        b=Whu4t/GismVeO5Uz3OAiuPaalQHa4G1qtpeA4CETuwQoHghUF8TF0iFCIyUd/caM/q
         tosJXTIgRz6TUNuELAUugI6zF80UsJEGKTAK8KHKHzYOYI4U3XazU2rzQwMm39jxx4RK
         /6r3BhkHTYBQPde4aWtQO0zg5IziK62naF1LEiC2QcDgx+Ps77y6b8JsR8U/EKDLnFGL
         s9Ex++CYICpKVzn3HlHWKQcGD+J6H4Ni7iqInrhUfs+hnxKroeUEC3zRcnww6bjluKFG
         SxFmfgp7WNTsEmeoD8Wu8PqR7TCMsHkZhNWkag93IPyhup2AGEDctv1avJgbgskE2AXW
         GC/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734699275; x=1735304075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1j+mQD0oE4PTClsZ4uL4jDtvx982MniklSfBe6bzTvw=;
        b=CpB6816PCijdQN8KqUs6LpGVgjdi4t/YTmObcu70Wa/+vjd8JhT/1zlqZvpSgzeVh/
         bJ/mIeX/zXzSb0YhWPRVT8MRN1gPMwNBhdsr5IIinI67iYwuxciyyl7BFPgA4L2fl8So
         wLoPXoM/4It6aio70wK0N05MdoZlJJapX80vedUOKRa8KgUfHhZ/CWwN2zdK2DKVsChB
         seeospgWUOPprD+rV/xeE9SIUHtQheH+IIr/LfP89x4pcRR6LL8Vquh21+MSaMFOjKGj
         gta2ii0d9k+vxEYvWaF1/xTLa6Hmce/aNkie8Z6zHQ+Dr0WM+xsFuXfikws2FjkDL6ql
         EOhQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2bgBLE7p7O1c8aO8G4XjJiMbscSKZGaaE6WW7uuj5GAEA+ppC3HJt1+mzlSaweQx34OoHA3PecGU2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn6WG5Fb5+PH+sILd/08yDDIN1u95+NK3bgVlg9PnBHo/7IWJF
	qT4rLPVBMegsgk6N4rde2H8h3tw4x34URR0tm/fZBrkelLbgawtmo/QhMO2+OAfkzi/7GfQdSRi
	/Uo1xAv1Dc/N6X0dOCMh5D19+oPIyZyBi/65pqw==
X-Gm-Gg: ASbGncsb7eBCQwOryUQK1SWGSjJK8j6kdMcdk2kaKRMrmpnrZechKvA2uO97VqJXO4f
	WYFucL1gvi4GKaMM5silKcNV91UsuagtKIAdyOw==
X-Google-Smtp-Source: AGHT+IFcH1xZcHk2FUpRWRSBLq6642KxnjygfGN7pXEuwwjA8mt67Vsha7WUfgHcl5M9YTiR9bOF59GTZCKBfngbwlk=
X-Received: by 2002:ac2:4e16:0:b0:542:2a81:a75b with SMTP id
 2adb3069b0e04-5422a81a8e0mr725318e87.8.1734699274554; Fri, 20 Dec 2024
 04:54:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213-gpio74-v1-0-fa2c089caf41@posteo.net> <20241213-gpio74-v1-3-fa2c089caf41@posteo.net>
In-Reply-To: <20241213-gpio74-v1-3-fa2c089caf41@posteo.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Dec 2024 13:54:22 +0100
Message-ID: <CACRpkdaW-4VfbmEOkCbZdrDH621Cj8LfoDQ46U58WPRfSQxkMA@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: 74x164: Add On Semi MC74HC595A compat
To: j.ne@posteo.net
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 13, 2024 at 6:32=E2=80=AFPM J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:

> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> The On Semi MC74HC595A/MC74HCT595A is another part that is compatible
> with the Fairchild MM74HC595. This patch adds it to the driver.
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

