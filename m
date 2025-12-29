Return-Path: <devicetree+bounces-250170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 041DACE6A7D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0999E3008896
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8011619D071;
	Mon, 29 Dec 2025 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F2a218qy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PjIY0qJB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D8219E97B
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767010533; cv=none; b=MgkMOUC4k4Aibwu3BR6IIovCpgDDSoE+HwAZb/H72nAVTHwcu5JaraGpcTyj6QY/aNGOZ2x5MfPzmBQOkE77MjlY8T5LaOG7bFGkdh6mAcVfSzMpNX7y3Aucc78eGqfBheRh6L8Stw4Spz9eNV/CFZOvJPE6EcjShgFGD8yujRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767010533; c=relaxed/simple;
	bh=IC6ZmG+GThH7uqaKsQj9jsmeL2EgWXyWVKtAhUtc55k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lxZiBtiFn6gNzitYVs8Y2d4qwR3eDMIc920Sgu7+vOtCw915xysR1e+GoaUJQ2aURB2mf+vOzMSA1ouW0OaWD25TT43p4oQA7H+YD0mz9wWPLdMh6X7XPfF15PhKtsGDNO5TZ5AcqnCi0WFZBiTibZwV0WjctziRyrXVhmfiIFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F2a218qy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PjIY0qJB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BT9Qu0M3762485
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:15:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EJCt4lPjw6KmIb+ngELMM2BDiXywmMuaIOQ6cPcLXAk=; b=F2a218qy0azcykWN
	+CMKY0piGxxBLYPyILE+dZLmhfgZ9MZxsh35nimDMjSbYZ4VhA6kDffMOnWtbCMM
	45NoMkBFciBHGXvL0iVLQx8nYYDgRrb68XtTdhpS7AWi1f4oTcW6PfRd50ht0aEQ
	aSRoCX3haFXNn1CSEFB46UIoUbUo0JqnjMSnXE4GJ3SUKFQXTLZf/+DnKuNvLMvm
	peCCVymBUHyl52A82TWYNmlgj3IonKI3B3nlzwfYUy425vG8ZDPiVqjdZdrZCa8S
	NVBSBqMxURnBONkoej2W937Zl5pXNI58C4G1FFJTfcfXrnzZsbDNDkaLeCBLHs68
	7Sq8FQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bv9vx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:15:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so24635421cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767010530; x=1767615330; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EJCt4lPjw6KmIb+ngELMM2BDiXywmMuaIOQ6cPcLXAk=;
        b=PjIY0qJBiZXUJ0X3uCTNF05nti/bMaeDOXADgaEmUs9h2v5LTRbHcNeZJAiOwRwGcp
         qi5t1RlDK3udoqXYh3WXPONk8uh7lOwyT5R/nRjmEGC/EE/Arm2iRGvGjBCXYwBdv1SX
         flBLLganJ4k2crlt5U+4QE7zNrnsY0fKgrUs2/VFy6PEzSSukIB9DWPOVRjF7OJ7xCe6
         B/dxeJGnsdgDU7BcbDaGv/1P5CrgbcEfdqiyS8Co4p6xiFStsnROXTMEIoF6xJykJYJA
         I3chH6FbPv/AartDbPoRAK9OIRHgLbJdCWk6lyO2fU772VzbKBwEhVmcddv+74cqqs+1
         1Bgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767010530; x=1767615330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJCt4lPjw6KmIb+ngELMM2BDiXywmMuaIOQ6cPcLXAk=;
        b=wixFfhCzA34bsUuFK4Sq1P7lfRwbShkyvfQTr4O1EZFOWdBKxU+DtwiCDyjYQNksAp
         LS4cmE80z27maXB+9CE8QnsLI3nigbH+hVlm2nK7/Fh4X62FnE3fFnQpvhiONkmHVYUK
         uGgUrFpquCzbR7p9fnq6ob7KXw7doCQ1i9hfXePlZGZEJVB35ecmNX+FPxdvO0Mav1M4
         YfcvF9jXSYzic9qbefEiDnWRKyUCyg7hrhfsRdo6s/EYT/VS14v9RhijdRcuLkU0Lv+l
         9/dyU1DC2AEdS/dM/trgynqBAwTDZaTxaNLvJ26hOwO1J7S5vSKcOpsBKwz12pJWSBUG
         y/fA==
X-Forwarded-Encrypted: i=1; AJvYcCUkK/NI3gatc41n55UoGrk7wytDyoc8pIuchrkkp+TLQ5/Z4Ps7dqTg1qroOD0x1TJ1WMwwAKBWV9LK@vger.kernel.org
X-Gm-Message-State: AOJu0YwrvlxtcDhYPrB+1WDTFOi3fyPjab9+6Tae2uyCjtx6Ho1nJANk
	SVc1HZLLPQKEndrRrzJyu6euS/RyL+WNYvdOPh4xz4jBpX9/rrOsC6wcqhwVnXdj6gFWYvUfC30
	wrckLt+kFf7rrdGc9A7w6G1no/EvnSZRNh5kJeiWzBxIIrJVtq/D9kcDmJQCIPxlU
X-Gm-Gg: AY/fxX5bUONtb21B7WcQhjybQEAFg+y3RZ5OY3Mw6kuiigrpXVNAcCok/xpz7l3xssl
	e1cmJ2AzE2qEHIcWeHJr/0VJX9V/TCewlVlrMrbexZRt0Z5GWdAFSb4Rtz4rr0Fyfdb/o0A2NGY
	pmqK70xrBe+JXLUfB63BScW+KFQ8JS0VkVtCQSK1u5N77tHzPMAJwTx0gfj7LpsVD9jkDq43O8K
	JeqJ9coOlXPhVS6JCwwWWA2WrVb1xcMIxsmuE25NbKnKzCNXeCR9SxJCV5HJBuq4xiVd6TfKkIF
	M6MZ8ESFJ4zq1xg+gQ38SWCz4epfd81jKYMSuM7gSAdyvJ4XVAVVFxJKZTDqT6bhxIb1Fm+Z2YH
	QpJnivoVMsgSHDLDPBT1XFlITHtFGd7k/O4TipHhJE87NI10bhKkKmKHejVl+PVKY4Q==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr337101561cf.8.1767010530337;
        Mon, 29 Dec 2025 04:15:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0CRP5YKUbuz4LklS5fWci45SfW7k+U5Srf1XjxAOKfl5vUeEtjpXgFXb/++nvYwG74VA0lA==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr337101111cf.8.1767010529850;
        Mon, 29 Dec 2025 04:15:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a614b7sm3353313766b.1.2025.12.29.04.15.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:15:29 -0800 (PST)
Message-ID: <986facd7-92e7-4d29-a196-d49cd9f3d35f@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:15:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for hamoa
 SoC
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: k8LbIS01B1UEdVL3Gt2gTeeRohiZqlus
X-Proofpoint-GUID: k8LbIS01B1UEdVL3Gt2gTeeRohiZqlus
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExMyBTYWx0ZWRfX3f9SS0U3RcjH
 NANRiPjUTIDHOiEsoCP0iX4HHucX6Ywy6Y4SF+vNFv1Z2GDTk4Eb8ZmHPeAFrAwiD0BuQFgWkXx
 r9QXnifOWrAsGU3HYQtUT4av2z1KdvdVq54P7OTZpIwNaG2QAq/4dI0LJ5rAx5/ZXvKufQHCW0S
 PUlVnLT4r4MNJ5eNBjGR1c4u4O3XWu57ngnsKPmusqLxXPJVFmQIi/cUCXfMObnonVAD450AWtb
 +hK+vXbXrg1bII+esNxAsnp4Uo90EJ/Jz+5nv4WmPyVkUnft1gQcNDBJ3UbCefvmT8pXzEE+M2d
 ste3IVcasXSZ2F9LfOGbGbzz+XXPqmKSefTPhPVsucBYrGI3juMtT+u2UIgVWymOX9mmU84qtiz
 e2vyY0O0ySWFaJ81pP6UCWr7QPI4DrYaENbwRnYh6t+yqo/Kj0x4dUfPKJ74VFj4P6GHfWcCioG
 Zz9g6sDttNxdlQ0PI1w==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=695270e3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_zFdHPcPyFEXsBemdwwA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290113

On 12/29/25 7:06 AM, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for hamoa SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 119 +++++++++++++++++++++++++++-
>  1 file changed, 118 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index bb7c14d473c9..340b907657be 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -834,7 +834,10 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>;
> +				 <0>,
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>;

This patch cannot be applied as-is (needs GCC bindings changes first)
which you didn't mention in the cover letter.

If it were picked up, we'd get DTB valdation errors.

>  
>  			power-domains = <&rpmhpd RPMHPD_CX>;
>  			#clock-cells = <1>;
> @@ -3845,6 +3848,120 @@ pcie4_phy: phy@1c0e000 {
>  			status = "disabled";
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,hamoa-qmp-ufs-phy", "qcom,sm8550-qmp-ufs-phy";
> +			reg = <0x0 0x1d80000 0x0 0x2000>;

Please pad the address part to 8 hex digits, so 0x1d80000 -> 0x01d80000

[...]

> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,hamoa-ufshc", "qcom,sm8550-ufshc", "qcom,ufshc",
> +				     "jedec,ufs-2.0";

1 a line would be neater, perhaps in the node above too

> +			reg = <0x0 0x1d84000 0x0 0x3000>;

Similar case as before

lgtm otherwise

Konrad

