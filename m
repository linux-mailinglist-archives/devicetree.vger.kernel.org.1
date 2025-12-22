Return-Path: <devicetree+bounces-248777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 28220CD5A07
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22D87300EA37
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082173328ED;
	Mon, 22 Dec 2025 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F2/LCd8O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ihKrpcvJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9EE3321B1
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399092; cv=none; b=osewpzgsQgKis4EgLrtr5C7CgO7D24CSKg7xtsHD8ZSXFyDhPJdPiylR/kT1RjYLELcGPBg9PRkwRR5m6ADaGCQY7HwvCa72fudIqpFu8vSc51RXXEWfjJg9mG1XUznGF+x/lu+eRJOOgv9ufMeHg3P2+LLQyuYhmpUQmydeRAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399092; c=relaxed/simple;
	bh=gTzP0yxnU4K516FBF62gyin7+fK1amINjIXHdHvg2zk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SLsyL2RzS5UWMbZNhS1qrxsjAZ8t4wVX/j6UfI2Ojy4luAqrY6c8TTDSqVPTcGQuUZWIvepfR7InRyBUySi00MmD4B5dGdXkYYgtgnF+2D+xg3Ff9CJvYIldi6xoaGqyqXiQf/Z23dTRBLA+0czhNZYDiUUCpOen8tAqC/EUOQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F2/LCd8O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ihKrpcvJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM81WhT3812452
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e2KBA4Mw2FCor6hDg/0DA6Qs6b7AfElOdR4303C870s=; b=F2/LCd8OGLw1y/Yy
	s6i0zbwMK++xVBd1+ae0XWWOVSS/6Eu2HohkUoZolgVfh/AyfzZTPWicPKJppwuM
	ixU1bO3O0Npiit1uMTV1M29+7Gtn11f0/yCtxGYUsRfRhgI7v66JaXX7soYI29hg
	0Rrq4M+2Z6qY9vV7SdflaO1cvnxYKg6iGnitgc3Ci3nvjWU3IPXftaXr2xAv4/0U
	NGhxojmyFu0AbdUn6Jgz5QcRpOaoPgsf1Z/dDrHSA5sILXTrF65aKFvDdIfop21C
	8uIGMJsvHNKne7RQPy1WLgwGTTajn/xexc7tNaHsf6zcncaYsYpkUmEdmwfbaeN7
	691KTQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrtcnw2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b89c1ce9cfso4693931b3a.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399090; x=1767003890; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e2KBA4Mw2FCor6hDg/0DA6Qs6b7AfElOdR4303C870s=;
        b=ihKrpcvJC8cq51KUgW03YhbiYe9M/j3GPG2Pv58HVo9RLb/VG0fN22u+6vyL5UEYso
         G+ZbCfSIDv3nftxgp8VCsQ/QpQyXClhGga0xHlqSeqKtXAxjq2M+0iTMWzODYkKFeCwk
         RuoZkjbUMfLpz8BhFGyho/xsNZlmHqgI2D1i6ub3NqLIhJuzdEFVnFN/GSQ017YIMMpk
         aUZMlRyYJxPAxqlgBD28e7XvrZSC9SKEGMDxVYfzXKlT/6P74+wkLRLKh7HHzgngLo2Y
         ++xiEz2135JoZ0Cwg63W31m1lF6GvuPH8xEn3JQYj5MJf1OXJyFZHu6Y5laRivYLv2z8
         hzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399090; x=1767003890;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e2KBA4Mw2FCor6hDg/0DA6Qs6b7AfElOdR4303C870s=;
        b=cjyP66VvipsZlfRBhWsKwUvksx0OKIn1q5/FtH0Yxw19/l0JCRMLAsHj94x5KXNY0B
         vixcoIkxUM4xPLh5v0EfWwasn4RMoxc9zddwpBqL2DMV7PPdT2OKH/WVPPsaHnGPGepO
         as1gRXYa9bgMduueUkWGd2OwidMA9QfpmGDuOf7fVuY3N+L4Z0ighybFJ9VwFnKt/LRz
         4x27wB8F1vAiMvl/LW5/bvGRMmVbrBoyg3KGheBGiFcX3AwaoqH8WyZ6/ASWr0icDrQ8
         jxcSjrfBhj+g2XmQxHSQ9QOihQqMTMtiP85RgpABWXW0NprYvXstUD+044I58i5cbNJP
         TZ9g==
X-Forwarded-Encrypted: i=1; AJvYcCWF6ir0J30RsY67y4Rel1sMyE2tuH7xeWXXB86095PIPsKDTE//ZkkyBFfTJTZanXn+mDbt6RmQrVX1@vger.kernel.org
X-Gm-Message-State: AOJu0Yywi7Q20t8xUUJ6lKtxINZZsocbbEizp0nhc+RjKtTo4HA8oDN8
	Am2Wr6ugd9FhBbJMSEGTk93RlCVa17Vu7THykQfkgd7COrU7L2rjhTBGe7mjSTlONrinJ9DI/vH
	9XhrP2qFkB8iFbuXQ07QWeXAlhy1a5p2uJa/YUx48G7ymSJB1A4xy3Dt4Y6Mqu/6r
X-Gm-Gg: AY/fxX6n6ByAG2UClg9JpRQw+15jrKRDsWN91TelxhwQjbKS3s8wcY2fbn4ArhrhrzR
	UPRxIMUFsyqzEuuvkkDCmmyopqf3EGT1oNHZWbSUfccIYySjiksWy6ZA1TybSNgOx2qV8QXvPYV
	i2HFBoFS8O7aSDI2JxW95nIs/Bnj8jgG/A8x1tzw1Nf9tfbTtg68bww7NEHRJZiJoPzSMwxI5xZ
	kDYvh5KqL6lFKjJo17gWpzgOuihnx7WklaovPX+lvetnmrFVI43CG/PvmN1KG4ckujTDBh8jCVv
	aQv0N4lCEhYvOnceEnGJ5H5jDhmPOdiQBkSY4OfNLzB3N1x3HFTfHrtUxAETjsviX53rWd2r9Jz
	DU37tYG/ehNboGekfqct8jLUriaTZJfWgTiYlegwH7gvWxyNofahG0L/aR7rWBT4YqsmBUtSq/z
	C7Sz/Aj8/zGr8iMw2SJYfi2xoJwaQ=
X-Received: by 2002:a05:6a21:e097:b0:342:873d:7e62 with SMTP id adf61e73a8af0-376a7bf0d49mr9365451637.29.1766399089635;
        Mon, 22 Dec 2025 02:24:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7N3N8s+HFdppf1uqPZ3c9RQfSGPc9XgBiqUADzM3FpvaaUprae0amvTxPQKt3VMLG5dc4/w==
X-Received: by 2002:a05:6a21:e097:b0:342:873d:7e62 with SMTP id adf61e73a8af0-376a7bf0d49mr9365425637.29.1766399089095;
        Mon, 22 Dec 2025 02:24:49 -0800 (PST)
Received: from [10.190.201.90] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018586sm9020009a12.15.2025.12.22.02.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:24:48 -0800 (PST)
Message-ID: <b349691e-07f3-45f9-b28d-d352107bd66b@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 15:54:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: defconfig: Enable Glymur configs for boot
 to shell
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-2-32271f1f685d@oss.qualcomm.com>
 <2iu6xuoeubohzsjfo46lxnxnzi7jdcqh6joxms6e5kcln52pr7@ewte5v4m2dmr>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <2iu6xuoeubohzsjfo46lxnxnzi7jdcqh6joxms6e5kcln52pr7@ewte5v4m2dmr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uE1x54cQS6ivv-6WpO_CP9q9LEvRCpju
X-Proofpoint-GUID: uE1x54cQS6ivv-6WpO_CP9q9LEvRCpju
X-Authority-Analysis: v=2.4 cv=CeEFJbrl c=1 sm=1 tr=0 ts=69491c72 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Z2YfEO7aLxX9g5b9vT4A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfX2T6JDrQ41KAV
 b9vSuhsAi2ykgjzTXKvIkf6s/lmDogEe+PmjUmgrLgjRVsZtqsFB/F69hNf412iql2baORh4EiE
 I8GSFxVpf3E6Rkf45zhbbaxyXK4HAL5h2cHDs5yYfba8qVT2jjgM7uniKLBfJkLCTXf+EYY0PY8
 mmTyAMIusbvVAq2HULRtFXf94gQYKYpi/ELLLWZxTRCbIdFYkb5WgJeC9PeNR/NniHOSjLamhbt
 yLo50Zm8/ZEVgLY/6P1SxReGSbWeQXlaxQt3X7vWAO37MDF8SAISNqhSH8bsFNeSL4MhCnmlmaY
 7YecE/oUIDW8MI2rWuBqI6MBjB1LcjRkWu9YcoB58sH8m4+JtcQItXy8ug4VyTFIos0Q7m3c2L4
 2zYadTM1W4GSB5Hl0cXpf9sFbaMPy+XBox3xtjDXp5RLp5clkNv4TboauGEfwDd85bfMRAfj6p8
 InoNUBCJjS3VA1IXPrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220094

On 12/20/2025 10:47 PM, Dmitry Baryshkov wrote:
> On Fri, Dec 19, 2025 at 08:16:55PM +0530, Pankaj Patil wrote:
>> The serial engine must be properly setup before kernel reaches
>> "init",so UART driver and its dependencies needs to be built in.
>> Enable its dependency clocks,interconnect and pinctrl as built-in
>> to boot Glymur CRD board to UART console with rootfs on nvme storage.
>> DISPCC enabled as module, used for display.
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/configs/defconfig | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> @@ -1425,6 +1426,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
>>  CONFIG_COMMON_CLK_MT8192_VDECSYS=y
>>  CONFIG_COMMON_CLK_MT8192_VENCSYS=y
>>  CONFIG_COMMON_CLK_QCOM=y
>> +CONFIG_CLK_GLYMUR_DISPCC=m
>> +CONFIG_CLK_GLYMUR_GCC=y
>> +CONFIG_CLK_GLYMUR_TCSRCC=y
> Is TCSRCC also required for serial?

Not required for serial, will update to m in next rev

>
>>  CONFIG_CLK_X1E80100_CAMCC=m
>>  CONFIG_CLK_X1E80100_DISPCC=m
>>  CONFIG_CLK_X1E80100_GCC=y


