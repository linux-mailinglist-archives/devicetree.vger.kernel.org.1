Return-Path: <devicetree+bounces-199021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EA8B0F116
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:23:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E474B17571C
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE09C2E425D;
	Wed, 23 Jul 2025 11:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vI/7kfJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CF12E11B0
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753269806; cv=none; b=IUuAeIqL4UiAo8priNS+OMssqRl2sd6uazXgszupB86Wbl8aJ9jQ0Sd+CyAgbIWnIV6kwcOWxGhrxRT4rRs4sEbXvA7g+zJoFR77qftNDKw6GO3pxHw9mkBm3ia9AZGaxb+PWxl+zFmb4pV7Ux4PkbUnMZ+6k4VRxWbvhLGb2+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753269806; c=relaxed/simple;
	bh=ZPCDtPuwf8qirJAt3wlVNDagGbR60GfYw4v1OF3Stm4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZGFRrAythn/Pn0npwv9wcau+uwt8dI59zBFms+ufRS5K/lati/lNIJclyyS5JNbP9NT6qBmLh0ckARxJAqXCHWQF5pc0giAD6JBRVes14tNfwq9ksUEBOqX8ie7drWS1QiYOVsX+Bu4SCSyAIAvTzMKhZUQMMkG/Y/KxjRvp2Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vI/7kfJv; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-32b7f41d3e6so9183081fa.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753269803; x=1753874603; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1YmU1ykvA77GIulXJEMJLdju3jM88FFVo/Kazht9VA=;
        b=vI/7kfJvLVIhMRxJkH+UdR7qp267BJ7blx0UaHBH/T7eb9+4Lm4ksSTJpdupgKDzJU
         FK4p3ATdZRRklT3nKhnSmw83IqlofIfsO3ErzyCMf4Q3VLc+ZlWnsnaJELiAHLvmhgvv
         08RlALSSq2K82Fg+xcIyuyFtmQvNC+iGFAqyExXVrnWmi8zGfuhuV4WXpi8GNJNP7zUr
         uZ3U1FeQbExtGk3vlQSKmkMmFw/7isxUaAypccIGWOzcqh8HEh4smqeuC2A/YWh4K6XC
         HYSgIAUDYtqAyvh3bgCHfOBknVgmsGj+CEfFrxdeDHI9Zi4mckq3VOKtKlg8gddxf2W+
         odDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753269803; x=1753874603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X1YmU1ykvA77GIulXJEMJLdju3jM88FFVo/Kazht9VA=;
        b=ag5W/SDwfzqWl4WEw7ilCp6h6O1zmsldRXbVY7TiTP4pAL4OHRT1N1SzQfrsZ0lGGY
         50s1hR/NbuS1V0D4TSnrF3YosZZM7eqLgBcUO97B7osVGIpxCWbdvbVONIidvoYraza+
         FRaZaZZe4Z6lL1asUVjra6dbCMY0+clBr/WFWIoBSgoFbwQPps3drq6wkbRsH2HnjO1O
         WZtt45k8P/iL8z9FfqqJ85XO/o3jvTxskgyJIPO9VOth7S/Y1qMzUqxgMJWL3nhTU7O0
         qVKf3GorENiUJYykuaupqmExxe1KoR9eJdXPYzxtjqf9use4u+9e4wfXwRumsALYJvYH
         k7bw==
X-Forwarded-Encrypted: i=1; AJvYcCXAZ9VmjfasqukmKMAw5v8FWlNmlJ7558ll0JbZBHJ0gq/h3T2Ir8Ry2GLymCdgLKd7z0flVZ0rJJZP@vger.kernel.org
X-Gm-Message-State: AOJu0YzfLf2Fd/fNeSUHKWIUrwfH5GOiF5VtIjlvNWbGaKqQltt6iFy/
	ylCHXzYHaX01vc5PYW+eTrGJTBtZXjI+HlPf8sxDjvAGMH0TXTR8PPNOayI0FAmoyyNjzybWHJp
	JgJZcaOdMw+5XB7BX0OXqBjxgRSMNbGLkPBhC8Wpegg==
X-Gm-Gg: ASbGncv74/tfbrda+fAXm8CpP9n9loWrhmL91HtxyPUQzB57bJpISMoFU65BGlcUJBG
	2zbmQWg+SqN2utOla+BrO5nsh8Ity6jkNpviESunWopD+PvAoB0cczDz70Gc5pWEfUX5tfQOvQ7
	iI2T9sqsyYhHctk+GlzFhyn5cuXXa4DNsLAWimTDVRqdvOBRv5f7fG2GrOOqCtrdSGNQLzsFy/A
	57APtw=
X-Google-Smtp-Source: AGHT+IGJe5Uxr9HPFMmzv6FKaMGGq0DeXYb8MEs6LCeEdkH2Ux3eyASfDB2156qvlMRtXLw+FwseABeguK4wIAj2U48=
X-Received: by 2002:a2e:bc1c:0:b0:32b:4441:e1d0 with SMTP id
 38308e7fff4ca-330dfb33727mr8322611fa.6.1753269802839; Wed, 23 Jul 2025
 04:23:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250715034320.2553837-1-jacky_chou@aspeedtech.com> <20250715034320.2553837-8-jacky_chou@aspeedtech.com>
In-Reply-To: <20250715034320.2553837-8-jacky_chou@aspeedtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Jul 2025 13:23:11 +0200
X-Gm-Features: Ac12FXzMES-g3RTrhXb0FNTMk2mTyN5VcSrw3I_gOJGbbpbB-aPDVFXKwi-6bIg
Message-ID: <CACRpkdarn16N9637dL=Qo8X8o==7T=wBfHdXPczU=Rv3b270KQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] pinctrl: aspeed-g6: Add PCIe RC PERST pin group
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joel@jms.id.au, andrew@codeconstruct.com.au, linux-aspeed@lists.ozlabs.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org, p.zabel@pengutronix.de, 
	BMC-SW@aspeedtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 15, 2025 at 5:43=E2=80=AFAM Jacky Chou <jacky_chou@aspeedtech.c=
om> wrote:

> The PCIe RC PERST uses SSPRST# as PERST#  and enable this pin
> to output.
>
> Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>

This patch 7/10 applied to the pinctrl tree, why not.

Yours,
Linus Walleij

