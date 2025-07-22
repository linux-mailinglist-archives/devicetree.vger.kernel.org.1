Return-Path: <devicetree+bounces-198781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A96B0E3C1
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 20:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 159577A3979
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 18:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D96927877F;
	Tue, 22 Jul 2025 18:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OJ+uu7gn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F9D28466A
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 18:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753210471; cv=none; b=NdDx797f6Rz0oMb3wASOdqYqCzxGKiZAlm1iFlSR0qqxJ5C+0WWA36z2/iI2ptd8JUOOF+AyjFVwVKwv52WvGicEiGduI0nP1YjOiqqG1O22KdNEveuJoOzvZ8Nf7IX9Q2sWQloB0oDlAbvkjxCxnkXLQtBHCTUz1nOWJ4Oa6SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753210471; c=relaxed/simple;
	bh=96xfn4tCHea2gia7bvnVjslaPkgqvIGZbOhlkhi2lqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QJ5/4npe0ewaq9lVaQknnMN1YCbTw6g0vxLrUvV1hoY5WXKe4UAkDk09haGmhFNIHhYcNk+oPJzJcPah+w1DrfaXtuZvofCUpOvBT1dDYrmObYsUV3gFqBzSEIAFkCZ82lh+lH6uHtXFhSu4Kr/lYrxHkVKPEOgiMRcihxVfHMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OJ+uu7gn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MHTibD012733
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 18:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/4kWT0NOLTYGI8Jw3DZJpmHB
	CM5z1oJo6kgrF1DYaDw=; b=OJ+uu7gn9b6y+gkHNreX6ur2vMNsWU7RvG4zlI4D
	yUMSXtk6rWUBZiC4Lgr1TOdWW/x7MCIcu/FwC7R2kq9i6C5W6SK1bpYfH08zoWgA
	uPVLwBVIeTjuMFSkH3hsLljeQzydCoxvqJmZoXhbHzED2PxbNMtuv7VV82BGD8W+
	kI91abkXerfSYdJKjZnM51yZApXWp42vhHuD9qAfuKWIFIi3CYxterOcR96SV6Fq
	JwzE5N2h+7RiXdCGiHshDzd50iDXpfLjGhz8duQqsOKW1g13jxMwAMN5q4jf4DeE
	PqDKNvATfS3URU0mvvHr3YjjQAHVjPjC8JpiU6/McEFbYQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6mupa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 18:54:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab5c1b5553so99592391cf.2
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 11:54:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753210462; x=1753815262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4kWT0NOLTYGI8Jw3DZJpmHBCM5z1oJo6kgrF1DYaDw=;
        b=ThfmxsB4Siw+0mbaplRlFhYC+NxAIWzd1M0P7p9hqNU1hF8Ovq2ARZ5xHHRwbKcVUN
         5sdqFpGKsvCbsfYP1oMs4hDh8knQymhinbSsgnJ7UKpDBlRM0x2jc931u4Ay+rt4vkZc
         FEAyNnU6ASU8V29Uj+4739fQY0wmGMjUQ1X1E31Dp9A8cKAf5W4IHfDfD46Noos0msR2
         bUOZR3yq3/SreO6ygbBthefJVpciOataTPJ1ubgimKhWYPRIWt9xiGNdknDij0PyB66i
         gWwMxkER/gitIkRown978OiCMMQEIPsMhLbAK+o6EMt4cwoQVcTkVZ449FuyGaurloF/
         qX0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqAlKpMCEn79EnA3pcYCVtV2VljwXl6Nv4I28OYar7dbcgYlqgzm6/iaxyhDQslUWiPKFDO4NxKnsi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4FdtMoNpIhDdmTE8XAhPZU0wOaBVETH+tphOvt8lwnkBTdLzN
	+JcXxVEE2qx4MPGDTPS1TiJMEwY7wTbDqKAiaX9Qb22WKp+KMtzf1RPdps48b1fg81dpOzhJ7CY
	MKhvITboHwpNaOoclHFeTjsZnRpwl3HPPKQE6kvnN+UFfwzXOwZjXaLXVA13XhVel
X-Gm-Gg: ASbGncubnySIV4NpDr4PfgRGFuj/YDizUumNCbAkOEERT8VTMRcQxBDRvuBr1hFax9P
	dSO0oz+e81Dl4l1azsehOHQWSW8iOvAb+JAjdIgsb21IKLCFzIKHod0Q+tuftqpDMlJQ9nXn0hE
	VFfUbuIY1qWywal/OEpOLGdl483ufjGts1U+JAOntVaonB9U6q/o4ERyrAIFgk5uF37iqQpkR+F
	Cs6OzGVIFf1uys+R/jrS3UyyhbyaZ6oxKVSXhbTOFo1lpgOrGXdAnueVG9O/v/r7xvaOZ/N56p2
	Px2f1DM08xmLkPEolJPfEAes04zB/Rbww5+gYdOPs0Q/csNKxltJ4JetK05O9qywNymkyds09DC
	CFNOPibf/cWPBb6QDJR7kjLAYd5ssGlTOQGtP5BOjiFCi4WsNQ1i4
X-Received: by 2002:a05:622a:144d:b0:4ab:377c:b6be with SMTP id d75a77b69052e-4ae6de98f09mr1912271cf.22.1753210461903;
        Tue, 22 Jul 2025 11:54:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhRnikguNGu1BrDZFDmisqE4jxon1gG+KvhvICXhN14dMxNM4hz1lupwOy1zhqjhe9hxqXqw==
X-Received: by 2002:a05:622a:144d:b0:4ab:377c:b6be with SMTP id d75a77b69052e-4ae6de98f09mr1911951cf.22.1753210461368;
        Tue, 22 Jul 2025 11:54:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d912aasm2035430e87.155.2025.07.22.11.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 11:54:20 -0700 (PDT)
Date: Tue, 22 Jul 2025 21:54:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] ufs: ufs-qcom: Add support for DT-based gear and
 rate limiting
Message-ID: <2ihbf52nryduic5vzlqdldzgx2fe4zidt4hzcugurqsuosiawq@qs66zxptpmqf>
References: <20250722161103.3938-1-quic_rdwivedi@quicinc.com>
 <20250722161103.3938-2-quic_rdwivedi@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722161103.3938-2-quic_rdwivedi@quicinc.com>
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687fde5e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=neWBWJ4wSANu-z5_DMoA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 8SZBBV_8EW5_oOVZLfPpI8i4HAlVJe5Y
X-Proofpoint-GUID: 8SZBBV_8EW5_oOVZLfPpI8i4HAlVJe5Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDE2MSBTYWx0ZWRfX5I5IWRG9nn1m
 cKD8GEcCULfRmqanrQY5f8k5QsVasTAWsCZV1DwqNAKQje+Lo/FJcy9WObWxM/UGJcvqaMwjeGD
 jFVkNLpVnjUactrpgo2aVXaDs1wJOSOmJ36LJY6m12FYFY1z36n76UvV+fZyBscI55OoAKdz7Xh
 ppQDd3EW2YMtBw8tE0mtsgFEM7lphe7+P5X3d4zhMI/SuCevjZE/Ypp7z6XkqT2SCICmXs7vEOv
 SYogIuW1OL1Erx87+t3OZ4Rz57mmjgWYRAomr+GvHECuSFK+9AjyYGuRuJaPofqoB+xfvC9szUU
 a0K1tHykwoci2HWGEISk5mbnSHMWpcdYxG0FvncwWd9yPjhKW0v3K3rCehBwfp0k7z9//0en+Wm
 NLNm6+AmJdsqfmvXSWklzHgUPQNWyofULfRbG4Kk5Q+mqyYjM8Hb1NoXFc2vPxEFxvPftl2c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220161

On Tue, Jul 22, 2025 at 09:41:01PM +0530, Ram Kumar Dwivedi wrote:
> Add optional device tree properties to limit Tx/Rx gear and rate during UFS
> initialization. Parse these properties in ufs_qcom_init() and apply them to
> host->host_params to enforce platform-specific constraints.
> 
> Use this mechanism to cap the maximum gear or rate on platforms with
> hardware limitations, such as those required by some automotive customers
> using SA8155. Preserve the default behavior if the properties are not
> specified in the device tree.
> 
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 28 ++++++++++++++++++++++------
>  1 file changed, 22 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 4bbe4de1679b..5e7fd3257aca 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -494,12 +494,8 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  	 * If the HS-G5 PHY gear is used, update host_params->hs_rate to Rate-A,
>  	 * so that the subsequent power mode change shall stick to Rate-A.
>  	 */
> -	if (host->hw_ver.major == 0x5) {
> -		if (host->phy_gear == UFS_HS_G5)
> -			host_params->hs_rate = PA_HS_MODE_A;
> -		else
> -			host_params->hs_rate = PA_HS_MODE_B;
> -	}
> +	if (host->hw_ver.major == 0x5 && host->phy_gear == UFS_HS_G5)
> +		host_params->hs_rate = PA_HS_MODE_A;

Why? This doesn't seem related.

>  
>  	mode = host_params->hs_rate == PA_HS_MODE_B ? PHY_MODE_UFS_HS_B : PHY_MODE_UFS_HS_A;
>  
> @@ -1096,6 +1092,25 @@ static void ufs_qcom_set_phy_gear(struct ufs_qcom_host *host)
>  	}
>  }
>  
> +static void ufs_qcom_parse_limits(struct ufs_qcom_host *host)
> +{
> +	struct ufs_host_params *host_params = &host->host_params;
> +	struct device_node *np = host->hba->dev->of_node;
> +	u32 hs_gear, hs_rate = 0;
> +
> +	if (!np)
> +		return;
> +
> +	if (!of_property_read_u32(np, "limit-hs-gear", &hs_gear)) {

These are generic properties, so they need to be handled in a generic
code path.

Also, the patch with bindings should preceed driver and DT changes.

> +		host_params->hs_tx_gear = hs_gear;
> +		host_params->hs_rx_gear = hs_gear;
> +		host->phy_gear = hs_gear;
> +	}
> +
> +	if (!of_property_read_u32(np, "limit-rate", &hs_rate))
> +		host_params->hs_rate = hs_rate;
> +}
> +
>  static void ufs_qcom_set_host_params(struct ufs_hba *hba)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> @@ -1337,6 +1352,7 @@ static int ufs_qcom_init(struct ufs_hba *hba)
>  	ufs_qcom_advertise_quirks(hba);
>  	ufs_qcom_set_host_params(hba);
>  	ufs_qcom_set_phy_gear(host);
> +	ufs_qcom_parse_limits(host);
>  
>  	err = ufs_qcom_ice_init(host);
>  	if (err)
> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry

