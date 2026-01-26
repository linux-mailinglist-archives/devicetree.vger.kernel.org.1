Return-Path: <devicetree+bounces-259409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCKcHg42d2nhdAEAu9opvQ
	(envelope-from <devicetree+bounces-259409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:38:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA9F861AD
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E24C3018BF1
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D11E329E76;
	Mon, 26 Jan 2026 09:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WLlZTVeJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G1Ks9XfD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71F1305962
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769420248; cv=none; b=o4Vdmjtt4S972VgGbQLEdd4Jx8y/n8xaeC+YGgJhN7jMDR3BUTRq+fkc78Ggy6r4R+Y1drNGd71r8nxgz5gadEJVrmU2FCidsOf0JaoejehkagELN6disr9h/kwjw2nFRphlpQ0h+fnwrTVR9VkxmSVR14GqUPWiYowWfzCqfnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769420248; c=relaxed/simple;
	bh=NJZVeQnPritQ9oAgGk5dikPDTgOryU2d4aZrgv4Z4oc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IgSJmSUdq+HIrHXZO+Z5bQOZEmHyTX6hv3+Ss5cIh7wi8OZtGCbYb2YUEZwdpw7xws8w1Z5IjpvijI0hVM5Kd3uI4hejfn99gzIO53sLraAPpk8dLMOoG/+nUUvMpYDdDKeDeMnU1HG2nzJexnAQvdqLebOKWJUFc2AJuvSIlys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WLlZTVeJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G1Ks9XfD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8wtXb499513
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:37:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7KsPFZY4rHg8H76Rfdt7O2iLy2z7r1HBFt9GRtgjQUQ=; b=WLlZTVeJlKNrJwp+
	BdzfkxAAiMJGC/ikPFwlhVrAMDmdkGSRwm1GcLSbEPszItnPZm0oViLWPGRitALs
	DG3H6HhkvKwinj79EbEzR2egK3Vo+mOPQP/Jd+h5hCi1Jhv8Wh56Hl93Flex1OkB
	5SEzomx01sTlIdQ7XEp9DKjqAGCfUBCZk28GxNTPMUKieHJCWdpaNAK8Z4d4g+tJ
	xs4ihT6KjFUGX1hhAaY4MCd40IqbSbB5VQcHz8A6g1Wp9+cRQUfLI56VNq7MgKEU
	do57Zbfubtzc5v1ftvy0RibcXgUDKjN4L4iJ0jjDpYUcSLAPzQecP0Rum5nQZQUc
	2UJ5Lg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9qm2wu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:37:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b137e066so128409785a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769420244; x=1770025044; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7KsPFZY4rHg8H76Rfdt7O2iLy2z7r1HBFt9GRtgjQUQ=;
        b=G1Ks9XfD6sjTlsBBu6YbGkp8eOyycsPSCcy+4YFI9lGz+Jr4O/TXf7s3/wiFeGib3a
         M/1IO3FnkaoProYTqzxfYk+m6Ymo2nMe1XFaqcnt/xXSempaA1nfJyBCK40KTj2y7LW0
         FBc/XsgZUbiCwCmBZX9AU62S2mOsP5Gsu3tmlcbuQlr8Me0culNX4PR7ORgKEoNSvyK4
         nkNIqJvK/G1s5UaBVIYII466v/QOw0uoGXV0rSp9dpq+bn9ifQCKAg80z0uZfs/1KP9u
         +PUfRZ1LJpIA2e6XAJ40IAN6ffjXuwMmnlvakseuLpG7tMtjEU5d/LPEkjTxYyAs6SUi
         A7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769420244; x=1770025044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7KsPFZY4rHg8H76Rfdt7O2iLy2z7r1HBFt9GRtgjQUQ=;
        b=uqhDqrAPLdy6o0j3L9//gqFb24Pj7NPzWQjM5NiV/EX26428n6Lk3W2olBkhVDI2bg
         9wE3/n2VwuGK3H9lXVUUkKhIfAtB/NYsWd2WrvB92CaE/yiTO6hsUBxOW/LJj0zSi3O+
         Y7ERBS0HEBVPF79XtBSCq7Dg4H2ccq5FSTTcudljBrCEiPRZlxGC8Yfp+5BdwykSLDOy
         p+K9QyRBtudU3c/sHnOZmbqB3yCQuQOJgDk/9Lnt6c7i/60tpnI98C285K1pzZm4oMWT
         1zA+ftagF90l24FGrhkmYNtLnkZach2ewnqq0MBAdtiLoCYmYsyRmvH9zFguQnWTxKht
         WYPg==
X-Forwarded-Encrypted: i=1; AJvYcCUsUyDL34E8XjUbfDQo20qp8NmLEqyzFT07ZnkslqETEK8bnMdSwVqNmYezNGLbn6qmt+GbT2Om7iTg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7cszvVqZlzTbse7b8we7hrqovBMK+aZadCR2nyKrC8zN3q9IE
	u+cjsCyttCCo7FB9gpOKb4tcV68lL4ush3UbvsAbgduqC1pmJZHHWqIP6BDXGHLPRduhbTOjbtu
	Fjxzw5YcWMF/IKAuywdjLIi271uk1ZK6WFO5I6ZIPj2jV55kIFJBenup7aCmn4hee
X-Gm-Gg: AZuq6aLhdxr2LRvmKD/hoPGOaDYSnu35ndpbvJ6AIqlrbZIwV3dCF3MDvLgxMen9rpl
	BFU6ks7kv0oZaS2unv+/AnSpCyx083ikCSjLo24ujhrf1YFbToCsSk0WrkqW5KlVJ0pDAVd3MwV
	BWLm6pHyTg/YXQc0x6Oh9/R7YEkl1shI2c4DmFdLLNUgk7vGY0YPH81Td0NpePh3BRk+543vrH+
	HxtxMBEINgPO+hCqKW+mJcg8S9U2Eqe//xcPwd7k8sivquZSVYXSIaw2I6yJfiXc0Y3BulvBmOs
	M4/nGMuQfEUUmeAZk6+ah9qKOtQ9xjhzXwUa+QM1FWqIZ+0tVGNlOTeghvGon4kK69p7BylXKVx
	UuejcAo/hRNZ+kBerFTEAQqnccOyjuscNACm0tVfQtaOT20k+yLr2z+r2mpJSsBnaebE=
X-Received: by 2002:a05:620a:44c1:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c6f9570786mr313133585a.2.1769420243961;
        Mon, 26 Jan 2026 01:37:23 -0800 (PST)
X-Received: by 2002:a05:620a:44c1:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c6f9570786mr313131785a.2.1769420243465;
        Mon, 26 Jan 2026 01:37:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b419465sm613115966b.24.2026.01.26.01.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 01:37:22 -0800 (PST)
Message-ID: <179f8fea-85b6-489d-b710-e995319d9000@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 10:37:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: talos: add ETR device
To: Jie Gan <jie.gan@oss.qualcomm.com>, Rob Herring <robh@kernel.org>
Cc: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com>
 <176917840185.2044151.8624555547965761091.robh@kernel.org>
 <2a8ff39f-7a78-4902-85d6-1267c319d8a7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2a8ff39f-7a78-4902-85d6-1267c319d8a7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: D__CCW8cnzN7PBCJBjmlFCGAR2JsRjpW
X-Proofpoint-GUID: D__CCW8cnzN7PBCJBjmlFCGAR2JsRjpW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4MSBTYWx0ZWRfXyhVn/D4AKdUH
 +FIErt/3xqCMnif9sFdvoOl6dQHWZ31Wa0FsJgdSfQWyhStHNGLuMaP7bAxg1np7AJVdRI3GaJ0
 1JW+kbkiUFObeCnjocXhSWaUjB7QTonkAXzY8rq8ZVjeY8rK/M68TJVG3RqPY1wEvvN44UFlWso
 hNQ03B9OaNbg90CLV3J2/9fRfOg8cKCPsf65uVgkuOnqHsPfnFir72R/fUbDC8Fava8PrMhmpi6
 oMwjR4omeZuTLwbQQsM0NeiB3LmqL1onQ/3KoKOr+LRLnTUqxGY48wfpMjDPK/q6zeBJcoKP7WY
 RoFZLZi1Oi4guPRzkOSTTtLDZSqG88+aJ4xFTuk+4tCHYlmxtbJSyI9zSr/HTrr6qehd+4yNxCI
 eJlRmb6rafmk8WVmTy56ub/qpjsX97CN64aqDhcqoATbpbz5/ok7DrAdIAcYi+He2vZy5pMJEJM
 7r0cDihL2JdvLgxEm8g==
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=697735d4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=sw8pdb0iKe9N3J6hDAcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259409-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1BA9F861AD
X-Rspamd-Action: no action

On 1/26/26 2:25 AM, Jie Gan wrote:
> 
> 
> On 1/23/2026 10:29 PM, Rob Herring wrote:
>>
>> On Fri, 23 Jan 2026 15:10:46 +0800, Jie Gan wrote:
>>> Add the TMC ETR device to store collected trace data in DDR memory.
>>>
>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/talos.dtsi | 27 +++++++++++++++++++++++++++
>>>   1 file changed, 27 insertions(+)
>>>
>>
>>
>> My bot found new DTB warnings on the .dts files added or changed in this
>> series.
>>
>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>> are fixed by another series. Ultimately, it is up to the platform
>> maintainer whether these warnings are acceptable or not. No need to reply
>> unless the platform maintainer has comments.
>>
>> If you already ran DT checks and didn't see these error(s), then
>> make sure dt-schema is up to date:
>>
>>    pip3 install dtschema --upgrade
>>
>>
>> This patch series was applied (using b4) to base:
>>   Base: a0c666c25aeefd16f4b088c6549a6fb6b65a8a1d (use --merge-base to override)
>>
>> If this is not the correct base, please add 'base-commit' tag
>> (or use b4 which does this automatically)
>>
>>
>> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com:
>>
>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@100000 (qcom,qcs615-gcc): 'clock-names' is a required property
>>     from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml
> 
> Hi Rob,
> 
> This warning is not introduced by my patch. I think it's a false positive.

The bot checks for any warnings on the file, as ideally there would
be none. This one is indeed pre-existing.

Konrad

