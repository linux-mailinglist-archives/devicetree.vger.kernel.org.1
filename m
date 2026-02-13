Return-Path: <devicetree+bounces-265475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDWZOYaSj2l/RgEAu9opvQ
	(envelope-from <devicetree+bounces-265475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:07:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 432A71398EC
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40000304B030
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 21:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C829286D7E;
	Fri, 13 Feb 2026 21:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MR1/BEEE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QZgsFNg+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342AF20DD51
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 21:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771016821; cv=none; b=Vd5nar4WO2ib93Xb6TAw08MwBPFoI8LeMKZ1DKkZC2+cNHkd6kN4wlqF0aonIF213EL/hW1/Kjq0j5xNERwRO0rOwhOVA8g6Th/uaav9HwIE+PXaMWaLW2kTbBkCL+Taen2HH85v+jQTfimhkrhr71gNsIxmio6WS/WMDCCgadc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771016821; c=relaxed/simple;
	bh=pvX0qD+BxhDp4RHo7v7HNqfm4Toxz64yP3LF77EctMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=poZXFZUcc3154I+u5NjDFkU1PaKEonEQM7X4HDTj65mCI92zQ7NOmHLoN/IS8/K/qSewIb7bIC/HtRJUZJz0EakCVlfxne9GK0kML1y7q+sWV/yfZqvLNFc8LetWbn4jjtXQ6bd60oJGjaa3P/o5wH73md+aHehRZwtVKa0LNsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MR1/BEEE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QZgsFNg+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DENtAc3272210
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 21:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fxTjLbHnLmXQoT5fNrXa0GhY
	+U/uWzDJb1svuEha72Y=; b=MR1/BEEEP6HKSDcuLwr5vcavcwV1FEBEXY0E/xZ1
	oN5i5j5TWjpegJIiNkQZk1z1nYxUSHylnrr1in3vGw46B4/EHAEumuVP0iTpbM+F
	5Kankz5xHFY3nK0PFBNs1SttOXxmjgF9j7ogAVCjl2R4NbwaavEoW1WalREoJms6
	FM3y4ttkdRsejtWJYLYmQ7Wv2CEigQDn0B0XvkcHlOD7WdYTvMCfk+wyw3c1Mc4K
	GvC7+cP8QMRG4BgZgbRsy10cSM+huuD1QntvYk0f2EmORnAz0FfmOjU0MQVLfFJN
	t8cn5AqBoc7Z6JQDlmFSMMpapU6NWZllBHVRyiQEdGQfAg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ca5pd9fw8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 21:06:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c881d0c617so515418585a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771016817; x=1771621617; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fxTjLbHnLmXQoT5fNrXa0GhY+U/uWzDJb1svuEha72Y=;
        b=QZgsFNg+sjrbZYUf6wSl+ZiuxQIx6s+1ppq+gu1sy0hueER9EWn+c059676ff/sYyc
         YcrYuRdaRxBKgD8uKSjuMxgyZ7R/XSlAN1ZTXPUMkV8CpAr4CPJ15cAzgNJYEz/uByhG
         LVEq6duCqpeVcov+RGUwmPtQozOE5cabCbhH5jBO+YUCvc2jBVM+/995dNoA1474lLEh
         bD4EcXIWY+7Alc+Z2jBLZx04rXap3zGMs3IQUlcwe769jIjQDldWiCkf+tvrd77m1Qwl
         s9MNRMDb9lh36pE0RA9ES+gFJr7QCobfzqpCK1OskHEbJRKbue9wiPszyJ4unNHTUJJG
         qGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771016817; x=1771621617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxTjLbHnLmXQoT5fNrXa0GhY+U/uWzDJb1svuEha72Y=;
        b=p4LGKP+QKs/PaVmneT98GjhMGrwn2iSqfDtGJZOY6Hdeiq9VT6Q5L/gSG1PkBVgUZQ
         nYyu7bND9fvexPTxDM9gTjGEtLs9IHe/3ax8Rf9ljSBxeJb4N9Q5f+g7ZtNVveH83pSS
         YYi18Mous/Er3LH4pukJrWfbJAiYqgLPrFilJbtAJF1aKn22TJgfPU/IwLF4h4BsiBg4
         kJyHKo/DHrVXY1Q9PG6fLUCgc7ksua2DM2T0+Zde029YW2GxBrI3aRySyBEq/C8WHHjs
         gshrw6XOQmSaLBSKAqEZt9pAkrhO30KOp9eUatXFcDVB22+TmwogSwtfJrjA35hk4Ck+
         dVUA==
X-Forwarded-Encrypted: i=1; AJvYcCW3X1QqmdCKYZJvCKVeBAr++BZKijfd8wPqYEa/ap4xkRKsvMYsQdo03Bet0sOFAW0ffKozE1rZJYXg@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjnd6Iwpj8xIgZjHnKGBV2AI9CnmFFWCyIvFwgUs/+f3olV2Vv
	Hbk0uBRmFhnk9uuLjP+Iny1B8HpIrfb1OLQG1ezA9xRBBnHxpnjPu7/s6YQcZjClkzcV6bQO0q2
	yD33mMZUPU8boQxYhIL6s6mbweVrmXRTEw/9a9sihTYgb0fvF1CpCf8P0e7IdSfjx
X-Gm-Gg: AZuq6aJ1Kjs4g/oi1AHO/TjfMCFwvY76UZZwt0rS1Ygcoo84yz6AFSlEy2uXLDV2LkJ
	Y/FjhUDYfkqweQlYOoW3O3HC+FUIMGgXR4npyG968jZkL2F9DAJk0Ln6s51cVBsNqQ7XXqb+f33
	beg98AD/8L4eV4wx7xgK+8fXnjBx8SIzasMn8v9C71Y8ag9ZoaNgAQcMsOguJqjDAD4LxtN4BPg
	SE0JvoSRoWFiHCPLyXTILWnKXAxxjEJGz1NhaCitIVy2E9iDbz5TPNBhg8EPsq9TNtThpXO2AW9
	PFngmQ1XQ4UAE9TKorPaeiOwPsfb6xje4vUexaaYuflo/lD6ZYfYPvHlYeg7NbvROwwy9pWP7G9
	qY/i9yYXkrS0vzLMKlSokswcl3LL/DPfYHhai8xtPojBf/4/mmMvHFQv+OYoossQONAE50d8lgu
	HtTGa2xFVN5hhXLR6OaQMD/hvLD41oHA5VIIE=
X-Received: by 2002:a05:620a:3941:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8cb4bf7ea70mr126052185a.15.1771016817321;
        Fri, 13 Feb 2026 13:06:57 -0800 (PST)
X-Received: by 2002:a05:620a:3941:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8cb4bf7ea70mr126047085a.15.1771016816688;
        Fri, 13 Feb 2026 13:06:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5b90adsm1772204e87.88.2026.02.13.13.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 13:06:54 -0800 (PST)
Date: Fri, 13 Feb 2026 23:06:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <lvaxthcmqvjit4hnofqikxog3vi557elctiqc3nj3ere7rs47v@xcnwzrzc6koy>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
 <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
 <7zdyb2wnojudnrnomnx4aiwvni3e6i52kfioflb3gslztsizkw@ofvvkvrv5f3s>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7zdyb2wnojudnrnomnx4aiwvni3e6i52kfioflb3gslztsizkw@ofvvkvrv5f3s>
X-Authority-Analysis: v=2.4 cv=Rp7I7SmK c=1 sm=1 tr=0 ts=698f9272 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=6H0WHjuAAAAA:8 a=qLpTsGN6TSyvEDe6a9wA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 9gr9LdNLZc4IffHu3q-I8WdFeuQBlNjS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDE2MiBTYWx0ZWRfX5Tn648zOTXlL
 Y2uD1sDiFAstaqzr3+Gi6N0rOwhXB65szzCK/Pa+CU96GzJoC6w5CRf9F2SZpsTly7qv4XtN/1N
 fwGG+h9CAOJLpg1VI7BNKbFfs4vJAntXKQLBhlaDdhMeOr5+O6tH05bqI6RztFgixIAAoizzg0z
 vZluoy8oh3Y3y4ImeAY/sokpCDfYngJiiSIpDiCyz3pPvKJtXrOZLAUrZqNbjOycXsehg34MVOt
 25HRjfMN1Q5N5kzSOLYfTvCi+zHczOLPhoLjslt4h2FIijsIgciMp989XEOsMEXJR0z6bHcWfJL
 Ttm+1QU9peXOP/Agp+obJWmocX8Sm1VPOKk43mPQkf4Mz2F+ibbenzOyPL1Jf0QswZu6wnaIDJN
 GPHy3ltjurk3gsivmh0R/HJ61QI8tR44NTpvt7R6QzSorgBreD/tBn+5fffOdUJVyaKSJklmQyI
 dK0OgRqQMhFH6d5Pj9Q==
X-Proofpoint-ORIG-GUID: 9gr9LdNLZc4IffHu3q-I8WdFeuQBlNjS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_04,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602130162
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265475-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1d84000:email,oss.qualcomm.com:dkim,1d80000:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.25.240.160:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 432A71398EC
X-Rspamd-Action: no action

On Tue, Jan 20, 2026 at 04:52:43PM +0200, Abel Vesa wrote:
> On 26-01-20 16:49:26, Abel Vesa wrote:
> > On 26-01-12 14:53:18, Luca Weiss wrote:
> > > Add the nodes for the UFS PHY and UFS host controller, along with the
> > > ICE used for UFS.
> > > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 126 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> > > index e1a51d43943f..7c8a84bfaee1 100644
> > > --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> > > @@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
> > >  			qcom,bcm-voters = <&apps_bcm_voter>;
> > >  		};
> > >  
> > > +		ufs_mem_phy: phy@1d80000 {
> > > +			compatible = "qcom,milos-qmp-ufs-phy";
> > > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > > +
> > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > > +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> > > +			clock-names = "ref",
> > > +				      "ref_aux",
> > > +				      "qref";
> > > +
> > > +			resets = <&ufs_mem_hc 0>;
> > > +			reset-names = "ufsphy";
> > > +
> > > +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> > > +
> > > +			#clock-cells = <1>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ufs_mem_hc: ufshc@1d84000 {
> > > +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> > > +			reg = <0x0 0x01d84000 0x0 0x3000>;
> > > +
> > > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +
> > > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > > +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
> > 
> > Maybe I'm looking at the wrong documentation, but it doesn't seem to exist
> > such clock on Milos. It does exist on SM8650 though. So maybe the TCSR CC
> > driver is not really that much compatible between these two platforms.
> > 
> > I take it that the UFS works. Maybe because the actual TCSR UFS clkref
> > is left enabled at boot?
> 
> Oh, nevemind. I think I was looking at the wrong SoC.

Is that an r-b then? ;-)

-- 
With best wishes
Dmitry

