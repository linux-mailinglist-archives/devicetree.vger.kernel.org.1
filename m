Return-Path: <devicetree+bounces-262145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE4SCxjEgWnZJgMAu9opvQ
	(envelope-from <devicetree+bounces-262145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:47:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CCAD70EB
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:47:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D5EC30177BC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB36E39A7E9;
	Tue,  3 Feb 2026 09:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YIQVJa2+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VcyPFcO9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A98E39903E
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111897; cv=none; b=J3dEqF3Gtvqnqfh5ppLUBJiR0M2fov6CGzU4pPmqkfCLyTP3PAY8cTxY2BjyNekpl961/H519D1PNDzOSSdxnOmjeUYCxJnmgF3GtNxWMaeNKHcecIvDCF5JD7bYAgjnXKWohb4rURVOUM9ogGInAr48BCTbbS/Eab77cWSwwCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111897; c=relaxed/simple;
	bh=8sieABVkq7a8uU7GMw2FdM4DZGO8ObwJRGo4F28ft0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q0gKOI/5i0E6SkLfUjOX/IQHDN40B/dMGSPulMVMt8zRfiLBFIHcf9hkLpEO4nMqPp5tukFe6Eo/DI3sGXLa5HDdJryb/6iH4uiQWKpILiP0W6UvONXeCw6NadEc6DOeKNdCNvvjkQJ8IyM0pipjDMPRHIuTKvZ8OWTYCkISrZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YIQVJa2+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VcyPFcO9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6135Yvo12103237
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:44:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eeudJFG7LiMKodunMeeL07Kfaxiu1hJuoyGKQB6SV+U=; b=YIQVJa2+a+wZ+wK+
	GD9B+rM/77a2AKdlV7pA9dhGKQgPwPAKOjsOzKYmpFxj5pHcXK3aqBI3DrrJF1tb
	wOuMGyY3wb2t/PPQfTAaETIlrXrDcxVwh+8rZkLxC1mwA8Aq9HqbdXz979+jmIOY
	xKK/AxlEbqc7fQYkFYq6Qrmh1X3M5/8NBmcCvWXpEJBeXff7Apwj/xuCxhm/ChEl
	MQMDJhm7Co7IOqkHpYUzKRiNy+FRbEzQM+T4KB2zyK6iryw26u6ankLmN3N4vRCb
	nkOjej/CD93hwDD0A3AxfZnhavZ696kuop3CgZ5Jw3Am2n9iT2FBytkhhqnevDGG
	WDuhtA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5eby2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:44:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e518fb75so47082585a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770111895; x=1770716695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eeudJFG7LiMKodunMeeL07Kfaxiu1hJuoyGKQB6SV+U=;
        b=VcyPFcO96QHpeSGo8p9ZJwxZtaZE7D18yDQCauKe8BcCHXnFqaIU34ZdfNZ2R85AcL
         +fImcN2q2iQFcRmqG7NZz08wKQrGHqmbzN4syl21U26r9Qe3ZmdO+WKRu23LUyJC0391
         GlmYOkGlGVt51+gS1lOkrw0gVX27RephgUkwNF/y4a19IeINoFJzy/5v/yhS8t/+suK5
         X9PkZprydBQRjJ+2Lii/hmQLai9kdidL8zh2ymPK5Zvu+Vq6Wp1ZTgYUpxNRyh2wgu2p
         yhgET4DRnUlyx+T/Miabze56vU0HIh0fjXBbzp6Sjk7u4kodZGFDqo5pak7EVqij55/z
         Txhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770111895; x=1770716695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eeudJFG7LiMKodunMeeL07Kfaxiu1hJuoyGKQB6SV+U=;
        b=CEKdiZvlp+qsV787PPh03lq9ZtJ0tUIrwubKMqiBx8BpFheU9vAE5QMaBDXfgnf7BD
         DfucB7awis1OOl1HFyyTHjMNu1F7pEwqB1sJg0daZsbmtx5vvMejax3K+Dk57dKIXlLJ
         12FBmjCwuhQewwrj51cpapmOUjBV23kxlCYr+HWXWfdpd0tCUh3iyn7FtQiGO9sN9i6Z
         /6AtRzPceXANyPGADwHzqx2kYVVYBtBvjjwaKFbjlb+cPmWjSH+rvwZPg+Vvcq0vBbiw
         McNUVfEEOSwIFdjmaW69w7w2g+rgFbHULrPc1UFsaAjBGeu73YzI0EJ0JWYoEKTrx2I+
         +K2w==
X-Forwarded-Encrypted: i=1; AJvYcCUS9p9lABQxWIlwaQlMppcQOHKT3++hkriEfAOLyiKDknh66AKjAfq8rsrXDgARG9aziboUS7D+6Z+c@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn3+8FwNowN5t3dBqu4SMAhjIjG3qOjvp6wksA863g9ftYT5E6
	RaNbMSaAbx8FLvzT0poOr1nG5+sJkSfTXSWawhM2VYDdoKHtB6dE83PCZeA4eExrMYv8C4AnkIO
	yNKcfuO5PghOT5qZKQnZRy2JTyKPr/7XfpaKifwT1MwH++SCCDlxG9gUa/HglIbid
X-Gm-Gg: AZuq6aI1KMUNAJ903b3OiTiSOUC3glo4S9q25QTvVylktWCNtnUtJrDxxIc298Sy0bp
	B6rjM4m7vNJW9kdshUL/ViPicyvq+oWmzzq21EwSkYKCWSW8pP4CrhcNdKXov21d9LU3DzBlUku
	qG2Xi/CfKlA92WKniHeWNu/uUQicZ2S9lUa6TbYSc7zTkhDHHJYbFiRNBxcmwX/0jpHODZIrfis
	aUWSsJ2oXEa8JQy5C+8dkmUIps8i8nr7+zjhIe0TWPy6J3mKSGKYmhvbpiOCj0D5q6tMP37lcOK
	95CSdtLUnN9X32Wk3azu4ahFcNA4pv7HiITAjN2yxJZM1NgPqAQJOBGgQxux+F1h1mhx7veHrwU
	uu6GORl3exFmR/70m0WPP//cjQIe5i38n2/ZahLnq/W78V38AtnI3dg2/SYl6tDUd7Go=
X-Received: by 2002:a05:620a:4503:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c9eb32af98mr1422219985a.10.1770111894746;
        Tue, 03 Feb 2026 01:44:54 -0800 (PST)
X-Received: by 2002:a05:620a:4503:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c9eb32af98mr1422217685a.10.1770111894312;
        Tue, 03 Feb 2026 01:44:54 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e04be76afsm679879566b.36.2026.02.03.01.44.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:44:53 -0800 (PST)
Message-ID: <c739da90-de92-4d84-bb5a-e653a9fbdcef@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 10:44:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: hamoa: enable ETR and CTCU
 devices
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-enable-ctcu-and-etr-v2-0-aacc7bd7eccb@oss.qualcomm.com>
 <20260203-enable-ctcu-and-etr-v2-2-aacc7bd7eccb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260203-enable-ctcu-and-etr-v2-2-aacc7bd7eccb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NiBTYWx0ZWRfX6Z7d11pNpdOF
 nDBtTb5AVJcxlgb8rZyMzxAMQ0sa0vfUgTgIF7V+li3etAC3y25GyKn26zPOImfEG2V0vFEodFW
 5eH4oHt7Dx+MLLFeBccyX9t1L69ukJWrs0SVEl3uBhndfiVBndb4SUVPYWuKLyB37Arm2LwpSRg
 /y5n0Xb6fItGjiz6e2smx5ImOxBY5jVghHLpzIhgPNbxzWo1MfIYYBzoQhL7W4lxw05/C/iA2VZ
 hxg7hf9dWQAeKmENAjuMMZiK/3kfSQELG5LL9nmcqnWOEXMiSVO7L5NnIJwoi8ZOFmmi9H4Ncj3
 LOw/aF4vVjEpCywXFkw92mTJqHnVNV2mzOZ+JyQXIIzigzH4oGdsSe53VGS4WaJSiglJLIjrmEh
 /4q3C8mGl6wL+OhAmPUVN1gjRUiCEdGzX+OS2gqoKBNDF4ef9D/kE0c8iPW90zMoB2brYi7qX9g
 XK4emhlowHoQeBCAxnw==
X-Proofpoint-GUID: UlzGvLEj34E5QkCF26Q34rqs7r1JjQO9
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6981c397 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9tshIx6OZwkx-PAztD0A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: UlzGvLEj34E5QkCF26Q34rqs7r1JjQO9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262145-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.152.154.104:email,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 52CCAD70EB
X-Rspamd-Action: no action

On 2/3/26 10:32 AM, Jie Gan wrote:
> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
> tracing data from source device.
> 
> The CTCU serves as the control unit for the ETR device, managing its
> behavior to determine how trace data is collected.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 159 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index db65c392e618..88ec29446ba1 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -6771,6 +6771,35 @@ data-pins {
>  			};
>  		};
>  
> +		ctcu@10001000 {
> +			compatible = "qcom,hamoa-ctcu", "qcom,sa8775p-ctcu";

Sorry for not pointing that out explicitly the previous time around,
but 'hamoa' also falls under the "had numerical compatibles" category
(you'll see the only hits for "qcom,hamoa" are "qcom,hamoa-iot-evk"
which is a board name)

Glymur and Kaanapali are, understandably, Glymur and Kaanapali
respectively

Konrad

