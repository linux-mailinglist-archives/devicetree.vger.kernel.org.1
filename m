Return-Path: <devicetree+bounces-262736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMBOM/t8g2nyngMAu9opvQ
	(envelope-from <devicetree+bounces-262736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:08:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 27373EAD12
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 90138301DC47
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EFA8347BC1;
	Wed,  4 Feb 2026 17:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bqkf1+Wq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LrSTc0Zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865D346FA8
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770224467; cv=none; b=ockdRbn4GwB+Fxn0yPUYWhBCCgf62H5nzIsieriD2WxVYixEp33vluPzBvIHKJI+2NUCJ3ZHQCOrVKri4VuOkS91VUQTYgCz31AMD1VbsZn9Xak7KY7nLQ52UKkm67K6mkWzXlvHaIfmC1Fm8M5iW7B5C+7GO8ns4Q5jWTKucQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770224467; c=relaxed/simple;
	bh=b8l3uRvylvnmYlfiIOyNcMgNQqZ/uL343XbLioP3YU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oHqJ8LD2+xNXzGL5mAsKMAySZOqyYjOMOy2Z9hfTfi189D/ps7dIf7TATeIaVhGw2cTRJtvuxWWyoPTbbQiC/XQRCo0YxrAyuAsPG56nNGN8fVgPy2PgH2iqQiP+cqbEkrLF2sMhxNISkmHJsyUV3lq3BkZOhb7fc46Eku53KSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bqkf1+Wq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LrSTc0Zd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIaJw1880831
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:01:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3vaFz7u8fOWWpR8NKippz2cCLPvPJSPOUShdgMvVoYk=; b=Bqkf1+WqixRG6niP
	H5qKR1xHWQ9F/o6107B3ugde95YtQkDWWaGNzbiYE+iVkEU9h9IvEwI0QvRW0/q5
	3J2+TJ92DFyjZIT+viCnr2ex0yeNeQi1DLRBhdCALNcXRNli3bwjKoZypkGP9z4T
	j4M1jHmmO8EewVSIrsShdUo6Ecg2WwqES/HfWEctqyVo5Cqo/UxRclxBPTHnZGTf
	sfO+txOOQOXcOBTxhtWxNMXWe+i5q2AXTggnQ5fOymv3KJYtMuQztCyqeTMZHc2D
	0qSXbostFqQaPndPOnbFB4mE1ZERu5zDiKuU/K4+zYS8gkD1avL+rA0CTAI/My5c
	L/a71A==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c43n9safd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:01:05 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d18e652149so1008a34.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770224465; x=1770829265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3vaFz7u8fOWWpR8NKippz2cCLPvPJSPOUShdgMvVoYk=;
        b=LrSTc0ZdXg7knlKSYzSkNartBFJhd3NcEmt9rRa/E7KPPxjek1wjCD6fKJopXTnSI7
         cHpax3z8LwmUueOP1JovsuCgg1RHML6/Coj4QZu0WlGECMWBTFwUu4sDRL4HdXyDR4Z5
         NDoSQFzdJSjMbnfGjmceSSF8eehHk6pFy2K9SrDJyvkGUM5UC1uiNvxTxvl1hRVsIAj3
         utiWUpm/zX5zmGTZHOKpzmosI/4xJbiGymVV69IfRb3tsXCtTXPRKkB/auDtHxRy3mfG
         496TAOFLcACHHSM+Xce5+5PotK3r8ppdSMuGKJ0ZWu6dr37oVMJvDI6C35h0CM70zlg1
         00mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770224465; x=1770829265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3vaFz7u8fOWWpR8NKippz2cCLPvPJSPOUShdgMvVoYk=;
        b=jN6bY6yx0txbs3IrZss64cKARZu8GKn2QU4mCovOcYNYiCRvro+DV6GZSksdxtuEk7
         8GonTR7/x2pLInk0O2vHO3J2CrCn3rz8aH2YNL6BCrHYM6Q2yQvAnmmap70EiN7nCX26
         dkLcstb7wq3a9mMldJDvrhkGiGoSvP866Mbt9tEOLDe+FjD2uEguBfuABt1sNGNIyWyw
         VgdHt95vwfI6bgsqpLjN0d8hnfN5GXnqWorF0O0bhErH0swOdqTF1yTmdytKBkIpee/o
         dPMGj3oi9bYjGv9FEvE70dv6BAhQJcff0xALohzSmmdw1BbPPoKc9dv/opYBGr+3+HCy
         Tl8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUj2az5KD+aVJettbMp8bH/gHk5B04whYclHRSTpabPwrx4sTecY7X4XmIDN1zL1j5OOLcA34TATAv5@vger.kernel.org
X-Gm-Message-State: AOJu0YxpNxZIDdF+tauyUc/yym+jYY8ziHjdUlT2aBccfJ5P2MaCK6R2
	R3gIVfOM2kkzUHMdfrcqhg7JERDGqdKcSJBUy36GaXxoDeeliQKU+n0bgt8I/32plj1KE0IrJW0
	9D4McUmQy1+WAf/9Z3mmkMG1+yjuXWXvP64LqlMhrasNRfHc+7ezbxd0wrHNlp2sc
X-Gm-Gg: AZuq6aIlVdv2l1+LP0UtDApcJFtGrPq5j4EHYqdajRvVbrxkdI04w/XkHwj9SDX8my6
	KBNyjHYBs87HWMfgHEmZjmgTvop8M25hbU5laay+HsztVah2h1h9h7I9WIS9TlsT6FSHKFcpKTQ
	1OSawv51+Y7zwstmYHfygQRDm+jC9sLqmV/53vgGaO7oCAeN5pOIg0i76fxIfGWb3i1gYZ4d18j
	jtUO3fdUyY1JAVZPerkX3ek+yezImDvxzKxnPIKS3cbaTzBAZJNXnE4RpJTLScTndWbdzXJMm3J
	xJESyWwfvwQKnshHjI9PtgAd5egRbMjvZoPwHe5BFffoOHBmP/KBmq+6mVUiGjgbGsmp/qcdM/t
	mt5R6kN7rbzN7tMdZT8qemR3H24Y+2/Wpz5w0gWvs6NdKaGvXQjiwXLtvesJVnbbDD6Q=
X-Received: by 2002:a05:6830:7194:b0:7cf:d0f6:a1eb with SMTP id 46e09a7af769-7d4489b2f83mr1707989a34.1.1770224465140;
        Wed, 04 Feb 2026 09:01:05 -0800 (PST)
X-Received: by 2002:a05:6830:7194:b0:7cf:d0f6:a1eb with SMTP id 46e09a7af769-7d4489b2f83mr1707973a34.1.1770224464753;
        Wed, 04 Feb 2026 09:01:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fcd8f7csm138531066b.14.2026.02.04.09.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:01:03 -0800 (PST)
Message-ID: <44041296-7618-4cfb-accf-aacefaa100cf@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 18:00:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] clk: qcom: Add support for GPUCC and GXCLK for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com>
 <20260127-glymur_gpucc-v1-2-547334c81ba2@oss.qualcomm.com>
 <df4f1934-7366-4ded-bc8d-73189769d967@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <df4f1934-7366-4ded-bc8d-73189769d967@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEyOSBTYWx0ZWRfXyIoSnr2/WthK
 C+C/KQp4fM6iJXnv2G+pac7cXURNIxTsgPUIUOr7OdJHZgexe0j7LCGY90CGvBRcznHfSXY3UH1
 SKKXBG2xUy142FDmTZ1wBEtO4Ayb8Ii0mgRXQLsSBCSzHVG1v9lpP8o91yk7jZlPLrW3BvGyzPx
 +GXNdMAOL60XEpNQAvHRRmwKQJhNvmawzuWVY5WWxZZEQGFeZqN7IrT3XcUdivc8T6wCNaaSqEi
 vVtjtIjDe7psy2pOuSj2r+Cb6bt6dTOCwL034exE+aGks6J+nm9q5CSoUfuxPiz3owloUW5vpQI
 VVGb2TAvRGST1lPAKrbi/BKXslwUFAfcVBhLHjdDgK/dE99ehcQDBcJbuoDiLK+xNUufW5GJCmw
 EF9+g24BiLCOobbBnj3cKVR1+qUidp+io/QAWj7UqWF4qIFpUnmlgyecYZIT7ZU/X4KKb9U3WmU
 WdJYyeoRQWkhkOOZOow==
X-Proofpoint-GUID: vSBBqrKZJwLsLQnSjv11NdtZWZfJGya7
X-Proofpoint-ORIG-GUID: vSBBqrKZJwLsLQnSjv11NdtZWZfJGya7
X-Authority-Analysis: v=2.4 cv=b42/I9Gx c=1 sm=1 tr=0 ts=69837b51 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wIi9r7vYnxKYCbEa-HoA:9
 a=QEXdDO2ut3YA:10 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262736-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 27373EAD12
X-Rspamd-Action: no action

On 1/27/26 12:31 PM, Konrad Dybcio wrote:
> On 1/27/26 8:15 AM, Taniya Das wrote:
>> Support the graphics clock controller for Glymur for Graphics SW
>> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
>> block dedicated to managing clocks for the GPU subsystem on GX power
>> domain. The GX clock controller driver manages only the GX GDSC and the
>> rest of the resources of the controller are managed by the firmware.
>>
>> Update the compatible for Graphics GX Clock Controller for Glymur as the
>> GX clock controller is a reuse of the Kaanapali driver.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> diff --git a/drivers/clk/qcom/gxclkctl-kaanapali.c b/drivers/clk/qcom/gxclkctl-kaanapali.c
>> index c209ce5fe4f003aabefd4421eb4f5662e257912a..3ee512f34967f1b165fdc5481bb28e1dadee133d 100644
>> --- a/drivers/clk/qcom/gxclkctl-kaanapali.c
>> +++ b/drivers/clk/qcom/gxclkctl-kaanapali.c
>> @@ -52,6 +52,7 @@ static const struct qcom_cc_desc gx_clkctl_kaanapali_desc = {
>>  };
>>  
>>  static const struct of_device_id gx_clkctl_kaanapali_match_table[] = {
>> +	{ .compatible = "qcom,glymur-gxclkctl" },
>>  	{ .compatible = "qcom,kaanapali-gxclkctl" },
> 
> I'm not sure this is correct - there's an extra GDSC on one of them

After an internal discussion, we figured it's not managed by Linux
and it's not necessary to represent it, so this simplified approach
is perfectly fine and can be split up & extended if that need ever
arises

Konrad

