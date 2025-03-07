Return-Path: <devicetree+bounces-155269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9464FA56113
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 07:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDCF7176B75
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 038F119EED7;
	Fri,  7 Mar 2025 06:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pPdKXMHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E868715B54C
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 06:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741329940; cv=none; b=FViux8ctgG/0kK+XLtpADT9cMqNCe9rSGk8NIIncKZZI9dPpvcuhP3yixar1VMHEP92tuHv71KPVJatrLz5qPTtvZ3VeqC3fR3nMEwVc2stIcLFQej474uDSFrBF+3XTx+geLV+f4xGvejz01yvKRkMeAOKgn3ptJ6m4TEJuYz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741329940; c=relaxed/simple;
	bh=2IbWjjX0WxGiZ8sC4vYfyq7mDesPs3GJVhh1I5IA2tw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qC3yiYRR7QV1atEskCTsXQOs7/L8+YBD+XrnQSQPJQRhfHH5VXTY/0K0uSJypvMo6khecVu/ksoPwzqFQd6k7l5YJt2L+ke2rcmT1L1si/IKPLvg/DIgDMgY89c3BaImVueW6JHsFblvfkOka3DxmhdGHeB1wiBHai5MH+KEMrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pPdKXMHl; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30bf8632052so1336711fa.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 22:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741329937; x=1741934737; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DkifpUNIVfalfehyoZ5anyUq+7xOJAxWFQWwUGknXdA=;
        b=pPdKXMHlySjylHroamrtvXuQwvwY9J+lAvfKDC3EFIKu3h8unGh1552CwiLMhlqAdB
         KeB6WUq89tjsQThjl98nyH0OlYX26qrnKIW6xA7Zm0o6zw8VlnRGAA8dY16WjFVq/zw2
         SqCZKTx80MbWDJdKYP8v5HlsXVlg7D/EwrTBngBAjlMB1O+SFz+j0FaHVE/oX9+pkKP0
         htcEgdU8W2poWkMqBVJxOtkQZdjSIzrcJLkEtSHTMfYfAfFyZuArUmRhUac2DeDGlZd8
         zYfPMn3nKlDVTx8Fm4gx0nP1/aS6cyUT5ap3QGA3ph37H+FRAR4iEzZuKFLiR1pJ56bJ
         sW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741329937; x=1741934737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DkifpUNIVfalfehyoZ5anyUq+7xOJAxWFQWwUGknXdA=;
        b=xUdfBqYs3Pe1lcO8OP0XmiPnDqYmiTlpi6NYsY0gIX5xR7QbhTSn+9yu90C+fQJ1M1
         +xt6zRwxcdtOJBghLKXTzxQp0gktVM2OlHiaEV+uauN1SXW90hRwvW87lOrtTr7XBGKm
         qP5oIbOFeQY22U8ojB+MENsOXPQChNTOZ1bT5dRRHw9CLt7kVOdgqrKZXeD5cq2AcoPf
         R9ccM/u/HbiX0qKwRxcyV3+KStYCh0+jiDJcGKBUFo5gz1Tv9FiEd2YPuMnNqT24dVlg
         Nk9dYyEKNPH4rUgizjOjzQsF7H8zBx3jUEBc5TZ5PyBX75ZRaQdz9PNEe8Tr7A+5ZGHw
         Or5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWo7Sqt8AVZTkXmW8KOrle7aC/I+ntXrEA6Yr2QqBGb9nJ2a+JDIcPDvEMzUcZW7gB56z/soQCTPnIO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw07WvDEfPZ3LyCC9pp+R0YD0tI7Djnm5MGN6EJ9nsOiYerlz5
	yHUOm8LNDrxyz+P8t4ubaqopfPG4dBUdee9zM/Z3O4m/MkCOMv/XRga4Eui4JbILCGFEw3Ylaev
	jNss=
X-Gm-Gg: ASbGncuFFIEFSs8O2lg9bCQDKP78UGJvLfscMinyTDV9Z3qyxdyhsztUDSSyTtd3XJx
	6wb8INkI7peoNWWFHp6pBRoitT235djNZ1i4QM5YoyjJHP+RuBCr8Trs7Et+xXypUVihw7FGAPK
	g74BRGZYiDeNcBgGbduHOv2KebIw7PtznhukrzfGMrcwkEGfKGVM9W118A98E5TBsX8mYQVQUnt
	jSuOncYmrh0Tr9C9LkTXTJmY2SeLQtTfhbzI0hBhw8efhIzWG12k30OAQ/Dck6lC8oJNs9TdmN0
	z2hDf3V/ph8j+JIiIyJtoE0naPqCnnC9fRV55Dy1vW9MTHtcVb3/8ekepD55NdROyCSVXt84SFd
	VqS3Agl5KIjo4NrhqquUDZvue
X-Google-Smtp-Source: AGHT+IEVwXNQL271t+0M8gZNNjaFYj/wP3rsGJm5Z+AyP5M40rV9YMISVPS8byjNiGXn0/FUIobKLQ==
X-Received: by 2002:a05:6512:3b9b:b0:549:38eb:d690 with SMTP id 2adb3069b0e04-549910b5e9fmr731477e87.36.1741329936903;
        Thu, 06 Mar 2025 22:45:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1bcd96sm394407e87.207.2025.03.06.22.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 22:45:35 -0800 (PST)
Date: Fri, 7 Mar 2025 08:45:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Georg Gottleuber <ggo@tuxedocomputers.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	wse@tuxedocomputers.com, cs@tuxedocomputers.com
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
Message-ID: <5hvghahezqms6x4pi3acgaujyhiql6mzl2xhzph5phhki2yiyq@oi3xjatj7r64>
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
 <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 01:50:56PM +0100, Konrad Dybcio wrote:
> On 6.03.2025 1:25 PM, Georg Gottleuber wrote:
> > Initial support for TUXEDO Elite 14 Gen1 based on Qualcomm Snapdragon X
> > Elite SoC (X1E78100).
> > 
> > Working:
> > * Touchpad
> > * Keyboard
> > * eDP (no brightness control yet)
> 
> in case your panel as a PWM backlight, you will need to set the PWM
> output pin function explicitly, see x1e80100-microsoft-romulus.dtsi
> 
> > * NVMe
> > * USB Type-C port
> > * WiFi (WiFi 7 untested)
> > * GPU (software rendering)
> > 
> > Not working:
> > * GPU (WIP: firmware loading but output is jerky)
> 
> Please tell us more
> 
> > * USB Type-A (WIP)
> > * Suspend with substantial energy saving
> > * Audio, Speakers, Microphones
> > * Camera
> > * Fingerprint Reader
> 
> If it's connected to the multiport controller, you should be able to
> just enable it, like on the T14s, similarly to the Type-A port
> 
> [...]
> 
> > Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile             |   1 +
> >  .../qcom/x1e80100-tuxedo-elite-14-gen1.dts    | 798 ++++++++++++++++++
> >  2 files changed, 799 insertions(+)
> >  create mode 100644
> > arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > index 140b0b2abfb5..f0a9d677d957 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -298,3 +298,4 @@ dtb-$(CONFIG_ARCH_QCOM)     += x1e80100-lenovo-yoga-slim7x.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-microsoft-romulus13.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-microsoft-romulus15.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-qcp.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-tuxedo-elite-14-gen1.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> > new file mode 100644
> > index 000000000000..86bdec4a2dd8
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> 
> > +&gpu {
> > +       status = "okay";
> > +
> > +       zap-shader {
> > +               firmware-name = "qcom/a740_zap.mbn";
> 
> Are the laptop's OEM key/security fuses not blown?

Can this laptop use "qcom/x1e80100/gen70500_zap.mbn" which is already a
part of linux-firmware?

-- 
With best wishes
Dmitry

