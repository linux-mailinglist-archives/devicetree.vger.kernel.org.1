Return-Path: <devicetree+bounces-234936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 257C0C325D7
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 18:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5FC8D34AF17
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 17:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86BC933B960;
	Tue,  4 Nov 2025 17:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gndwe7/0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bK38pGtq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BC133343E
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 17:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762277666; cv=none; b=IfZJAM8oSMGqvArZhyLNqsaV+/mdJTTA1chwxb0zhqebcuJ3g9PpDEBNTA/LxhonmPFGYLxsZQGJVKfczexnsFvIFuq2jqK+KAuK1cOChR3PCBzhGG3PZOyuOZlYBSfVau8DfhWAe18r2xFlbpL/kaMXo0+yHH5kSh5A+zkEFk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762277666; c=relaxed/simple;
	bh=7/3XFyqO8yniSuHoLNtZauSEhqabYOLFEEbErOWMHL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dOlvo3U5JgTAxELNWgsjoi2moK7uXob+NeAPZE/oEab/8xNeMVyS0dHVEuL1cniMDsgG0GKElwt07YWE3/bakzl09xiT0UGCAR4IfGGMCA5K+GxE4YYKoJfN4ooMvLZbdRRaRDS/JC9v0LYmg1BTuMHHXgksF6pIQlLH51SRxRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gndwe7/0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bK38pGtq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4GgMb12602161
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 17:34:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BpOzXxLIii33PABcdbzmfPQQSKfiMiKzQ+N00ZHp9XY=; b=Gndwe7/0q3s4gw2f
	RAOq20/zsMveVwGJA/0z380Zs2VFJR5AB9nm+X1T5R/peC2pOafD4fsZf5qsGSAK
	B6++5qBLDaAuEONqb3qVhJGehspVdLoo8PY7wUiSAjFR94CinPgVmxmtW+XhxVX/
	V56TAe0Aw1yrL4G2rO2QU85IebPHeAK4yLDUc11bI1f64/hx7iYosW6ZreplRVNV
	Ie/Q/4dwzCmM4n4L7J4y6NO9U7u3sGXmpv+1FPFIVR9EPhbGq/tJCrZhUCig6ypw
	8EcqT+uOqEOQA50z5wTbbjUn6ZhmjqhgaXW/cYsiRY+fbJAoRbX6fGv6erIHcL7E
	+C8AvQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a79jjtats-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 17:34:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ecf82440dcso7307791cf.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 09:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762277663; x=1762882463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BpOzXxLIii33PABcdbzmfPQQSKfiMiKzQ+N00ZHp9XY=;
        b=bK38pGtq9yIjplSHXR2XZTV+EEmXhImHu6cbCem6Q7DxArnXXRn7sM2FJaeA7ImDmZ
         PnRTt5ilA3QLMmG19KdiagKFwDfqdGH5i2PAA088QSmVXu/cXjQLL8ErjNefHMUXfkUf
         DxGsH8FItyY5OkULGo957+DghphJe1kAN8Rj7zNQCgGlhQJVx4VuVJGHk3CWxQr/oI3r
         c7D2/IKAjEB9sMAQWPYh3EMlT46xmRrJ/xD0qVH3uA2jvROfuX5PSgJDTcCcTURvT8kK
         rwlZno2Et2KU+bB/+IrU2yQor6iJPC/v8mHsCw4/1LS0Bdu1WO8eXId+vrclt+llIycS
         xe5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762277663; x=1762882463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BpOzXxLIii33PABcdbzmfPQQSKfiMiKzQ+N00ZHp9XY=;
        b=ibfexjXALiaSnDS68j/1te4N8WTwUf9Zg7/aT2j8yeKqFDYn/0VPl2fT1x7C331W9Z
         dvjd6GjNhDw9lpP3RwjLpLMI3CTOCwr/DpatuoG3K1ZZVLEgiO9L+XboyLJzqrgY4kxY
         shvIWP2kqvHbRM2ko5QYpePB+NrHwZ59J1nsjf9uVFc/xouPUbeS/q6vs+E3EJIkQxgZ
         gIsSvpuGIa7/3BpW/s12lKVKGQHloP52xL1sH+X5LrlRRJES2XDaWIwz/mKSmiuGTX5Z
         HvGL3ad1oAtkExfofBU8IrHDZjOsKQUSpkdig/7tj275GrbAQp7ouFdAdZtcnDcUwwR1
         j9zA==
X-Forwarded-Encrypted: i=1; AJvYcCUhovKoYDrs4gBzv9Qg18Z4Numn44wvdKFVy+AP7NABQXC+wy+l+pb4xdfOLolleMrwoVN7rOsLn9kc@vger.kernel.org
X-Gm-Message-State: AOJu0YyEhMwLyERj6TxH6+jIDjwFg86uSyIBac/vFpYH5j+5JznAFW0d
	pgvWp/NEpvyKt9Zhf8st4OgloYVtzy2F4i5VuVSNzFS87PThM6bJoheYdh2e6fzqsNduwCvBe9h
	yN+xjTd/wLPwCsxGjtxF7FHSWdkBpBuW4G3wo6vqU+HMvPUz1CP8X6bS+sjY+3xpt
X-Gm-Gg: ASbGncsSTq6FJpxsCRcAF2Bj0ohIoutYmj83brVEL6Jw2ELs4ffKAuaXnL7wWyrkkXz
	khsxbINPmU8wtfjpKdD9QNlO5RfD5nriSIEek10YK23fGtQ+ZcKrLkaqHZwPeqBNJ0uzNqAWEMv
	nR+tv0T/voZOVSBqybPaOoQ+NDLMuTJTEXQaL0qXjicQlwA9pbEkGfUkia17LvuSCGTCzOG8TxU
	cqEYIJDnSnV1/HJBlNyH0OOOxk4/vg7hBBg7IT9cwD5m+F0wiuLepQjZgMHJkaSir+406el7YH3
	rmYljlfm1j/L7WUVJ58DZQQiTsrM1m+IDmKlCxbzOVYN69dYC4TRN0TFIRi6bcg1AadTje8UqU5
	n9RgRlPeQJudZpVJriMBYbYtQi9rUnoJPoGgeXuFe4T6yTy16UBYG+UYE
X-Received: by 2002:a05:622a:1b87:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4ed725b2536mr2720151cf.10.1762277663244;
        Tue, 04 Nov 2025 09:34:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1LU5jc9pJ2naZFY8KBUTTek6RS7kQbriHmvySckwkZoljhNS4y2f4aBMgyMCSvD48Lg7gPQ==
X-Received: by 2002:a05:622a:1b87:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4ed725b2536mr2719641cf.10.1762277662539;
        Tue, 04 Nov 2025 09:34:22 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6806d82sm2576549a12.16.2025.11.04.09.34.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 09:34:21 -0800 (PST)
Message-ID: <1d13f465-aa9f-47ca-9721-f48a76ce0e03@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 18:34:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/14] remoteproc: pas: Replace metadata context with
 PAS context structure
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-5-7017b0adc24e@oss.qualcomm.com>
 <fc8beead-566d-463b-aebe-407429adf156@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fc8beead-566d-463b-aebe-407429adf156@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: e-xhUxp4JdcmvJddpvK4FsKejH-NX49C
X-Proofpoint-ORIG-GUID: e-xhUxp4JdcmvJddpvK4FsKejH-NX49C
X-Authority-Analysis: v=2.4 cv=TuPrRTXh c=1 sm=1 tr=0 ts=690a391f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=R6ihhxNNSHr7Vl0uh6gA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDE0NyBTYWx0ZWRfX/+hRU78vp04c
 VSxNRtWtbhLcbWXoVTJkujGFWTSWkN3dzjd6H8xhlDLq2f3HOB/7OtkMBK7HhbrZ6SUI+QIVLhs
 mW1Wu5W/NG/BGcsR+mj9m+rl3L7SB587bRtXEtajgJcJAd2IvKKDe7mL4K/Fx6Dla7oi3Nku6bo
 mt5shLj/0wpv9dPQsUrbAwfXh58rXeMKzRd2+/pylfiS4M0dF+21jxivBzpjzg92zxhp74s3lRN
 CH1pdtSm2G7KBgbHl1qVusW51tm0rfFfGesh8t2LeDCAyBW0gNQK65JqxdLwfxWhgJr6jWJmHE/
 MgHJ04yajCGebBG9FbIcX0qisuioO4aDT819zX4R7ObK4uIux7+CODi9lKOxPao+W2jQNoUMLw4
 55Ao1jK79CfHOYVub0vYza/S4Ahveg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_02,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040147

On 11/4/25 6:33 PM, Konrad Dybcio wrote:
> On 11/4/25 8:35 AM, Mukesh Ojha wrote:
>> As a superset of the existing metadata context, the PAS context
>> structure enables both remoteproc and non-remoteproc subsystems to
>> better support scenarios where the SoC runs with or without the Gunyah
>> hypervisor. To reflect this, relevant SCM and metadata functions are
>> updated to incorporate PAS context awareness.
>>
>> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
>> ---
>>  drivers/firmware/qcom/qcom_scm.c       | 25 +++++++++++++---------
>>  drivers/remoteproc/qcom_q6v5_pas.c     | 38 ++++++++++++++++++++++++----------
>>  drivers/soc/qcom/mdt_loader.c          |  4 ++--
>>  include/linux/firmware/qcom/qcom_scm.h |  4 ++--
>>  include/linux/soc/qcom/mdt_loader.h    |  6 +++---
>>  5 files changed, 49 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
>> index 5a525dbd0a2e..9cdd152da592 100644
>> --- a/drivers/firmware/qcom/qcom_scm.c
>> +++ b/drivers/firmware/qcom/qcom_scm.c
>> @@ -603,7 +603,7 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
>>   *		and optional blob of data used for authenticating the metadata
>>   *		and the rest of the firmware
>>   * @size:	size of the metadata
>> - * @ctx:	optional metadata context
>> + * @ctx:	optional pas context
>>   *
>>   * Return: 0 on success.
>>   *
>> @@ -612,8 +612,9 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
>>   * qcom_scm_pas_metadata_release() by the caller.
>>   */
>>  int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
>> -			    struct qcom_scm_pas_metadata *ctx)
>> +			    struct qcom_scm_pas_context *ctx)
>>  {
>> +	struct qcom_scm_pas_metadata *mdt_ctx;
> 
> This is never initialized

Pardon, I'm blind

Konrad

