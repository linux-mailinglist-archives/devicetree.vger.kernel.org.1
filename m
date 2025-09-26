Return-Path: <devicetree+bounces-221742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BCABA2920
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B0AA3B436C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 06:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B95F27D77D;
	Fri, 26 Sep 2025 06:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rW+ruKNK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932B88F6F
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758869428; cv=none; b=pGLSqUzUh7Vj+YP6WQ1Eg23RFXbpTL2bSssxt7ILf4pUJdJC6uBsl2E3uUgfchsfsVyg3Lp+ArvNVtQuWX3+LgPBeamSEcJwT09ifsZe1ZBAurr5pVIuLx0U8ZINZx5X/MBYHJkZuQ9em8spnLmJ4eJQFY7qPiXYsHKvSll+0+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758869428; c=relaxed/simple;
	bh=JeiZMAdBfoDaJdELXLbBBT1DLTAze95bhqjWibF8b5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kna+hWS0QrnkSCcIg157IH586iuEoGBa4SW3znyGd+pmu5Y4csmg4wDb1lKVnBgs1ZB7QZg5KNCYzNxupGViVveLGDqmcW1aH1l15TzZDJQUUBdCJUE7EddiAaG0zxu3QLVr/rFwZvhk5q+YxrnCccx9NWdIEfyo135T+sitY9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rW+ruKNK; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46e1cc6299cso17032615e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 23:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758869425; x=1759474225; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NFTsrA5/XpN/aDPrsWUi64EUIAXE1gernUECI4xL01o=;
        b=rW+ruKNKll5EhnG2oOhKIvMEad+3krImExig4LkwcQG7DBj0kcn2NryFioX3fSmJH7
         HklP74ToNbfZITW6vXgRm1RjZwHVfvJkh3EJHE9ci2GDxTi9Z/DzvF74cw0n234YhrPI
         RhpMH2SkrY6ls6ZvbfBzGbbOU0I43O1vWXC7pFV358LP+O6T3mLHCnxeMjYhZ4PaWFBv
         /CPPYIlByCPyXJ3hhK4yJL4tOvNkuBl1JI2fJbl6li7FfnUNZp+7IM3zje/wxKrewIxA
         agwutEIni/EBxf4BZZW4Xtrkpjy1YT+61bjSSxSm54ECR2IbpyhyflEHX0rrcyis8fNh
         doRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758869425; x=1759474225;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFTsrA5/XpN/aDPrsWUi64EUIAXE1gernUECI4xL01o=;
        b=JUd35Gi+bfzMIfImp5dCwXl+rpPWUQMJIyva4AaH967lx/xOAZTKV1SovQU6hHK6S8
         peskpaomQxJvApdcR1PpxQFdGE4O7r2nTa5Eo9hDjlCLIe6WAG3KF2SZ4GB8p/dH+3rZ
         VwfWV4e9pMYrGj6NMc96Q+gQ2oWZbJKUygus3I17MLY83efccxJ/b+POK+pq8oL/ZeZr
         JsaJE4gB9ohw6CjuLv+Zy0qZJ7WFzwmv2QmQZTPbiZvQDqNqFjeO3VCCVw6UaQ8wfnzk
         LaeicW7pDCnNne7XFyF11KLxctU4cOD/2CpfriK+eEy6k8kuT5ArwwQF52409b0Mm/NU
         G+Hg==
X-Forwarded-Encrypted: i=1; AJvYcCXAVB4trdRoQerlG10kZQrGXLkHdiilIwkf52ZORRl0krcbiG0glbcDYcGCY+WaSfDUmM9lhzhfCOnQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxPn2FCaLDskLrQ9qUDpJiXK0lMtlaHmZ5skcqyNW2y190IEgdk
	cii075eVfUhtmP16tJl3sjbIGsRD0ZjVaLMl3jVjwILfUql1cdWJyCfba8wONNXx7Wg=
X-Gm-Gg: ASbGncvnVIPfTOs0SPAruj3vaVKURX2CTfl612KdTR/Vo7TV1e5VknxbJO4jGAuThZj
	UUTPBfXZzUO2hPlIvIuTPwNKlI7mRAr2z/q0xh0Sj2wtHZm32kug9UN068R8TSzZNkK25A9bHi3
	xHMqUz1r1vJo4Zg8BsrIyIfrYhTSQUDy2p5dws8776P2mZ3cNWkwQgyCSl/57SI/R9eGRW//AAS
	X0HJexdfySuQcTaMldvIb1D4rbm4dARt3TNJyJi1CAr+sInzv5ToDAi9sSm/BmP6SgzpH6OPl+6
	Uf8IOmxehxg88qiG/wwT2RH96O2rbVxXHjOy8MrA6Tpf5h59fNTJr7xdIXa+sLUL1k1azhkX75U
	7y5qeEJFotRVO0D8Rk0+HSA==
X-Google-Smtp-Source: AGHT+IFyx6DPnlr6W6V0+TXiAp7mU5XDK4wWvIBL9OAv7zYNMXQhdyyL5XhqSCjFW7RXKqfYCBtV6w==
X-Received: by 2002:a05:600c:8484:b0:46e:1abc:1811 with SMTP id 5b1f17b1804b1-46e329f653emr46236185e9.27.1758869424835;
        Thu, 25 Sep 2025 23:50:24 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2ab31ea3sm103257195e9.12.2025.09.25.23.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 23:50:24 -0700 (PDT)
Date: Fri, 26 Sep 2025 09:50:22 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pankaj Patil <pankaj.patil@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: glymur: Describe display related
 nodes
Message-ID: <r7f4zzugs3io4ho7qdjudh2ebyphtsjdnchnj7hnt7msoiylfz@dhfgzjg3sh46>
References: <20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org>
 <20250925-dts-qcom-glymur-crd-add-edp-v1-1-20233de3c1e2@linaro.org>
 <43jgqfcw2nnasdnskfdri5swddr6kunvvp6oxzqibnlvyc4jd2@4y6x7fy5shq2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43jgqfcw2nnasdnskfdri5swddr6kunvvp6oxzqibnlvyc4jd2@4y6x7fy5shq2>

On 25-09-25 20:11:11, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 06:02:48PM +0300, Abel Vesa wrote:
> > The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> > controllers. Describe them along with display controller and the eDP
> > PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> > clock controller and link up the PHYs and DP endpoints in the graph.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 492 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 484 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > index a131cd6c3d9e7f14ed1c4aef4b68e1860cc3bca5..41d89998b1fe14a24cd528e73afc37cf2a840bab 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi

[...]

> > +			mdss_dp0: displayport-controller@af54000 {
> > +				compatible = "qcom,glymur-dp";
> > +				reg = <0x0 0xaf54000 0x0 0x104>,
> > +				      <0x0 0xaf54200 0x0 0xc0>,
> > +				      <0x0 0xaf55000 0x0 0x770>,
> > +				      <0x0 0xaf56000 0x0 0x9c>,
> > +				      <0x0 0xaf57000 0x0 0x9c>;
> > +
> > +				interrupts-extended = <&mdss 12>;
> > +
> > +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
> 
> No pixel1 clock?

Will add it in next version. Everywhere.

> > +
> > +			mdss_dp1: displayport-controller@af5c000 {
> > +				compatible = "qcom,glymur-dp", "qcom,sm8650-dp";
> 
> This doesn't match your own bindings. WT?

Urgh. Yep, this is wrong. sm8650 compatible needs to be dropped. Will do
in the next version.

> > +
> > +				mdss_dp1_opp_table: opp-table {
> > +					compatible = "operating-points-v2";
> 
> Is it differnt from dp0 table?

Nope, they are the same. Will use the dp0 table for all controllers.

Thanks for reviewing.

Abel

