Return-Path: <devicetree+bounces-257465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mG3nIcesb2ncEwAAu9opvQ
	(envelope-from <devicetree+bounces-257465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:26:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB8847796
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C01F37CC9C6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0917144CF2F;
	Tue, 20 Jan 2026 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="khOALW+b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GjUOnQK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5C23D5242
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768920576; cv=none; b=Di2U4iTK69FJYuFT9g7rO2GRWfE9HBeHZwsjFPo3rNoBu7okmVyQIKq7VE0qCqOLTcrIHhGqVba4JkB6VG4IjOJAIhTkfbz4lqNTqklcFZkdKRUsTvxTzfV7BpqRYxcXVF6/vGmA1zc4xFHrMGUZUxjTDt+eJZLbLsPDzDkPrR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768920576; c=relaxed/simple;
	bh=cld2wmZoJ3rj/J+xhTxAwklwv2ytG7pFtjjFpgprF+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A7LbXRTMqciDvo3fvMHJ2QrP6VS4aTZBU2YiaKu0WWRRaKocgREYFArcMuPE60vh78tNAtShYA23NpaEn9fxVLsuam8BhIRK0TaJf7H52vHIEoiNYiTtCX/lbbo2vx0qWyC1j7h9olFEnSvgd4xr9klpPWO30GYJEUyMzOVFfv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=khOALW+b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GjUOnQK/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KEnR6A429182
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:49:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LVjRE4VxYV0zLdBnpQoBaqo4
	k87tJBm7GQsAW6vpzJo=; b=khOALW+bmfx8LK59WwyLADZYon7JsYdr2uxX9Mns
	jt9gJUfTD4WM1Xm+/YST1wZkuRNDD82fzK7xaFJLio/6A4tjrnrobr6vckTTqtCn
	MfwEAyWQDRRSBwsmQ+haNjLdXMWA1VJxF7twx6M7wdqgnfIYBk1IUPsa0a3hEFM/
	PyJWoLy7TirDtPszqrXKF0PBTB2nWM89Js5V10/xXdH5jCHeXw++ORSNU7FfTwV6
	T/eJDbqHiAXixM/vmIKrEdJZubJYx4Q89KxZyEZTSlS92BcGigeXZW66iENFRQus
	tN1ElgnqcN48ETp0LgGAkC6uCiqnKJgPWE2dn2hXjErk1Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4ps1d0d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:49:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a4c50fe5so148048685a.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768920570; x=1769525370; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LVjRE4VxYV0zLdBnpQoBaqo4k87tJBm7GQsAW6vpzJo=;
        b=GjUOnQK/T6mqXJfCMS4rqtB8/wEUPCHl0cgrqahEY9XH+OI+63y6+vsf4JEunncPVS
         1GUyUGRoSxIFGrYTqoA9EYmGzd1hQ1/A8s2817Dvh4qp+sICfTKFtDBdeRsSIcdyti3v
         rFmxZsZIlVT0WQthoLylCQSxuzzJvPxmIHY523wAqgNmdD9W/3jfgbdAL6RYRvrA20bq
         Hu+yyJZpbT5E/Mnq3vBOkmsQ8kSlsnAqOHxBvI+eAbP+yTkoShf8zGu8WNU1gqBo8leC
         7QXQ2ShqGqS0KFZ09uFrdSAJE9r3KSMXWI+paBKxsaHUcLfKyoW9ihwVuBVNxL7p7QD9
         YLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920570; x=1769525370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LVjRE4VxYV0zLdBnpQoBaqo4k87tJBm7GQsAW6vpzJo=;
        b=aWAV/ma/M5vPyp/vExl2KZQ7aaLGRhl4r3Sv6GJ5lsm+jOo8f2e6COYKP1TmBKGVkJ
         BbbjV/1fkk7vvKTMOnwdONKepEAT/xnJCigryHS4VsT4i4LIIaQVnZTm7ps8WTeUpriF
         9ufce87euTro7c/YlA+fN/Irx1S3S+maf6OfmJNlCanDtOcopOKNvFsAVrkRmD+CtGdc
         mAvDRhQ+5Lv6sy6an2rYfqE8eJUfLqO0X/lTcdKeYQ0gvaEEev5/+qnzw6B8NxTjm8yG
         oEVsHEM5nSTp59N9bFTNTL2aHrRLfx83HoZY69gJCBNeGdFhvRTbtvYfp0vRWIyDNzy+
         8KIw==
X-Forwarded-Encrypted: i=1; AJvYcCW6VPsKrmx/wYAk7qSaMr1kjya6y8PUyXs/WHHLhrfogJKopprWuVfu0TTachaOlUZJ+0fdFE+REbZP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo5Iqup1ZPput+VgkMFRvnbLcVpio2Tt5tIavwZYVtpAJ/SBkU
	7kcvgP8U/qWNwG/4HdXDeo93iUPBusoVcmegvzPqBhqvHwTo61IQF84AJDA2r3vHsIUknwMZYPQ
	663FaVsiuEXsLAxZmsR0+FNRnvZSte/YgtFaz8pyQgATq8UAI/RohTYEGH4eTZ3tT
X-Gm-Gg: AY/fxX6TtgscO+r15jTvpLqs0TyEshoaBbB5L+Gii67QjufClkgUFr9e8MVjkNMJMYk
	TG7kBLz7702FbqWQ8LaN0clTV/kR/++CHFfTZ6rmW6fPDdVgRyQ685iruXK4NyBUyqHUFflxDPd
	mq+kjPe0yXR9ydbyRPkryXxDgzFQeBtQ3SgNs2BrmpTl+7KCzmrbwauULPRr64wkRnHVWkwTKqS
	6D8VviEaDPtRKtQ2SM5NNAB1Tit42qTqzrdMdShzYmU73D9ikm8w2yjp0qBIkTzWXFJElsT6JnB
	J+6CFHQ/QjQvdFro9MyFheO71yoYY7mIaaUvh8cNAyIq9lSWOTNfu+mGtk4iyKtjmbwFMsxvA03
	Qf5p+LH5gTmdGiq4RsOJhGN7u
X-Received: by 2002:a05:620a:17a3:b0:8b2:f182:694e with SMTP id af79cd13be357-8c6a6945228mr1898006285a.54.1768920570027;
        Tue, 20 Jan 2026 06:49:30 -0800 (PST)
X-Received: by 2002:a05:620a:17a3:b0:8b2:f182:694e with SMTP id af79cd13be357-8c6a6945228mr1898000585a.54.1768920569328;
        Tue, 20 Jan 2026 06:49:29 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654534c8791sm13235856a12.24.2026.01.20.06.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 06:49:28 -0800 (PST)
Date: Tue, 20 Jan 2026 16:49:26 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
X-Proofpoint-ORIG-GUID: LwnZAo-zZ2t35K18QtKH0OF3MbCqPQAe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEyMyBTYWx0ZWRfX5s4kK0M8tSky
 9JcdVx/kuknlz4947CYKqJDYFDuHF6okv0gG5uCv/EGV5VVIZJsvTXS2gToNJZWgbSus6Ctbb9B
 bdehgWisgxINsnRr6lxR/gvHTYAdF+CV281YkyLPHzWfhaloarIJ79XmLitb5oPMw3hM77XaKJj
 k9vIHx+RFu87I54hRGf1+0PgtJnSNY0UQT8rfXI31P/3lBAZx2qhISic7p+SyugSqCU78bVi0My
 iS/eIWZM51VMR+Zu+08wSKWVSMQZu1d655EiYUXfrlmL5avrsZ1A12rnXDNLjaQscphKiyxqeXX
 GBSW+Ids7WsJnaWEnKcZCATwU+9iydlxqo1XnCnukcRDNMd4DaBqtwkQ+zm2Bbls04j1LphNMX8
 7ZyVvSvAxd872fEIFg/cJRXykb/NjWuR1kd+4K2S1hlwSWesXbRrL9YGR3Q5swMk//5U5zGMIFb
 NWWyJY6jWvUnpL2Sfzg==
X-Authority-Analysis: v=2.4 cv=PdfyRyhd c=1 sm=1 tr=0 ts=696f95fa cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=0k69HSTtqGF5rPJBr-4A:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: LwnZAo-zZ2t35K18QtKH0OF3MbCqPQAe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200123
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257465-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,fairphone.com:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,1d84000:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.25.240.160:email];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EAB8847796
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-01-12 14:53:18, Luca Weiss wrote:
> Add the nodes for the UFS PHY and UFS host controller, along with the
> ICE used for UFS.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 126 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> index e1a51d43943f..7c8a84bfaee1 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> @@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,milos-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,

Maybe I'm looking at the wrong documentation, but it doesn't seem to exist
such clock on Milos. It does exist on SM8650 though. So maybe the TCSR CC
driver is not really that much compatible between these two platforms.

I take it that the UFS works. Maybe because the actual TCSR UFS clkref
is left enabled at boot?

