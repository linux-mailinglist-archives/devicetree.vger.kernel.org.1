Return-Path: <devicetree+bounces-261886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LunMIbQgGlBBwMAu9opvQ
	(envelope-from <devicetree+bounces-261886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:27:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAC0CEF64
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03AB43025292
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 16:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E2C27A465;
	Mon,  2 Feb 2026 16:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mZh47mdO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GGLAuN7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1926B242D7C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 16:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770049158; cv=none; b=YbuZuJf2qhwjV0hxL7aZm8s4L67HA0YUEyuisV9YYADJo516ccSNq9rwTKhVP9b0zQM8LxGKD1h9PwMcaZX3G385lna/NgUEwPimrfy2Ywb2xn2fU5vxVzIWqrZYNAUSBEAZMLKo7SNFet5SlOFDpqmIHho2wZaMvpW2dUa1gPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770049158; c=relaxed/simple;
	bh=C/Jx8VXY0VB9NHAnNRCA/W5f6GCni4C30x/Thr4jUS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VrwbvXFGLKzymtArqPEg1Y73vOySYWsDWlpwVYZCT/6o9Ed6ZPsyZpM+aS4/CM5cdTWndDbyysUYWlPzxYvP8G2kDYviWfuVSKXOpcuNeLsL+HDvUFvkpgb3CiA2TqJkGxZv+Er6taIFwXzPfq3ksNb4ngVottLqCPJU+U36+tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mZh47mdO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GGLAuN7q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612E6FNw1814689
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 16:19:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VFoIZ5tK1KlcsQdHdIdlIU8x9jGXAWlRaQS5aGhZ/7E=; b=mZh47mdOYR7hn6V0
	TRoNRKR/iOSV91pKHNmrV1zmd0YP9qgENjMoYuQCtvaZ5981OWZpVFBhRXssahHU
	JvjzkntKmKSuB7f9+DYHe9uhArE1tiMCimYUqbXXn9TzklQ59LFam/8hijUa7UqI
	fdsOLhsHX9dXBYqBUL+TZtOwnYB9gwjqZ6w4d2UJGK41CRxbB5b2yWo6LKU2GHXn
	d3eQMuOnrV2hlEJmEbrgXYdI8gECsHOURD513A1pvOzQJoHKTwY1DP9pAskbSl9N
	lum1FhX3R8p4Wg1PhxJYh5Nt/IdUIorbIRUfmMVQliOOubu/wrIqxmeZk7YhuAZB
	FNjWRQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1kt9q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:19:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a755a780caso38367875ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770049155; x=1770653955; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VFoIZ5tK1KlcsQdHdIdlIU8x9jGXAWlRaQS5aGhZ/7E=;
        b=GGLAuN7qMasZ946HvaRsR5DHBV3CWtwmZr7dS5I1Vss+B4nSBr528J2qHi1QFdeZ7Z
         lQvQg+1El+LG6LoUx0ABHzJgtTjEVJKOBPquvRPKAZ+q71RdyAI+ZyDuHB2zthq6v5FT
         Phr5ovrDZtRdbj4ayXo7U9UMz+E7pYKj+8p/Ia6w7nS92EQKuwgBQnkWQan77Ow4lrSq
         +D+GZYIi61D87vM3zzE7rInHTdCf+fpvMG7TJ9QWduKKiVIjjX+3SBuImUc0imolmiZ6
         ue3cSrqcWiqsVLtNckX2futC/Iz84DNPsHhAxXlHDJultX+9RDKIQ6LcPdw8nIaZFlaK
         UWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770049155; x=1770653955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VFoIZ5tK1KlcsQdHdIdlIU8x9jGXAWlRaQS5aGhZ/7E=;
        b=F55hvgrP7M3R4q0O7ikYrUcDMoGYNSocNYiF8hfLvM9eywfKGkVhgXOOTW2qVmRfqe
         pAMbGtfPofGBQHF7j6RT14aVE+m+NA1kCD6WB6KZ1pSyNtw/pWBhnQpkR8ENxwNH38sD
         jPu+aExDpV1PdP3ocdb3npJ7EXlv5gHfikHEg6BcGWC9gegwpHkvZFQ2rUnPKJkr/jK/
         ZEgRCtuXMwj/ykYaQwY+hQd6Sy4/ff12xakEtcE195S2iLyRjaFx5nMdXfkeO8jjU1KE
         tRUswW80PTicL6ZUNtCcCH8co4H2XzBw1IscYD/x8XSk24n0BTy46iHA3JHEiBuhDrHu
         v6LQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxpl8svCN3ceydN9mxuK8jwM22FZKwcl2MhmxWClkn0RFHFB/ncZfQefBzpF0Y9yNLaEGJYMkxvexO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh3W/WJN2geyFWSvNOmnYDvqKcBwcJH1ztN7ntkik2rFuQGGiv
	/Fzsd5dFND62ZLEh1lwrJ1k1Gp6RVqqVBABEPwlR/7QSn/LTncao5aoh0HSxww+CQ5L3QtSxKpt
	nsu5hX0pH5rFCm2w5qk5sxD+XJAVa2VN100LLJoZPHyiSMD0Neru50byq1xjS7FOa
X-Gm-Gg: AZuq6aLfEllWvB8w3EgbkxrcxCtl07U/S/d7TyItXT/dUYgUyqA8iAqT9Aa3ZBCDCeF
	6plXEMCE6zEQegRRGEmcJui7ZqaiV2l9Iwp59O7pattZEsZuTv6iPKcT+uDkXDlUG5JMmZ1ERTh
	AXsVH8HAY322fR7mwGaTlgQcIsVJAtVM1Ly16dv1ZXRVf7O7L72faJADiXDt/61JgDOqf03Egzy
	DeNkSUC5UTINzT4Ne0uuU4EEZkyQbgdhpRKIKXj6FnZnoCKXGjkLvEwDjCUmEA7sE9LeyklXddn
	1dkPSKv8LoOZVFxSagKd9cbUC8D4wx1PsSMjUX+oKbKcYLyTvIR4Rh6s3mbrTXYrh+MJkZo9IYc
	7TQXA++gpSu6hP7zGH4icRo8ac8UZpOcSDQTbLIDs
X-Received: by 2002:a17:903:1905:b0:2a7:ca83:5b61 with SMTP id d9443c01a7336-2a8d98f1f02mr116208855ad.12.1770049155545;
        Mon, 02 Feb 2026 08:19:15 -0800 (PST)
X-Received: by 2002:a17:903:1905:b0:2a7:ca83:5b61 with SMTP id d9443c01a7336-2a8d98f1f02mr116208565ad.12.1770049154943;
        Mon, 02 Feb 2026 08:19:14 -0800 (PST)
Received: from [192.168.1.4] ([49.204.107.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3afdsm145202485ad.61.2026.02.02.08.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:19:14 -0800 (PST)
Message-ID: <c0e2a55d-d5d2-4c54-9bba-448443cbfc68@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 21:49:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/12] i2c: qcom-geni: Store of_device_id data in
 driver private struct
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
 <20260112104722.591521-12-praveen.talari@oss.qualcomm.com>
 <0b628651-79ea-4ae1-8898-125beac7a2b7@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <0b628651-79ea-4ae1-8898-125beac7a2b7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DIheokmaVNXE1_YBItF6dYR9ySEPr3ve
X-Proofpoint-ORIG-GUID: DIheokmaVNXE1_YBItF6dYR9ySEPr3ve
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=6980ce84 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JMgISmeAsz0pT9/O8qDBbw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bzct_qqClQXo_WY-SnsA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyOCBTYWx0ZWRfX+O+pQkWQkMa0
 jpz7vymt7kSNUNqDjO/YoaUXZgUCGe7kVZVQrhSP9XsocG9S4wlK3kH6Su0/aazQL2tfSjSw06u
 2+qkYRdHlgwsZuEyJ+NDSWK4/bmq71EErvHU2ru85DjKXX+NUgHUPUTxTZ0L24JHFThdpBhbJY5
 y7w6sCYXwclsT2395gXclm5/QyaWfJfBGRYsxx/hdAF0JUjI+Lqx7Rdieilz+FXlzb49wxQ2WGm
 AaJad5gtzLmDEqN1UdyRhoroEcQa6r1dJOff5WGuZ7LVvJM5mIgCLZl1jVFsEGCUr5KadTdDa/X
 T2nhSA0dUCtuLNGZxKAO/D37TN/NCrTxzHBHqwFXO16Kv4VsWk4BuXGwDGZrAt/KSEhgV3zqLq/
 aLq2cczIiXiidOichKDpVPSXUY+bFFA7EKUj6Ucg3KsmPksFbPbMAPZoHHz6/nyxmZSVluzGdeL
 hnIHGNu4xae9cIBFHTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020128
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
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261886-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1DAC0CEF64
X-Rspamd-Action: no action

Hi Konrad,

On 1/30/2026 5:59 PM, Konrad Dybcio wrote:
> On 1/12/26 11:47 AM, Praveen Talari wrote:
>> To avoid repeatedly fetching and checking platform data across various
>> functions, store the struct of_device_id data directly in the i2c
>> private structure. This change enhances code maintainability and reduces
>> redundancy.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
>>   drivers/i2c/busses/i2c-qcom-geni.c | 32 ++++++++++++++++--------------
>>   1 file changed, 17 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
>> index b0a18e3d57d9..1c9356e13b97 100644
>> --- a/drivers/i2c/busses/i2c-qcom-geni.c
>> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
>> @@ -77,6 +77,13 @@ enum geni_i2c_err_code {
>>   #define XFER_TIMEOUT		HZ
>>   #define RST_TIMEOUT		HZ
>>   
>> +struct geni_i2c_desc {
>> +	bool has_core_clk;
>> +	char *icc_ddr;
> 
> Again, this should be a NOP after patch 1, that we can drop
Will do in next patch.

Thanks,
Praveen
> 
> Konrad


