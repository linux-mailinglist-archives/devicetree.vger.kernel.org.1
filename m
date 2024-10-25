Return-Path: <devicetree+bounces-115764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FCB9B0A35
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:45:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C60A1C21749
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614F2200BA0;
	Fri, 25 Oct 2024 16:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JQUrxVW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD331F754F
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729874710; cv=none; b=friftEaLkszbsaSLmslQ1P/wj9JnUBWdvNTV5aVsX3R6Ui1q/H6cu6KXmO5xIEE/bHf3j/Wt5Ceu9JOBEldJhHyCMrD8mXcV4UsyQJD5QfuvwzCh/U21aJRNBAm2NaMuG3SXWgXBK75XR1PALQVUTcON87kf9oo08itZpPbAC0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729874710; c=relaxed/simple;
	bh=y3jGx75Ma9tFzNhHFJU7+LtkeYM9g8+ty0cMjukmOs4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SmfyqmycOXnXHCt+l+qq+2mzpZudNb/lNkQf/KxtObbkoJqWx5fJWne0fzsY0e0CzsB4EGW3D31ko0JiHF+YMfSHaQIYmyNQ+xEd2EfGMXPoxe+4rbpGZZBB1N/kheH8hmU5C+UVFH/8hO/MKF+HvBODvnV7xDnvpB/r+Wx/slQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JQUrxVW0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PB1x4T000877
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:45:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jAZOsXr5fsDPQXW9p3QRY4SAZjYiB+yQ1LfwNbC6aOA=; b=JQUrxVW0z4d/cgp+
	fOxhZqUD+VuPzFdrgo6rmi2XA2oZnsnoHkXEguuovDI8Sf5ojJb9j+dKhWj1Ae2U
	tZHzXgOg9fJZ1qkTPf/6XABnQ3jTkEQNst5AqnQXUYobagsYrK/FZXFP7sll6fpo
	+VeailN5PvK5fZHrQz2RUTUn0QOH0vwKsPLVpr8JQVNlkClNplok5Qy1tqTeE/d+
	IX+I2SzkOcI1NcK31B4C7BX9NcXrl1itdJBMtODZ/vOd2gakMdZGIfIZe6DXVPZW
	6d1DlsEGEzT+q9jpsW5oNk3PZC+yhuI0vDLhOyUFi4CzThAOM8q4NmRUM3ngmmrf
	pVOdcg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ga3s13pf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:45:07 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cbe5e8658fso4481286d6.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729874705; x=1730479505;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jAZOsXr5fsDPQXW9p3QRY4SAZjYiB+yQ1LfwNbC6aOA=;
        b=qH+eKTd3Ln3+7pkhzBgKJZhCD70NShVNjyKqYNyP3Qw4k3nzzv2I14qEMzdJriBNyl
         6cX5Rw4Czvfaxyx9/AxyMhJu3BWMdaowii/hqsvB8sydHp+467jIiNqWVpgcIy1OI9R+
         FHQCImltbK5zNPmWGNI/h7KJ7w2dQOSOyHS2842Xnh0GOc4inDsEwhcIGep1MLrzHUCX
         GWl/58egZwAgRE/W3JwiYkly22v3ZCr+Jj0zIf9qXgv7ysJS6qol+RBiQ1imZdB0urb/
         yDzrdVmc5tVw16G9RzSwFoBodmhjhefdoKuhF81oRM/ezPiRpab71tJuFm1gCQFmnrOG
         WI5g==
X-Forwarded-Encrypted: i=1; AJvYcCUMC0CeNBVlBllgaFxfYT28srxo8TywSYlbjOdabELJ4xpMmRly7PXsOAyTT2BIekKGXatdBnH2Rd6u@vger.kernel.org
X-Gm-Message-State: AOJu0YzWGkoEo8fIcFqwaDvc8Us53kH5dI+3A4UDQVGNsDWNJ4kmVqY9
	r2rS0uZx0L/OkBkkwTjzK2JjZv92lQmpXY3i+e2w1AifTYT9Cj5C8fw9o1OZgrp+kh3KR1f7Gr6
	yHF1lWsMfMGXz0MFrjjocf7wVEHGK+r0CdZ0/6Vu33ST+WGZKFScYDPLnWBZZ
X-Received: by 2002:a05:6214:202b:b0:6cb:e6b4:2d36 with SMTP id 6a1803df08f44-6d18584a5e9mr260126d6.7.1729874705020;
        Fri, 25 Oct 2024 09:45:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1sduBzfyy1TRRjvLCCS7rO3oxcnITvZektef5yIhCEjrG5D3MB0/QFdQf572p6gAAmalixA==
X-Received: by 2002:a05:6214:202b:b0:6cb:e6b4:2d36 with SMTP id 6a1803df08f44-6d18584a5e9mr259776d6.7.1729874704539;
        Fri, 25 Oct 2024 09:45:04 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1e75ff3bsm87945466b.1.2024.10.25.09.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 09:45:04 -0700 (PDT)
Message-ID: <8c9804f2-ef4d-412b-97ea-f521dfd35ec2@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 18:45:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: qcs615: add the APPS SMMU node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Qingqing Zhou <quic_qqzhou@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robimarko@gmail.com, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev
References: <20241025030732.29743-1-quic_qqzhou@quicinc.com>
 <20241025030732.29743-5-quic_qqzhou@quicinc.com>
 <8a60b729-b312-4afc-835b-a18060ad3f03@oss.qualcomm.com>
 <zsphor7rpbwx4km6uxpepky2h7atbgjn2435puygmpssfc36mc@wkquqxud2yij>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <zsphor7rpbwx4km6uxpepky2h7atbgjn2435puygmpssfc36mc@wkquqxud2yij>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KvVKgk6-M8BUmaAEEOJMZCs0ntHQIloN
X-Proofpoint-GUID: KvVKgk6-M8BUmaAEEOJMZCs0ntHQIloN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxlogscore=722 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250129

On 25.10.2024 1:06 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 25, 2024 at 10:54:24AM +0200, Konrad Dybcio wrote:
>> On 25.10.2024 5:07 AM, Qingqing Zhou wrote:
>>> Add the APPS SMMU node for QCS615 platform. Add the dma-ranges
>>> to limit DMA address range to 36bit width to align with system
>>> architecture.
>>>
>>> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
>>> ---
>>
>> You probably also want to mark it `dma-coherent` (see e.g.
>> x1e80100.dtsi)
> 
> Is it? I don't think SM6150 had dma-coherent SMMU, at least it wasn't
> marked as such.

I don't think I have any documentation on this, so.. one way to find out!

Konrad

