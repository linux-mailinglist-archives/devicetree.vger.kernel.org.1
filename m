Return-Path: <devicetree+bounces-218852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4266CB84A91
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75FBF58478B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308E324503C;
	Thu, 18 Sep 2025 12:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="itnAxQuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5175D2459ED
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758199740; cv=none; b=CzBtPDbXuz7QWuXYMLdba0yMMWgksTJhkGnOUoP7SHwTZomO5AlU0wKdChKvmE7S9civ8TqtWuoVGZ5PkHYdIcwbsNZ7cen1k18RoFjX5ESJ1IYzH/2GhEdfRF+lWf18KvmLI8k5nIcBeEnkAyDc4ieAt5oYV/GW890Jg+aKtHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758199740; c=relaxed/simple;
	bh=6wYNJUpyjOhpghFZETCWFMjXWeOfYKe9IaFUz2uGRVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QGepistYRkPBBafiGCe16qtCsWp0DxgBPkliit8rYZodv0mH17CotSVfS323D3XwFjIib29OV+FISbGe9NEV3TXZSSYJ8WjycUOVNdspr2qrwjORd75uz/p4dLUFwd41ocwfXD9qk9/Q+alrE6NBfRUik6geteyd1mn6xnfbhGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=itnAxQuM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I88epg003366
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:48:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6bvtGgeiT9GdcDYImrybz3NN+DT+yOFMcizDB0PF7SU=; b=itnAxQuMu02zPsbk
	s28ZMC6WmdlWCTaIE4IjIqHrF+3PUef7suYynbSjkQsA3iFLr0B00a5GwIbr9n0V
	VXjpOOZIAglPnR4Y10MwWhuO7BHXu/WhXSyzYCapwYHEzDUcIrpSDxgukjfJxJQI
	ViYbQjCnevhizbxbjYhJQkpDTK88U4Jux+Ek2nY3J+laKwEWwbxz9dP+yp4lSBO2
	7xnx0C5SVX+PiTiqT5uEpfhnzzmdsEmN2GTPMoCDwh/8PUay6DNo5GGc01zaxisv
	7Hesv5UWgQYt9rt9MTx5ebbuXA/ijUPE0VtRbeHzDFi4iNodJA0DKYo0UQzkczsV
	m6xBig==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqguxer-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:48:57 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78df9ea0c9fso2047436d6.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:48:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758199736; x=1758804536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6bvtGgeiT9GdcDYImrybz3NN+DT+yOFMcizDB0PF7SU=;
        b=ri/jfPcEqi5a95LOfBUvtD3FkRqpf+5aUN9Uznx2nbWKVFKtqevflWQvvJqSnjOTL8
         JToTPbREeKE9FagcwqeAhxv2y7gSgl65/txvu2Ov8m0oOJ2+3cIJN/hdnJRHX5fUOIIJ
         5mjYLeZ5FAsLDa6OWZuatCw4aibRkEPJ2Q8SYmZ7kvZQuG+1KrxZRAEx7Z5XrgM4dH8O
         RDtFZtqDKqQT1P0dHwhXJfi4Sn6TGkEofEgZsAR66wvmoVGbHU14AtiGsjzQpWTXqnXg
         vo2uoysuHiaTcZVLlk6wlMYFbwSuSkZZl1P/w2O56X6hydLz4MtkTOTKKZsaekcvdeWU
         UTWw==
X-Forwarded-Encrypted: i=1; AJvYcCUzqjUIoJ42OiekFoc3sRORvSRcMZzZCKjWNfoxNu8MnsxRtO7faNrF1WtG+/6sHXnh3IR82Pg2Q077@vger.kernel.org
X-Gm-Message-State: AOJu0YwXPIpQ5b0fujoxY56qVuPqVJV+upkM9EiswFpscOcO38RCl1c5
	XwQEwlwqfgvEF5UAu2EXP9OSEADs6+171JumdkTppHdBTWNA3FnvGAdo0PBRSFWnr/j8jb9JmcW
	lTeYS2twWoaMT/O/uQMRd713v0HHhIpLHOldVgMKzVNpdTTWL15ib6pAPMgDtLr/U
X-Gm-Gg: ASbGncvc2Reyix/RM77pDQWH3lqMdZTJ5w7n93KvatwUc9lHYbBXfwzdBlctCvL81S/
	8HvhXea5xnjAPKyusUM5XSCOvM8n1UFZIqVPkGQTpkgtJ5T5h6kzz28Be6aQCyV4Zeth8ULoUWN
	QaMv/cASCVGzaF8gavYvk2AsO5d7IWJk7jleJ7mnIr8ZHkMTVMFTmXm69Di4iABUzQJC3TF18Yv
	5XgiQGUZHLCiGFj3XOThPx9cZN3zQmws6l38Lw/wPmodlOkOnWXLwpbZzlEbMGPXCibr9aKZXpk
	sXN2iRX9/xpkfNLpIuw/MjlAUiGUS7t6zVUAoCm9KeT3XD9JXs0UiDMlpQ7ggdd5LgwxFEi2Ylv
	8hHx8pFt9bPxpSrORegOWsA==
X-Received: by 2002:a05:6214:5192:b0:78d:d2a3:e170 with SMTP id 6a1803df08f44-78eced2299cmr38306016d6.5.1758199736330;
        Thu, 18 Sep 2025 05:48:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0/sXcCPePkMwJlzd+QPdDzDD4YufK1nMclF2i+JYFp8zsYYxHye3lguODkBPVCCYniAWurA==
X-Received: by 2002:a05:6214:5192:b0:78d:d2a3:e170 with SMTP id 6a1803df08f44-78eced2299cmr38305696d6.5.1758199735742;
        Thu, 18 Sep 2025 05:48:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa6f03008sm1317666a12.7.2025.09.18.05.48.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 05:48:55 -0700 (PDT)
Message-ID: <905d90fc-eac3-485b-bd8e-98c1e4aff29e@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:48:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] arm64: dts: qcom: ipq5424: Enable QPIC SPI NAND
 support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20250918094017.3844338-1-quic_mdalam@quicinc.com>
 <20250918094017.3844338-7-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250918094017.3844338-7-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ywJ2zfQcRPlJ07_yBgv3VVGWa9u-agN-
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cbffb9 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=t3lpBGeAFA5ev54tvH4A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ywJ2zfQcRPlJ07_yBgv3VVGWa9u-agN-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfX/9ngStSBWW2X
 4wCy/3yenjG2xYLg5B9dEYZKtNRwvEXEB1F7Q2Aq0ri8nIp4lFdiFKFrOXGVLqDze0AsU881/F9
 TAK3dIeVM6QZ8KB6oDbN4p+okqNElqHenrSC3hbsXpuAWsAaymPmY4e7Cb4IbVwTu2SRL2bx3YQ
 zrF8VBrEFIB4tZe7ZTyZXnno/uEshkFFrBkJivroeWo503L13aJH9JllFQZQ0gf+T3Y1fyxIBnn
 8VGccN0mU2oidhdtcvjdDTRCTJAkhR9MNObpT2OXcAAax05HmXZAYcoaz9yIKMwBe4KybcGKkqA
 PnJ2Se9qxuBmW5wQ1SkT6A8mx0ruo9gPDWADazjkM4ymsvEfdcbYD2TIalJryiUIfVa1emxpdz0
 sT3DCsLo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On 9/18/25 11:40 AM, Md Sadre Alam wrote:
> Enable QPIC SPI NAND flash controller support on the IPQ5424 RDP466
> reference design platform.
> 
> The RDP466 board features a SPI NAND flash device connected to the QPIC
> controller for primary storage. This patch enables the QPIC BAM DMA
> controller and SPI NAND interface of QPIC, and configures the necessary
> pin control settings for proper operation.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

[...]

> +&qpic_nand {
> +	pinctrl-0 = <&qpic_snand_default_state>;
> +	pinctrl-names = "default";
> +	status = "okay";

\n before 'status' is customary

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

