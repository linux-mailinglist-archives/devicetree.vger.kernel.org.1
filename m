Return-Path: <devicetree+bounces-144179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A06A2D2B7
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 02:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE0CF188BEB4
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 01:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB3213AA2A;
	Sat,  8 Feb 2025 01:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZMVwTL2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B733BBE5
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 01:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738979008; cv=none; b=TL5pAk6pNWniEu6TSSgVuGYq0T5lg+HT/64R9L1a72A0oorIPe6QkJ4CtOsya6uqNGIvTTfXTy8iLoIQJC/O51dSGifuiBkEnsK2XCHqq7PhrYboBPC4BkYDzGuF11c3VbJF6quSPPqDU7F38fOKTH2VHJdTCLmN9+ZzVKMo5r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738979008; c=relaxed/simple;
	bh=8KOc8TEtPMV6vPScInXgKUCKf0lxAqvOCy5Faaq1d1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MLJxscy3FsEJvvTZrlzif7qYuKT1Iqymkp0iPBZ8gJMNaO1SsXXTb1JSicX6PWKEbW0x4lIVkpFCOrvSp7Oj9acL4vWBhbQ+EQ3YPm+pmDFwtCQqC3Po+r3ghidaO9XhPTZasfQvjro9tuW4Mdtcehei7GkwatowEtjit0V9GFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZMVwTL2L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517Mpq9T003111
	for <devicetree@vger.kernel.org>; Sat, 8 Feb 2025 01:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uvl2a0j7vqsq5LA3kTdIeYd/weJt9uMnmK28HOLRjek=; b=ZMVwTL2LkACuACMy
	ygKp3yW7CTUwiETtROhJy1HJUozpmgXNUUmgzvu402fofhhXAr3pG6ToO3GZbMB+
	alcJaTXvhr0VKr+MC3iI6nxwUrSBUHMa/ToyIlzVWtjyy9iFfDbO9prOa7sDEJ5q
	JKAyFsaX3Lnho06J2tlJh86hzqfHIaYyTHi94uHS9FlxBfIJd84Pceie5+itI16o
	zqJ9mrIxd8rdKBoac1w9TJl2cvFunfELroOQrtVZNrspGu/aQDlmGchmdBxdJAct
	ZmHYSAsKtmH0AV4AfNm4EnQcyfhlxVo1jlMKUoAuLzTGOM8dGb1/6VZYxPcPcbB+
	isOj/g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nubar8et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 01:43:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b700506e64so33158685a.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 17:43:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738979005; x=1739583805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uvl2a0j7vqsq5LA3kTdIeYd/weJt9uMnmK28HOLRjek=;
        b=mcFKDB+V4GS/rKNjtE5SsOEh3fQANqWVsdqWIY6+i2RFMCM09BZPhvikrCJwrLOoW3
         7SiZBquLLpcB7iD9tKjtvRApivHArs7J51rb+BhzQHw0dBNyQ8mHP1v/3kGLJonKuxfx
         5Q7Y/5g74Tz7QvPGg1TQ+ej7X9dQJ6zRtCEEBkKLQuC6/Lsp8Jygcw0synjRZI5xTQ+Y
         Aqqy2Jw9oCRoYkAqmmH8CD04cdaWYc7r0S04TKM3iFX0UB70IFY3QzBAOOEDyqNfx0c+
         KdcAyjVZ5q/b0cIxq4z1MvJ4OgQ1V0Q9+LzdooNMnI7T2XfXpA3z6Ihzd6FWZ/+IRFhC
         2xQw==
X-Forwarded-Encrypted: i=1; AJvYcCUoYo+0oTCSlPXnIF5dA3CBNMYkRrq3YkXVlzVHDVVUW/2ScWVVcSL0yuSGVQv0mJt+A6AW+6S2iC/v@vger.kernel.org
X-Gm-Message-State: AOJu0YwOnyBGUHQpBRr5PJdQmTy/mFUgP2W8o8nxZ/ZkfzXAkh+jzn6/
	HCoi2Ca9KCwf6RYocBXkoZoaF0zag4jxnyhilbhazveXFBx0tb1wm/CPmmSgx0Ev44OI2x4INsQ
	mtD99Oktj2zZUzHAMkz6EIygQJoT9LvGAowUvO40ACdlrgLSczSKcrsvct/Ca
X-Gm-Gg: ASbGncvnon8ervioNWtlp7PvatlcfBGHxQRhSXNfwhwvqmJyiNoxO3vjM9Q56J8WEpJ
	XSEWiU8aDpKRyXBOej9P8M908ZEjfjmsEamwDDfqxOYZ6P/qi7UE+Wt6S7/51cSASNCNQK11Lij
	oR5RCR2HmV7Xxh1GreMUEW3RAapYEG4jkH4ed32s7zz2T38mo1vfvKwhlWtFzRYajFIfNDiYxPH
	ujpkhmJg6aC9y7YfhVUdEWsFF2HS361qA3oSM2VsK1PvxgJGkFvDwafllx99UtYtUra84Ubl+1G
	zfdarirjHL56IgfvWRc5njG1GUol8n2gH7E3gNjs1XDi76xGO9/xYfqb3bw=
X-Received: by 2002:a05:620a:318e:b0:7b1:3bf8:b3c4 with SMTP id af79cd13be357-7c047afc65fmr327773085a.0.1738979004750;
        Fri, 07 Feb 2025 17:43:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8UTS+vVH26H8xLRB9dyiuCt4iajAYis4LHIkOKK04eLWDXnRv19j6gDsEybLesd/OnD2ezg==
X-Received: by 2002:a05:620a:318e:b0:7b1:3bf8:b3c4 with SMTP id af79cd13be357-7c047afc65fmr327770685a.0.1738979004410;
        Fri, 07 Feb 2025 17:43:24 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7b0a2sm3418731a12.22.2025.02.07.17.43.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 17:43:23 -0800 (PST)
Message-ID: <9368eaa3-f1f0-4581-9f18-24c2a6f8f5b3@oss.qualcomm.com>
Date: Sat, 8 Feb 2025 02:43:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Eu0QrkNITV6WtOl6q1Q-b_W9AZr3s8qK
X-Proofpoint-ORIG-GUID: Eu0QrkNITV6WtOl6q1Q-b_W9AZr3s8qK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_11,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 phishscore=0 mlxscore=0
 mlxlogscore=856 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502080010

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 SoC.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Please also add this bit:

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3bbd7d18598e..1f79f2adb0a5 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -532,9 +532,9 @@ gcc: clock-controller@100000 {
                                 <0>,
                                 <&sleep_clk>,
                                 <0>,
-                                <0>,
-                                <0>,
-                                <0>,
+                                <&ufs_mem_phy 0>,
+                                <&ufs_mem_phy 1>,
+                                <&ufs_mem_phy 2>,
                                 <0>;
 
                        #clock-cells = <1>;


Konrad

