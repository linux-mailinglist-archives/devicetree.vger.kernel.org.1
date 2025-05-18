Return-Path: <devicetree+bounces-178182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C30AABAE8F
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 09:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2132C3AD201
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 07:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36EF520A5D6;
	Sun, 18 May 2025 07:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CSKAIqx6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444531A76BC
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747554985; cv=none; b=UUwMH04u7kOgHVdgx/k07VJyU130LxYUZoKPfTkDpBCjA+KI68BmURc+UQguMd29WlCC1RHoyxYa/p7lZ1zkEhq17nTh2aIdIA+gXNh16EazCBTQRnDoTsR41p61xx7JeIPzBuVn3vGBTFlzWmy32qFubJzFDjRGJF+Jc5GigJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747554985; c=relaxed/simple;
	bh=TypqOtyFA8AbcPYkm1pEiww0iQ08v7Ub4LB3ElfD4JI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JEiOBHHJ5kEZ5e6Q0u8/xnqk7jfFCV95yFM4RSYwkboeIyUVMQlmCMDvBfucjfJT1ZtaEfPlAHzwwfZ/Gv+A2quLC7zvkWVg5ZpOkpEZtoj5PKs5PvHfdMdlyNhSppWAGN/7feJu2TBd8heVGqWNCgg9no77DEqnk4ICzFML1No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CSKAIqx6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54I7k0VU004222
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:56:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Puhd7PmnW0WSgSmOeAsf8uMA
	ZRQ6dmvIBZQDY3wBh6g=; b=CSKAIqx61zUOYZ7ENbuO6hqwA62onT0OY1XdoEar
	5JyhphppQJzyfAVLmJEjw8FHvxViNrQKvGHgI586kYVRQprMDCrWl77rGL2nCSA8
	av2+sDPum0QrY8VxuC+Ty2T0onHQ9uS/oU07s/mZx+evrd8tgNV2oUwctxpxv0/z
	3Fuhvbd6LiG4gCFG4ETi5m40zAoxAVzBh/QhS8xjpPR4rNtmXLH29lSUOMHBD2At
	qI+UVTxhUjA1/tzLemRw4Lc2/ooFaCklh5ivblZCldUVk6eWSzBDH6wLfBf18VjS
	AYAvGJHV09YeJ8wjlf5CCUqkoDycAADCKopLriNOqCldzQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4hp4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:56:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8aaba2f62so60380106d6.1
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 00:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747554974; x=1748159774;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Puhd7PmnW0WSgSmOeAsf8uMAZRQ6dmvIBZQDY3wBh6g=;
        b=XUfI+2zC8S+llYwu1o3Trc4Ebvstwgzgr6U7R/reNX80EhOnM7AsgOZBO85B7XbFkT
         /we3GhgggAKj45EFOgL+22FQrdLy9AA0+qzP6HAmPl/PC8pJmTbV7+LaXy6zMquoZ1CE
         5Ur81yut8ZgeJf1vRjHwlHn4NxFKK93Kor9CrNaF+4FL/Bn/mc79tDSplED3cykxrHBR
         d9uE1EE7tACAAzzK4pIDo3/sBJ9BN754VE7bpAAO7R8Da/J/zBWiFPnvVLv9+SFb/YEU
         Mrp6di/XUUzkDBO+awuqnyQjvZV32pjJFJSp9F1gNKJHN5JugsWlhjIyhjuFdPC/xKTM
         alFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdDB9eZRGXkmT86JDl0uPkv0DHaUlraZpZYcgta6E2AYo6sSz9SYu/oq6Ls5/n3PMt3ZlRh5MIhfHQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yys45qtUaeXhGfwXnCxrKZwRyu3ORod/Z23wgH89gBuWaDOnnEr
	nitfKwZokpEhqsWTku3isAcaXbu4FPiJHqtwzEjwIymhw64PSPEP9BOb7nGkK2LMQj+4PyocB31
	/F6n5H+zZLJwtHjr5KZfw07EgNetPuCy3l1ySZNs4tMJHp5He44ACGmJZVdSmijS1
X-Gm-Gg: ASbGncssDesXDLCcSWlwxSajxBqPK4a9oFSA3erdRDeBLVZX7UrGEpjCQhFH3qQhebO
	njQZgiyhsVsVOgqkYkFnLhxig2iuSn9D14JLVBHRGUtp//HfPYlxNTefj0NjtluVmt7DrjNiB/O
	XI8bxKg4kkuBNf5I0drFeyhTwi8gmvB0fx3nTRwsSjskfWUIpzXNqT8ivlmIKlAZ4ylqAFF7l1p
	Z9R4OS2LRu3eDvbXJ2w2/ciErVQn1RhfTuL7TZStgGUfLIBubeCzYSRmW9Bd/ai+iHyxg4CEdZD
	pv4DuPCQS7WTI1S29Vc++vm5A8TTOV4eqoB93DlBHbKi5eofQUQ1eV7lGGE7K26BRAloHmYrGHY
	=
X-Received: by 2002:ad4:5748:0:b0:6f8:d14a:f793 with SMTP id 6a1803df08f44-6f8d14af9demr20836096d6.21.1747554974244;
        Sun, 18 May 2025 00:56:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFO9KW1Szyg2ZNSjl+g7NrsOk0wUp6Z9zSHUEFCyc3cVLmsoQFZn/Qng43s08yf0QasbtkRAQ==
X-Received: by 2002:ad4:5748:0:b0:6f8:d14a:f793 with SMTP id 6a1803df08f44-6f8d14af9demr20835996d6.21.1747554973918;
        Sun, 18 May 2025 00:56:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085b8823sm13563781fa.65.2025.05.18.00.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 00:56:13 -0700 (PDT)
Date: Sun, 18 May 2025 10:56:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@quicinc.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] media: qcom: camss: csiphy: Add 14nm CSIPHY 2ph DPHY
 v2.0.0 init sequence
Message-ID: <kbslqkoqvzt44jnbendevub7qjxwa3sjazemomcvyafyxa5fqv@ytwnmvl4qb7g>
References: <20250518-qcs615_camss-v1-0-12723e26ea3e@quicinc.com>
 <20250518-qcs615_camss-v1-2-12723e26ea3e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250518-qcs615_camss-v1-2-12723e26ea3e@quicinc.com>
X-Proofpoint-ORIG-GUID: 9gtvCTOcEE58chmx8xm_YpCDt1Ped8s3
X-Authority-Analysis: v=2.4 cv=C4bpyRP+ c=1 sm=1 tr=0 ts=6829929f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=HcpNNPQB8qcH3S7Z6I0A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9gtvCTOcEE58chmx8xm_YpCDt1Ped8s3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDA3MyBTYWx0ZWRfXw/7HJWIgsq+c
 +fBotRUlInyLpYhR6M3NZpFUu6pmV2YK7T4SM6JpoyQWegPj+fevnIoYa18QT2/KpQD0vKwqTH9
 UTlcDfICuDZv+B2nlONR+YEIsbKsRqG+M0973P3+6O3eWFSaVEUcmMotgLd5+DbHJvDeL9CzFkb
 pAyUbxLH9pCvpBWh5VIx5NUl5+L7+Za9muo66o1amXeGXgnUyq0kOCcdVXbSACjl2nGnS2JhFKp
 WySos+RGckr0+jVm5h+v2CscJwJYFECmz/QqPXK/E3xRh3dTb1ZCziQmsm2GHOF9ruruliibUWu
 NidAjBbROrDQIHmx6CMrGxJEjImaL8sXHpNTxkZsYrAsXKPMwh7Sl4p/Gt/bMNYh9eakGpqAJ/+
 G6jOoLrBgQyZnBeT+ihYUT5VnqtxmW2/Rg047v0hSOTtyJ4qCLVRHdMOop2TZcBsZDzRrAyu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505180073

On Sun, May 18, 2025 at 02:33:08PM +0800, Wenmeng Liu wrote:
> Add a PHY configuration sequence and PHY resource for the qcs615 which
> uses a Qualcomm Gen 2 version 2.0.0 CSI-2 PHY.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>  .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index f732a76de93e3e7b787d9553bf7f31e6c0596c58..3f3d875b8a74ee8f6585bebd29629bdb16eadb28 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -64,6 +64,86 @@ struct csiphy_lane_regs {
>  	u32 csiphy_param_type;
>  };
>  
> +/* GEN2 2.0 2PH DPHY mode */
> +static const struct
> +csiphy_lane_regs lane_regs_qcs615[] = {

You are adding an object without no references. Most likely it will
trigger "unused" warning. Please also reference it from csiphy_init() in
the same commit.

> +	{0x0030, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},

Lowercase hex.

> +	{0x0034, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0028, 0x04, 0x00, CSIPHY_DNP_PARAMS},

-- 
With best wishes
Dmitry

