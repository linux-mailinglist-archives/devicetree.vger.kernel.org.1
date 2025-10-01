Return-Path: <devicetree+bounces-222997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B239ABB02C1
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 13:32:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 510B81942DAF
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 11:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B012C324F;
	Wed,  1 Oct 2025 11:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wUMoRGWn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AF12BDC26
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 11:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759318371; cv=none; b=KsqYhZyZADUGDjhda3LyvF1EcR8v+BcZk9m+keQS/MtPSy0NtVVmXdFKctXvf9wm9DHHSX/AKDkOLMDhHOGnDS0frAIesj4XoJFziYfRYBPtmQlGA6dq+LYUFkYZP0xn8cbVZIcjbfYn4kGpy3n8HrA/veAsN1wqva7erCXshQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759318371; c=relaxed/simple;
	bh=GLu3dPRpHTFCbLBOlfGANYWabao11//UUh+SE0dY1DE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T5Af3c//q7k0noxR8ILL+wwuMhtGYlIgfTm3LsRqOokCTiCNmfdt9+hkd9nyoPLPOH8vvqY65Yrn7eXBd2WLAlBIB91bb5Upl2LEUXsjNmKqU1SO+k5E81JucZruGzR8fdHH4TarbFq603sw7eciqRq4UEySPSRTsRnrXCUiqmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wUMoRGWn; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3635bd94dadso61705611fa.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 04:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759318368; x=1759923168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AIC9pcdw4oZg8H0ciygrp21hOqxgO22+2gefSNyYbK0=;
        b=wUMoRGWnA7Gl62il+4S8Py2jzA2nZbt+9UiFnu/M+3AAggkP9wv+f3VbcWQ/NAz3bk
         FFfDHbs7LuWdS5xTymlC7SO5HhKzIp4FFHcX8OAajWTfHoQrsnn/XFiNi9dpngxV9NB2
         1Nn1LqkNF9BZU08b1ceQWiFya7JZ7PzS9bBx06T+58KKHqP+lwi2UvOYwpCevc6ERE5+
         rYc82uy+gYAaS8vUdxokbJ9iHzke4ozyrBkhE1MmxBCDoaZSruVa1xTDqkLXHWTvAseF
         cr0OTxt7k1NLdFJ4delGfokTdoWu0KZz6AMblNO78PHPqmwnxz+pPaF0f14rjH8cv6vP
         Um7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759318368; x=1759923168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AIC9pcdw4oZg8H0ciygrp21hOqxgO22+2gefSNyYbK0=;
        b=i5JGR1crrgA4eLwWOiEy4Np5RxQChQHF9OEHnozvEA56HeQfWv4fVjfjZQHG1izJ0h
         4kJY6kwi05H3d8Y0ZuhyM6tTjZ/xGvfwi8BbYoQJJCaiN56fcblSGZ7Y9uYI+BQgm1dC
         ZTznB9RUI2T1rQmhI1IQIIRBCyMFeQ12M0gQAZRU7xqRwkSQNfla36+lJd5TOx6KDaLi
         5iNLwvpiJtwb2/SujBKJrXl20eSvkZgy7/i7M6YILW58MJYB/fh7x/OnbdzjKqbBZ5S+
         jk2tcq1am4CzTqjnfuYhoMKZI8s7pD18iMtlBpqFb6vdwyV5RZ6BqUOZ18AAcvghL4DA
         p1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgcrq0drREL1XJF1Vi8HLNVmmwFIhQAkAAOQF2GaK7rzLDyiC4a0ezLVId5slEIgcPh4+FS+XZ7iFe@vger.kernel.org
X-Gm-Message-State: AOJu0YxbD5zPIyFHemZavOm3DYwFCgxt3Zzp5ZjLAL5xQE9toICKiI6z
	rTFWD17rerA1k0JlUuotlJCHhq87GINplHS+CPEacuY4Xsfgnucv3oyvftGsryilSzLW3fTHG4l
	danT8rxrX5S9NLxP8P5gezfkYu9Y+q/fNB98tL2THKQ==
X-Gm-Gg: ASbGncuG8iPkcTe4lEz++3r6mqKT6MkYamKVfjPZNMAz1/90gp7p/9pypDxEmwupMLm
	km2R+PZBoQ4GAcmJsYagst1NV3mboPuNCM28hlnHacZWDZ/3BfNwbT0Mz3MASbp2aMu7OwwKyzu
	V3zzIwkWON7KYaAFWge6kHPdrKFteP7k3NT+v3gEtHnkudA5Eo/rTaf0fnaHAJ41BLjwegS4Jmc
	uKNG3rXzYK8YoAwvCtGL925Qnq3Az5wlu7O4PrksA==
X-Google-Smtp-Source: AGHT+IH027jDeEhl23sgvUXGSnUqHZdRDfuqPAZynY7f84Ovl67bSlzlYY8n8r1piqQWJzQhGq3jPmfYbFd5MNdKTPQ=
X-Received: by 2002:a05:651c:222a:b0:336:7a9a:1b16 with SMTP id
 38308e7fff4ca-373a710aac7mr6994261fa.14.1759318368220; Wed, 01 Oct 2025
 04:32:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-manpower-glacial-e9756c82b427@spud> <20250926-gilled-muppet-6ac08937cea6@spud>
In-Reply-To: <20250926-gilled-muppet-6ac08937cea6@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 1 Oct 2025 13:32:37 +0200
X-Gm-Features: AS18NWAjdrfYAW2A5c-n1rHHCx2KKNe8gHs1C1gvm3el8EHSAbW4Lu-GOc0xlys
Message-ID: <CACRpkdYoECsAGwUno0b_nz-iBB=iwO0Js_6k4O5k+xhig2NYkg@mail.gmail.com>
Subject: Re: [RFC 2/5] dt-bindings: pinctrl: add pic64gx "gpio2" pinmux
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 26, 2025 at 4:33=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> pin     role (1/0)
> ---     ----------
> E14     MAC_0_MDC/GPIO_2_0
> E15     MAC_0_MDIO/GPIO_2_1
> F16     MAC_1_MDC/GPIO_2_2
> F17     MAC_1_MDIO/GPIO_2_3

So this is a group you can name "mac_grp" and a function
you can name "mac".

> D19     SPI_0_CLK/GPIO_2_4
> B18     SPI_0_SS0/GPIO_2_5
(...)
> E19     SPI_0_DO/GPIO_2_10
> C7      SPI_0_DI/GPIO_2_11

These pins would be "spi0_grp", function "spi0".

etc. No need for "pinmux" properties just use classix
group and function strings.

Yours,
Linus Walleij

