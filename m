Return-Path: <devicetree+bounces-204826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17068B26FE4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 21:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A8431CC6084
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 19:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3C2248F41;
	Thu, 14 Aug 2025 19:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZsDtwoto"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE5024886F
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 19:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755201404; cv=none; b=aQGPOb0ePw4nWn0VgCkw+n/lEJhOVTBAS11jspj0jOD0aNeCg8pc/3fJdXDQaXM2/reUB2kZM/ie0X8ubmZ35OHhPrqZfGanrpynMN/Kvla71BzpY6I1GcRZJJF/yrxm1NbeftcMYBWVu0kASYYpotdGu3cM9TQbp2yI7tCxbbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755201404; c=relaxed/simple;
	bh=jIZ0pICSvENrTnyyU1kXAVtqEdXcq/g6mazT2w3po14=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GxZG2RTpSFrNroIehTj20/syH1qhaYTSBXxJv5LosPcEhJGpfyM9DqZO0uKk1wdH0jTyYIycMYgZDM+1v2GABQztbNh1eccyhXUV2uXG1WTNvJLCWMkp92/Rh5YhmKTPfEx/nQMHGLeluM7Zr8Ly2e9m0ARVNui1L+847ntCScM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZsDtwoto; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b9d41cd38dso937719f8f.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 12:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755201401; x=1755806201; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E+rFK3Y16lc6qrisz2iW0SvAN0JWfOXhTcFJtP56TZ8=;
        b=ZsDtwoto2B4rMDbm94eKIf6kpwxZVvOkw+R6e3G/sTwUZV7mquf9H21zVbEriQoVq7
         p4Pr3t38XAW2jIW73oj+tFDpyfJ2cLtmUKPCRzH2nIFFsmXRu8tk4njLATdGaAZxoeO4
         4lpbs20cWIn209bmlDv7GVLVdeqfPfMY5B6euPkXRfW5XbgNZKkUwx45HNjSdq0Odf2W
         QM2MaBFocYzlua+BPu9I/XkYojlMDBjESMqpdz37HOO17B/1+gz7jmPy1yXvbE4ZUoGL
         cAlBT8bPbjTDlA+ob5E/myMmGmH+LwVeC7xz3x1WtkakjkltinSb7HvYJFQ/B3EGX1IR
         jUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755201401; x=1755806201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+rFK3Y16lc6qrisz2iW0SvAN0JWfOXhTcFJtP56TZ8=;
        b=QMnPmbLEG50tz2yeCc/nFFK7DXTDXgXbSfrMFx8fKij04G3XMaIKvisMq/g+o+mcXF
         TV3Zypb20PlvhVXTksIIu0QcY4cfEqXt54pgjSh1IPVaI/rtUSmRXxDcSJ/TQznNubC8
         Li5spb9ab2PTSmWtyW7DP4JUVJwEq1492yOkmYCzGu+j4IO+Vgcq3+ipstZ9eN4NL73P
         1n3btoB159nMbx0EIWb9gD98I+eTHSnT7Tb2zp5Krqg/aBc8zy4SedmDmK17xaZsSFb9
         kYr6sejnhGdePD/3WWcWpS+4Lh9NP4DNVaRVQogr46F2fLd1vn2qjI9H2UHkXcXvJoiB
         O7hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWePQUetLg/anx81P/R/qDI2WqVgKXPsrH1No5BZd/UMNJ77FtBHmZqpvjwRZlkoQZQ9NtX4vEMGPKj@vger.kernel.org
X-Gm-Message-State: AOJu0YxmcZI+K8BbeWn2xPAcBVJPH0HXluuoMWBZKYQ1NRmIVrsc1HIB
	GZzun4DkJy8xrLoDr7OVjIWFSDXXia2SRAzhJjPpGWuuKnQdQqbgj17/MmFuXS03IAqclLRAHXk
	rBrarhL/edk7HBu08kOoGzDQT4zwDmo9ASVdYE7i+6w==
X-Gm-Gg: ASbGncvAn9ORpYOU/CpBUd6U/hNlZHN/dUq4BK9u3Fdq7+SsFze16D2MhlqIgExSUTv
	tfW2XR/uhKZBs51LjZEVCcv8OZ2gVGjqMXypsPNzh7D9ah1LLEeph32piZS45sfKgoiD7Sg4XsI
	oEl12FETdnE2zFk0c24p/nX9Pfoji8cpUWTlbbTZyU1I2wm7N4lmtYIOnGcOaWMdFWZzqvNHsvW
	OILmuu3qA==
X-Google-Smtp-Source: AGHT+IEHYhs+plAEYsscD5Wz9WV0ctTxAwUekG1ZGW5n9xJP1t6RYA2SsxG2fFTDjUnHDR+BEqZV/VFaXcIIr6ZD36M=
X-Received: by 2002:a05:6000:2507:b0:3a5:39ee:2619 with SMTP id
 ffacd0b85a97d-3b9edf5bbafmr3886203f8f.47.1755201400932; Thu, 14 Aug 2025
 12:56:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
 <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org>
 <aJCyBbwNjZvTHnjT@hovoldconsulting.com> <CACr-zFCq08Pu2=eLfe5=sYdGWEHmy7w+=Eo++9AjP96uCLCNcQ@mail.gmail.com>
 <536dd237-e668-4a88-ac2b-3bc88dca8a3e@linaro.org> <aJ325wUrBjydnc1m@linaro.org>
In-Reply-To: <aJ325wUrBjydnc1m@linaro.org>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 14 Aug 2025 20:56:30 +0100
X-Gm-Features: Ac12FXzfAjpaWSWVaNx050hBK800qnJzS4DQzavZiHUHsnQ10EkhLlcur9pIdMs
Message-ID: <CACr-zFDUAiT7Rd7joV13aZUGCuDrDETeALpESmbp9TYgMOqSww@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 dp controller
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Johan Hovold <johan@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stephan,

On Thu, 14 Aug 2025 at 15:47, Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> On Thu, Aug 14, 2025 at 04:21:09PM +0200, Neil Armstrong wrote:
> > On 09/08/2025 00:28, Christopher Obbard wrote:
> > > On Mon, 4 Aug 2025 at 14:13, Johan Hovold <johan@kernel.org> wrote:
> > > >
> > > > On Thu, Jul 31, 2025 at 09:51:26PM +0100, Christopher Obbard wrote:
> > > > > The eDP controller has an HPD GPIO. Describe it in the device tree
> > > > > for the generic T14s model, as the HPD GPIO is used in both the
> > > > > OLED and LCD models which inherit this device tree.
> > > >
> > > > > @@ -5779,6 +5779,11 @@ tlmm: pinctrl@f100000 {
> > > > >                        gpio-ranges = <&tlmm 0 0 239>;
> > > > >                        wakeup-parent = <&pdc>;
> > > > >
> > > > > +                     edp_hpd_active: edp-hpd-active-state {
> > > >
> > > > The node name and label needs an index as this SoC has two edp hpd pins
> > > > as I already pointed out.
> > >
> > > Sure. After looking at the schematics this should be called
> > > edp0_hpd_active. I will fix this in the next revision.
> > >
> > >
> > > > > +                             pins = "gpio119";
> > > > > +                             function = "edp0_hot";
> > > >
> > > > And you also need to configure the bias somewhere as you should not rely
> > > > on the firmware having configured things for you (as I also pointed out
> > > > before).
> > > >
> > > > On my T14s the internal pull-up has been disabled.
> > >
> > > I am still unsure of what else needs to be set here. Can you help me
> > > with the correct settings?
> >
> > Just add bias-disable;
> >
>
> I sent a patch fixing this for all the X1 devices upstream earlier [1],
> so you could also just send v7 with just the second patch of your
> series.

Sure. I will do so and base my next version on your patchset.


> The bias-disable is really somewhat device-specific (what if there is no
> pull down on the device side and someone disconnects the panel
> entirely?), so I put it into each board DT separately like Johan
> requested on v5. We have the same for the PCIe pinctrl.
>
> Thanks,
> Stephan
>
> [1]: https://lore.kernel.org/linux-arm-msm/20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org/T/

