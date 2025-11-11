Return-Path: <devicetree+bounces-237243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCFAC4EC7C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5053F3A3216
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C55433659E8;
	Tue, 11 Nov 2025 15:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B8DeNhzL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PPYuaa4o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A20C364EB4
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762874500; cv=none; b=AJtcvg+xbE/3ybZ+0j2gKdW81CMfphkQg2vzYAY3FFxuo3PSwPzlkrNT+/VpodeYre5gHihqEQ0HvPi3VlNwnwJxyivBPVYqIVioQONzLvcGwWmTxf0tqpAt2FVm3tNSiQvZRP8X03vZNu2h0CJtfZebDFnGTN13g+JTgBsgnsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762874500; c=relaxed/simple;
	bh=TjShl+IbqX53wJVlpQ2cBl4pqeuDhsZG859FJQZqCyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mRxSn4gjMH4Uby6znZUod/qmc8bF2GUy/E+83057qnXuZvDtV+LEUM52AWJX/OVmYNmn7YMblokuZSUUoVTsSRLAzzTQN6mkQyyPoAzSFvXIA7LxJSlALMsE7wXXbbaS+7f93gAQf1ptRi6A4KXH8F3ltQRsFobr5aoGOYIjVEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B8DeNhzL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PPYuaa4o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBHNtX2118997
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NtWhBlV0ZGLBZySq8b2IGhCN1uzwyRzojwI9hN8eLNE=; b=B8DeNhzLRR4TLQlS
	pZkxFgPSE1kjPcDSeJ9xSSRkLax9QEp6yF2Ok3OwcqMUb0IE26fRyynC/Pp7e8bK
	Di0clgLVs7MBd5qpGyS3GGOvf+AIu0n/sipEjXvrln1ffkrSvdAr3mf9Du7irGNv
	9npTC7Ny1z46A/KndkWekKGI4jbgPzAOSL1MZxsxjvpgsBGNd86phFC7qMemy02O
	dfESceNQtYVskKYvJp23sRRCJXuPp/T5KCjHbXGXwfhxQZ9qmHyM2RJDxGAMF9/S
	EHtbw3ONpIu5M3IHIRUwizcwgcF2zdoxTrHSbOEXTV/pCvscZ5IScHKKk1eEsc7t
	bpyPZQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abpy8jurr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:21:37 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5595f2366c0so10660807e0c.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762874497; x=1763479297; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NtWhBlV0ZGLBZySq8b2IGhCN1uzwyRzojwI9hN8eLNE=;
        b=PPYuaa4o5hWvPX928jOMF7lr9dZo9yAjiMTUUOltqajWYmMJ9mCdKHMpR54V/hD3fv
         /cbokoJll4u16iPqX7Z9bJXr/gB/PHLMjsivWiWVZNSQQZwZmihYBZ3YOW33x9Tnr2vT
         dyJ28tnvBvt01og/IIaZ0Vi0URFZ9vcPcOIJGXwhED1i169zmq9D+LEtvinsIBaB5EMG
         AJOfQzXg6llWQwWCUiS4YZdlQnIUQ+8Ho16RpBemaWFRFa1YPWjUOYhAQAveJchNrURy
         fl9W7+KE+cueLgEmPHa1aIxUk4uhOlLosNnWBeSmC2duG88FlNUB0ikIiuMWrJutjgHZ
         DDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762874497; x=1763479297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NtWhBlV0ZGLBZySq8b2IGhCN1uzwyRzojwI9hN8eLNE=;
        b=NBdb/AgnqByuX7KQSZTROU/3lHjbcq045zjcntzRBbUVvkC1Msxq9vafJmFtGn6iWI
         yovaxRR111uix+0v6e6cTcc5FRJwRBnVWcjkOuB4lSHvvPEx0QBI8APqqbbrvBUUB1Az
         gXH1kKdfnG2cvmIFzk/2gSAiETaDiq5ZLUH0n8YcaZkVQciOXLKFpOVL9YdUsGBM1Zcm
         oG5BzKiQQzIfU/PRX0bNh2gWVaqbylvoU8czrXaacMR+Ebp5vFFxKM1afyJBj56HG2Up
         Xl5qwliZgNIfETAnJmyKF0vsHRggMgQO+0cqU6UY6SIopwbuPFB1WfGjFE3SAAbIH2ew
         9LFg==
X-Forwarded-Encrypted: i=1; AJvYcCWd3t9yd6XXO71sT94tChxFfmekBjbCfU0p0rR964Cyv6KDPZuM9IAfz5s2N5S/yNj3vc76RkJPmxrN@vger.kernel.org
X-Gm-Message-State: AOJu0YwMqq4i1xCgcv92ZhfkW04XwpKUZLDS4/4VudOgPgw+b3kCzDOq
	pV8sJMcylsg5pXNWUdi6aUnmiEh2V6N893Gq+EFv3SisqfwcXiyluEenhfH3belmWoHZZG+oiBK
	aswUfGpX0wH4sYEX8yo5wfrYOyQhrJ/bAwIZk1Lua4Ijl2QC8FO7nyYyu2TtzA7od
X-Gm-Gg: ASbGncvF121ui4FBwVo55tvmBvBqxcFyepiXO/1f8A3e8yig2w3wXAlbNgJi+c4JtU0
	S/yf2CrJaDqgQ2sWpLTzGCHT0khqhq3gp5IgoITUKMLwL65GEEwawHWvw74xcxutOExc7DjWaZW
	xm42g50i8zPbsLO0FaNJaJ8foKNHhTCgDXW9i167ec/2WFfuCEnz30kRf0ZhZIHV15hHC6H6jt7
	TtMSb1U/Zmzfwbx7fR7AKIaC3m4o8H4oF2N6VFjpiqWSOg872F8/kb4df5sEl/H4CB6JgMrKcNt
	63K3GFU9CXQAn3JGRNjzpAaQhnNHMdnLSg6lSLjwCF68u/dcY/Sy8FsOuTUKl/vp5/oRL7egNTp
	BoqD3f/d4UIztJYPlsGjzAA==
X-Received: by 2002:a17:90b:5710:b0:340:a5b2:c30b with SMTP id 98e67ed59e1d1-3436cb21a6dmr19109649a91.9.1762873860797;
        Tue, 11 Nov 2025 07:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNf3T6rQRdI+ynvsyLg96H/Cq6hXZuZujE80OuxKOe522yI9DUPjy3z+RAOvPojmWw+JmU6g==
X-Received: by 2002:a17:90b:5710:b0:340:a5b2:c30b with SMTP id 98e67ed59e1d1-3436cb21a6dmr19109605a91.9.1762873860285;
        Tue, 11 Nov 2025 07:11:00 -0800 (PST)
Received: from [10.206.103.12] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c344838sm14745324a91.15.2025.11.11.07.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 07:10:59 -0800 (PST)
Message-ID: <65714302-3b71-4a15-8647-ad707e056302@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 20:40:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] drm/msm/a6xx: Add support for Adreno 612
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251107-qcs615-spin-2-v2-1-a2d7c4fbf6e6@oss.qualcomm.com>
 <abf79d96-72c2-453b-aa2d-0626be584baa@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <abf79d96-72c2-453b-aa2d-0626be584baa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Rnnl6QRGHsj5BagG3xkMhyaXa7LxQna_
X-Authority-Analysis: v=2.4 cv=AYW83nXG c=1 sm=1 tr=0 ts=69135482 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=qJyp-pYZgGMIYD5dL0UA:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEyNCBTYWx0ZWRfX+qpi6PDcESaF
 1vGOrBzDfuRJ5rqNWoB0XlIPLnZtBSd/kZ9X/CxNviubthHGl2Y4Bbxw9jCi+s43JJNqw4HbgqQ
 D8rIhinxbgCFW5qahye+GS+UyRy62sMzM3v0dwMKgGu6PPu4sKqavD+wtzF7BFUQmQHCuzuH7YV
 6TPZq2GxWEMiFbP1dX/m70UL5ZtjcYC+f9FKbPr/8N/kkT4orfPRUU6VLyOopj+PbCP+iaVBZcq
 auRTG99LN5tYPfkq1CQ9fdcti3LHP+5ef9f+XiUQRsAn+jvaQvrvyevmvvmnY7iElLUBYc0gvIV
 GGmmcy/aSS1L0WfgUhAAuhvYUR3n9leoe/kQ2770NG7t4VC/qMavz8sTGQHL3Iyr9Et780ooIYg
 txlhEYy8KCNirR+MBUyoi3gfFGMzRA==
X-Proofpoint-GUID: Rnnl6QRGHsj5BagG3xkMhyaXa7LxQna_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110124

On 11/7/2025 2:28 PM, Konrad Dybcio wrote:
> On 11/6/25 9:50 PM, Akhil P Oommen wrote:
>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>
>> Add support for Adreno 612 GPU found in SM6150/QCS615 chipsets.
>> A612 falls under ADRENO_6XX_GEN1 family and is a cut down version
>> of A615 GPU.
>>
>> A612 has a new IP called Reduced Graphics Management Unit or RGMU
>> which is a small state machine which helps to toggle GX GDSC
>> (connected to CX rail) to implement IFPC feature. It doesn't support
>> any other features of a full fledged GMU like clock control, resource
>> voting to rpmh etc. So we need linux clock driver support like other
>> gmu-wrapper implementations to control gpu core clock and gpu GX gdsc.
>> This patch skips RGMU core initialization and act more like a
>> gmu-wrapper case.
>>
>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>>  	/* Enable fault detection */
>> -	if (adreno_is_a730(adreno_gpu) ||
>> +	if (adreno_is_a612(adreno_gpu) ||
>> +	    adreno_is_a730(adreno_gpu) ||
>>  	    adreno_is_a740_family(adreno_gpu))
>>  		gpu_write(gpu, REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL, (1 << 30) | 0xcfffff);
> 
> Downstream sets this to 0x3fffff, but IDK if having a timeout too
> large is an issue

I reviewed this. It should be 0xcfffff. It looks like the latest tip of
kgsl has an incorrect value for a612 gpu.

-Akhil

> 
> Konrad


