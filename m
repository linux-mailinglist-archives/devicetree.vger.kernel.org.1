Return-Path: <devicetree+bounces-247663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AE8CC9FAB
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 02:26:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00A8330034B8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 01:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6B02550D5;
	Thu, 18 Dec 2025 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n2NJexC6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZhZKBEI3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A7117993
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766021194; cv=none; b=SC5abWCGv3+agx3KqEldi6o9RpfVYM95MopMmO+mK8m9cG1ruTvjBNqxOP5M5Oc70bcw766VVShriVFxhqxoijtx5Ck/eqeLFBdqcYqbKzWM1UMHVv8TaulasslhtV3ZR1Yivs4sTkwAs4QuIhK5SmSypSwI8i1E0+ljs+9J7xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766021194; c=relaxed/simple;
	bh=lVsxsdWvZ5REx43OwYQq4EiNfof1psVdbEFOQ5eMDEI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nfkfSUD7LqCmffcFa62zYOrngyshlOFiudNwweeUhmLXq66f9/TcTwo+u7pyLsJgNRReI50isy4ge80wC47TaUS0OFWpd/8sqyBz5+su6mcwsXcbksLHw2GParMxP61/JUTRCdGFppcEVK+Xahimts3tC3+3KxkeGw02QPrUpao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n2NJexC6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZhZKBEI3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHN62TM4052406
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MnXa84jTt2Zg4U507u+SENlE
	SdZTxBSMOulLGsCR7Gk=; b=n2NJexC6IPsh5tY4Fi38Bf61cPtRWBGA/3vQM/YB
	vq2Qe+Am7eSJGIAzPWgF+88jc/FEY9oXiWUsfpOKE8r42EL69ZmUJTYX+arV9/xE
	hcToXiwbxQ1plLo8ZLTKSLWgxnXTDOrt/y7GHYYPy89oTW1TjA2EP3mgSqZSpela
	/8ZiS3F/6R5mxfdwNxdk3BBLCyKGQQTDlH7dH0eNBE7aF2tefCD6BjDz+UBaFQ2B
	dpr0K6SyYqimAwRGABz8wPnS/pxruZhz67spZpiwjJJjKGfuaIb7HxdtUiS+7GJF
	r1tJt0X1pvKRI0CLlE0YW4kzAAWZ6YF60NgtQd8MX9Nm+w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b45w50agu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:26:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6855557aso24962831cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 17:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766021190; x=1766625990; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MnXa84jTt2Zg4U507u+SENlESdZTxBSMOulLGsCR7Gk=;
        b=ZhZKBEI3r5OVCnSytpOlEFjR//mjFOq8FaLY5Zrtulj+G5QqA2/OZkYQv4xXnDajmp
         VR1ieao3J6Y+SNqGufeTaM/Qxex5soI66jp5TE4YAKAxylNsGdRxRrPPNS3eF9szc9OO
         uQdJMBReOb4QyKo6vgSKE2hRrjBeLGTLNj94SDgYu8+ROsCYrGrGXoUAeFmpwLSGdVZn
         jmHFNxANeN7DmstWO4lUMjj6h0jqZpl6VIDnlnm+ry9tCJ5pVSaFZ4h2TS2wyZR5v52k
         KKcKRiZdvlgavGqiF/3WFJUx5cRr35XD/wdh9shUXl02NBjkky2Um2N+HU6vy/sEwI0C
         7IsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766021190; x=1766625990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnXa84jTt2Zg4U507u+SENlESdZTxBSMOulLGsCR7Gk=;
        b=Mcn2/UK7+dgnDzb/twOVk5JsAWmkEmXXsgFaggoeIQCnQeYRY0nlM1dFGfQTaCTg5S
         0/lesbAlbHW+6O0eRv6jbjiLgVPVYorbaFjwAzGkoQQQTYecuVfFIWEX/xs+YR1awR9r
         Es9rh6Kmtw+42nIO1o0PiudcFEQ0fH2SAecZXCc3D9FAZtjCbd6abafGPuJjDmtSYRz3
         8UpoOGaRE9mrlP1XYuaSpXJYoXyS28eHuusPotqDaUsset5U2NuHyk7lgbra2t+mxaHD
         axbOAh39oPnstUv5X7RiRPCSE1AauanRNu39BP7mqr0guoFtCzrFeVA8AGHPQgJUogL6
         hnKw==
X-Forwarded-Encrypted: i=1; AJvYcCV+mjXLAe06uduVeaQJhSYr2LbAw5ZskaWdEQ+swXqq8qpFN2/Hjlr04Jo6sRIUcpZh2J232dmXY8L+@vger.kernel.org
X-Gm-Message-State: AOJu0YyBLeFS2dQpIE4ZjmVgjJr4zYk3nhZ8yObiBpUn8AiSts9QGxNA
	Atzn92VF4xpOLtDT/GmI29GbDayCvaxRpSq/F7WaqOs0T8xoIetjD90qW5KSjhRLHw/k+CGE7fM
	4wCKKlHlZ1hnCpxK/H38K2Cq60+jWJ88wldwNRCDe1RkeqcglOzbp8JMuhsVnfrlm
X-Gm-Gg: AY/fxX7You6ZwpjiMmT7DEiYaiJbjYr3LUYup9WDm4fqW+pI6LirY+DBzbgeu3pUwtS
	Nf+rQ1S7ZyBe4WzKKh9qDMgAp4NwdNSIIvho08hiopjxZsRjl0TSezSLpHTNSyKky3fzjIiGoUp
	9sXh63XXZ9l9IqFOJO0U2bzbJBqUJwc19KPv1k1L02H7R8rk7XFWAHzeTMSw3V4sueY+6kjecuP
	gG65beCVt3NzxSgWWejiEQIsg08PhOOEVFTm0+R7NVvz41zU46P1og3ahnKt5ae0LsCn93N13W2
	Vhw1ZonMgmPfum3kjVBmw9l/+1Wp+fDHI+TAQH4q+iyh0peqUevAaPZiJlvWD5Ke6/jSv3bHtOS
	4UTuqWxnpqIRByxaSJaS3zfZjPHFumGHl34SE/IDjhqtjI8e2TP/YXnVMTUH5IIC1RX4P6b4+GQ
	qRLb7S3k4+VDK5sr10D/U4SC8=
X-Received: by 2002:a05:622a:14e:b0:4f1:8bfd:bdc2 with SMTP id d75a77b69052e-4f35f4839ccmr20746831cf.41.1766021190508;
        Wed, 17 Dec 2025 17:26:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCW3H21K5I0JCBEg3yBCe/TeLTCfyD5Am91GbeWs8gM8XH+pix9Q9Xl9OBdooY8DJasWeZGw==
X-Received: by 2002:a05:622a:14e:b0:4f1:8bfd:bdc2 with SMTP id d75a77b69052e-4f35f4839ccmr20746581cf.41.1766021190044;
        Wed, 17 Dec 2025 17:26:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a132d3d41sm416477e87.30.2025.12.17.17.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 17:26:29 -0800 (PST)
Date: Thu, 18 Dec 2025 03:26:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
 <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
 <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: BdbDfhk4pMaEELTQ3fa_c2DpS9U7zA2q
X-Authority-Analysis: v=2.4 cv=eKceTXp1 c=1 sm=1 tr=0 ts=69435847 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=kO2wSEi4wa1dqs6BIsEA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: BdbDfhk4pMaEELTQ3fa_c2DpS9U7zA2q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAwOSBTYWx0ZWRfX3lnGkejKMK2i
 3kh+l3Mc4dKWjJjMDPh4FuCNmtntqKm/dgqYaBWkkqKMTfMfHEcX7OMeHrLahI5KLJbEv6H7r/F
 Vzn5CeG8lE9xRBu6kbnSgIQcJzidHm55wHCu9dsSkDYzbY0jq2gPHD7fZEeOGST5iwV32y+N4Ff
 nDA8mDj7VaULPSOs3HBkbCdIYoPuEciReso9Ah5Wf2SJx2GJdg2uE5Qd3b1H/B9hSocgfs8TCmS
 aV76mgFb4lX3C3tIEttHyX/fP5kvgEWw7GhsXitW/yjlH9ibIQBG5RoFEAYAEdkVUFnasUVo4Of
 EO6dI9WtiSOl4sBFHtmyVdSx14gpCFrCPLybIvn818SgFrz0ZUcLiZjQBU8Gx60eFGl1JV3C1BU
 aYIIT68Y9ZNw+HQ0W3zcxDpoOqE1AQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180009

On Mon, Dec 15, 2025 at 09:48:50PM -0800, Qiang Yu wrote:
> On Wed, Dec 10, 2025 at 03:51:15AM +0200, Dmitry Baryshkov wrote:
> > On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> > > Add QMP PCIe PHY support for the Kaanapali platform.
> > > 
> > > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> > >  1 file changed, 194 insertions(+)
> > > 
> > > @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> > >  	.ln_shrd	= 0x8000,
> > >  };
> > >  
> > > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
> > 
> > Is it really 8.0 or 8.20?
> 
> I double confirmed the version, it is really 8.0.

This is really strange. The SERDES offset not equal to 0, te
PHYSTATUS_4_20 bit instead of PHYSTATUS -- all of that has always been a
characteristic of N.20 PHYs.

> 
> - Qiang Yu
> > 
> > > +	.serdes		= 0x1000,
> > > +	.pcs		= 0x1400,
> > > +	.pcs_misc	= 0x1800,
> > > +	.tx		= 0x0000,
> > > +	.rx		= 0x0200,
> > > +	.tx2		= 0x0800,
> > > +	.rx2		= 0x0a00,
> > > +};
> > > +
> > >  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> > >  	.serdes     = 0x8000,
> > >  	.pcs        = 0x9000,
> > > @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
> > >  	.phy_status             = PHYSTATUS_4_20,
> > >  };
> > >  
> > > +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> > > +	.lanes = 2,
> > > +
> > > +	.offsets		= &qmp_pcie_offsets_v8_0,
> > > +
> > > +	.tbls = {
> > > +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> > > +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> > > +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> > > +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> > > +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> > > +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> > > +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> > > +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> > > +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> > > +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> > > +	},
> > > +
> > > +	.reset_list		= sdm845_pciephy_reset_l,
> > > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > > +	.vreg_list		= qmp_phy_vreg_l,
> > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > +	.regs			= pciephy_v8_regs_layout,
> > > +
> > > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > > +	.phy_status		= PHYSTATUS_4_20,
> > > +};
> > > +
> > >  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> > >  	.lanes = 4,
> > >  
> > > @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > >  	}, {
> > >  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> > >  		.data = &ipq9574_gen3x2_pciephy_cfg,
> > > +	}, {
> > > +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> > > +		.data = &qmp_v8_gen3x2_pciephy_cfg,
> > >  	}, {
> > >  		.compatible = "qcom,msm8998-qmp-pcie-phy",
> > >  		.data = &msm8998_pciephy_cfg,
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 
> > -- 
> > With best wishes
> > Dmitry
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

