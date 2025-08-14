Return-Path: <devicetree+bounces-204755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3C2B26A07
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B74131BC23E1
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 14:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A9A21FBEB9;
	Thu, 14 Aug 2025 14:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HY/USMe8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2724A192580
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755182854; cv=none; b=nzTEeX/gtzFqyjukzckZgKo33Q6iuajHpB3vUgbq7z4XVmG2TJ3Y9yPso2FBlxNn0+9TMKWwHENVxpwjh9wqkuYHim8G42HwsJzsSCGOJGwLN9vl6mIjKnhstdEpo/U4Z0NdclAhDUA31SAoDcId6fCDsWGJgbBWy8j/05NLfuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755182854; c=relaxed/simple;
	bh=FvgXrhJBchDglMj+MOf60VzgeTEvZMxp4caGmrdlrSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ghNDSpGsn2jZRV718mJd51LNZsVL6fGGBOQykdbMAjUEPIuOsTgtuSs7SpS31IEhnmm2c9pQqgB0AFgpqIReoWLzp1vfDi+l6g1KtOUe3iRU1wGXq2RU8TDxAmiB/3G3D22HndtJSmAE6sNdSWvgdhfS3ob/alrhfuXhOPxcrI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HY/USMe8; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b098f43so7121935e9.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755182851; x=1755787651; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fZAqDF3XnpGXDPLOHIJz9Ec4YzJw9DgnDjI6cQZHRtQ=;
        b=HY/USMe8okexpKlUrKfbbNpKDfIBDuP4SY3bl8ibbi7B9RDgpRXy6KNgueAyLplG3+
         sEwkSJmAx0UqXPcx62eb3cb4xj9jH7L7+lGAugRIRUaidmYWnAI1Tt8OSCTO98eFhqib
         GUJdhWjwnbyD0H93XEvuks8UpQf1KTaF1WdSSJNQOyyzFwzyvyGoqOHnmacNU718JCEF
         STbUIRVorrPja0LTfArPxONKhJJGV2EiMI8fARlKalaTo4o+8/s7Ds20TGXsOKM4B0hf
         Fl7cgygPWhmbxTYgWxA616xue3rW7/aZ0I1AXXKMuYJsAKuZBSrVTwLLHr5Zwyci1DFo
         /MTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755182851; x=1755787651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fZAqDF3XnpGXDPLOHIJz9Ec4YzJw9DgnDjI6cQZHRtQ=;
        b=aHEI7Cn4nhAUhqKoiVDYLPEbYJSOOYnjrMvvLvOTysWQx8HQErO20GT/F532/KNaON
         O9AwEdumcU8JqumSoPwFKdv+9+BSxsGbVG1Wcl/sGHkRuugSVoZoC8rkNY+S9tKp97+d
         aNzg2Bp+NnYcwBtNJSZiIlu+98q9wIyBiqN6KbMcB0cOMo3a4XEd6tvg7BcqVmU1ZmWn
         ox3Hk+Xtoy/E0XjlhMu7l1eRX87vpzf17hq8bq7Zbm2ADqAJm7Of3O1IQXNW/Zgj3t2m
         Sf7/7hJQuHikK7xEf3DXfSSRbQWm06zfryowtCpJXJUkn6p3s5rVGbf7z4Ei8zWDCj/Q
         6ElA==
X-Forwarded-Encrypted: i=1; AJvYcCWyljZBig0gsJddMDgfPE1vEI36+YgHF0HuFZNGdaUtOsfriKtetCBgu+N2Y9d7VuWaiEBC8IjDuefS@vger.kernel.org
X-Gm-Message-State: AOJu0YyuvdGiBJ6RAHRcFBChd0u61SIbG2KqxD19No4eHDoBotu2fpqp
	XJfsvr2P/bQ/uaQDMUia/QHn0MMNBfFlQfaZY/+hQSiHyR+tMbBUKX77KDSYAUz9s5o=
X-Gm-Gg: ASbGncvSNh0Wk2R4qOnpid2Wli3q22hxZvjGAiQnXsMsiu/kKIWebUtvv4uXLx+iG1B
	QvdCTJe68VrlRPUMSpxvP0SN0TOg9bWbPIxyPfAIMshbpGtoGymbSgjRiifNmbYUK2inUNZfoRo
	8l/TatGFI5u9veb9mjZ7sPTLTGvOODZIM7irEdAaYNVMUPPLnitOQ6VDAnp6BdRDxcKrSppEODq
	DATJ33TRfjc10kg0HFx/+c8jQK15xD+9NEAHAPS1bPLYpUdxkYhyKd6ZkuF7R9hsjL1OCkW5wUj
	yGLbYk3z6ORBt2wuBPhsZuArlJbYTYJmKCH/FWFDvcWgcOpA/D0S1d3sAdemtvM9nwsAgSKwdCs
	pvUSLgnq4fHwyYVkhQ6FLK+mAqDYmXwoN
X-Google-Smtp-Source: AGHT+IFhoWtHYN9QFJ0tW1CKBLQo56CkK5ldL2L/K77pZLZH70ja4pUfhvkjKDkzC2VxincZw5xstA==
X-Received: by 2002:a05:600c:3b87:b0:456:2a9:f815 with SMTP id 5b1f17b1804b1-45a1b615307mr29980105e9.4.1755182851303;
        Thu, 14 Aug 2025 07:47:31 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:1e8b:1779:ed5:b6f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c74ad27sm25133535e9.18.2025.08.14.07.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 07:47:30 -0700 (PDT)
Date: Thu, 14 Aug 2025 16:47:25 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Christopher Obbard <christopher.obbard@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Rui Miguel Silva <rui.silva@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 dp controller
Message-ID: <aJ325wUrBjydnc1m@linaro.org>
References: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
 <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org>
 <aJCyBbwNjZvTHnjT@hovoldconsulting.com>
 <CACr-zFCq08Pu2=eLfe5=sYdGWEHmy7w+=Eo++9AjP96uCLCNcQ@mail.gmail.com>
 <536dd237-e668-4a88-ac2b-3bc88dca8a3e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <536dd237-e668-4a88-ac2b-3bc88dca8a3e@linaro.org>

On Thu, Aug 14, 2025 at 04:21:09PM +0200, Neil Armstrong wrote:
> On 09/08/2025 00:28, Christopher Obbard wrote:
> > On Mon, 4 Aug 2025 at 14:13, Johan Hovold <johan@kernel.org> wrote:
> > > 
> > > On Thu, Jul 31, 2025 at 09:51:26PM +0100, Christopher Obbard wrote:
> > > > The eDP controller has an HPD GPIO. Describe it in the device tree
> > > > for the generic T14s model, as the HPD GPIO is used in both the
> > > > OLED and LCD models which inherit this device tree.
> > > 
> > > > @@ -5779,6 +5779,11 @@ tlmm: pinctrl@f100000 {
> > > >                        gpio-ranges = <&tlmm 0 0 239>;
> > > >                        wakeup-parent = <&pdc>;
> > > > 
> > > > +                     edp_hpd_active: edp-hpd-active-state {
> > > 
> > > The node name and label needs an index as this SoC has two edp hpd pins
> > > as I already pointed out.
> > 
> > Sure. After looking at the schematics this should be called
> > edp0_hpd_active. I will fix this in the next revision.
> > 
> > 
> > > > +                             pins = "gpio119";
> > > > +                             function = "edp0_hot";
> > > 
> > > And you also need to configure the bias somewhere as you should not rely
> > > on the firmware having configured things for you (as I also pointed out
> > > before).
> > > 
> > > On my T14s the internal pull-up has been disabled.
> > 
> > I am still unsure of what else needs to be set here. Can you help me
> > with the correct settings?
> 
> Just add bias-disable;
> 

I sent a patch fixing this for all the X1 devices upstream earlier [1],
so you could also just send v7 with just the second patch of your
series.

The bias-disable is really somewhat device-specific (what if there is no
pull down on the device side and someone disconnects the panel
entirely?), so I put it into each board DT separately like Johan
requested on v5. We have the same for the PCIe pinctrl.

Thanks,
Stephan

[1]: https://lore.kernel.org/linux-arm-msm/20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org/T/

