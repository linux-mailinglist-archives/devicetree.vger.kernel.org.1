Return-Path: <devicetree+bounces-139704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD4A1699E
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 10:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B58513A3F7F
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C2E51ACEC2;
	Mon, 20 Jan 2025 09:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ccLFrUWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF92190470
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737365317; cv=none; b=a3233jlnmc0spMRFei+Rg+hTrVt1g9KzUNQmChX2E999Vqkycz51iXdMeaF27r9KsaoBu4jn0uafdEvHf0yOhIDMVILVUh4U2+HACfsx18J/x3kcCc1yW8Jbl5Qn7FCWa6YcLNleteRuvsKGdvJ6AdEhVwwaADfb8j9eW2Yg1P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737365317; c=relaxed/simple;
	bh=yKO1dErrLvjMfdSewDQ07rRwqndJYUit3ARaF6YS4nY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DvvuNoT12WdVLQyUVXmEovdQX7m6HkesGF/9bRrOJhK2K4um56zHKHNRQo3cXLI4PSjXErUIfKPtg0bNrvvJ6EDz0voYpC54h2YleGwxP76FrNfgvgYBMu3ZZVyT136vCbh+tZdausVObh0VGaELCIlNB3HtiL8rbLJqIChzghc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ccLFrUWF; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-71e10e6a1ceso1175117a34.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 01:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737365314; x=1737970114; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYGLOqLJI/lW+IWCjzP3HZh5juvPKFXunICLVY7TykY=;
        b=ccLFrUWFpET7GHetfDy6zWtScnRtnClw4J97y8r2nQunMOPnpCQJKVEaqe1YxPg2Mm
         x4X7+B9JlZWUhf4eXCW82l7ikNZJw+MFLk5fErhKNLXZHVnngep0vG/+jrPd4tcV6RFC
         5HsGISK9m5yF+WwE1iQF8I0SlkqSKsNfGfLTEU3GaNn1HVcUTvrKJD2aDt0D8+RGAhHj
         kpNYfQqwIjMYgreNuiSzBnUfNyqIqiCDmbxpQR+Xf+cht9JOmyLHoCyf2BN+0/YdPmZ5
         /necHzQs1VRKdlRl5roIHA2dPMno/JF2thXfr/IOGfWDnQdyla3fSk/VQc5RUnUW8qCT
         wJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737365314; x=1737970114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uYGLOqLJI/lW+IWCjzP3HZh5juvPKFXunICLVY7TykY=;
        b=AjYboeVw9kaI/isXSvqw3zQrcFu6qMNgQPJ2MA5NaMuOUW69Acq5vBuRv0uOyIqgl6
         x/nmJavlmEHTQWVXwvHfQ0qyJ8jtk3Ll03gANOUv2DusO7V0XCq3FxUh5+KmtwMiieUt
         bY+QkPqW9t6qhiuk/vyQbke2gxby+VEx/s8BFEybdA4k3gJ2EJBAJDHdWNG4BQl19uIW
         JOOP+l2oX67QnHeNDh6hoEyDokPSc6qXRx9kS395XoxV00NBrHPb4CMogKpZbDgwbyoy
         xx11yBWVnUc5gKDG+ZwSIGk1mAeoU//WQVDfUj2HZtTMPBx8zrPXv36LoH6vuEkwcjIu
         g0zg==
X-Forwarded-Encrypted: i=1; AJvYcCW3fUT6QlAO4UnAnywlATFYDwF4Kg/8Q9a9a8leUFOCuG/CCXRmty9iRl57NuHTvmqbo3DiXV6zlLun@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+XG72YUf6HGTJFj3m/dq6NYgDih8L+2K+ELFSuKceex8r8BDh
	qmqYKueqmhZsXFOIVBMlCtOOppa512XIRb0Vfo0vfMfNO17MnfhtEHSMxS+squ59YuzJK/WbFob
	QBZvPv/xkC9BqopAHH6vmiiGGEasKgCGF6yFHFw==
X-Gm-Gg: ASbGncshjxyzkuFADoKZbtpExZXSFye7euVPlJMbpz4YrrfyEj1U+p8wKkVXI6eBXjC
	DBJu4XFMuPEHfueM7yVEKYJ+VD9tbPS8kcvesH3mVWKv74UPTWxA=
X-Google-Smtp-Source: AGHT+IHXz5HIC/kgE9od/pXjpeXL85g5TtU1kd4nNrj3YOkf2uo9+V0+NxvurprGGTgRz/bnU3Uh1RFDsHX7Xc/0ROA=
X-Received: by 2002:a05:6830:6985:b0:718:18d6:a447 with SMTP id
 46e09a7af769-7249dafed00mr7355548a34.24.1737365313775; Mon, 20 Jan 2025
 01:28:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org> <20250117-gs101-simplefb-v4-2-a5b90ca2f917@linaro.org>
In-Reply-To: <20250117-gs101-simplefb-v4-2-a5b90ca2f917@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 20 Jan 2025 09:28:22 +0000
X-Gm-Features: AbW1kvbVsVjCqWD9KbWL_JuAvkdmtbEPoznpA_6Z-NiivZwNyEvlPb517uEKv3g
Message-ID: <CADrjBPpbAXWxAkGShO2-kC2Fa1LvaNQ=JZoOcawKou=9NL0o+w@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] arm64: dts: exynos: gs101-oriole: configure simple-framebuffer
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9

On Fri, 17 Jan 2025 at 17:09, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> The bootloader configures the display hardware for a framebuffer at the
> given address, let's add a simple-framebuffer node here until we get a
> proper DRM driver.
>
> This has several benefits since it's an OLED display:
> * energy consumption goes down significantly, as it changes from white
>   (as left by bootloader) to black (linux console), and we generally
>   don't run out of battery anymore when plugged into a USB port
> * less of a burn-in effect I assume
> * phone stays cooler due to reduced energy consumption by display
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

