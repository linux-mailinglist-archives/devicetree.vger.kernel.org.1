Return-Path: <devicetree+bounces-8812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B62437CA34E
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6ACAC281577
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4531A29A;
	Mon, 16 Oct 2023 09:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDQoeLyx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBB11A5A7
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED7C2C433C8;
	Mon, 16 Oct 2023 09:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697447053;
	bh=dExRp4ue+HwGoPfiYWXRdNthCDI/2BlliyqJLiwYqaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vDQoeLyxrYag18/YbNgFMAWyg8UqsTIvw7KCXILbbNfXF/Ma5XbAHyj4asibNORTn
	 1NEJukqBWKtpSVRYkbwCjWXSFlCNFTUoODkgWHp1XS555Bi4NByLjSuy78TkKFxhBd
	 QWHK/P769cawiLoJYS56XzdQMlCakkMmK2AX2vKJiYfGoZAmWUCbCBt5KMvU2B2MrA
	 IbBpllmHCXQhFby3CYsctybZ7mPtT774fX5GPq/tj+bqzvGggIGCuGiTVBoGAR+JuD
	 zMK4cKhZhHw/kVO1N2viNzveDxzYSXK4CfK91L8RdayLd3Sovwr/dIse6JyjYV6zUO
	 xNH1xsbnCL0jg==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qsJWB-0003UZ-1A;
	Mon, 16 Oct 2023 11:04:07 +0200
Date: Mon, 16 Oct 2023 11:04:07 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-crd: fix eDP phy compatible
Message-ID: <ZSz8h6fc7R3CiioE@hovoldconsulting.com>
References: <20231016080658.6667-1-johan+linaro@kernel.org>
 <CAA8EJpoPSHfRMgzs69Z-Zk0L8z8_8sveh22pj4ZOAwyAPvesHQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpoPSHfRMgzs69Z-Zk0L8z8_8sveh22pj4ZOAwyAPvesHQ@mail.gmail.com>

On Mon, Oct 16, 2023 at 11:53:02AM +0300, Dmitry Baryshkov wrote:
> On Mon, 16 Oct 2023 at 11:07, Johan Hovold <johan+linaro@kernel.org> wrote:
> >
> > The sc8280xp Display Port PHYs can be used in either DP or eDP mode and
> > this is configured using the devicetree compatible string which defaults
> > to DP mode in the SoC dtsi.
> >
> > Override the default compatible string for the CRD eDP PHY node so that
> > the eDP settings are used.
> >
> > Fixes: 4a883a8d80b5 ("arm64: dts: qcom: sc8280xp-crd: Enable EDP")
> > Cc: stable@vger.kernel.org      # 6.3
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> > index 772953dc428e..31a2a2d27f4e 100644
> > --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> > @@ -458,6 +458,8 @@ mdss0_dp3_out: endpoint {
> >  };
> >
> >  &mdss0_dp3_phy {
> > +       compatible = "qcom,sc8280xp-edp-phy";
> 
> Same question here as the one I've sent for Konrad's patch. Is it the
> same PHY type, just being repurposed for eDP or is it a different PHY
> type?

Just replied in the other thread:

	https://lore.kernel.org/lkml/ZSz7---IW_7Oj2Zr@hovoldconsulting.com/

Johan

