Return-Path: <devicetree+bounces-75787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559C0908A0A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 12:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B75B7283DE7
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 10:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A94C19413D;
	Fri, 14 Jun 2024 10:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="onFyQAFO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6621F193091
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 10:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718361241; cv=none; b=OMxTCI/5biWK9aXMu0VOBtJgsyrUIKMtre2rYSgAjlYkaljR+hdVwoRtimZDnvscDH1D/807Kx8R2Kyb5JneWeiOoJbG94SW4mocZ+z3bEHXhMYiBuLF/rxUJHQ2WMCGrBHIddGWjiLD/om5qlUkgVQs8TTsFvfLvhlG6p9lRtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718361241; c=relaxed/simple;
	bh=Cbj5rY7Q4042m6Tf1K2FyGsGbl9sIcaLxOrvxa3PI7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UnVrnjnONkH50hRzW5Jozpllz+QIhTRE2vrylYLd/BzNCUHdYsAHylS/CHJv2qDmIfDYzh8M5jAMiKr1s7adhNMlbpaaQpgKbK6n38wNIp0vBjnsKISWBfQbcO9ZHxuFFGp2E+lo8t9ZnaByTYdYXrm99j+z+BWlh2NimRStHws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=onFyQAFO; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so19569981fa.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 03:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718361237; x=1718966037; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nzzrXsvYFvoKMaClE4C1QUvbpC22b7f20EhDi4vOiQc=;
        b=onFyQAFOUUdsdj8f2K8aHWXSoqdMmhoNPOuskohYQpS5fMSa8sI6mpIfsARSeEVDL0
         s+fE0suWoFReX0jCcyN5NGwPZwEH9ep7/swTrMx/u/xBDP0TDH02VsOkfaMFA8Zi+f0r
         hSwvZcw/jSvDTK2AE1yBeLwsQ5eI0Rq9iGfjRwQW61LZVDBj25E30GTzaJsBXspFZWPd
         UGygFQl9mJvWCi5AWETLz58LbZfRdj4jJh3SU1pF6bSckmVVrD1CdLrnM6zqNshkh9IY
         0DmRR8y5zHx5iH+DTzybPK/eNRVGM53dcueotEi9ZYePSxyKKEwYyGKNPSNAa1ENxZod
         BeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718361237; x=1718966037;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nzzrXsvYFvoKMaClE4C1QUvbpC22b7f20EhDi4vOiQc=;
        b=uLOXebzOge5mpMPFgGv/yKjNvvcaVGd05RFi/tK5feMSQnOKQB7uHNPAd8V4IHwm5f
         4RIu8Bj8AJ2tEruFPq+R0z/IXVrGs3xwalasoDhjlR9n01Jitza/PSMESSzn28xrXFj9
         7X8YejFIE7ROpqHESRM1y+p00F+x91dyo7NG+PzcS1O3n/o2dALBSw3lDYLx+NpzXDzf
         AfMP4rt29LQjVuDhkXm1BGJuLgW3/iD2vPjR57zakRdgFICsZXMAXySMxjtW6/cv5Hp+
         ig3bL6ktRLAaaxM3IGcUe6SVi71V0cvzFGseY4RciHgugJvrFQW8TyGBu5KxsdDq+7Y7
         rKdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHQy2G2IKAdcz2DVOHfp3XxmLJb5gtyNt7rb92s2Nu+xRbOStiN4E6sH6mKhHJrbmlTEm5Lx94clHyLF8qJSC/J/7ye29Kuk2hgA==
X-Gm-Message-State: AOJu0Yzew2SHo2jrHKr0xY8NTccCdipqjzokNdjNgo2RCXOD1YW3WBm1
	O6vG5c8n4ixMP/HKntIe3+1dkoSewga+603JgL4Itsh4O58eLtZZtFZ0roHBMTo=
X-Google-Smtp-Source: AGHT+IF6mEEorcmc78Jh2JqE/2g+YCduyT8m9BvWcoXYiiwCnJYwE/grVOArAgCLk+3BywJlJp44Og==
X-Received: by 2002:a2e:9d05:0:b0:2eb:120c:1a59 with SMTP id 38308e7fff4ca-2ec0e5c6614mr15445521fa.16.1718361237579;
        Fri, 14 Jun 2024 03:33:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec0596521bsm5135361fa.0.2024.06.14.03.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:33:57 -0700 (PDT)
Date: Fri, 14 Jun 2024 13:33:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
Message-ID: <pprbxhow6gl6bqlhzoiozz7ymwqk5uwuyuwclviulie4ucyjok@xv34zrzw72oz>
References: <20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr>
 <20240613-hdmi-tx-v4-4-4af17e468699@freebox.fr>
 <348e16f1-0a1b-4cad-a3f0-3f7979a99a02@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <348e16f1-0a1b-4cad-a3f0-3f7979a99a02@linaro.org>

On Fri, Jun 14, 2024 at 01:55:46AM GMT, Konrad Dybcio wrote:
> 
> 
> On 6/13/24 17:15, Marc Gonzalez wrote:
> > From: Arnaud Vrac <avrac@freebox.fr>
> > 
> > Port device nodes from vendor code.
> > 
> > Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > ---
> 
> [...]
> 
> > +
> > +			hdmi: hdmi-tx@c9a0000 {
> > +				compatible = "qcom,hdmi-tx-8998";
> > +				reg =	<0x0c9a0000 0x50c>,
> > +					<0x00780000 0x6220>,
> > +					<0x0c9e0000 0x2c>;
> > +				reg-names = "core_physical",
> > +					    "qfprom_physical",
> > +					    "hdcp_physical";
> 
> The way qfprom is accessed (bypassing nvmem APIs) will need to be reworked..
> but since we already have it like that on 8996, I'm fine with batch-reworking
> these some time in the future..


Yes. The whole qfprom / hdcp part needs to be reworked, but it should
not stop the platform from flowing in.

> 
> > +
> > +				interrupt-parent = <&mdss>;
> > +				interrupts = <8>;
> > +
> > +				clocks = <&mmcc MDSS_MDP_CLK>,
> 
> Not sure if the MDP core clock is necessary here. Pretty sure it only
> powers the display-controller@.. peripheral

It might be, or it might be not. DSI interfaces also use MDP_CLK on
those platforms.

> 
> > +					 <&mmcc MDSS_AHB_CLK>,
> > +					 <&mmcc MDSS_HDMI_CLK>,
> > +					 <&mmcc MDSS_HDMI_DP_AHB_CLK>,
> > +					 <&mmcc MDSS_EXTPCLK_CLK>,
> > +					 <&mmcc MDSS_AXI_CLK>,
> > +					 <&mmcc MNOC_AHB_CLK>,
> 
> This one is an interconnect clock, drop it
> 
> > +					 <&mmcc MISC_AHB_CLK>;
> 
> And please confirm whether this one is necessary

Let me quote the discussion on #linux-msm

<lumag> jhugo, do you know anything about MNOC_AHB_CLK / MISC_AHB_CLK? Should they be enabled for HDMI to work?
<jhugo> lumag: MNOC AHB, yes
<jhugo> lumag: MISC, probably

> > +				clock-names =
> > +					"mdp_core",
> > +					"iface",
> > +					"core",
> > +					"alt_iface",
> > +					"extp",
> > +					"bus",
> > +					"mnoc",
> > +					"iface_mmss";
> > +

[...]

> > +
> > +			hdmi_phy: hdmi-phy@c9a0600 {
> > +				compatible = "qcom,hdmi-phy-8998";
> > +				reg = <0x0c9a0600 0x18b>,
> > +				      <0x0c9a0a00 0x38>,
> > +				      <0x0c9a0c00 0x38>,
> > +				      <0x0c9a0e00 0x38>,
> > +				      <0x0c9a1000 0x38>,
> > +				      <0x0c9a1200 0x0e8>;
> > +				reg-names = "hdmi_pll",
> > +					    "hdmi_tx_l0",
> > +					    "hdmi_tx_l1",
> > +					    "hdmi_tx_l2",
> > +					    "hdmi_tx_l3",
> > +					    "hdmi_phy";
> > +
> > +				#clock-cells = <0>;
> > +				#phy-cells = <0>;
> > +
> > +				clocks = <&mmcc MDSS_AHB_CLK>,
> > +					 <&gcc GCC_HDMI_CLKREF_CLK>,
> > +					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
> > +				clock-names = "iface",
> > +					      "ref",
> > +					      "xo";
> 
> GCC_HDMI_CLKREF_CLK is a child of xo, so you can drop the latter.
> It would also be worth confirming whether it's really powering the
> PHY and not the TX.. You can test that by trying to only power on the
> phy (e.g. call the phy_power_on or whatever APIs) with and without the
> clock

I'd prefer to keep it. I think the original DT used one of LN_BB clocks
here, so it might be that the HDMI uses CXO2 / LN_BB instead of the main
CXO.

If somebody can check, which clock is actually used for the HDMI, it
would be really great.

> 
> Konrad
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

