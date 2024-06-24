Return-Path: <devicetree+bounces-79290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 887EE9148D4
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 094F61F23631
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B73B13B2AF;
	Mon, 24 Jun 2024 11:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SIj/pJ8S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B861213A879
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 11:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719228804; cv=none; b=P+pIxsgxZWQ7xPMdlAU/WbHdMzRnwG+SOil3fxUhJz6QxT3oYqdzM/wlgKDBEWd+DyRwuh45J2D96dqwg0Qjda4XdA1de+gW8Qb/mOMaFfR6JI9wyVeA8bYXd4jk90l4wwO8dnJVWeMK2sAjIgEfW/raIsx6qG7ZXfizjHH4ldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719228804; c=relaxed/simple;
	bh=aHBMPXZbuIaqHeB85khV05HlP6Xqj7t2FeSE5qthS3c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ama0DbzqkVaH9pmZXXySzGQWIyZqORbcvPLo0Dx8oGXfXpMYgVuot69T2ZiwgtLdQxvWj0lodjmRcyqtN0QE8QY/cHbWLNa7Jno+UnLzJxQ3TF66zvzkYtUpGYKkSQlHnymhEBLZ38rQrscTPI+MM0Zr5FJ8sGQgKY0r3QQiuFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SIj/pJ8S; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5c204600d49so274166eaf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228800; x=1719833600; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=odpMfJJZ8NPTYLZvgutefDIcMfEDKS6u2cQ2F9qXb2A=;
        b=SIj/pJ8SkjXrkKdG2Em6ZbdDd369mqHkAvh9JRfRXorWP4boLiTDpqN6/5k/O5Pna3
         /Bo+IJ6tuCVaNe2JIRoEcLpJ6WH3mKD4aeVhc0aOmFJ7FsmPoNJLmk7GfU8JOsINKkDA
         4Rp/fh2Vts/VDujxCty2aXC1mKRanXhgkQAX1X2tt/mtY9m1Wh9DzK8EWLVvZTQyQtfR
         A/dftmLhd7svPTOrtWjJWwMEZOV+MYBuSsTyc44EhmJA9E/3hX+PsT/qn68eXFGnpqx+
         OMi1MzKdqul0bdYrI1QYVkX8sbnxaP3wRu3PdstempmOFZQGP9+AbfW47/2QhokMf1AZ
         dbhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228801; x=1719833601;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=odpMfJJZ8NPTYLZvgutefDIcMfEDKS6u2cQ2F9qXb2A=;
        b=EIrNDwXhRXIRtcpcbj7MdS97/VCNQbsZ93MUA29vYiMdsAeAn8XAPF0AsVfSD2QGJB
         VKCjdNHgivqQawxgyIajCTj8uFPLV4FhvkL41ymoDKxYGAbMgGpz+VuyyhK/I4oIaUxn
         AryH865jXwVwZVCTUI2XMH1HVgUxAur9gfEufxG9DYfvUoFYdxal1oKUIFAAN4Q3oKwc
         nIHCBt0iXW9i9WeJ9h285RxWHnhtxDpfTQlkSWRtqPneVssKrNP4i4TDVoH5Q6XMPTQX
         Pd9yVck4/fS5Qt7oR2Kbd4EHhOZk1hQ8G7Jevt/LuUXbCS+LzQrPLUto9llgsZE81l+8
         kPxg==
X-Forwarded-Encrypted: i=1; AJvYcCXBbfSgv0Y38xTZ23SwRIWaqvWTdsoB5I8uGJYdIrNzxXA8uvVeirnVGwx2cGE/maVXixJgZaaiCaAx4KkYPlXKvXf2+70RGiwfDg==
X-Gm-Message-State: AOJu0Yz9LuyzF/Nff2hbVP6aqvKq592CxKDGQa+bBYEeOidKsGeNp94z
	WxhF7q3gknavQkoQa8ByeEKbhTPavW71BPYQTc8iAWKK5WXGkLmaSAEcs6c/bhKqR+LZqknSeL7
	mOHDpKHS3Fic4AcDUHzA7Mf+FJ3D0kf1N+0wD6Q==
X-Google-Smtp-Source: AGHT+IGmvLU2Uh+ee6D/ZczJ3wgdd7eqWxvkUL1HgsQRsgH4xuQIXM0iyYoA9GudXgodjHC0GIwB+1yLti8wulJ2M18=
X-Received: by 2002:a4a:870d:0:b0:5c1:ae16:acb3 with SMTP id
 006d021491bc7-5c1eb76906fmr4738478eaf.0.1719228800566; Mon, 24 Jun 2024
 04:33:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:33:09 +0100
Message-ID: <CADrjBPrg6_3FhD=2W8X=yaSrTMbmcfjRo3HVo1LyHVcUM8P=0g@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] phy: exynos5-usbdrd: support Exynos USBDRD 3.1
 combo phy (HS & SS)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 17 Jun 2024 at 17:45, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Add support for the Exynos USB 3.1 DRD combo phy, as found in Exynos 9
> SoCs like Google GS101. It supports USB SS, HS and DisplayPort.
>
> In terms of UTMI+, this is very similar to the existing Exynos850
> support in this driver. The difference is that this combo phy supports
> both UTMI+ (HS) and PIPE3 (SS). It also supports DP alt mode.
>
> The number of ports for UTMI+ and PIPE3 can be determined using the
> LINKPORT register (which also exists on Exynos E850).
>
> For SuperSpeed (SS) a new SS phy is in use and its PIPE3 interface is
> new compared to Exynos E850, and also very different from the existing
> support for older Exynos SoCs in this driver.
>
> The SS phy needs a bit more configuration work and register tuning for
> signal quality to work reliably, presumably due to the higher
> frequency, e.g. to account for different board layouts. Additionally,
> power needs to be enabled before writing to the SS phy registers.
>
> This commit adds the necessary changes for USB HS and SS to work.
> DisplayPort is out of scope in this commit.
>
> Notes:
> * For the register tuning, exynos5_usbdrd_apply_phy_tunes() has been
>   added with the appropriate data structures to support tuning at
>   various stages during initialisation. Since these are hardware
>   specific, the platform data is supposed to be populated accordingly.
>   The implementation is loosely modelled after the Samsung UFS PHY
>   driver.
>
>   There is one tuning state for UTMI+, PTS_UTMI_POSTINIT, to execute
>   after init and generally intended for HS signal tuning, as done in
>   this commit.
>
>   PTS_PIPE3_PREINIT PTS_PIPE3_INIT PTS_PIPE3_POSTINIT
>   PTS_PIPE3_POSTLOCK are tuning states for PIPE3. In the downstream
>   driver, preinit differs by Exynos SoC, and postinit and postlock
>   are different per board. The latter haven't been implemented for
>   gs101 here, because downstream doesn't use them on gs101 either.
>
> * Signal lock acquisition for SS depends on the orientation of the
>   USB-C plug. Since there currently is no infrastructure to chain
>   connector events to both the USB DWC3 driver and this phy driver, a
>   work-around has been added in
>   exynos5_usbdrd_usbdp_g2_v4_pma_check_cdr_lock() to check both
>   registers if it failed in one of the orientations.
>
> * Equally, we can only establish SS speed in one of the connector
>   orientations due to programming differences when selecting the lane
>   mux in exynos5_usbdrd_usbdp_g2_v4_pma_lane_mux_sel(), which really
>   needs to be dynamic, based on the orientation of the connector.
>
> * As is, we can establish a HS link using any cable, and an SS link in
>   one orientation of the plug, falling back to HS if the orientation is
>   reversed to the expectation.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>
and
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Tested using my Pixel 6 pro device. USB comes up and it is possible to
use adb from the host computer to the phone.

regards,

Peter

[..]

