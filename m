Return-Path: <devicetree+bounces-245516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A838CB1A8E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4930E30FCCDF
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D2626C39F;
	Wed, 10 Dec 2025 01:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aMFCwmN8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WsHBODSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE14723B628
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331484; cv=none; b=dDUhD1h8EtyvPAVM5mFRNiBqaM1KrWvbUZzCOP6g3CN8hyCL0Oktahp9leXKinvvDTr3XsoEyu7fpffMJfWq81uO1H1yjUgGj8F9nWZwS19tzuUBOLo+F9K7fHRq3JiBTdim3zqaReXkf8K6qDV21gfQiPO3n8ZRqWntSY5TmJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331484; c=relaxed/simple;
	bh=Zlg/Hp012kGo5BAhJ/R1EBEd7rcNl8kLBQJYHiXNXn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UIc2U0klqvWeqteir01Ph+YJJ1DF1c7k2R1YcrD0kSGZ34898qt0d6NMpdauyPx+E6pK1rCOjfLkXlo3GXos+ezEfMutnO7HAee5sanEWEKZeMjTcmMHPJ98WMRhJ0N1IXz99yQ9ehq1eEG5hqZyvrEoxG62Lv3cBhROlV+vCUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aMFCwmN8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WsHBODSz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA0PZDA865527
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BN6Y3dRzDAB252tWRqYve+DU
	r56IWk9EkE0pgVLLGis=; b=aMFCwmN80io33E3/NmsQd0JF+gqa0aGe7UDu8wDZ
	SBQeLPhUVcysxYIEatZIcVjQ/eIWRdeNuGVs1f1OaYvMxezsn+r+i61Z2im3fE2u
	soMT5iFr4BfmBRSC9pUDq2YfmDYeUf0NJlDLNx2QZtV0JRghFLXy3idYJ3eTiqyt
	Xb0jaHVep9Fri/tlnCO9Q1FaGKN38Ra404HrbzHGn6OX7Rim69PNQhwfESxoSDgm
	wAsSpu14lDgK3X6Xknf7Cq1Bnfhqa054sanAhZPbnwXqGWIpK0aNukNcUBF9xjWQ
	gK2NlQNa6FuwuKjVUNgSt5gWGzZEGRMGOG7FtW1/cmanCA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axjk52skd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:51:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0995fa85so196648831cf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765331479; x=1765936279; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BN6Y3dRzDAB252tWRqYve+DUr56IWk9EkE0pgVLLGis=;
        b=WsHBODSz/Wih6zAecbue6QzOvlTHl2YOCtF9aoxUW3lnwReaiKQ1O5qOZ+e1z1sxtn
         I+KBs+1sGPMZ8lJvMjDWwifKTz+sSYZNIinreREajfzyt2UcIAk2YrBAnFpyEd0W/sa7
         8psURkjyc6c5lzC+xgvl5b4RM4fISPunBUnvmPTbFj350HMtUBVrPrV5HWM3/T9v9U+L
         5EHGSjFDju8CAhtNdosvC+0MqwRqMN5ngyD5e9F71pnHk/QhzNIQoLnDafbIBmWHXHel
         14VK34qS6kPT0/UzIJuZabQa1MdL8r/chhX9NdrsfzV3xFi8oSZnlypOIODwHeTMVGeF
         rpXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331479; x=1765936279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BN6Y3dRzDAB252tWRqYve+DUr56IWk9EkE0pgVLLGis=;
        b=Nfsfc+IFZARHS6X8aYIZcaUKcd9b8yh8in6kWgjzapudbGSoEc2V48CczBwtDvTTK1
         bOuSXgVJmM/rVMhr3n1CwwPjJeiiZH1VKJAkeqUGPewastASiXFGZGd1wOYm3CtqAuq9
         rf6jRMRoyeVjoZT+Bv3vk0HFv/+xeoLt48fEsdtsYZExT0vCmbSqJ0C4HMu1G3uRAZQ/
         w41iU9NSzWztrEgFHW+TaAwByd9p422gS3pRqwUOjjxl7FGv2kZDG6ZmJOyxA4iyXvpp
         xOnv2CzhXH3HZ8qu9EK0BiXQYqjkmhrJkfxhXcERP7PVlLcpi8R45bW1Z9sgcQSRof7/
         ckBA==
X-Forwarded-Encrypted: i=1; AJvYcCXC0n2chNwglbqbgwlaefBR8MZdQmbZG6Ur1BtJa3OY13ZS8+/VEzq8G+CSCX5odmmVGNEg6H7QgNBC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm00aDXrnSsEKw516x/y+CETnr25BrL7rnBHNz2VU7FPecdHmW
	k6L1TXSpBhPDI6iBVlXlLnUm0GgvFQppRHJwHP8DOVjlQ+wYP3w3lQRX84df97CsBtHoyRuJEca
	zSO01fOBg5Bm1Z7fQgGIqVx+cfeB8TLaVs7u7CYg3mZl78xlf+S51z2RyuZF+EqcV
X-Gm-Gg: ASbGncsK3sBw5o3sG/cHMcjuO5dHQ+g+tPf7ee9IZCHT0+CPVz6o7JYtbidGV/RbfnZ
	7fSp7DkXa0l0BSWXJCzqDeQT0d62Sa99fh5wz7zZME0QLNy1aQdGhHuUBAd30zuINc0kM1twBdZ
	LvllpVtBk1j0KB2SukJ4h/4TMsxvdxIBP16iu03oM38Am2N+FgCpIgDWCB1mwoakYhvHeIAIAXZ
	3xizq+L6iXOqxi+dj0kibTUx7tEE9Fk8k4WiBTUokNBMVGR7fhi/nH7iR1FPxvZqyKPkG/urB6A
	eqlaeMvIL6OPDz2CQHgfasg6ogcZijXiSjK74SEZB+oQ6LHM7NIxs6smtU3WvH0gYOh/5mr9ufi
	s2c+KHTtoR5S5SRh6AiYRlgf/BuVbYnAum2fav5XW2Otao1+IXvDqSSZKGqbdby0rYul6j3Uk2d
	7OeOu6Y2aBkbaiWQplcQCENik=
X-Received: by 2002:ac8:5810:0:b0:4ee:5aa:9c28 with SMTP id d75a77b69052e-4f1b1ac9555mr11516621cf.70.1765331479406;
        Tue, 09 Dec 2025 17:51:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGKDZfAbJZWDgNFtvZu50UhNEANWHUxZjw1ARuiOSUMkTBFY/KeHIBYtgGNZZYv/UykqneyFA==
X-Received: by 2002:ac8:5810:0:b0:4ee:5aa:9c28 with SMTP id d75a77b69052e-4f1b1ac9555mr11516331cf.70.1765331478854;
        Tue, 09 Dec 2025 17:51:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b24907sm5807764e87.37.2025.12.09.17.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:51:17 -0800 (PST)
Date: Wed, 10 Dec 2025 03:51:15 +0200
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
Message-ID: <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: V6KdYoRtDgvHyxoMKqmvZV860Pd5PzuV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAxNCBTYWx0ZWRfX8MKCAANFW0W3
 JOZ516Q2SAbwZmiSTBng8b9B+/ab65tqU6h11t7jj7qEcsIBSNVgTKtCNfrsgDIytoi2x3kFs9Q
 SkH3w1VmjxaTej+WHB6wK4JVwiq3LNzFExZVvOTQ8ISdwfJq/MyI9xKA09lb/Xu6p0ijo6aWBPe
 O93qeD1SIw4CXTL41QWq0KNAFjxax7ZWWlCrziziZZqyOH7V5/gbahlQ8XLHbboKUwyvDtlIsJg
 gNraFxnraL798bGl1UNtS6QUla4GbNQ+FMFb009YWWr/zuZjQN5nMbFF18tOUbToq73uYrzPwAa
 k5GUNRHsbpwJMzp2G259zK05U4VGtjuK3DyDbqyiDtSRTLIBSRHD7ty/+KaUx0iibUhUHWzK8Hj
 OaB6Tp7NVKcgwfv1Pj2CTCj78IIj4g==
X-Proofpoint-GUID: V6KdYoRtDgvHyxoMKqmvZV860Pd5PzuV
X-Authority-Analysis: v=2.4 cv=RqvI7SmK c=1 sm=1 tr=0 ts=6938d218 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=prjBgqm01r1IDouUtvIA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100014

On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
>  1 file changed, 194 insertions(+)
> 
> @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
>  	.ln_shrd	= 0x8000,
>  };
>  
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {

Is it really 8.0 or 8.20?

> +	.serdes		= 0x1000,
> +	.pcs		= 0x1400,
> +	.pcs_misc	= 0x1800,
> +	.tx		= 0x0000,
> +	.rx		= 0x0200,
> +	.tx2		= 0x0800,
> +	.rx2		= 0x0a00,
> +};
> +
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
>  	.serdes     = 0x8000,
>  	.pcs        = 0x9000,
> @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
>  	.phy_status             = PHYSTATUS_4_20,
>  };
>  
> +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> +	.lanes = 2,
> +
> +	.offsets		= &qmp_pcie_offsets_v8_0,
> +
> +	.tbls = {
> +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> +	},
> +
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= pciephy_v8_regs_layout,
> +
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS_4_20,
> +};
> +
>  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
>  	.lanes = 4,
>  
> @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
>  		.data = &ipq9574_gen3x2_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> +		.data = &qmp_v8_gen3x2_pciephy_cfg,
>  	}, {
>  		.compatible = "qcom,msm8998-qmp-pcie-phy",
>  		.data = &msm8998_pciephy_cfg,
> 
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

