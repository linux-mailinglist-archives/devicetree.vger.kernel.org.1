Return-Path: <devicetree+bounces-2575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 342617AB69B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 61655B20A9C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E025241E43;
	Fri, 22 Sep 2023 16:58:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8410441E3C
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:58:31 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F6EC122;
	Fri, 22 Sep 2023 09:58:30 -0700 (PDT)
Received: from g550jk.localnet (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id A17E0CFADA;
	Fri, 22 Sep 2023 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1695401878; bh=l2uaQdl/zjcri8u7O6TdgKvYgL59pb6rEs98yvz6Xio=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=GCRzLVMBAWwDZa5wTWeHAdz6QcFhwHuy+6h4ZemEUzGVSrALr69RhuRGgXNCQLzme
	 cVE0sF/qrjvdXy6NPftTWv/MndjHZC1T3cTga6IemVWNAqUwjA/euxnbeNBEVi53gu
	 DV/JDwpMLolUyqDQfQTenahg/Qy9eOT6lDAe+5F8=
From: Luca Weiss <luca@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: msm8226: provide dsi phy clocks to mmcc
Date: Fri, 22 Sep 2023 18:57:58 +0200
Message-ID: <2155790.irdbgypaU6@z3ntu.xyz>
In-Reply-To: <3275085e-e4ed-6b0b-c108-cde90a8283b8@linaro.org>
References:
 <20230712-msm8226-dsi-clock-fixup-v1-1-71010b0b89ca@z3ntu.xyz>
 <3275085e-e4ed-6b0b-c108-cde90a8283b8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Samstag, 15. Juli 2023 16:08:37 CEST Konrad Dybcio wrote:
> On 12.07.2023 09:52, Luca Weiss wrote:
> > Some mmcc clocks have dsi0pll & dsi0pllbyte as clock parents so we
> > should provide them in the dt, which I missed in the commit adding the
> > mdss nodes.
> > 
> > Fixes: d5fb01ad5eb4 ("ARM: dts: qcom: msm8226: Add mdss nodes")
> > Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> > ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Konrad

Hi Bjorn,

this patch is still waiting to be picked up :) Would be nice to get it into 
v6.7.

Regards
Luca

> 
> >  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> > b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi index
> > b6ae4b7936e3..d2d09f2f3cee 100644
> > --- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> > +++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> > @@ -404,8 +404,8 @@ mmcc: clock-controller@fd8c0000 {
> > 
> >  				 <&gcc GPLL0_VOTE>,
> >  				 <&gcc GPLL1_VOTE>,
> >  				 <&rpmcc RPM_SMD_GFX3D_CLK_SRC>,
> > 
> > -				 <0>,
> > -				 <0>;
> > +				 <&mdss_dsi0_phy 1>,
> > +				 <&mdss_dsi0_phy 0>;
> > 
> >  			clock-names = "xo",
> >  			
> >  				      "mmss_gpll0_vote",
> >  				      "gpll0_vote",
> > 
> > ---
> > base-commit: 40b055fe7f276cf2c1da47316c52f2ff9255a68a
> > change-id: 20230712-msm8226-dsi-clock-fixup-ad8bfd411eb9
> > 
> > Best regards,





