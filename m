Return-Path: <devicetree+bounces-262503-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDTgBzXWgml5cQMAu9opvQ
	(envelope-from <devicetree+bounces-262503-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:16:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5098E1D94
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:16:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C77530BA549
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 166693542D4;
	Wed,  4 Feb 2026 05:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PTZtq4MM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XGhj9VRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25533542CC
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770181850; cv=none; b=B7jOw74AboM8iapmfwoFB9vPDR79cpyYBgn/NeWYHY9tfSVjK166XO3Evnqv2+HCoenRcEec/RyNjrs7lsUN0jdf5KQU6VwENq+keVxCZF3CEK+QJbQNH+B53+aLvuFq6iYROa/pOeCD56Ag+pWzZOX4d4Jhxwh3WchR2lebOGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770181850; c=relaxed/simple;
	bh=Cl8nmQiPPZ3zMD2xLWnUAdj/4XyXZt4JU5y4x0hFQpE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nbEPvUH1xAF0MMq9XxJWRvNoPcbCwjj13wYBk24G/qsiu+2PW8A/4+omsbnnpzyuP8+W7quNHIWxClJBeURT6Ea8I2G+ulnpk4yapsnN4KkCuxCufpCdWsDXsHNqwCaLR8wxwnvgxQeQvGv8zoC99bBryMzPxTErnL1uaHTWLTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PTZtq4MM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XGhj9VRL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6144Uv4e2053930
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:10:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b2yk1SXP0cSKoeq0NtffjWATsVhRHufpkROfd+0puu4=; b=PTZtq4MMpmAemyhd
	/KsLx2pZ9SnScDMJRJEY8rLfgsO6mhkzGvBZ0jo0L+op7ABudMvxKUHIkedclzlK
	Agb0W3vl8gG+gjU+dVN6TdZm3rNfFKQQPsyZHgAKuB2AbVk8m6phBD4+4g3vmpwB
	gxw28YvVGv86H9TgYCyT7cET5IfUtFptxkfL7TMJVs7eIZHJk7y/PA5U0EyIsadn
	DWfiivpnlCdxAIwu5vpqeGSmPBs9oh+d7fdRQK7wLOozWmOKBylTpZqldFd0IdUj
	/iOp8QhEjQ8VOCvh9WuEMBQRP7s/iuzT6lIb35OzQLqElbiTY0VQHbAMLuBrVFdz
	DlB0NQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gsr2xp9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:10:48 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a377e15716so171461565ad.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770181848; x=1770786648; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b2yk1SXP0cSKoeq0NtffjWATsVhRHufpkROfd+0puu4=;
        b=XGhj9VRLhA2NL7K976NIgA5cttTZNFWCBaeAbz954OH52LHDhkAvuIfC5qLg7heoLc
         RsEIul/EcRcyskxmSgzJ5407JrmfFIoiUOt8Llt6pQTOhTm4Jztpu4R5Hcet4rjzMtZ6
         4TPGz7etF+QBw3lYuKz0GVOAYkBaIT2t8+BmrmbOPYveFzZOtYiol0CFTqp2YV7p5FM1
         aEcuSPNrNgYvStm6/itMiMGfL8sq7kwzrj0uiAKPWVFpT6ibSIkV+1wiym0hdZx/pWCR
         tqcCkBGWzNepDY0EG8X0CUDE62cy2vvEx+uI4ixIVyuWKj+244mTi9CR2f6JpRc4/TAD
         0Q4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770181848; x=1770786648;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b2yk1SXP0cSKoeq0NtffjWATsVhRHufpkROfd+0puu4=;
        b=jNNEZgFkbg4MsemfToTslsflEkNk9xAnSbU+6wcC46MbMU3JOXKeM5hdy6lzpw9m+6
         L72KFu/fDPyuzA1GaOCQclkYWCWejdgily6iJICxSAxpN7Z2kCNGNMFV1rH9KVs5sirE
         3YbF/Xu6PIQw91w5MGQjxiAnWXUhfDliDDOpf9Ck/Dv4WvNuPAgVrZEt2qlXzWf4UQhX
         G4w20BIKQx5PmMlHu+fW0dFO0HlIT7Buu9ozwu6pwNYqXdPtTkAIaAyksnj+jKr9G0HB
         aLhfJ6czcgEwG9NC+g2n1uvgUkb/VCqSqhc1VJWbsxgFE3mEUqY+rH3OrIHVAyM9SD1z
         cHPg==
X-Forwarded-Encrypted: i=1; AJvYcCXFR9Tv1THca1cdCt4nPSov/sVxsh35N7yNBtRjDghvAhkJAhv0n5uNf+XLuYaipDiClTRyOhpdEUmX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0hrs5u1gmPA6YhGsiwq3V6/DV/L6h2jzH6rEauw54uEHR4+q7
	ePKG5K1j+DAzq2XrMQOhMC3Ca+ZWi6avg/OFmzCTVkVx5/9YGD9jBcj5HD5OjJptt3B086/S8Gg
	1ZwdXSbvxJBtA6YEqXQHKyRE1+N4puybzESPzlp5O6hfzPolFCfqcNoqriSvSYmqE
X-Gm-Gg: AZuq6aIpLMEgHgHLcA3qLcDhttQxkN+Y6xipkJMfn9IflOeLV2Lw7sWyfJEr5ldPkLn
	zScxPYQlw3FnilmihgZy6krWkKHPJvQGbJFHA8nnoJzRuKfkaVcjvhezVijxqESK6RRhevppo9O
	nZ1lChWRaJGrioK2V6CGZJmM2Mvh0tjSLLnX5dIBLIWAg17MgvOnO1CGbddXR8eBtWWPY20+t32
	mYha8ptvIpPFLrvgmrToDW6qARyr6qlCVbkVfj3JGiJJMmFeEVpGpmW0xtCWhKbYiOMA8v6BqTC
	hzlitYeXLs7031K0jfBn1QDbzKMokMrxKubJFIUVrFUFh2ROStA6wgWcPCH0IUneHFdWj39MpfS
	AotC6f+HVqiIdKrp3I+0KeLXZ/T9Fj6k/HCyGs62yvg==
X-Received: by 2002:a17:903:2447:b0:2a0:b06d:1585 with SMTP id d9443c01a7336-2a933ea08d3mr17630855ad.34.1770181847574;
        Tue, 03 Feb 2026 21:10:47 -0800 (PST)
X-Received: by 2002:a17:903:2447:b0:2a0:b06d:1585 with SMTP id d9443c01a7336-2a933ea08d3mr17630495ad.34.1770181846953;
        Tue, 03 Feb 2026 21:10:46 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a933888e8csm12620115ad.29.2026.02.03.21.10.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:10:46 -0800 (PST)
Message-ID: <d4a51e98-72ae-49c4-80ec-fe3784c3e8f1@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 10:40:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/13] soc: qcom: geni-se: Introduce helper API for
 attaching power domains
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
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-7-praveen.talari@oss.qualcomm.com>
 <2d2bc77b-715d-4484-86c4-4389ebb63856@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <2d2bc77b-715d-4484-86c4-4389ebb63856@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=A+9h/qWG c=1 sm=1 tr=0 ts=6982d4d8 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RFm3ULBN9CpRR-2xPD0A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 6nfWMEjSVstAUOcV_MSjwZZZKMyWGvHs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAzNCBTYWx0ZWRfX5c2/6zf0H0GP
 NE0jc3B/AbkxuMwSQRtfenC7bvBcjRp+NjmurSxYxHqocwNM/1wcZxyfAP+S1K3jhEtP6t77n2f
 z1Z4lXiLTieX7DBK1WB3h4jd3I4S90dKARqvyoPN5xPwrwiW+GQC+vFjwyDZR6Vx2VSpg9DyEA5
 Yzy2qST2uLLSQancYTkFPd/vgVJq4nmInFvi63oDsq3RM/U2DyGlXkLlNxrcRwTZya8SUhu4SVT
 SEbg4LLNf2/exX7ovwypkJAveiIfhpkMQoeVY4ldual9yNX2A4GeexuZfvb+FlVlM8u9jID6/XK
 8iETZ8orNsoVmVesH4hN6vK7dTxwCMicmfqSItGod+TLQ3XH8GRdzQQCCLT7KWOVnSDHtJbem1Y
 GKQs2iPql+8ppq4oSm2eAwcVH9E4nAPVQzEk8KkujpHfvQos1eo7Xz/dN+oa/mAG9FxQa6iD+aq
 2ii/zuUdMsKq4CS4HWw==
X-Proofpoint-GUID: 6nfWMEjSVstAUOcV_MSjwZZZKMyWGvHs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040034
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262503-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
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
X-Rspamd-Queue-Id: B5098E1D94
X-Rspamd-Action: no action



On 2/3/2026 5:53 PM, Konrad Dybcio wrote:
> On 2/2/26 7:09 PM, Praveen Talari wrote:
>> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
>> the attachment of power domains. This often leads to duplicated code
>> logic across different driver probe functions.
>>
>> Introduce a new helper API, geni_se_domain_attach(), to centralize
>> the logic for attaching "power" and "perf" domains to the GENI SE
>> device.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +int geni_se_domain_attach(struct geni_se *se)
>> +{
>> +	struct dev_pm_domain_attach_data pd_data = {
>> +		.pd_flags = PD_FLAG_DEV_LINK_ON,
>> +		.pd_names = (const char*[]) { "power", "perf" },
>> +		.num_pd_names = 2,
>> +	};
>> +	int ret;
>> +
>> +	ret = dev_pm_domain_attach_list(se->dev,
>> +					&pd_data, &se->pd_list);
> 
> Let's use devm_pm_domain_attach_list() (notice the 'm'), as the list
> is never detached from at the moment

Sure, will add in next version.

Thanks,
Praveen Talari
> 
> otherwise lgtm
> 
> Konrad


