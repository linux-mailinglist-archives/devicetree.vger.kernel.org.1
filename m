Return-Path: <devicetree+bounces-206574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C26B2CC4A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 20:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42D371740EB
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 18:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE5D30F7F2;
	Tue, 19 Aug 2025 18:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pb5DAA+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CE9251793
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755629008; cv=none; b=bS0WzaycLdU8DBNwDeK6/67IRyhdm907Y5joCZn1bKhAftIblK3PyLhBIkTXugyRzXRL/T2aXge2efszfq073Zh7SjQ4ZgNOmBelKbEL871fj5uQlbyYhoEtJ2kReEWSAf0qsE01fsXqgxmO2sgDAnvn/wYIlI2qvAvMacwmkuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755629008; c=relaxed/simple;
	bh=eC6MPHc/rm5FJ5KXRZT+EhHEfoD8NtKXQo2RF2/rrHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b33RIiFga7mVcNPLuoaeJkZOVL1mi+UPQ3Q92Uk4BDGU27B15UExGehVXq3+DqZowVZ6ctf/1LpST8feb8BeylK8rJoAd7iL8+7fq7n3NctJvdYAMUJYV3BWYttb8wtQ3WAmC79P+vAsatyXSgE/SsfmtHdnHNBMj97JHnHIzB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pb5DAA+c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JIJjuO000874
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rr9m4DMV8aM3HvFiWVF1zTeq
	HFmihXvF2giDIBU/QsQ=; b=pb5DAA+coH5BVtUjj8b5Hu1IkemhWAwRmVfAElzp
	cBSBiiL2CPX1NDt68CG5HsjIbYaiFd4tp7qMyl4O6NClQI52Umk7mTOaLrVr4WWZ
	cEzrDll4UydgZlofzt7bftqaxQxxuSKR0XtkG0TAdFmGZ4GfiphiW8NbValyFYqW
	5p2OzUMCA5vyCW1ZBaQdllPryjXxhRBvmHGUMdCIIRctKaxMxW7ChxRFRug8w4X7
	f+tgfjoYm6JVL+me04SF7OyWii9AG6KTNQt5UXJd1fn3buPPnGqjtBbbeas+MG7k
	HjB8tXs8JHiy/lo1bpuczgHHofOFFsGmzbnzAm4vuJA9Xg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh079ku9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:43:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f6346f8so121116156d6.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:43:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629005; x=1756233805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rr9m4DMV8aM3HvFiWVF1zTeqHFmihXvF2giDIBU/QsQ=;
        b=AQuHXNUrd2PCdaLRCb8CgKu+YaJP87T/grSKW7GTVs4URfVeUMV9Jk3F570etYR+fD
         eG2Qm9R4dF92xQwwmAv77XKchRxr54Yv9xkuXKNLU5+Kr66SKKEEvlutuXTLUDZ/uFNI
         lKdjTmahiWiY3VQ1QI2jO6KR4mZh2bkK8vxaULZJ737ge9HBgh7ygNHDY+BibdWPNZuH
         +6pHT67ld5KREbsjhELbpFz1IgoaAOT/W/ezQpDtLGea9f3GZBz8pdvC/ORUQqIvCKE8
         wNra8pdmntdbiXXZcVtYEJdsbhoTfnnbPzlx63mL0gamKjCZCiQNIEhZ9oydCyVScW8w
         q3LA==
X-Forwarded-Encrypted: i=1; AJvYcCV2yC1gKcE4TOnirSJeCdfvz2HuzqJksW+qsBPTzMnfrEALXvo5bugVLC+VXGONMgZwskEf0kjWOp5G@vger.kernel.org
X-Gm-Message-State: AOJu0Yym5htrEY1IDL2IiyFNtu0lt3XsmTjGAmUA2+h5DslyoMUsPZ8J
	B2e5ODAE/AHxQIIH89Dh7j8HqOsDMAj5m4Aopz/t9tkwTn5MNFMsRIxAsiuHgU65x02NqIhPK40
	G/jYaGii/q5eCc7eltm+6BCr5cm+kaM0dTGguB0l1TDXZ7KM8tPxKQqMX8OcR64YL
X-Gm-Gg: ASbGncuu5LuNZmbdBx3TBLr1vkGqMuw7g271T8lAG+9T8ejut7MXTMMzHIcykO3LC9C
	xPvCmHMKLFzfclVw7+1E3DzvWeeai9STzUKWDJ9Zep4gN6tO1hjpsalHBVGMHeTQ+KUYyDFHGc3
	hvDKGHuN6sn44U50Teqv0q1F82HzEHjeWFTJUJanf5Y2A1aw8CD6m6sDWeGtTrTLRJOkOhALPh5
	GlhZ1VY25Ld2Vs6wR6dqDqRpvH+wxNhQWF2cSt3u6KdVM64jb9OvqLr6axa1+CYeH6JD2H0btvQ
	81BTZlY3uBB7DED8Ku33qd7/97/uElgGDyX2GCkahEKCAYvFo42qJpf8DJOiMUktqURt3Lrv0Qs
	4FKov9CaVLCxqEKn8OBaAPAyhpBxZAfMv3FhYElYi15Yol0a3UEN+
X-Received: by 2002:a05:6214:509c:b0:709:8665:f839 with SMTP id 6a1803df08f44-70d770c81d0mr481166d6.43.1755629004974;
        Tue, 19 Aug 2025 11:43:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHT7lpRowLXX5OExQQfbvb5w4hCurs0f1Zuh/FVoSxEHFuy1zmq+FiaB/ZvhSvytDdn5I2dtg==
X-Received: by 2002:a05:6214:509c:b0:709:8665:f839 with SMTP id 6a1803df08f44-70d770c81d0mr480776d6.43.1755629004281;
        Tue, 19 Aug 2025 11:43:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a43a34asm25743821fa.24.2025.08.19.11.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:43:23 -0700 (PDT)
Date: Tue, 19 Aug 2025 21:43:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <6zlydkdgmowqg7cv5eeoaf7mrpnhzokyvhh5xasvznqaxnhdji@xol3jiz2lzld>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: IgdcHw5dRdm3JYWqw58U9tODAYH-qGWp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX/BMyc8MLkY1b
 k3Dd6ul53lh7YHLPS5IyouFKv2uRDfwi2JV2Oz+Tp3ctHS0xrmh5iofGj/ETcsSePUgqiJL+yvw
 3OmYPGC+KO6Q8RnwrsPXvoKVEhHcAEayD1Z+tI5b67XXSBnwU+1ER5duI7zka2ZjYjR5EAXM4Jy
 HlCUEtzthRNIA8zWL9hn/244m+FDdm8dczfn46d8Nb9a9mhg7ylaUQBq1gbwbv4sp/+jNSru0j1
 dIIVBxIiUFObU42+p5b8npJevHfwg0YpTnnKXNH4Rhbs0LvThAO1A2h5WAq+BXMBHrRNhYcIdV7
 OJ53FRfu/bbb9f3pGXvf+kvxSc/0B7g2M+IwrG7iyP3tb1Y90aCi+S8rBu8ykRW3zYYp82uQiOl
 CzM0l7rq
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a4c5cd cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=7qyaTA0qGF2Sjt_gT38A:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: IgdcHw5dRdm3JYWqw58U9tODAYH-qGWp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020

On Tue, Aug 19, 2025 at 02:52:08AM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..e422cf6932d261074ed3419ed8806e9ed212c26c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -93,6 +93,12 @@ static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
>  };
>  
> +static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
> +};
> +
>  static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
> @@ -3229,6 +3235,10 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
>  	.ln_shrd	= 0x8000,
>  };
>  
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> +	.pcs        = 0x9000,

Even if the driver uses only PCS regs for 8.50 currently, I'd suggest
describing the whole picture here. Otherwise it might backfire later, if
we add offsets for other blocks later and they won't match the ones used
for Glymur.

> +};
> +
>  static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>  	.lanes			= 1,
>  
> @@ -4258,6 +4268,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
>  	.phy_status             = PHYSTATUS_4_20,
>  };
>  
> +static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> +	.lanes = 4,
> +
> +	.offsets        = &qmp_pcie_offsets_v8_50,
> +
> +	.reset_list     = sdm845_pciephy_reset_l,
> +	.num_resets     = ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list      = sm8550_qmp_phy_vreg_l,
> +	.num_vregs      = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +
> +	.regs           = pciephy_v8_50_regs_layout,
> +
> +	.pwrdn_ctrl     = SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status     = PHYSTATUS_4_20,
> +};
> +
>  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -5114,6 +5140,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>  		.data = &qmp_v6_gen4x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> +		.data = &glymur_qmp_gen5x4_pciephy_cfg,
>  	},
>  	{ },
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

