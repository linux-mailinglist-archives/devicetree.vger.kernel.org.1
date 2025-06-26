Return-Path: <devicetree+bounces-190024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F65AEA54C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 20:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 288871C4324F
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 18:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19232ED875;
	Thu, 26 Jun 2025 18:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hSBjJ3DU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57732EBDFF
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 18:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750962257; cv=none; b=Ap9o42P58SbaGa1eA2ABd/eVYi+ZfT+J5Zqt3Wy3s0EFBv8yKhrOjtDc48Ry98DccuLWKu17aKCI3/jimJ44HyuOgK6HIhZ+/UHmdxuLfVJosAXytWJjY1QOf5bUWv9hSzcutO3PcLgp/w1iYe2Y/4jUh+3Ngbe7gvHQ43lpqWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750962257; c=relaxed/simple;
	bh=SEb7ufgzEXj8edBJyUUGHHko48ljKtRxkyisUqsSCAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vAi78Ib3AlX5a39oCbc5UMxdo/aJsyytPFN3Eqr/B9kAb0H7n0AisDN/Wo6ZnEJWPuwqoFu0hH74M4KSnuAfppGx46Ej/ET/ep27OUr3gUshIVRMEpq5YyJrE2156g7SSh/UAzyD0EJatlrtqkSJ4CVC+NxnN4QFMTOwfxn5aG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hSBjJ3DU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QA6Ztg013363
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 18:24:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SqrHJ7cfWfnQcM3hQMJMXiBTqi4dPan6flRx03S8nPI=; b=hSBjJ3DUYGlbVw4q
	HFPnYfSqIRfncb3Fig25cbaMZSncGiPtDRaGmUOl6GRBzXszLU8wrv8Fg7FciVsY
	7Q9gcgcAGGv28Vbud85ERBmTOrdWomtM/Zpib5Wk/gr8xkHBW7giZ544LOKmcwtr
	TwFrX1UnCNLcGhDo005G8fUxjGhmUQEEb8rhqkoNa2O6XDtLNx5FP+8vONUNS4+M
	aWkqi4kt/eo1BHM9uUtCcZWF0zpWi9pkEpCHzpetqo/pgl2FgAy23j3Mv4Vi3F49
	zqa2x1swjQ66q8Ov+ecjzqEfyXfmq+kUE8fib15jLS49k/FYFh2O2xt7bKVEmBbU
	AGiPBw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bgm8xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 18:24:14 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d09b74dc4bso27111685a.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:24:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750962254; x=1751567054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqrHJ7cfWfnQcM3hQMJMXiBTqi4dPan6flRx03S8nPI=;
        b=KoDum8AYafeTvJV6UaxRMaL/y++Lv12XIlfEIfqP/DABnyCGm2b+GIJxk42vI+8czL
         OUG19zlEi0Lla+w2f+OQmYE7CiVn1WP+RAVg4/gnRsb2fxKbhV8uyCoO5QIS05LFJNZn
         DTH/PlPBV0xtjcZy+cdH3s0Pqsgldkyveh2sowCJXQkcD1OAJ5plKkEQDE5tnUP8V3GD
         jioO7XOpLQmkdc5QtZsntBYXcinWprj9ZPAOMfHKOzJwJKeEcL7S1UCUtlL8P7l4lV/O
         oXUtUpRd58sbC8g89h5zuCxhaOk9aDC+BOHgkT0zR3CyM9esvA+qGJVd08hJZb96I+71
         CrwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9FuT3G0TYSgRydJk8/IHtnSebPViClsY8b38Ex8p+cMBen8h9eNiZTnG7f4KoUnkJJ7vO3Yopt+kv@vger.kernel.org
X-Gm-Message-State: AOJu0YzHB7MfX6n4IgPOcuLpNnaMoi15ssogvZFYRcdMrwJg5F5ypxGg
	pl8XhJ7vUXTJT9rq8QkDccAHjCb3NVvG8IrmjaaHkzFy/waPdQVnMCVHQ6S6KdA6VPsNhnSA5vx
	X0Tv88NlJSiWSZ146zCu0rfsFL+ztzZ58gmpxIheWRWdCSGa5ggE5DXRjHEiN0ckA
X-Gm-Gg: ASbGncu5CSJhLCt3Ah4ipmt3MMuHvcyEEJduYDT40S4giruYC7l52YSeDelpmvDrU8Y
	cvydr4zhn6+CPNVTcOWNaKL9hx4gEyF/GMrLdG5MfH7N8YHzUFugKWSReCHPT5MrSWiT5Luy6ly
	ycNTUejT4VQ8ij3BmSll17qT3RyC6V45a/tP0yE10Mz/Ws0Tv/YzGgu4uKE5AZHZilt3AKfC+lH
	sqTkdIij0q+q0NoGLRNc2UN5+1qcknOsKj587VP10Xg3HH/VN7Z6FP3lLDdJcUGqT8a9/2j8FGd
	R2AzYeM/hHtn61TSzEXHVpHRGt8NfHn6mAZM+X2GNaGAz5MDMroxoH1pc0aKS8fPSWO3VQn/UoK
	T3+k=
X-Received: by 2002:a05:620a:28c4:b0:7c5:79e8:412a with SMTP id af79cd13be357-7d44390daa2mr30490185a.2.1750962253601;
        Thu, 26 Jun 2025 11:24:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeXgRbD/zpz06rGqRZPcG9OMXst6AVLMv8E1zNjKgi9yDWIHZ6FRqknPqbMJXd0Mnx0ebTew==
X-Received: by 2002:a05:620a:28c4:b0:7c5:79e8:412a with SMTP id af79cd13be357-7d44390daa2mr30487285a.2.1750962252950;
        Thu, 26 Jun 2025 11:24:12 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290e37csm323341a12.31.2025.06.26.11.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 11:24:11 -0700 (PDT)
Message-ID: <8680b702-7890-4abc-a4c0-49bce5a11177@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 20:24:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: qcm2290: Add venus video node
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: krzk+dt@kernel.org, bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-6-jorge.ramirez@oss.qualcomm.com>
 <08e3c707-3b39-4b67-ae9d-f9fe65ad210e@kernel.org> <aF1YTmxF0pAVDFYe@trex>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aF1YTmxF0pAVDFYe@trex>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lVWtZ2A6wDeEBSMFH0EDErBeiZW1k_Mq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDE1NiBTYWx0ZWRfXzJO4EsGFD9xD
 JdAqT85O5QJSy3rWPPlGzqup7b7hLqdd+oIbPEV6kZ6Wb4rNep47Jr53rNN8NedCUfShmTwtipS
 doAoeUUCl3TrXpFefVJVAgzAQ5s9mSqL4gpkYnyolv3FIhdMaGIAEA3s2ktvPoQoGk3G98Y9W92
 gjEyHEBWo7s/5sqCuCUtrYVihyBi7ZaEjy27IO6eBcWXMXlBzj8ounqWgtfmcr2RvmvqGUO/O2c
 cdQIXgoAEnJlUbo+iTDFyIkd/oTHAm0I2MOiEoTJXPmSZgYJBlxGIboWFjlc2P5qagACXkyqAqG
 pBLvGMzphldy2/MrNWEi2R+c/Lb45zjUTXVwoK9IW86nOQ+0HAJr/P8BBvawUnVAU/ct7TIF91F
 toic8YbTnswjLlx6uR8XzzcXWZKGxVNTEnvqxg1YlSLYczr9RYuYfAmWKRxksHwk2aaZoy52
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=685d904e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=kIY5E4sY9iMOqdOJmHYA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: lVWtZ2A6wDeEBSMFH0EDErBeiZW1k_Mq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=854 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260156

On 6/26/25 4:25 PM, Jorge Ramirez wrote:
> On 26/06/25 16:05:00, Krzysztof Kozlowski wrote:
>> On 26/06/2025 15:59, Jorge Ramirez-Ortiz wrote:
>>> +
>>> +			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
>>> +					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
>>> +					<&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
>>> +					 &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
>>> +			interconnect-names = "video-mem",
>>> +					     "cpu-cfg";
>>> +
>>> +			status = "okay";
>>
>> Drop, unless you override existing node, but then this should follow
>> standard override-label/phandle syntax.
>>
> 
> yep

With that taken care of:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

