Return-Path: <devicetree+bounces-261272-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJIHG+nifGmpPAIAu9opvQ
	(envelope-from <devicetree+bounces-261272-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:57:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C68BCB99
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91E4030780CF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 451E9354AC5;
	Fri, 30 Jan 2026 16:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cm3AW8yb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qzvg/QRm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27AE2FCBE3
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769792060; cv=none; b=UX7evB8HP0YSHQRgYpNZ/xYfWwXahB6VVPtMnkcDQ/xptFRwGw6YvzZ8UewAnZRV7fjshjRy5iYW5X0rjSuuKRpNGSK9a+DvlMRG1gw2cE6hp/GxLj5zYIV0bnamejKMw/fUhj5EXZh07tV3rlTZet3wM6lWSphyEXB2H3GmKPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769792060; c=relaxed/simple;
	bh=cW/CdnUqHSo8CZnbbZvcXwLLmwlTJ7iZ14B0yAcTM54=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JLvOkef1nfRVzcLlz05ip4S2q2xlpc4KvWCBRseFjdICGFNUs8VAMGqwfbwfFoDwmt/vTjXNVyjvD8/SdKd4jI7tXo1IhYqjgQhV27S07ZWbf+iX808X07OtQmusFqj+nCBFtys85TrkPuEcpC0csYmvd3T6RTYOzeCggy85Pqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cm3AW8yb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qzvg/QRm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UB9js62992821
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:54:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	awvAk9dpp7+jKmkbUjTkfr4pBxnpPpuKXslnuuCHXiM=; b=cm3AW8yb00HVORLd
	OvwbA+Ip6FEQUvKzXOGqwCN5OznQjPOv1NVLK1A/HYFKCSuEdlFjdZiVDFwd5h3l
	EfRDCZqNJoYcdsjZiSa8yomBySoYYiITJwaDqKqyHO57x/bF0d+HkLym2miXHzoE
	8UwwEKmQ9+2M/6wWLUUApPqtq3vtW9Or0k2hBVv5uQjahm/Em9d4Vm5ithH0j8O3
	f9r3cJAoDDiHcENv5cPS/Hc7K6dDPleqMsfUY0RPbegxXgyIhAXQFnlkwt8e84yi
	YKu6/e3BABt8sb3EIfCePROs9kq9Ks+hTyhEXjRvRwO3kxfumFWzZTvi+IlSczl/
	XZu7rA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0db1kjvp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:54:17 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a7701b6353so24725735ad.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769792056; x=1770396856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=awvAk9dpp7+jKmkbUjTkfr4pBxnpPpuKXslnuuCHXiM=;
        b=Qzvg/QRm1mkUarPvSRde/E2C2tfWU30m6gcZ6E1eaxXXZFPVBqMePqcGTkg8jllvTq
         8J0FdY5YL2e5pMN2Eb2Qu3V3Ytrj61EHoN4Vc0MyjToRvgEytuyW5PfmX4Oz3Iiy0f7j
         N3ga4ACCHkUgphoRPp66q30SQl0+oPvuhhT+dqfiNCG1wmdwzgZnvPPzzQneoC0/tvyE
         jzhfwjYPXkQv1viSk/xclPa7pKEJRtlK9U84qWSYS/fgorlElhfJ1VJXeGN3LZd9d9Pz
         PVhOY7LqIqjNl0I9Ym4Z4gg5uBAiM9u4XuHxHIRlX89vgGZAvsAYtTQG/4j/3NFp9h5O
         Bgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769792056; x=1770396856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awvAk9dpp7+jKmkbUjTkfr4pBxnpPpuKXslnuuCHXiM=;
        b=PZtrFWSoT9//EmaLHj94KYPni1rUfR1nVapbMg2qtGClI7CybErlZ6G3XVTXKdsocw
         Ax4zE6OX8qgTw+0nGxM6afeS0g6A6yvfjB2g/AXvxm2yiNQxky9Azr1D2t5JOobzYtAH
         +7U6hVmOyaBHwBvb12h5zIPrhj5CKJLU7WES+qFbZt5PyEr5ZLPoQYCtN31/F9wNel4f
         8E7mVzH/IKhmj4zF+BLjB68gczWIQpGT+zo6CwPVXjE/kAK8ERZ1dqjbE4hAxoBS6A77
         Mv+ceuE4Q6kC5jLY3P4a1mhKwZ31TO15trMGFZjqNwW1cF8xquFQUd+9n+x+rRGnxhg2
         0Eug==
X-Forwarded-Encrypted: i=1; AJvYcCWg6afV31FtTgnrcg1ulM6PYX+l+OWPc/cdx+KQnbzYw3tHV8/JM4UNKnpTlYjyO+FxUzIdyJcF2Yng@vger.kernel.org
X-Gm-Message-State: AOJu0YxMGbIyVOOWX20WrhCAiNa/hqYikPqhMxvgwYk1r9cw7+XOEsSs
	7yvlMtkRDCgf8s/i4oosCx4MeZvVOqgpCfSPzQrIRT0cP/pg/XqgBvnDjyiHr1vWx9mmB4+31Bu
	ydzOacf3DVlHME9vgkvSyKM+h0S/VADJrj1TN3fS7tOCGRT3FR72wQNHGv/NtCHXb
X-Gm-Gg: AZuq6aLApjM1I6rOsmcP5WoejcawmFekYonEaM93yKScJ6pEoOwCjEXWRB0Db6rkeH6
	NeP1UeXeMgdRUmznCUxUUKD8OsZXgzjfsuTgwzO/RfJv8U64y8+HtvsjtHrpcomAMiKf/jnknfU
	6lhT15jmFPd4wpi3xCSm6eRYU1m42Z+CTk0iqo5zX/Qlo+FUpeadTtmdH9yYzL+QQdoc938Ncq/
	4QVFLowNMqVaWqxEbOepE5EMEEPy2OGRJxwI81l+X+lN2flUpgPIKKpbU3hwF4D1w2v3MC0fGAt
	UD/ouUkSH0lI4dQsOGSJ7xENpP7MN7628oGm0m0nnzftNIgN7GGyTiR7KzlIdkjOoVoQLSg86JG
	qmT7KpY6UGiXmyWB9fm+gAONifUYlv3cJB5qUl39O
X-Received: by 2002:a17:903:41d1:b0:2a8:ac0f:9ad1 with SMTP id d9443c01a7336-2a8d7ec4e83mr39817745ad.16.1769792056422;
        Fri, 30 Jan 2026 08:54:16 -0800 (PST)
X-Received: by 2002:a17:903:41d1:b0:2a8:ac0f:9ad1 with SMTP id d9443c01a7336-2a8d7ec4e83mr39817365ad.16.1769792055824;
        Fri, 30 Jan 2026 08:54:15 -0800 (PST)
Received: from [192.168.1.7] ([49.204.111.90])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3afdsm78616215ad.61.2026.01.30.08.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 08:54:15 -0800 (PST)
Message-ID: <b918cfa9-1f40-4aee-ad91-d6425798bd07@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 22:24:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/12] soc: qcom: geni-se: Introduce helper APIs for
 performance control
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-7-praveen.talari@oss.qualcomm.com>
 <af0eba46-329f-4979-8b8a-fb5dbe2ad992@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <af0eba46-329f-4979-8b8a-fb5dbe2ad992@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: eugKv_3iJb-e3mPdz26TcHJtH32rQPVO
X-Proofpoint-GUID: eugKv_3iJb-e3mPdz26TcHJtH32rQPVO
X-Authority-Analysis: v=2.4 cv=VMTQXtPX c=1 sm=1 tr=0 ts=697ce239 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=10aD+GSAjGS7IfLbEAHBKg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JTZeKb06zDgOFcaq6ncA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEzOSBTYWx0ZWRfX/G22guK3+uN+
 4tpGRcG7ci6zaIMdS0wXY758eGEnwzKUmAZvRsxd5lwvethJ4Wh7y6+g/SflBYaNhhTU1tS3Wux
 rt9bv9atpvmNKcPiOlDh44Dn94dp+4fcyxj8J1mP/CTGdRfR4IEG7fT4RreVHyRQq1u6e+6U5DI
 HEIfDytWio4MSJP6MVD4iDe9FeOwGr8ppWU3TFnADxXMbo2v4tzZBEAPA7ieb1GtJyLjtoW3sWt
 ggUkXgv/tjYu0INsadwQOromH546OhIBEfhPUsy6qXgilBJu57ZmHYb4Jqj0W6J+xlcRXZF+mlg
 a7UI98XqvSAaFjui8znIT6HezjIxT4JBHWLC/Xh1hI3HFiYCP+kfl4uRaqeARfyZuMhGoODsLF/
 5tDj5Vj4hV4DVWo5zpu+Ob2oIIgucI5wKvYXMsQu2LB8QCFSJ74SMTtP7VrojkGT7XC4zMkWEbM
 VPVS5Xb5TCUv36X7ZXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-30_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300139
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261272-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 09C68BCB99
X-Rspamd-Action: no action

Hi Konrad

On 1/30/2026 5:53 PM, Konrad Dybcio wrote:
> On 1/12/26 11:47 AM, Praveen Talari wrote:
>> The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
>> manage performance levels and operating points directly. This resulting
>> in code duplication across drivers. such as configuring a specific level
>> or find and apply an OPP based on a clock frequency.
>>
>> Introduce two new helper APIs, geni_se_set_perf_level() and
>> geni_se_set_perf_opp(), addresses this issue by providing a streamlined
>> method for the GENI Serial Engine (SE) drivers to find and set the OPP
>> based on the desired performance level, thereby eliminating redundancy.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +/**
>> + * geni_se_set_perf_level() - Set performance level for GENI SE.
>> + * @se: Pointer to the struct geni_se instance.
>> + * @level: The desired performance level.
>> + *
>> + * Sets the performance level by directly calling dev_pm_opp_set_level
>> + * on the performance device associated with the SE.
>> + *
>> + * Return: 0 on success, or a negative error code on failure.
>> + */
>> +int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
>> +{
>> +	return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
>> +}
>> +EXPORT_SYMBOL_GPL(geni_se_set_perf_level);
> 
> This function is never used

it will be used by UART driver, not for I2C/SPI.
> 
>> +
>> +/**
>> + * geni_se_set_perf_opp() - Set performance OPP for GENI SE by frequency.
>> + * @se: Pointer to the struct geni_se instance.
>> + * @clk_freq: The requested clock frequency.
>> + *
>> + * Finds the nearest operating performance point (OPP) for the given
>> + * clock frequency and applies it to the SE's performance device.
>> + *
>> + * Return: 0 on success, or a negative error code on failure.
>> + */
>> +int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq)
> 
> I think with the SPI driver in mind (which seems to do a simple rateset

APIs were added as generic interfaces shared across I²C/SPI which is 
specific to firmware control, not Linux control.

> for both backends) we could do:
> 
>> +{
>> +	struct device *perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
> 
> Then, we can do struct device * perf_dev = se->dev;
I don't think, it is needed since this is specific to firmware control, 
not Linux control.

Thanks,
Praveen Talari

> 
> if (se->pd_list && se->pd_list->pd_devs[DOMAIN_IDX_PERF])
> 	perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
> 
> and reuse it in both cases, completely transparently to the caller
> 
> Konrad


