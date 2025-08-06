Return-Path: <devicetree+bounces-202270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7930BB1C96E
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5FB974E35F5
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 15:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4377A293C4A;
	Wed,  6 Aug 2025 15:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AVYKFz1j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B710828FFCD
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 15:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754495921; cv=none; b=RNzuLGwpXgQbMv+L3ao2ZgldZzgw95qVpghrTaLwAOKPI+4izsfkZTOFqA50lmbvN76p58otU+SyrX7kuqyzo+Cd1/W+yjqsjBu4K8Pr6qCx5eapT3cDd6SMIcLLXlZ4zvSYnlZo9tdIACCHHyGzF2dKPbAkp8j6wtD5RGm9Gvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754495921; c=relaxed/simple;
	bh=unBw+GnMWnnx7sxRmdXg/LrEJMSOpQKmyIAZWWmxFYk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HgX3t+aMbfv0nLtIpKWApEv5xVucngWs+FmJQQ5g/45e1D/kJeMc6MNwsJMF9Y1jz+TUwpK5hzUvz9t3EtKQQRyWUjKPSar290tPF2Tf7DvvYRYpmApVT3sBNiJTUFm0HGmP4OTBfg3KyoZVLX2d1soHvynqodIScVJD9fM8d1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AVYKFz1j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 576E6wVC010330
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 15:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QNS/uT0UsRLTZGD2d6XkWPD5SB9JWddvW75QWH/H0eU=; b=AVYKFz1jdDIocdhe
	0o5fmMz+DfjGieO6x0g+rQWNH5CaTK8jk7KRHLUEISUv8IEDX2O+f8VVue8xWmpc
	8OwMlUTuzuVivad8WHfjixUvac4VTIyiMT2UwiuuBf0w1LMStUAhV7Nfq4TfdgTF
	58nAu6jegsO4PaWqb25GfMeisXKhUFfHW0SHQ52xgr4yjdIuNWOrGKGxd3+qSeFe
	509UJeVj5T09RmA3gKSbgyU/0pR6oeon8uOf+iHHo53iiXoHCAacxCeuxoZzxrtj
	xBMtA3/Euf7oMzFiFCnC1CNJY4W7ZjKQ5udtDyN2sGp9S6SFW/fSazgsK1w5XOIF
	n1WscQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy7uapu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 15:58:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e698aaff5bso177485a.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754495917; x=1755100717;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNS/uT0UsRLTZGD2d6XkWPD5SB9JWddvW75QWH/H0eU=;
        b=S5ZoLf7oLTDX/RUnduT1SwHcjXT/mZ6ckSur8OvdZAMzwWbuKLsRKDGPa6yUHo7P51
         COEqPbd6QPKJ+6IMzVsIxJXwkLLf6wkZOQNmOQljcgsl702aHymyZEzxV7OVC+K4apt4
         9qblItSlS2wp6KDbFbF57WKQZOAINkqAkvfrC3M4461R9wkttKJh4vQOJCix7d9JcH9U
         46Kjbxrmmq83I/gg6Y8+t6hdB0Ue/hhIHRYeubmuvCMLxi3wFEZApe7F/wkPHeqhw6tj
         7/inIXI6T4mMe0qdIugEFbCfkNd9bd4L4pgLvBaEKrcTAzbW/2QBwzzAiaLfikjp5uCm
         WC8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXyHOD+MwtjLCb4X/ry5s2j0Bm1+MZmOdiYEMp3JlHPyal0x1Bc1ccYQ7KsP+827W4XtMhFDjDIRJD4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw97TJVqDAX0YiNZnpxGPGKtxViwO3NFHKhR9HX5a5uhRkWfFHe
	+TzGzsdMYMmFsrOaNuD83K/1aQcBgzvHBozWAmChJ5hoYUakpiTOqfGz+HhZ7vhqBE8JU+gepjl
	xqjRC8E5QIYMqZlJHgFFw7wG9/CfO+A8mrWLWEfaxG6WDsSHKV2LZ7qqDz0GAI9eL
X-Gm-Gg: ASbGncvJAUBfOa1Z+ZuFHFCpphqvj286pSIj3TC/GKfU7IUY6qbSfyZckud93XqqUAj
	O2Eg5tJTkkVsnz7i7Kp9vzgNloUX0+0xD//VoRc5Y3wVMCoNLxyzJJX34mKgqAiOKLU3qm0U0Vh
	3X+Fno47drUMru3UYk+4keol0h8b9DbJZWySS/S/aEV7E4ql/7OomRGvVTeeu/neozjKe/ILIFt
	vs6shVw4KwbPbmT94jeHbOCmeSSlONi++PHKvJhFJbiygj5x5/xN50C2HlGwm9Z5xNowA8/193C
	Lt9zoBBUsg0ajUkWszCDK23FCM1m4zQyjJT8vDLSGd8HGZ9JhfmBSJgOXfUdMZt9HCxa6n1DAsz
	zWEUE7t2U+zzOrI/1Xw==
X-Received: by 2002:a05:620a:2584:b0:7e6:81d9:359a with SMTP id af79cd13be357-7e814df0c35mr241156485a.9.1754495917395;
        Wed, 06 Aug 2025 08:58:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2XRnua00uhBgXJfMjuaXYjlV+/ag9i/MerbwZyjSbEZJVYDAvoxc5k5/SUInzS+jgdX/iJg==
X-Received: by 2002:a05:620a:2584:b0:7e6:81d9:359a with SMTP id af79cd13be357-7e814df0c35mr241144185a.9.1754495914102;
        Wed, 06 Aug 2025 08:58:34 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8feaf2fsm10329223a12.38.2025.08.06.08.58.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 08:58:33 -0700 (PDT)
Message-ID: <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 17:58:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>,
        vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
        conor+dt@kernel.org, bvanassche@acm.org, andersson@kernel.org,
        neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        konradybcio@kernel.org, krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Mftsu4/f c=1 sm=1 tr=0 ts=68937baf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=LTPa4ebz5QvcgEhxLXIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: pkSNOgePdeX3AtTCmb61BeEHDUgJPuNk
X-Proofpoint-GUID: pkSNOgePdeX3AtTCmb61BeEHDUgJPuNk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXyr885CL3yP16
 51uiEMqblOkU6Uc2hQvEOrRMWAdx5YwtIqcwVSTxNSC29JqZycNyxfxLTyH2vMxIbEXLyeKou+u
 ZdjnD5XfM/bePeI+zX/O8yOWxvQJELc2IPcUw2/6fSlQxGuDUy+dTrKd8f8arBK2loax1nYeXk4
 4r58ZivFc3XUp1A6y4KtCX1keugSqVbXxaggrXQuDhIdRwBuN3XBvNRHzjN3sWwio3GeEwcqx/M
 4ugjXQtQLa7BNnsS3QvJhlQ2Ge37oxZCIpM6TVCPvIXZVYv2N70dHSzxgG6W+QHobQDBUkFcU1T
 DGG/tvSdDYq0iQhGuOnVWheFEJOw5mxxXicjwH8WfudKNlyVuvJL1cwf0yzzM39enOY1a0Oz65/
 cE/d7dlW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/6/25 5:43 PM, Nitin Rawat wrote:
> Add support in QMP PHY driver to read optional vdda-phy-max-microamp
> and vdda-pll-max-microamp properties from the device tree.
> 
> These properties define the expected maximum current (in microamps) for
> each supply. The driver uses this information to configure regulators
> more accurately and ensure they operate in the correct mode based on
> client load requirements.
> 
> If the property is not present, the driver defaults load to
> `QMP_VREG_UNUSED`.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 9c69c77d10c8..6e116f7370c3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -39,6 +39,8 @@
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
>  #define NUM_OVERLAY				2
> +#define QMP_VREG_UNUSED				-1
> +#define MAX_PROP_NAME				32
>  
>  /* set of registers with offsets different per-PHY */
>  enum qphy_reg_layout {
> @@ -1894,15 +1896,29 @@ static int qmp_ufs_vreg_init(struct qmp_ufs *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	struct device *dev = qmp->dev;
> +	struct device_node *np = dev->of_node;
> +	char prop_name[MAX_PROP_NAME];
>  	int num = cfg->num_vregs;
> -	int i;
> +	const char *supply;
> +	int i, ret;
>  
>  	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
>  	if (!qmp->vregs)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < num; i++)
> -		qmp->vregs[i].supply = cfg->vreg_list[i];
> +	for (i = 0; i < num; i++) {
> +		supply = cfg->vreg_list[i];
> +		qmp->vregs[i].supply = supply;
> +
> +		/* Defaults to unused */
> +		qmp->vregs[i].init_load_uA = QMP_VREG_UNUSED;
> +
> +		snprintf(prop_name, sizeof(prop_name), "%s-max-microamp", supply);
> +		ret = of_property_read_u32(np, prop_name, &qmp->vregs[i].init_load_uA);
> +		if (ret)
> +			dev_dbg(qmp->dev, "No max microamp for %s, using default %d\n",
> +				supply, QMP_VREG_UNUSED);

+Mark

do you think having this in regulator core would make sense?

Konrad

