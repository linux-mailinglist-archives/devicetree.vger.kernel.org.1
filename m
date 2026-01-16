Return-Path: <devicetree+bounces-255839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC1DD2A839
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B76E03012A45
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73A50342C9D;
	Fri, 16 Jan 2026 03:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="avWx5F/r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g9P2uEG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4262EB10
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532767; cv=none; b=A0+S5wNjee5RHkTxGO2U8DngFwWwsdOSbmzWYAoibORMRxTaKxQfuaS6L9K6Uvj7O9ApGH8djzkF5gINmjSCYI4lezMIm6O0HpqxB1WzmEHpYlNJfcOFHXS8uFQXHNVcbLPqtjfKIpD/IbRU7rrJlQWqj6vu3VxGWkLcusvWa00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532767; c=relaxed/simple;
	bh=73JfBunU9H4UHRxyB+H3lfEjbie2XZX9tkM9AXLNYaM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cqIwNfm0wfFyv+BbfD9wFfv08l59QQIhOd+6p6yGEi9S7xict44vdduqWboLGzRH4Vsm2yZT7U6bOB1hEEsopn7Kshobwu03Dr95IwPmUnfy7bMMXFEyk/yyE2yQJV98grhTDTChLvG0ri3H+eMXhPXcHg7Wu8gFBaPUm9sv/Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=avWx5F/r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g9P2uEG6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMbYn31240908
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:06:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dlasHQajz7U0a0XT6wWHnc7RnLJ3ic3HzDEiIiLI+b0=; b=avWx5F/r1pKCzjYs
	KnkqP3/NRL+jJTc0fkRrHD7fEqb//JrC9j1urco91lDhA1sn1lHmpWMXhlNGYZAr
	REzveG7oFKP7IOZ6J0C7XHcls+PVkKlTgM45eTodRKEpYheKr/WU1in+2PGHcdLF
	vub1kM4BbdhgMrtXZHbBW13t3VCHZgFNktbT2xXVu3B7DmTmkXh3HGPcLmgt/dE6
	gCQmYfjEtMDJW0It5xoLPeE4BRue9K8ZuZafBoSfkjq1Rznq/qR2O6kyccEGQMfe
	zAkpsrSpumtKDIifx1A3WsrzGDgQh3SjRB1/IMNUUUCCRPWigufzlnDLYdhvobeF
	t35h2w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96srjvd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:06:05 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso1011873a12.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768532764; x=1769137564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dlasHQajz7U0a0XT6wWHnc7RnLJ3ic3HzDEiIiLI+b0=;
        b=g9P2uEG6fhFf1kt0Q/z91XcH6PwWlhvWqPEg+XzTaMLx43RwkjE+aJkYP176A0DS7e
         k+2pBaIcIYGKCP0VXu6t8Vg3+8gnVwmO5znhc8FbD7re6E2nSPku1210W4gjdO8od9jD
         efCE5329Lprp7Y63VnG5mTEZVB8jPMg8kUn+I2V5eoKa0WnNUGmsKByrxsghj7XqK4RH
         eHR1SxfIB5grErYbtZypOdHT6SLlyuKa57DfW5fWMOeo1rudh1gdBG/Zn9P1rQjSpy5S
         Ef5VcVOcOBJNVVU5Ygle06HTNOYTpwdlfy8CS7pTJGvLm0wJ7UdN8uY7F+f9P6Oq8Dkk
         7Pdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768532764; x=1769137564;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlasHQajz7U0a0XT6wWHnc7RnLJ3ic3HzDEiIiLI+b0=;
        b=Yd4kxREsgbafHT3MuCB+i81ErRs4e4kfRps6ZST/c9V65aBzx6YGMKj/22C5qNFpHz
         HoEtTkfZ4/I/8ftocyCHl73p6DLJSFXfK0lemZO/wsf2wlXyW+EeiIi/b7mbd/TQVER1
         CNWRKnXYkl1oYadDaFymqjTxYQyHDoAe3BeRF43JDCaHzg/7Fpfoo3lsLHuRsDX7HRiE
         hGQhyZkpmSq1TuDXggNpwDCKNV48sZ4pStndnlJICS1ZQEyQ3BSs3A0NrLHfqHtUV47q
         FEpEufsa1b/rPog7Y54KDoA5eBtBa2a/kgZ2SOWLFWAYr2ZsAlXzQnjL0gq1tmMOcDao
         dglQ==
X-Forwarded-Encrypted: i=1; AJvYcCUN9FwC/EuMiBlbCdpxmlt3ydrjj1B1BcGwbsTTcGqIrwKTBOmRa04FdzGFg9P/hFguwRKgH9nWMPRz@vger.kernel.org
X-Gm-Message-State: AOJu0YzIQnCNT9+TUL+nFwwdvqR60csruTSW6PcW6hTogM121XAANrYy
	w5QZWyxYawuXN9ziYw65r8ixavQACBWfXxxZgNucVvm9rujmkvDpE9EcumH6cj7FH1w076tXVI2
	E8SZaB8Ti/X1iM+FYP3G9R9BZ+rWeASwov/SlL3hYA9L9hDTPxNdwIzV0jrOfA0/u
X-Gm-Gg: AY/fxX5lXpqkDtWpRbxN2flA9fh/4jdAc4vD4X4kKuqTXkkCsu5Ft7NwDE55i2BXL+a
	e8jjezVO82sb7XL/5zgo1F2jymxyZlrNAlsBzeMjV5UUgiVqYEjrMvBFJQyU+EgY7Ex9apep5nO
	dkD4UZgKYU0WBrrORbYhVLoLru/KjXWNESWtKdyxg9fNlUBi8zfxzq7k+wMd56EZhTx6CiXn8hB
	vGa+sEqPti7HdOSgzqw2ByJOY0KSpt+uj2+7YapTbCqXFBrw4/S639b8tyNzQqHjoO9rHGcRlXK
	RkoK5tpjtFrQHY41TGUZFPDPYKt6j8aAKd4xAkLpy8oTEyEeJQwxOEgFKNyrxgwWQliYjPhAEPN
	IWf9cZ8F/NdrZR3ioHYb2Vvp8vVpV4VDHx6H+Z7KiTjHnXLJ8XUr8wREqs0NBbgES6pr6kx+grV
	YPTcwQ
X-Received: by 2002:a05:6a20:5499:b0:38b:e7a3:9d17 with SMTP id adf61e73a8af0-38e00cfc3f1mr1207319637.49.1768532763993;
        Thu, 15 Jan 2026 19:06:03 -0800 (PST)
X-Received: by 2002:a05:6a20:5499:b0:38b:e7a3:9d17 with SMTP id adf61e73a8af0-38e00cfc3f1mr1207287637.49.1768532763536;
        Thu, 15 Jan 2026 19:06:03 -0800 (PST)
Received: from [10.133.33.232] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf355ca7sm650676a12.27.2026.01.15.19.06.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 19:06:03 -0800 (PST)
Message-ID: <8b33d6cf-2dab-4f71-9563-c613e598681a@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 11:05:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/10] arm64: dts: qcom: kaanapali-mtp: Add audio
 support (WSA8845, WCD9395, DMIC)
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-8-a6cc9e45de93@oss.qualcomm.com>
 <v5rprswnwedm2y7rjr3y2zfvhdh5qztvm4nnaeti2n6yqyj5yh@7wbyro7orb3q>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <v5rprswnwedm2y7rjr3y2zfvhdh5qztvm4nnaeti2n6yqyj5yh@7wbyro7orb3q>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: HLPeEFXUWjCWi6ZOIpD6eWZnrs8NItAC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDAyNCBTYWx0ZWRfX9vxlO1nhYv0u
 Y2BL4cympGUdzijJdrRlyaMX3K0nzme6Ri7p42sI2AJIgK1oHTw3SqXqxfz6hCNYAalWABjS3c3
 aKFulgk7KdRA707oekASG6Ege+U+I43GitTdsxaj7/MUS5Jvn0cuVAigd6pPgVaGJf/wiZTJvSH
 DwViEjn4zaN/AXpdHCm0mmtSNfSkMqp2lSP252sTZeZk/qExtasMtBeLs7PIkRCVfEpu5GjpuF6
 +oVBcQU4Yum/c+RReosZ1XWCqeuIX1OWJF6h5eAjlB8tmSPObLDm6gLtXX+gBq5Y9oz5R4N/f0Q
 mi62PbkS3UhJLSfesACXUmM3iNNrPbw9Tbc4Nnu3qmDxOhgXssMLtxqW3X3ENyayHpp2fALtccl
 MpI6ZRLUEfzR7iSZ7y63dGJoe4faynOBuBQeE5dBVDXfdzAqGJdDt6RInqWy3vjeV/mJtkK+vV+
 DHMNun1IjvQo3JHaPXQ==
X-Proofpoint-GUID: HLPeEFXUWjCWi6ZOIpD6eWZnrs8NItAC
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=6969ab1d cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nagTmyFeFluCUTjUvcIA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_01,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160024



On 1/15/2026 3:15 PM, Dmitry Baryshkov wrote:
> On Wed, Jan 14, 2026 at 10:49:10PM -0800, Jingyi Wang wrote:
>> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>
>> Add support for audio on the Kaanapali MTP platform by introducing device
>> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
>> microphone for capture, and sound card routing. The WCD9395 codec is add
>> to supply MIC-BIAS, for enabling onboard microphone capture.
>>
>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>>  1 file changed, 226 insertions(+)
>> @@ -684,6 +793,14 @@ &pcie_port0 {
>>  	reset-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
>>  };
>>  
>> +&lpass_vamacro {
> 
> It is a strange alphabet, where 'p' comes before 'l'.
> 

will fix 

Thanks,
Jingyi

>> +	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
>> +	pinctrl-names = "default";
>> +
>> +	vdd-micb-supply = <&vreg_l10b_1p8>;
>> +	qcom,dmic-sample-rate = <4800000>;
>> +};
>> +
>>  &remoteproc_adsp {
>>  	firmware-name = "qcom/kaanapali/adsp.mbn",
>>  			"qcom/kaanapali/adsp_dtb.mbn";
> 


