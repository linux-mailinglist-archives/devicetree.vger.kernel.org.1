Return-Path: <devicetree+bounces-259684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC0ZJSkOeGmzngEAu9opvQ
	(envelope-from <devicetree+bounces-259684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:00:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3738E998
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41D9B300CC24
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925EB205E25;
	Tue, 27 Jan 2026 01:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HVGt4FFj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cl8EMhkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD2D18EAB
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769475622; cv=none; b=U42guzo3Ky1VMnSWvSSRh4P46ywadEHhT8q6b5At4Yoe0pKFUvsOWXkN3jwHteKMCYvwxDmyQOZAnEQJhoACXS6jJDiR0g2s/NRahj3l8hSSvpGpJzZuOb+GE/GgD2dFdbXLqEIBNUFtvTx9rFQBTzvhFUIdLlSnlkslOQ6dS/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769475622; c=relaxed/simple;
	bh=WxwTfFXAsuih+PQRXliaSsQl5lTmDSjf2LiJtBhYEXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bcp2zarEVrHHpTE5pGpvMaYo8wFhXlZPN4gEEFyloXjn9Ko7PIP/hwcMk5q47gADcg0g4P6wLoqxJ4GVHd7JASoEPgzAqNmrC+J5Edt2aa8JAUgbd8ezPATasEY/Znwvinj0pYyfrLa63hSftDOBRpFQsYl937UfvkMUQI3YrrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HVGt4FFj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cl8EMhkE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgUpj3913401
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ED79bZ+N6386gyoOtfA0esj4+TJdCY9jaQYBeN+5W7E=; b=HVGt4FFjbj/3VHu4
	xzK73t2cgsX5J4O2BpmRLKYiR751UJpO1Oh6hjO3KHz3/+CIRYP1VfdkExKqHea3
	g7Kgr52yaYsLxAuL4QUhuSYUzwyzYJ2mXBE8ix1JFHQ5epijG2Zoz6x+zl6ucO73
	XpJkv7J6QVftp5PejLwp36dl1dMyo/a65ivsdo4Q1ogvgKb4BJCw09x8XWvcd6uk
	NYlce73KGvvUAaoIiTicA6KEJ3laOg3YO+ewoovXVm5GSHvVCCh7DDg2tOOhGIw1
	QXaKsdyC+4Ouih1zQ5mOu3598bUAHwYp1IcCNei7wB7pwKUn58O+Vu150qNyGU8H
	qIoTLw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxew3rpce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:00:20 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a78c094ad6so48594865ad.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 17:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769475619; x=1770080419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ED79bZ+N6386gyoOtfA0esj4+TJdCY9jaQYBeN+5W7E=;
        b=Cl8EMhkEk3pnYw72afBHzkKUKN10wd/1CcYN18qtkXPWUE8mkkhk6FwjAcSdc5nORq
         MpAIgmCMZ7L8lQhXSbCtfF7Nms2ZjY2D5Q7/DJqUgAvfcyOELQDXPbKynCLczVeKFivz
         0S9OZC9L+RHp5d3ruAnuaXE2K8ki3mzFXLO6d8vI6njkROV9pTClPFPdhez2ETwOl7c3
         yPy8N6SmDUq4Iacnt3bpNN8B32xj6y+yKEekDjNkRbJRr018XnhDqT04gBLiVR6m0SU/
         Ly3bQokQMxjIIRZJqHeVWNIIjNJAmw/YFdGWDDHMOcEz63D1kj3wx0Jgwv5AjrszJoqH
         V/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769475619; x=1770080419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ED79bZ+N6386gyoOtfA0esj4+TJdCY9jaQYBeN+5W7E=;
        b=B/2ZiPD4ChK/rumgjM4JhkvRpIpwVVl0tHsELDDUfN4WCy2ZHuY22RyW1IBpYZlA7r
         qZpmMPqvvc7oE8zTfloBWU5v6A9Iv/tdCzbLuHeOkMQsauOrpIFeFCqRNlfal7NqHMJN
         rBO/xjuEabA2+/vEEDL05dNcumGupcg41b55CEmFBqX43bxxNMfTeWghps1P6cpQ7B/2
         xP4JignifgGz3DHiM9DGTgKvY3OfIAHEb1gXaAiBCx3C0SaU4U/k1a1tDC2PJF80vLZW
         XHs9Pwt+sKCpd5lIJCku0dUUlFgQrQ0TCMvORIlA4Hn2xnOxZA1w6mhDNgkJkeRaPyR4
         xJOQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+8MX6tgawQrvWks++3M7zANs4QvPyFuoNn3OKjk7WY2G3HxikKfGVTK/bVrp/8hnqsEufaeZlv3sz@vger.kernel.org
X-Gm-Message-State: AOJu0YxDdoRoysUAk4Ew1tJD0rec1UqDPfEwg4BTaqecASEDaHmVTPpO
	kvkBd7HlGOV+QfXXHGr/LpIZUVSXPzO+tG/j6jRFl9oIA+Edn2ln+cAGfxvME4PnjpJ0FMl5RFQ
	80lBxbqzYfoARhma+RKOYSjnp8d9pfmzVxpVaJlqu2UjfnY41vvGGfywC/CKtN3Qc
X-Gm-Gg: AZuq6aKFWWcEFjPi431EFjlwNWK47oCrihTXllADfp9RdS2PdNXAA5aiC+MZBOvXqar
	VnU3Zd/uwXGPHqz8zXDBXm+EB7Y5i9jrEjSKKuHbC13YVYnaeqSJq/2DxKbZ5lcY6i1kdY6mfL0
	dUoLplKKr6vqfFOh8tWux46sPTELjXJ2Ic18Hl3rPZqjf8c5NIS094Ap0SC+g18XqSzW+H2pBX5
	74GRmahO8mEmtiJQWEabis3fGc4kNqclHqN5/tjK5y/TJZ0q07SmkVSE3vQHDfJrBCE7IcwXvQf
	IwJ1mCxNjIgGM6rGQFim1mHqxkIa7hy7zGD3k6zaqLUg/jLhS7UUbcll4Lyuv2kASrdWJd9SnRf
	ana+Kavbag55pSr7iMQXSkx2adULOozS31ciLII53mZMkeox4/lgHbZWFVrjji0D2CG3GsCMBjZ
	U=
X-Received: by 2002:a17:902:dad2:b0:2a3:bf5f:926b with SMTP id d9443c01a7336-2a870ddde7emr100265ad.47.1769475618857;
        Mon, 26 Jan 2026 17:00:18 -0800 (PST)
X-Received: by 2002:a17:902:dad2:b0:2a3:bf5f:926b with SMTP id d9443c01a7336-2a870ddde7emr99805ad.47.1769475618168;
        Mon, 26 Jan 2026 17:00:18 -0800 (PST)
Received: from [10.133.33.228] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802dcd781sm98605985ad.24.2026.01.26.17.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 17:00:17 -0800 (PST)
Message-ID: <bb391648-c7ab-4c43-8bea-c0fe1b6c3e13@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 09:00:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/8] coresight: etr: refactor the
 tmc_etr_get_catu_device function
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
 <20260122-enable-byte-cntr-for-ctcu-v10-4-22978e3c169f@oss.qualcomm.com>
 <c046085f-82e8-4a77-93be-c2a8d59db97e@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <c046085f-82e8-4a77-93be-c2a8d59db97e@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 68_Pn4IDKJ8PKvFjqad1koGGdYonOaaX
X-Proofpoint-GUID: 68_Pn4IDKJ8PKvFjqad1koGGdYonOaaX
X-Authority-Analysis: v=2.4 cv=J8CnLQnS c=1 sm=1 tr=0 ts=69780e24 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JWV3lzYn8tzaYNbzfnMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDAwNiBTYWx0ZWRfX/yxffr/SZsLH
 R5LC9/OLfIyip7QMV+lzAj0UsAhMR8kwO/OrEx3YnZKww/yoimtiS0DOmzUBGqhfMloe9/di33a
 PPYgPMoEAnMqBrTIPBRV7ToVTGZG3v6C7/3qzVYtUt3MbHD4qNErZCb8+MhIWKXsMOUkvusISOp
 QNDpYcggc41efvNkESCNyKNx0bp8Yn2bLNiGf4Uq7azMUdDiFOgg6Jt8FcqiltCljqKv7bXLbYD
 hZhhVh+ID4hHuDI/mCcQo6cUjIA6wfWW5iFZXqypJrupB8n9sP+0qmeCDT6p6tqUn6PQeiIzSN9
 g7xP/bK/3M193s20MKXY3sgOr9byF41asubmKG5jfXeSLJxXuzS724NYPwXrv57aBgxBXbVx9KK
 QbYZthb09NXm4Sw7ZeVOT/eUcUj11guJWdQ7RzfYLlh2Se52Xx9B8mtbDngfyf0sofpblfr3eP7
 9kOzKDRaCE2wIDiwxwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270006
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259684-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DD3738E998
X-Rspamd-Action: no action



On 1/27/2026 12:10 AM, Suzuki K Poulose wrote:
> On 22/01/2026 02:08, Jie Gan wrote:
>> Refactor tmc_etr_get_catu_device to retrieve the helper device connected
>> to the TMC ETR based on helper_subtype.
> 
> Please could you leave this as it is and add :
> 
> tmc_etr_get_ctcu_device() ?
> 
> It doesn't make much sense to refactor something that is a wrapper for
> a generic function. Please avoid un-necessary abstraction

Well noted. Will fix it in the next version.

Thanks,
Jie

> 
> Suzuki
> 
> 
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-catu.c    |  3 ++-
>>   drivers/hwtracing/coresight/coresight-tmc-etr.c | 32 +++++++++++++++ 
>> +---------
>>   drivers/hwtracing/coresight/coresight-tmc.h     |  3 ++-
>>   3 files changed, 25 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/ 
>> hwtracing/coresight/coresight-catu.c
>> index 69b36bae97ab..d3972619cc96 100644
>> --- a/drivers/hwtracing/coresight/coresight-catu.c
>> +++ b/drivers/hwtracing/coresight/coresight-catu.c
>> @@ -334,7 +334,8 @@ static int catu_alloc_etr_buf(struct tmc_drvdata 
>> *tmc_drvdata,
>>       struct tmc_sg_table *catu_table;
>>       struct catu_etr_buf *catu_buf;
>> -    csdev = tmc_etr_get_catu_device(tmc_drvdata);
>> +    csdev = tmc_etr_get_helper_device(tmc_drvdata,
>> +            CORESIGHT_DEV_SUBTYPE_HELPER_CATU);
>>       if (!csdev)
>>           return -ENODEV;
>>       catu_buf = kzalloc(sizeof(*catu_buf), GFP_KERNEL);
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/ 
>> drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index cbbb15648fb7..16a4562533d5 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -844,28 +844,37 @@ static const struct etr_buf_operations 
>> etr_sg_buf_ops = {
>>   };
>>   /*
>> - * TMC ETR could be connected to a CATU device, which can provide 
>> address
>> - * translation service. This is represented by the Output port of the 
>> TMC
>> - * (ETR) connected to the input port of the CATU.
>> + * TMC ETR could be connected to the helper device, which can provide 
>> address
>> + * translation service(CATU) or data filter function(CTCU). This is 
>> represented
>> + * by the Output port of the TMC (ETR) connected to the input port of 
>> the helper.
>>    *
>> - * Returns    : coresight_device ptr for the CATU device if a CATU is 
>> found.
>> + * @drvdata    : drvdata of the TMC device
>> + * @subtype    : helper_subtype of the helper device
>> + *
>> + * Returns    : coresight_device ptr for the helper device if a 
>> helper is found.
>>    *        : NULL otherwise.
>>    */
>>   struct coresight_device *
>> -tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
>> +tmc_etr_get_helper_device(struct tmc_drvdata *drvdata,
>> +              enum coresight_dev_subtype_helper subtype)
>>   {
>>       struct coresight_device *etr = drvdata->csdev;
>> -    union coresight_dev_subtype catu_subtype = {
>> -        .helper_subtype = CORESIGHT_DEV_SUBTYPE_HELPER_CATU
>> +    union coresight_dev_subtype helper_subtype = {
>> +        .helper_subtype = subtype
>>       };
>> -    if (!IS_ENABLED(CONFIG_CORESIGHT_CATU))
>> +
>> +    if (subtype == CORESIGHT_DEV_SUBTYPE_HELPER_CATU &&
>> +        !IS_ENABLED(CONFIG_CORESIGHT_CATU))
>> +        return NULL;
>> +    else if (subtype == CORESIGHT_DEV_SUBTYPE_HELPER_CTCU &&
>> +         !IS_ENABLED(CONFIG_CORESIGHT_CTCU))
>>           return NULL;
>>       return coresight_find_output_type(etr->pdata, 
>> CORESIGHT_DEV_TYPE_HELPER,
>> -                      catu_subtype);
>> +                      helper_subtype);
>>   }
>> -EXPORT_SYMBOL_GPL(tmc_etr_get_catu_device);
>> +EXPORT_SYMBOL_GPL(tmc_etr_get_helper_device);
>>   static const struct etr_buf_operations *etr_buf_ops[] = {
>>       [ETR_MODE_FLAT] = &etr_flat_buf_ops,
>> @@ -913,7 +922,8 @@ static void get_etr_buf_hw(struct device *dev, 
>> struct etr_buf_hw *buf_hw)
>>       buf_hw->has_iommu = iommu_get_domain_for_dev(dev->parent);
>>       buf_hw->has_etr_sg = tmc_etr_has_cap(drvdata, TMC_ETR_SG);
>> -    buf_hw->has_catu = !!tmc_etr_get_catu_device(drvdata);
>> +    buf_hw->has_catu = !!tmc_etr_get_helper_device(drvdata,
>> +            CORESIGHT_DEV_SUBTYPE_HELPER_CATU);
>>       buf_hw->has_resrv = tmc_has_reserved_buffer(drvdata);
>>   }
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/ 
>> hwtracing/coresight/coresight-tmc.h
>> index c9a82ff6cd00..7690a70069da 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>> @@ -471,7 +471,8 @@ static inline uint32_t 
>> find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
>>       return crc32_le(0, (void *)drvdata->resrv_buf.vaddr, crc_size);
>>   }
>> -struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata 
>> *drvdata);
>> +struct coresight_device *tmc_etr_get_helper_device(struct tmc_drvdata 
>> *drvdata,
>> +                           enum coresight_dev_subtype_helper subtype);
>>   void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
>>   void tmc_etr_remove_catu_ops(void);
>>
> 


