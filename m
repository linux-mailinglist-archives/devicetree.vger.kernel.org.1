Return-Path: <devicetree+bounces-8798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F67CA159
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C2F21F21C02
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E23918626;
	Mon, 16 Oct 2023 08:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvM7F7Aa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEA018623
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:12:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8683DC433C8;
	Mon, 16 Oct 2023 08:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697443956;
	bh=fz3Cis1kkhATM4ksmtk3ODcDUPlOx3/y5Yb4JqsZbG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pvM7F7Aa4XQpxQb39kdmZ1vntDfcoRxNTLmAYGiKga+udMNamimeO46Mi9ZyFrk+z
	 ME9FPRwaZ+HAB+HuCOpK27MUERmNB+EHJzQAz+qvoWKi/l3sRevukZr2Cj286rMrWy
	 LJjmxwGrKxHI+qGcfMcI3Q+gS2x0KsBCsPotuqkosaL91JLENBE5MVFO/hmUOIFggd
	 W0afhsR1u3HmH6fAPTKLdQT0SwJqzqBM3w8Pgu6KxLXbKXrtDw47JJqfHoiKluRHP9
	 cLsmAKUTRtunZmPcP8X/hH5Y/EVJOUjBte+EIsKKjGUZE7Vd4WyyuiiNaNRWxrv9f+
	 jv1piMsVjAovQ==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qsIiE-0001mM-2o;
	Mon, 16 Oct 2023 10:12:30 +0200
Date: Mon, 16 Oct 2023 10:12:30 +0200
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY
 compatible
Message-ID: <ZSzwbmE_grD-giRp@hovoldconsulting.com>
References: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
 <ZRqFYWtEcuSCauCf@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRqFYWtEcuSCauCf@hovoldconsulting.com>

On Mon, Oct 02, 2023 at 10:54:57AM +0200, Johan Hovold wrote:
> On Fri, Sep 29, 2023 at 06:02:57PM +0200, Konrad Dybcio wrote:
> > The DP PHY needs different settings when an eDP display is used.
> > Make sure these apply on the X13s.
> 
> Good catch. This looks to be more in line with what Bjorn intended.
> 
> You should fix up sc8280xp-crd and sa8295p-adp.dts as well however.

As we discussed off-list, some of the ADP DP PHYs are apparently just
confusingly named "eDP" for some reason so that does not need fixing.

I sent a fix for the CRD here:

	https://lore.kernel.org/all/20231016080658.6667-1-johan+linaro@kernel.org/

> >  &mdss0_dp3_phy {
> > +	compatible = "qcom,sc8280xp-edp-phy";
> 
> Nit: Can you add a newline here after the compatible, please?

Would you mind respinning this one with an added newline here for
consistency, though?

> >  	vdda-phy-supply = <&vreg_l6b>;
> >  	vdda-pll-supply = <&vreg_l3b>;
 
Johan

