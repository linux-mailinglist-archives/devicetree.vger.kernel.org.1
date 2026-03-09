Return-Path: <devicetree+bounces-272824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC66Ir6grmm2GwIAu9opvQ
	(envelope-from <devicetree+bounces-272824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:28:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 085DB2370A3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:28:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EDA7E303AF09
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C3A38F957;
	Mon,  9 Mar 2026 10:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p0vgh6UK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i83/Sp1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3ABF7081F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052050; cv=none; b=ZLj80YhgaFWxy138ViuMxETvrq6uBa/1H/k1v0CFPk9/SpPmkj3DICW1TGAHIfIFnCQrXZSl/D4wiu3NVMBD+fuWqk74SKxqvUgGT3I97YYeWzG1ZrxDKyfyBIZyz+cFgUdnt+xefsVbyyiWdiRNTcelZTK2zVyejj0Q3FVCc6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052050; c=relaxed/simple;
	bh=GVeeBPNLhV4bOAsknwuE9zDZvWEMxTX122Nt5ouRBm0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H2jTjABehXOouncsN32es4Mnw/NVjp01xdGSMFMR1lika1MdQnQ3jVE1+pcMnW5xNERaJTgy2cl4Q1fDfbaIgVTTq/owMjhSRl7cYB5btx8v9eAQvpbM4oFZnHC6/PUX6LaiiOtPzSrDSmBGEj7zvyJye06dPt9fIuyifB4FQek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p0vgh6UK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i83/Sp1l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A6gBJ2195134
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 10:27:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B5Bl/CcfOoD/YcwIGB95IJzr0daTjYmyc7JgdasMSjs=; b=p0vgh6UKCspttP+x
	fPE+azhQMsW98g8r8SH3nMipXPUPrcn28Rv/wBFjWLXqSJ/rcbr9W8EwYCkuG/kx
	G8pYsArPnq2snDQJFbHwtWnykC5neyIUQGA37ezii/s7MPdetOmZeOmhoBX4ohJs
	pVS5vKT4nhY+0iynALJSLHwVVGjWge5gUCiuRJ2EgMGb+ZzzEJysH5iLxg0j95n3
	3juPO17mrYozXBmCEyFzQ73qDldgGbXQ+7Ze3CIzf+KOWlklezzK/AIaltmZkeFv
	WYTG47FAicqNdh2fnEhAetMSZZGySfdCNOEeQ62jdR68/P/FHT4QnSiB8q6Enf/H
	EHCzUQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u824g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:27:27 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35985522c1aso28535262a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773052047; x=1773656847; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B5Bl/CcfOoD/YcwIGB95IJzr0daTjYmyc7JgdasMSjs=;
        b=i83/Sp1l+8jd2wINpTX+86EEWW/onFRuLZpyp9W1b0lSsspN4weGhdBfIo7q4L9XSj
         X01kbjU0vXdseJLGB0V50LfvMIMvihL0bNuRxGpW6nVIC26YKPgu2Vr9JbbBfrXBzpt5
         aqPMmoCyDvpvEkcEx0/5Ls895z6I/h+Pw4BsUE9U7bYiRISgmKfZJKHHS7PIwTsKG8yB
         8sKBzTkfe5t5fbuRBmJoNGX5kzOFsruam9MnG/3LuWYbYg+RC+a9xBvUHjvvlCxXeDUt
         rMfVacjedYEqbD1goWL1E1yctzG09olfdKa6ps2Yh4OgGPN3Q7frb2mks2x2kUiyrfyd
         RyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773052047; x=1773656847;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B5Bl/CcfOoD/YcwIGB95IJzr0daTjYmyc7JgdasMSjs=;
        b=kfEGxpffl3me+zGQtVSPqD2bAwT7X2/KxKWdK2PDYRixV+Jj/Yn4PDh1GdZbtiG8q8
         y2rNGYBhFAKuM/8b+IJOX+kwDbMjD/L3fUV2tAQkcIm5A2E+lnqzTMaHVmJCDePvthhm
         60Yrc3sM0AkUZ1YP1M2sLuOt6EJTGGsf9uPS9UFlcj2CscxfYZJ0pwQTqTS7j0OoG9bW
         n2OmsNXGVUdxoqlTch7nK7q8lm9aqCaiDwUMydfyfL9Ovei5LKTg/E1Wnzyq448V3A7k
         xJpvIsaOonO+UbuTCxOoaplpqKgUgS43uuKMW4GlD9+3t34A5bVSysUY7Vf0sFB7Owp6
         /s6A==
X-Forwarded-Encrypted: i=1; AJvYcCUFiuZ6zKutdC5N8tUIvuBLExicpZqobl6AmlMWcnEo9Buv5k+D3/wjr+D+DGsZ/k3lpMco2r5HdhK2@vger.kernel.org
X-Gm-Message-State: AOJu0YyciipogqmFLZ4kT610iG3B61uF2Ub9v6N+jaYuzS294EKNSnyz
	PejxzLydxxKlp6dZr1ExSsK+ehHwV6lHXoF6L020QrAeUpJtQu3Se+Ejd4Kiv5EOrQjT6hOrHw0
	lw3wTQHESNHUCVjF3uNgEJWmE/4LbRzI5iLulSfewtnXn+KEtPzS/Anb+re7Rh6Cy
X-Gm-Gg: ATEYQzzHbZFHsMX8M5nJrxz+dVdN2zkky5nEFNs+X9aEO/zmwAGz4QqTsTdJapYVoZw
	amsOVKn8MZy1K4fogmYlXJbpZjLuowyoiZMwn3e2klOjsdh+L6xPokMB80IeU+P1Cp9zenkojOM
	th+Dg8pl2hkE3SqRk2Q7vGsF85qf8P7aWQa+kSR9R5DMG4pW1RIvpoNhxk5WXdQoOaW0EZVVCKi
	CQ9I4LvHmwgMUb5dhAsuNOwz6+IBrBVHL6lP29bY81+vLnPNreld75+XklLnBQIeZTGhsddoswv
	u8l7qZyMTbu72rFLcJB/5jrv7LQG/tkhisHfMjrNjCbOImgEv+etvuHkIZdhvwnTw+bZddS8lkQ
	R7gES10ug/wmR/xti9VzU0NZF7gCwkH0AcP4hoZsyiLbOlkS88K1FT4nvL4axpiyopMtpmwuelR
	ynfh9dMnfWBVw=
X-Received: by 2002:a17:90b:4a8a:b0:359:8293:67f2 with SMTP id 98e67ed59e1d1-359be34419amr10117578a91.32.1773052046610;
        Mon, 09 Mar 2026 03:27:26 -0700 (PDT)
X-Received: by 2002:a17:90b:4a8a:b0:359:8293:67f2 with SMTP id 98e67ed59e1d1-359be34419amr10117555a91.32.1773052046095;
        Mon, 09 Mar 2026 03:27:26 -0700 (PDT)
Received: from [10.133.33.101] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e182d72sm8652277a12.25.2026.03.09.03.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 03:27:25 -0700 (PDT)
Message-ID: <94da5711-7bd2-48fe-b1d4-8d8542b75843@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 18:27:18 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 2/7] coresight: tmc: add create/clean functions for
 etr_buf_list
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>, Mike Leach <mike.leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260309-enable-byte-cntr-for-ctcu-v14-0-c08823e5a8e6@oss.qualcomm.com>
 <20260309-enable-byte-cntr-for-ctcu-v14-2-c08823e5a8e6@oss.qualcomm.com>
 <03705fdb-e13d-4b5b-8ee4-af9348469b42@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <03705fdb-e13d-4b5b-8ee4-af9348469b42@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: z3oU0cat0HV88JzNfVOaBmoWaYTZQZt6
X-Proofpoint-ORIG-GUID: z3oU0cat0HV88JzNfVOaBmoWaYTZQZt6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA5NiBTYWx0ZWRfX18Hk7cietG6O
 Z6zFmsbEmNlWTqCgA4yjFiDw+D0BDYiwlAxBBAkLsToEBYHy8wAPMX36NA3AOa86THzIAOBM1J7
 JNeHEVt790kAUUASDOcD5hdPub1JV2aoAZyhxkIMuffmWVPrNV+RzicHhIk2zFoOfdY1L3qAw6V
 jo0aThiL3PcYBgi5NLSYiiCKvD2QEyhMhOYLuJutN7h49zIG8y6vjfZYI8ow1i/XSqVSCcPuxtQ
 AdmU5526/vkScXVHRQSZqTXhAie+e1+pRAvIDI51Nv0EdaegoCdx5xwKezelP3Ivlzg2Zyoj4rP
 CmkVJa9GcWpufWP4nmWZ5rcEPbqe5vf/pN0ajny8NGc8jFNLvZECBaQETN/Op/P4AoG56W77gkP
 t6bWYrWvtKUWWVzAXlO4RNSyLY36SdmPPdDv1SMuxO3r17NBg8QhqvnuQN8t6B6DRE7FucguNyD
 kYP82f5ik5JCQapGITQ==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69aea08f cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=b4jqt5UQwNLUUHEC-OMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090096
X-Rspamd-Queue-Id: 085DB2370A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272824-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/9/2026 6:02 PM, Suzuki K Poulose wrote:
> On 09/03/2026 09:47, Jie Gan wrote:
>> Introduce functions for creating and inserting or removing the
>> etr_buf_node to/from the etr_buf_list.
>>
>> The byte-cntr functionality requires two etr_buf to receive trace data.
>> The active etr_buf collects the trace data from source device, while the
>> byte-cntr reading function accesses the deactivated etr_buf after is
>> has been filled and synced, transferring data to the userspace.
>>
>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-tmc-core.c |  1 +
>>   drivers/hwtracing/coresight/coresight-tmc-etr.c  | 94 ++++++++++++++ 
>> ++++++++++
>>   drivers/hwtracing/coresight/coresight-tmc.h      | 17 +++++
>>   3 files changed, 112 insertions(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/ 
>> drivers/hwtracing/coresight/coresight-tmc-core.c
>> index c89fe996af23..bac3278ef4dd 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
>> @@ -835,6 +835,7 @@ static int __tmc_probe(struct device *dev, struct 
>> resource *res)
>>           idr_init(&drvdata->idr);
>>           mutex_init(&drvdata->idr_mutex);
>>           dev_list = "tmc_etr";
>> +        INIT_LIST_HEAD(&drvdata->etr_buf_list);
>>           break;
>>       case TMC_CONFIG_TYPE_ETF:
>>           desc.groups = coresight_etf_groups;
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/ 
>> drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index 4dc1defe27a5..15c0874ff641 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -1918,6 +1918,100 @@ const struct coresight_ops tmc_etr_cs_ops = {
>>       .panic_ops    = &tmc_etr_sync_ops,
>>   };
>> +/**
>> + * tmc_clean_etr_buf_list - clean the etr_buf_list.
>> + * @drvdata:    driver data of the TMC device.
>> + *
>> + * Remove the allocated node from the list and free the extra buffer.
>> + */
>> +void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata)
>> +{
> ...
> 
>> +}
>> +EXPORT_SYMBOL_GPL(tmc_clean_etr_buf_list);
>> +
>> +/**
>> + * tmc_create_etr_buf_list - create a list to manage the etr_buf_node.
>> + * @drvdata:    driver data of the TMC device.
>> + * @num_nodes:    number of nodes want to create with the list.
>> + *
>> + * Return 0 upon success and return the error number if fail.
>> + */
>> +int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes)
>> +{
> 
> ...
> 
> 
>> +EXPORT_SYMBOL_GPL(tmc_create_etr_buf_list);
> 
> Given the above functions are "EXPORTED" please could you make sure that
> the locking requirements are documented and asserted (lockdep_assert)
> in the functions ?
> 

Will checking the locking scenario here and asserted with 
lockdep_assert_held.

These two functions should be protected with tmc_drvdata->spinlock.

Thanks,
Jie

> 
> Suzuki
> 
> 
>> +
>>   int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
>>   {
>>       int ret = 0;
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/ 
>> hwtracing/coresight/coresight-tmc.h
>> index 319a354ede9f..5ac07e8dd5ff 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>> @@ -208,6 +208,19 @@ struct tmc_resrv_buf {
>>       s64        len;
>>   };
>> +/**
>> + * @sysfs_buf:    Allocated sysfs_buf.
>> + * @is_free:    Indicates whether the buffer is free to choose.
>> + * @pos:    Position of the buffer.
>> + * @node:    Node in etr_buf_list.
>> + */
>> +struct etr_buf_node {
>> +    struct etr_buf        *sysfs_buf;
>> +    bool            is_free;
>> +    loff_t            pos;
>> +    struct list_head    node;
>> +};
>> +
>>   /**
>>    * struct tmc_drvdata - specifics associated to an TMC component
>>    * @atclk:    optional clock for the core parts of the TMC.
>> @@ -245,6 +258,7 @@ struct tmc_resrv_buf {
>>    *        (after crash) by default.
>>    * @crash_mdata: Reserved memory for storing tmc crash metadata.
>>    *         Used by ETR/ETF.
>> + * @etr_buf_list: List that is used to manage allocated etr_buf.
>>    */
>>   struct tmc_drvdata {
>>       struct clk        *atclk;
>> @@ -275,6 +289,7 @@ struct tmc_drvdata {
>>       struct etr_buf        *perf_buf;
>>       struct tmc_resrv_buf    resrv_buf;
>>       struct tmc_resrv_buf    crash_mdata;
>> +    struct list_head        etr_buf_list;
>>   };
>>   struct etr_buf_operations {
>> @@ -447,5 +462,7 @@ struct etr_buf *tmc_etr_get_buffer(struct 
>> coresight_device *csdev,
>>                      enum cs_mode mode,
>>                      struct coresight_path *path);
>>   extern const struct attribute_group coresight_etr_group;
>> +void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
>> +int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes);
>>   #endif
>>
> 
> 


