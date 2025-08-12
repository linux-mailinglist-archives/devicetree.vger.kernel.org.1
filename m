Return-Path: <devicetree+bounces-203566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C363B21DC6
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B6CE16F831
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EDDA2C21F5;
	Tue, 12 Aug 2025 05:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hs0Z0FEh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7377826A0EB
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754978230; cv=none; b=TLilW4SL1lsV1MEeH2fyV6WqNVXl/edO4OpXFLMQsUx/nBaspdVtlCO6165bLiCptBaF/wDsjgdLBz6ry/+VABGmwnCvLhaHL0B/6MmPGgw5niyPDNUFHLdgeE/tJHQVQEywzSPmP0NX+T28XDwLeQAe5enwV6Yp5cXV9R3U2x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754978230; c=relaxed/simple;
	bh=tJOG9UGC1KS2vzDhLT4V/tFSo5qJ8SWB999TC4doV2E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QmnBihxLSE8kMxIhDPeGxSFsVWhVHE8oW0xWJxd5JU22TyKF6adLQ/qEUDf1u6byqu3rhZVM9Vsp6n5NJdkDWDFFx+eUpecfsHzpv0rxt6FGmionHDpU7DxYzmYmEt0nwng+lLSAQgYyi1AULSgm3KtL6Sn9cMiMxyJaIglp9Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hs0Z0FEh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5acPM021421
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:57:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vEv5nCd5JEtL1flZjqEInCbJgZ550nvvo3TiB8HuuSY=; b=hs0Z0FEhvaOvvfTg
	NV0kSogdHRCrLxvFuNZaJ5QeOl/HDsOE4tFeC5N4lZI6AIQzHS4ISDd69sjoDuCH
	YqVJ5XD8A02rTJU0bFGdeH3o54BLSTUjbFHYsIrO9AvvnNFbFjtQv084D1VPWSHW
	NYg6ef+Hz1m1ZzTz5pHupxfRcAoGAaPKVtsnE8jasguIUEw0XyJYhlquiYEguz+F
	XgOw8Eeyq/cc90pQewknEB8HOiMzEEH0JdCHaornil0Ngm9x01gW/N06mgErmc0f
	vwFGrBgedkVIo9IwvDMPy2iCuy0QsXVTTqts+mrvLp6uPwi3AUsS4PcaS4kfQ8+w
	Z7RNiA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vhune-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:57:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2403e4c82dbso41172985ad.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754978225; x=1755583025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vEv5nCd5JEtL1flZjqEInCbJgZ550nvvo3TiB8HuuSY=;
        b=WkFZFZnDH6fZ5ooum8LEgd/ZjYOwiVmp5XjqGBQHLUqRLYm1OdtQLXJF7DF0fULryn
         wbA6WsaYi3Aon83AXc5Lc4kkrlV2cykEX+ZbCKKOrYx4EB+Yo/puB4/E0fvsR0CqpCdd
         yTTfSYlMGid1CMRbOqt59SKYwmb9tq4CnRyJUPdYKvR6tpGBRDNid4RDKNMjeU80vzw9
         knlX4TRF1GoTBR1dCXbPNZRvXJ9nONngFBf8wcXCm2dBRz+fhcK3LUfqU8SA+8SkzNXE
         uFWbt42lCHJgkaC5S/5ix3JVwsM0gV+L+JYdah3GPS2hjKswManKmGvprf8XZqRJPvsJ
         LiUA==
X-Forwarded-Encrypted: i=1; AJvYcCXGEoIZ+rP3coN+fRwbRa1pYvofxWQYE8FtmOsqQT1biv4I5JhqlKiqTAQTRXuCmdbzsEo2aXeIZaz9@vger.kernel.org
X-Gm-Message-State: AOJu0YzKoDvP2XnJapGeN78h+2hdIqnV1cDS2jpD4KJFVkWKj0E09H3m
	5tDJhTbHnbLOQZC+O9EeoF8GSaTMFXrkSxYXDJkmJyyI1pkRYmb1CGajZOgnsDJJ1nhJHhdwNco
	hrxwqkfYX1mHN9W7AXyxWZPcjFLA1Y5bXHP0xzo39QWh9ZOGwE6hI/T0FD9ALw+qh
X-Gm-Gg: ASbGncu9Kod49IfwBYcmDbtSWvpwJmbctOaqN3CeTD2gmxd/Lg49ngHchMOEUtosCFH
	tdEmit9fLhcY+pcm9JAVXJqvrghle4lp160DqwjN1HmRQAZjVbZT6Gq/Bt+CcXqqslmdPvIK0Z3
	EuQyyYIPnaxUOhQV2P1b5vgEoNChhf/Q7430we8XyMSHHhXkki4YC0/vpQGQnzZiLSU37Ikf/6I
	zlcYZ42oxmNQ6okPDa6j0PK8HR0Q0RvyqWAgz3FSBQjaDxjm3C+U7j9JlL2dziWZDTA3U5tnMwP
	SzgittZYZeTUNF44t+3O6EzsTMtki5fDureKoqIFIWepC2Isv9OHtUlHRpnAPVo9idbPHV0=
X-Received: by 2002:a17:902:e545:b0:240:7fcf:ced7 with SMTP id d9443c01a7336-242c20596c4mr261796395ad.21.1754978225069;
        Mon, 11 Aug 2025 22:57:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFERojaneRpqNViWbpvGH1a8gBIpXR0UabwcFfFfj0BA9yVPsYry01nCaz8ljkh4PoEkyna6A==
X-Received: by 2002:a17:902:e545:b0:240:7fcf:ced7 with SMTP id d9443c01a7336-242c20596c4mr261796045ad.21.1754978224580;
        Mon, 11 Aug 2025 22:57:04 -0700 (PDT)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2426dec66desm207795295ad.54.2025.08.11.22.57.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 22:57:04 -0700 (PDT)
Message-ID: <78b335f9-7f6d-415b-bf56-5e9dc2c38f3d@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 11:26:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/5] misc: fastrpc: Remove kernel-side domain checks
 from capability ioctl
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-4-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <20250716132836.1008119-4-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX5YXA4+d2Iqan
 dZOf48S0mIJ1XI+CB9VW3hh5uge8zN6yPcLZ3LucPflpoFhHI3+DtECXOLhV4MRrvNgd2L6nCm5
 sGUnPbzw6tN9K5kLTnpdoDP79YLRz0ZusjOhpx/qLHyCgUdpqOM7TvQfMDvFBEWYSIZpCbOk6OY
 J2pkNL/Gpq0FCeu/H1pAHn5H7FwrnavhSB3JSeZ9GQemxhL8gapUcNLvnRXcBrKjapQJyfYks9K
 nF5QB2UnWFjSQRa+qnAZAmx//RU/WLxNvxntPBRqBrmWM78IrjLVBOd5fnYNGEn0Nqs+DUug0vw
 Y1Q3VStuVpHcN0MWGyi3ZRL2lk89lN5Ln87odThu573SQ+NekvLErGsk5Bci+LlmcT6cGeGD7Vg
 Olty5Sh7
X-Proofpoint-GUID: rgnHb85PSvvwA5F2UkIaS3sLSVD076pb
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689ad7b2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=_YpjYfwp_6jjpJQCciMA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: rgnHb85PSvvwA5F2UkIaS3sLSVD076pb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1011 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107



On 7/16/2025 6:58 PM, Ling Xu wrote:
> Domain ID in the uAPI is misleading. Remove checks and log messages
> related to 'domain' field in capability structure. Update UAPI to
> mark the field as unused.
>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c      | 14 +-------------
>  include/uapi/misc/fastrpc.h |  2 +-
>  2 files changed, 2 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 378923594f02..495ac47e7f90 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -1723,7 +1723,6 @@ static int fastrpc_get_info_from_kernel(struct fastrpc_ioctl_capability *cap,
>  	uint32_t attribute_id = cap->attribute_id;
>  	uint32_t *dsp_attributes;
>  	unsigned long flags;
> -	uint32_t domain = cap->domain;
>  	int err;
>  
>  	spin_lock_irqsave(&cctx->lock, flags);
> @@ -1741,7 +1740,7 @@ static int fastrpc_get_info_from_kernel(struct fastrpc_ioctl_capability *cap,
>  	err = fastrpc_get_info_from_dsp(fl, dsp_attributes, FASTRPC_MAX_DSP_ATTRIBUTES);
>  	if (err == DSP_UNSUPPORTED_API) {
>  		dev_info(&cctx->rpdev->dev,
> -			 "Warning: DSP capabilities not supported on domain: %d\n", domain);
> +			 "Warning: DSP capabilities not supported\n");
>  		kfree(dsp_attributes);
>  		return -EOPNOTSUPP;
>  	} else if (err) {
> @@ -1769,17 +1768,6 @@ static int fastrpc_get_dsp_info(struct fastrpc_user *fl, char __user *argp)
>  		return  -EFAULT;
>  
>  	cap.capability = 0;
> -	if (cap.domain >= FASTRPC_DEV_MAX) {
> -		dev_err(&fl->cctx->rpdev->dev, "Error: Invalid domain id:%d, err:%d\n",
> -			cap.domain, err);
> -		return -ECHRNG;
> -	}
> -
> -	/* Fastrpc Capablities does not support modem domain */
> -	if (cap.domain == MDSP_DOMAIN_ID) {
> -		dev_err(&fl->cctx->rpdev->dev, "Error: modem not supported %d\n", err);
> -		return -ECHRNG;
> -	}
>  
>  	if (cap.attribute_id >= FASTRPC_MAX_DSP_ATTRIBUTES) {
>  		dev_err(&fl->cctx->rpdev->dev, "Error: invalid attribute: %d, err: %d\n",
> diff --git a/include/uapi/misc/fastrpc.h b/include/uapi/misc/fastrpc.h
> index f33d914d8f46..c6e2925f47e6 100644
> --- a/include/uapi/misc/fastrpc.h
> +++ b/include/uapi/misc/fastrpc.h
> @@ -134,7 +134,7 @@ struct fastrpc_mem_unmap {
>  };
>  
>  struct fastrpc_ioctl_capability {
> -	__u32 domain;
> +	__u32 unused; /* deprecated, ignored by the kernel */
>  	__u32 attribute_id;
>  	__u32 capability;   /* dsp capability */
>  	__u32 reserved[4];

Reviewed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>



