Return-Path: <devicetree+bounces-139660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7A5A16861
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2452E7A3C1B
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340FA19924E;
	Mon, 20 Jan 2025 08:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NZS0gk1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B452B19AD8D
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737362826; cv=none; b=RVm0yEUjqQTDo8t9HTj/od9EWeVOb2l8yb5BxBc+45G2srA89CEQLR+TxIdlPUVw6sDQcWQ3VOk7TlIp4yld+mDvjPbyMrCnSRA2vKTjoiVr8ulJRip/kvTUKtYDm2AaBXHt+8nmDKQ9wCakTzRCbndW/ZsTOKtfr06sz6HO8lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737362826; c=relaxed/simple;
	bh=9LcO7s1LFjPgAtWAv39R0xXxN+qC/uSMB3PyfFJTWf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=imEFgv56J8J3kPNBraG2an670pEZRXXSKkjHSRrS5QLo8tNbN9FHlZatbdZoO3aIH71Y97yr9+EL6XM5wQ0Q1BY3V+ZIs0OQ09FFS0vJezrFmkowkePyMjb6v3F8HJPnGEAUXhx1fGloAoawVWEuhpps3pKO52Tul2e9aD/ijyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NZS0gk1a; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30613802a59so45125731fa.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 00:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737362821; x=1737967621; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rT/AIsIzZmWZmFkt/0ZfkjfdTGDusUnjQWHoi1TGJrA=;
        b=NZS0gk1agnss0qL7k13gHvcrraKrIy9WWA4xoaZEXYbEo9GKGUdkef6uC6wYgz25vB
         +AP6eqAmlV9v1Dvl1DOWaxe98okOb8EaNAa27QYiZj3+8f3gqpeWCi2SPJuPeuhB2XsY
         0kmT2vUZDiG8yPGvfYZIKGF1CoBvrNgGZOeNaHRuFIXZbpRMkRuGt/O60GYTdJP/hIZW
         JeorhNUfqjPBlfIIDjTptTxB/876/XiamX+/icgxHuwfJ2NDRu0t7ejRU0CuSZxowbp2
         1JzSsTMtYmKgVN65i0XA8lTStlsyLR9absu2v6aCgj18ihMapTPZOOTBv+sd5MseHKGm
         hRIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737362821; x=1737967621;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rT/AIsIzZmWZmFkt/0ZfkjfdTGDusUnjQWHoi1TGJrA=;
        b=KV8HkD8ahLSHgrZF1Goq30FBfsSs9RdmPxHzxrzbCZ55TivaHm7gELoIxc9CepQjvd
         ru2Q4L6HFUbnfHvM1wbNws29UwpsxKVaAdoW0qXtw+ZzKf73Zj0QWIXEHD6i/YG38UBF
         MYMZaWSaATunobpJ1/6ZwF4K7vZT/0tPMY0lfOCaWotVZ98MJRiTvmGqesrdsVTxhEVx
         ptD/7gwyhhnAUKZpeY4V7l1QJlLZxKhRft6kE4+thvhjM0qrMWVzCQnLUPYo7AetrmwQ
         RPUR0gokqrwIcaYBtbLOtMnt7CWSxF/buWXOtp7Slzf3u3hy8tuXx1tmToo4ZrxFc/LK
         wCAg==
X-Forwarded-Encrypted: i=1; AJvYcCUVWw4+pLzlCiCrjZ+eYngpXDG6W8qv2B3fR6sQY5HfRKgfQGXRvu9AR4yZ8CziJgDhpdpnoi7mdp3p@vger.kernel.org
X-Gm-Message-State: AOJu0YxCL5gU274yaEEu4OJdNCY86q4bmVMqteresURSyhGgSvOfiRdG
	Bjl9L5/LO4ZeUQeJggS4VY+etW0p9dIx+hX6OR+JTVaz1HlZLK7264rABv7KCw8=
X-Gm-Gg: ASbGncs7w3kbLfMkTajjqeIKa1rwjHoadljCS3V+qbjGQKC5vP/xrYMOrosOzyFjr7M
	oowNZAsdCQBVvYrYcr+uEXrg9858tIvrSWIxmd+f1VN2Cz5RMedAElpsKgHX7omBykM9IxSymAb
	Q7usNkOsgaMLE8H0qIZ7Gs66Uxe9K00EHu7frI3e+Y1nlTdVKTjUAheKzQ5KLNEgG1aNuQRaqjy
	yjOtE7/eBzIX11NhcdRihohz+ZFyPqowFFBfA3dnj+7u/7b2QCNFz9TDHAuCdEQTxSOiWDUNR19
	z6BHzyWNZ22HaDfpJOoOJIfSpfV2LYAfwqrxzlridB/UwgxzoA==
X-Google-Smtp-Source: AGHT+IGv1OA7N2Pccs82cOm1MpDroFDWPgmqD1jqgQWfbkWvR2MNnIRNXjYm+ELjoydLUhrsjf+eew==
X-Received: by 2002:a2e:bd84:0:b0:300:3a15:8f23 with SMTP id 38308e7fff4ca-3072ca5b61dmr39256741fa.7.1737362820729;
        Mon, 20 Jan 2025 00:47:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a330175sm15004111fa.5.2025.01.20.00.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 00:46:59 -0800 (PST)
Date: Mon, 20 Jan 2025 10:46:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add cpu scaling clock node
Message-ID: <scfoxmstfqgvqmxovb7h5gulh6bjhgexs6yxe2n75izc7sawby@djphyr2ilei3>
References: <20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com>
 <20241108-qcs615-mm-dt-nodes-v1-2-b2669cac0624@quicinc.com>
 <cgg3s6f555eb4jl5segz7irwx2kkza7w6zucfyo7myrbjhng3v@2qmyrobzakhd>
 <71635b71-71e4-4c17-add1-bf41ce770632@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71635b71-71e4-4c17-add1-bf41ce770632@quicinc.com>

On Sun, Jan 19, 2025 at 04:08:20PM +0530, Taniya Das wrote:
> 
> 
> On 11/9/2024 5:30 AM, Dmitry Baryshkov wrote:
> > On Fri, Nov 08, 2024 at 11:54:05AM +0530, Taniya Das wrote:
> > > Add cpufreq-hw node to support cpu frequency scaling.
> > 
> > CPU, not cpu.
> > Also the prefix is incorrect for both patches.
> > 
> 
> Will update to CPU.
> 
> > > 
> > > Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs615.dtsi | 29 +++++++++++++++++++++++++++++
> > >   1 file changed, 29 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > > index 8c98ac77dc5c665ef296e65ac76c1b59be485abb..2c61da790e78b131e454991c968ece40dd5ca56d 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > > @@ -33,6 +33,8 @@ cpu0: cpu@0 {
> > >   			power-domains = <&cpu_pd0>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_0>;
> > > +			clocks = <&cpufreq_hw 0>;
> > > +			qcom,freq-domain = <&cpufreq_hw 0>;
> > >   			#cooling-cells = <2>;
> > >   			l2_0: l2-cache {
> > > @@ -51,6 +53,8 @@ cpu1: cpu@100 {
> > >   			power-domains = <&cpu_pd1>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_100>;
> > > +			clocks = <&cpufreq_hw 0>;
> > > +			qcom,freq-domain = <&cpufreq_hw 0>;
> > >   			l2_100: l2-cache {
> > >   			      compatible = "cache";
> > > @@ -68,6 +72,8 @@ cpu2: cpu@200 {
> > >   			power-domains = <&cpu_pd2>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_200>;
> > > +			clocks = <&cpufreq_hw 0>;
> > > +			qcom,freq-domain = <&cpufreq_hw 0>;
> > >   			l2_200: l2-cache {
> > >   			      compatible = "cache";
> > > @@ -85,6 +91,8 @@ cpu3: cpu@300 {
> > >   			power-domains = <&cpu_pd3>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_300>;
> > > +			clocks = <&cpufreq_hw 0>;
> > > +			qcom,freq-domain = <&cpufreq_hw 0>;
> > >   			l2_300: l2-cache {
> > >   			      compatible = "cache";
> > > @@ -102,6 +110,8 @@ cpu4: cpu@400 {
> > >   			power-domains = <&cpu_pd4>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_400>;
> > > +			clocks = <&cpufreq_hw 0>;
> > > +			qcom,freq-domain = <&cpufreq_hw 0>;
> > >   			l2_400: l2-cache {
> > >   			      compatible = "cache";
> > > @@ -119,6 +129,8 @@ cpu5: cpu@500 {
> > >   			power-domains = <&cpu_pd5>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_500>;
> > > +			clocks = <&cpufreq_hw 0>;
> > > +			qcom,freq-domain = <&cpufreq_hw 0>;
> > >   			l2_500: l2-cache {
> > >   			      compatible = "cache";
> > > @@ -136,6 +148,8 @@ cpu6: cpu@600 {
> > >   			power-domains = <&cpu_pd6>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_600>;
> > > +			clocks = <&cpufreq_hw 1>;
> > > +			qcom,freq-domain = <&cpufreq_hw 1>;
> > >   			#cooling-cells = <2>;
> > >   			l2_600: l2-cache {
> > > @@ -154,6 +168,8 @@ cpu7: cpu@700 {
> > >   			power-domains = <&cpu_pd7>;
> > >   			power-domain-names = "psci";
> > >   			next-level-cache = <&l2_700>;
> > > +			clocks = <&cpufreq_hw 1>;
> > > +			qcom,freq-domain = <&cpufreq_hw 1>;
> > >   			l2_700: l2-cache {
> > >   			      compatible = "cache";
> > > @@ -729,6 +745,19 @@ rpmhpd_opp_turbo_l1: opp-9 {
> > >   		};
> > >   	};
> > > +	cpufreq_hw: cpufreq@18323000 {
> > > +		compatible = "qcom,cpufreq-hw";
> > 
> > This doesn't follow the bindings, does it?
> 
> I will add and re-use the closest target compatible.
> 
> > 
> > > +		reg = <0 0x18323000 0 0x1400>,
> > > +		      <0 0x18325800 0 0x1400>;
> > > +		reg-names = "freq-domain0", "freq-domain1";
> > > +
> > > +		clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
> > > +		clock-names = "xo", "alternate";
> > 
> > Are the DCVSH interrupts?
> > 
> This target does not have DCVSH interrupts directly connected to the
> CPUFREQ-HW.

So, does it require a separate LMH driver, like the one used for sdm845?

> 
> > > +
> > > +		#freq-domain-cells = <1>;
> > > +		#clock-cells = <1>;
> > > +	};
> > > +
> > >   	arch_timer: timer {
> > >   		compatible = "arm,armv8-timer";
> > >   		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> > > 
> > > -- 
> > > 2.45.2
> > > 
> > 
> 
> -- 
> Thanks & Regards,
> Taniya Das.
> 

-- 
With best wishes
Dmitry

