Return-Path: <devicetree+bounces-173707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0477DAA94C8
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:47:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34BE93AADA4
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713161B3930;
	Mon,  5 May 2025 13:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nh78tSZU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0009A154423
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746452838; cv=none; b=XM+PWcLgZhBVeNmm65f9H7ZGM5nfZhmgU9HOInGGG3+FTPYx4KAB5dPGkP8ZE+hZbBwpVBD/5eWzplDAwHcqMdCRMVe6POtG5K2W4jdAk735YF/WxWJsGK6vLamzXbMcaOk9BbIkE6HggAKYu+QWaalaRKGT0K4sTMV0pKPpFB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746452838; c=relaxed/simple;
	bh=35A1pFwBLp1C8a+0gKuucdcy1iYJ5R3s8OvY16i34vs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FusnvN8Nk91BkaQnMPvuZW2LJVhaZnabeYyhRvToKKboGrxsi0eT8/16emCyP4sGKn97+sa+2QTVLNttntLC1ImN/6uKjubQlcoUT0H6bZLKzrn8PlgoBt05a2jxzGhFM5jolht5tw+2Uuz5WvWCjJzTE0aNvfux2fyq8voxOhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nh78tSZU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BSc34000547
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 13:47:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6O7SMxPcdaogCQNY+g+fJpiy2D9+24j+Ytoifls3m6Q=; b=nh78tSZUjf+FXTAe
	QWcdXEUYlQfuuCcUQMILZt8rwpxhHuDgJDtD1BBky9fi2h+ev0Z8FTEaxoaoYukC
	9W0umYDXQ03K9G5BfOy/CnnuXBEDWc+fNnNizYIGp9ANcr6YPYzYRvdjes7RbJa2
	yDMysANrF/+SK19+KUrIvIOrxeC+zOM7ios0bWIIiu8mMtwvYqEGIW6+XK373+gc
	n8AWDEWOaFoqLI+TOG/xzWpQiiEZRkjWavI1iDZDCGtyequqvIhxeakxY/SkrofE
	YZ0VNKSlgavGDxhFfWG+llZnPacT8y4Dt1P3ojcdjrIlGptHNsmkwtH/nk6/4IEt
	BJ1nbA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dce9c5bs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:47:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-736c1ea954fso2381505b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:47:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746452835; x=1747057635;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6O7SMxPcdaogCQNY+g+fJpiy2D9+24j+Ytoifls3m6Q=;
        b=lI91Td7nDSefodYqVFIjzk9UeB6iI57GPBM+Kkq0RvZdpJLVgw7DRPGczdr0WbkLIj
         NIAh9+9XsGh99+gpxq5U2TNH3ik+KRsNewKtypBqHxoa1SIptJGcYrO94kDcZrf9ymje
         qmtwyiqsBschB5j/R4444No4rHAs4bVgiCcVn0KDC0CON9x4pGL2cEYeT/r6ubApLyEH
         TgH3ggXZheLf2SCtRf2yn/e/x4sHezWHZCfNJGbuQ5qXHGCThs/5sPYK3sucjddUOCbI
         qPTnYQy+1sZr9TLiSpHTjZixOjgGbK/Yl2NDZsVVcbxP7C9wIkev4Sc6zsADFsUx+XuD
         bsYw==
X-Forwarded-Encrypted: i=1; AJvYcCWsnjR31QanPy9sXefVl5cCWcqlooHHHoHp1fFF1HkmYYzRLGUyGhrOR8t0oN7xPQM9VmgU6jW4xXR3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmyzxt58aeheWxAOEcweDkFuNHnrfs7apJfvgKTk9EQJOQvMot
	XIbhmRUjRJT/Q6iJw6xgfuZzzVW0e/8/+ThaSZHvSpSXIzyPqLafpj/tCRDAJFqdOsaSsdG8ZSM
	YndRFNEjbiIJxSCSrWR42PN/XSH3kyEZXXqYApUG/sjuaoAeb/AD2UE38eC2O
X-Gm-Gg: ASbGncspMxFkVrNIe/lhl3Vmuyfdy+STuQPpKVg25kiopSrnztVvXlM4Tk7jzUOfYmu
	rvkhFESkmrkdYXqbaI0czFfpg4nCG8nUp0ZbXJC1HuFLy70wM/JX/w3cEJEnrO1RvYMPWjoBoMZ
	493D3HLq1pH7dI4/dwY7ktCrC/odv+31iyn9Xl1CHBwSvJbvgon6WbDeMwfjvorh2SgET2zQroD
	1pkBmpwZdInP8IQvd0zCu/koxy0SR6cWBIYngSoijIfdyMIH9ojDJmsNX3uSjKcfBDI7Ea+Hzkc
	jb/ZoR9Ymy75T1CS3ZMRHmJ5Cs3STdS+O/E9uoKi
X-Received: by 2002:a05:6a00:301f:b0:736:9e40:13b1 with SMTP id d2e1a72fcca58-74058b25ab3mr18929000b3a.23.1746452835195;
        Mon, 05 May 2025 06:47:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBYq/9PjHY+0aVxuCZ+xngOxYiSlU0G8RVr3lcCt0KMrkitx/IETIVjLPE/85afY1g0PR4/w==
X-Received: by 2002:a05:6a00:301f:b0:736:9e40:13b1 with SMTP id d2e1a72fcca58-74058b25ab3mr18928964b3a.23.1746452834865;
        Mon, 05 May 2025 06:47:14 -0700 (PDT)
Received: from [10.152.201.37] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7405909ca4csm6773759b3a.161.2025.05.05.06.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:47:14 -0700 (PDT)
Message-ID: <e6d58532-dcd3-4c12-b70e-f765c01ec286@oss.qualcomm.com>
Date: Mon, 5 May 2025 19:17:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 5/6] arm64: dts: qcom: ipq5424: add nodes to bring up
 q6
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-6-gokul.sriram.p@oss.qualcomm.com>
 <5a17d866-a459-40c8-9e3f-90bb1cdbd846@oss.qualcomm.com>
Content-Language: en-US
From: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
In-Reply-To: <5a17d866-a459-40c8-9e3f-90bb1cdbd846@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEzMiBTYWx0ZWRfX2DuQoGd+PBGL
 kM2heWJ+hG8rgLgY+vwYSeDB7h6WfbFxmQv5MOtdY9gaNlGekIC6h10EKnfpZq7gXHh0me7gJlS
 kR62/al0zDnNKNAy4jc6xRPxpzXGVXlZZKiiD1+kKZladjy0C1xGcNzqGUJZv1JQp1ctvoG1GlO
 ICLY/gPKM/V3cBYu2mSCq8UD6iow1plMi5hgu/JdnpsuOuy2Kw4MZDcDwhopfFgy4s7L+q5Z/B8
 QkjgaQDtevIrUt2VQMPXBs5V4PeVah3xgjOVfnPeHEqvOD9wf+UOoMmMJnOsbV3IQnqfgHe00Sj
 bghr7z/X3B0ClYf9+zBqk7pgJ6ObnI/5gUEo0TAkKBYNee3pZ2sOzCWTPJf0JVLcK99fF+PoaAh
 HBIA9hVyzd6vkRtJiJQxdWcs+yo8YEh5f33Wgi2iAkLeG2wqzMVjZQNQPeBsYxPwbwzCM2xY
X-Proofpoint-ORIG-GUID: 3i2qgYD_8P6EfQ395bQ85z-yf4YJaz-D
X-Authority-Analysis: v=2.4 cv=Qope3Uyd c=1 sm=1 tr=0 ts=6818c164 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=PAShMIj1ugy68JlEE5EA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 3i2qgYD_8P6EfQ395bQ85z-yf4YJaz-D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxlogscore=729 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050132


On 4/26/2025 1:57 AM, Konrad Dybcio wrote:
> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
>> Enable nodes required for q6 remoteproc bring up.
>>
>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>> ---
> [...]
>
>> +		apcs_glb: mailbox@f400004 {
>> +			compatible = "qcom,ipq5424-apcs-apps-global",
>> +				     "qcom,ipq6018-apcs-apps-global";
>> +			reg = <0 0x0f400004 0 0x6000>;
> So either the offset in the driver is wrong, or the base here
> is wrong
>
> The IPC register is at 0x0f40000c
>
> + length is 0x10_000

with 0x0f400004, In apcs mailbox driver using offset as 8.

Should I use 0x0f400000 with offset as 12 ?


>
> [...]> +			#clock-cells = <1>;
>> +			#mbox-cells = <1>;
>> +		};
>> +
>> +		tmel_qmp: qmp@32090000 {
>> +			compatible = "qcom,ipq5424-tmel";
>> +			reg = <0 0x32090000 0 0x2000>;
> 0x4000-long, this should be much later on (sorted by unit address)
ok, will update.
>> +			interrupts = <GIC_SPI 126 IRQ_TYPE_EDGE_RISING>;
> I'm not a 100% sure this is the right interrupt, but I'm not saying
> it's necessarily wrong

This is the interrupt being used and its validated and works fine.


Regards,

Gokul


