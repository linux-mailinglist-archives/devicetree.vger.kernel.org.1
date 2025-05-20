Return-Path: <devicetree+bounces-178936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B011ABE11F
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 18:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9056189F8FA
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5032701B6;
	Tue, 20 May 2025 16:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KiEKW9Dm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AE26562D
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747759806; cv=none; b=KTnJPpZlZ23r0S/T8BsMDC4jj0DW+rsJZCq3JcXqgGoICtYHV4HFBNNNu6OVOwdMRambglMAZifc2bWVu/+vCPd5EsAchSCw+BfI0piIean0RR6BJQbQtPEWnMJEN/904gAna1pFZ7Dx9Mvc+jp81WGanRJfoRoljy1Uj1he6ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747759806; c=relaxed/simple;
	bh=I842f8QC/KMfYaWpLg9cY6lpFSAzcGFG5grlUZY7DNU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r1J1xVeUkHgX5Lyk9XJdOgllBwMEvf21MrGtuKDN9UEyPRgdxgC93/pDvlNlHBvjCQrbM7tLfsz6F6YwhleETWN0jP6z+QPerL0XQwQwLfodEiT7Zxr9QeWloDd/mBudlZXEVQDm7c9/yIfjIEAT5vk7LwzZYb6tqaQLFDdwY5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KiEKW9Dm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGeAU7018262
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c2Cr0Q3aujptwyPPP/18wEcr3RB2aPvaUVraUjgKeIo=; b=KiEKW9DmkbNJnmvr
	vMjxlDtRo8r5fXRGGWzTBX04jtarGLosI/E+U2UD5kTdezwZwdfC6SeVORsmKP0X
	suf+Xf6LM4UoZYqwNZ7n5/WKCS9wlQuYRQGAkKCCTc66pqOjPCaEBt+8jLCsIB1+
	M1O9P1WnWhahyt/4WqEbjhFXwW65SRRCiogj47qj5vFid5XwMKc/nlM9wm4dVcT7
	EEm1w/pQ94qv/gWowM+LfF97uuQD1mVWeBZi1BG8U7kufy887DNIUA6L9reb9FfE
	BF/XJO2fEb2CAbXbsAhP/qAhoe0nDnTh0bMQAHa8Z2LkO6UlO4pJydCKu0x1kcXp
	r8Cmnw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9r11c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:50:03 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-72b810256a8so1098100a34.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:50:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747759803; x=1748364603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c2Cr0Q3aujptwyPPP/18wEcr3RB2aPvaUVraUjgKeIo=;
        b=G2mQA6xqRZ+F8CGxHew1RVkKGZKpbeboYXsVhia16/mlwVvnU5J6/cx08AJIIw1zNd
         kiph8h/0PeEYE9KOWr8wbVa/WavYlX6wWB1BQxmz6IEesNgiBv6Awnj2FLmrd4EzLknR
         UvNhnZUbDGAfSQJ5HSmiC2KmdyGmWQPhtBjSbEnrnSRExVasybKg9fSXDO8a4y/Pnm0e
         Yw8urlqAfiAYDCewOH7lTPXs8jUUJ5QUtyRTsZOfcenObo8oCM4YaZT+8M9+SqF3LEIf
         tT2zaOq7F5uZ5WqjaMD8huOmhv88S4WPAyiVbDBHsU3GWizCWZC097xhfZ8wBwJ7dJ4y
         9CCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVM8p5zeBNLx+Cp4OtbV6RunPbJYtbLwrwCEEd5VRaKpjYrHbbGyqbClN3JrLIb9vbjYAvmn5xb0N2k@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmt5qeawHa7tXyzfx+ZmmRPgbvChlwQoEzHiD9N6INttYyWrJT
	ndU6KMym2qovkMJ/lcMNjmd4nLTMS/uzAZyZOB1UJZ8DGcLqXcfAAnwzqxi+vUKgqAK9BzmJ5dA
	YijnX0DwpkiYgX6O1DAxKIae3GKwoHbL9fM33lYvkzVJl0EyHSqnj8a2nMJJ6HRoK
X-Gm-Gg: ASbGnctiEKOuw2BQsuFvlV8oGChDGcatNwOJqndp2PQ3RRC8Yaafiwp6JEuM3SmMsKU
	yJ9M+CoMc+qvnyuUAl9CmTiFG/yUpNVDA8SmM8X7GS/Zx3Uptak+XxEX8vmWZRHXXR58ymd5mOa
	7ipE+1uLaoyCEJcMm4d9JGYOn2XTs0cMxY1og1ve68QXWg5PtYiaKssymyW/gqVTpaw9U9nReBl
	FyNz6QvMi8r6EVgzDa3/21hTts89JXfEgcjjiwRmsCtt6MurE2JGcKp2blwycVft4m786PFMKwV
	lUVSgnKR2GK/KJonFQIs9kD3mO/g3yvlqWwkNGV3FMTWun3vmQN2ML8eNeRlqWpPbQ==
X-Received: by 2002:a05:6214:18f2:b0:6f8:b104:4186 with SMTP id 6a1803df08f44-6f8b10441bdmr82991756d6.2.1747759477867;
        Tue, 20 May 2025 09:44:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4a0OdI4aLpuBYrJMMu6xHS4MmAbVCMTTGLWKZDGXZ+g4jOZbXkvgeQMFRDEnmvpFkP5lQcw==
X-Received: by 2002:a05:6214:18f2:b0:6f8:b104:4186 with SMTP id 6a1803df08f44-6f8b10441bdmr82991556d6.2.1747759477341;
        Tue, 20 May 2025 09:44:37 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d442069sm762552866b.103.2025.05.20.09.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 09:44:36 -0700 (PDT)
Message-ID: <6f12b7e6-5743-45ba-a425-029655096f5b@oss.qualcomm.com>
Date: Tue, 20 May 2025 18:44:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8750-mtp: Add sound (speakers,
 headset codec, dmics)
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250519-sm8750-audio-part-2-v2-0-5ac5afdf4ee2@linaro.org>
 <20250519-sm8750-audio-part-2-v2-2-5ac5afdf4ee2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250519-sm8750-audio-part-2-v2-2-5ac5afdf4ee2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682cb2bb cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=er6kI1bek27KySCzKVEA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=EyFUmsFV_t8cxB2kMr4A:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: DEzQdp_7KNhc7NZECHMq8WzG6jRFe3PJ
X-Proofpoint-GUID: DEzQdp_7KNhc7NZECHMq8WzG6jRFe3PJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzOSBTYWx0ZWRfXxlUxZb5ftePv
 W7pyeKo1k8reJHbC34Ekc7Ao9Hr1SsxB+dJq51XLS37fbiOLzXhCnRRF7bkY21XJwVvMZm4tT8M
 sMs6cqz9/LCn1h9PVO5wBpab0W7rFaphgVZ//IQfs6UPRHmugAgip9ttVT1QH94+QgPLckVPb0M
 V3IPtNKWWC9FttH8+tULfsYZNthgMrHZCH1pbto+u61ZWQ3r2rDLxDWD9g+TQ8jc3Gl01KYmNYE
 93fzzmLCx8vhxRNSemcAMa4Yqc0xAWmMN9QH6KehO1G/zg1CUJijU8cAc5GHcJIyDfCaBLdiqpE
 yHs5xq7NBqznmhyIYbqNiEB/Nb3pSOL3dSD+hSMt/b65EPvMyKuIvjUJLxqpgfta4ySk0a1QYOz
 qE68gQkCBwEswt9mMBGR6TsOTg0xblQMfqnVLj0e36B4CcDtjXvkbeZLl4pp9xrKofQbcfVu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=884 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200139

On 5/19/25 11:54 AM, Krzysztof Kozlowski wrote:
> Add device nodes for most of the sound support - WSA883x smart speakers,
> WCD9395 audio codec (headset) and sound card - which allows sound
> playback via speakers and recording via DMIC microphones.  Changes bring
> necessary foundation for headset playback/recording via USB, but that
> part is not yet ready.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

