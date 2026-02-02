Return-Path: <devicetree+bounces-261887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKi8DqnQgGlBBwMAu9opvQ
	(envelope-from <devicetree+bounces-261887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:28:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC967CEF72
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:28:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48559305D6C3
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 16:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DE5284895;
	Mon,  2 Feb 2026 16:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TDcSJ/Nb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kBOpXLFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD44B2777FC
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 16:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770049190; cv=none; b=SvTcDOBgapY8RTOHwtHVxyZ2SN4BrRAjpgHy91VFbTgJ7MPp9kQGmA8+vNfBx8+sccSlrtpvrwlR0qQ+x01q7BvkNByet1vcWheOoQnRzZZn8X/w7JlyKncjtrLhjBdz9nc1T7DqP1nevGRbmKreBHFKkN3ClwT+xO0N2a539vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770049190; c=relaxed/simple;
	bh=UFH8ZvWyHSTba8xWUqCDIvROSjipa6gDdEYCeNskEv8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Thgzg8P4O1mQew6ecUEF1Usi5f3A3GLsfWILtpMNR2nGtpFDESewFSHj/uJgmX6OqgFe0N4qJD9ACuj/xzwk/Osq9EL1yHDZntRDPCIB39bb1K5ypFV2FcbiTGG9/PnEkMalV80frM2kbiE3h5QEtQ0wSxlywyHKrOpAqlpZDSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TDcSJ/Nb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kBOpXLFJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B5Y1k3459176
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 16:19:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tJlWcyQgA0RUZL60b1mwd+CQ0XW+iOLXGwHWwdBbB60=; b=TDcSJ/NbBSbbVQBY
	tTXLlJV4wDO+vOE+sQzJd68CBXWy2JFr8kPkgf8ik4pF6FSKopQahpajNe+Q7VxL
	0orjd/shEZ9exSn8vcRQPjnLxsQmY2RAXKXfiu/0EDuj56CIrc27+eUJPNVPAz3q
	z58hG6fgtR6MjjCU8W7ANGB5tk/pwWUbMvO6NUF7rUeic+ecjdf1BaaZWQHdnLk4
	1RuK5I/eX1qQaQrchmiJDwyX5oBJrTd5I9Vp25YxhWXfCcifVh7sL2DkXqTugASK
	GJjebjxqiPiOFxBc0yWo31pZdIJurDUsHDxWzIN4L7SqY9cpeU0M5NBrq1JFnEiN
	kFdAaQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbgws3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:19:47 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a07fa318fdso48019155ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770049187; x=1770653987; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tJlWcyQgA0RUZL60b1mwd+CQ0XW+iOLXGwHWwdBbB60=;
        b=kBOpXLFJvgEU9HwIu4sewowVPJJOStOcRScpzttdyLY9eQxL81xlGI3EYIE2mEu6FY
         UTdv2agIyNvbLYH7MDuaKeKuvPkPY1WjQgtcXTP8Kd8VxvguouOSpiw8bJXMI67SiuA6
         TwXtbsU55bgwwGKGu7lPKLIZfGQIOIzyCkPnasN8FlJBjd978tHFbnlBktPXl1zN4ivj
         PixiXAwqyqoUMOpa0VNYjWVhrAgE4D71wts1PlPZDrxsTwcNEbHCRI71k1SRO3/YI7AP
         1TNstO2hN1Q50H4ioLK6TTV/3ybQW4P83kNzGeJBpbWy7C3jeAhX5kEh0fVVoAvWrpqi
         7zWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770049187; x=1770653987;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJlWcyQgA0RUZL60b1mwd+CQ0XW+iOLXGwHWwdBbB60=;
        b=f82HSpvHhq1eE2JIKzoLyiy/6VXzjAnHFTpCYrgGj4b95bqG1hPleKlZk2/rYuu4k4
         ivd08sflYwQVgb5EzBSDSK8DJr0GgKMvTfKNHMzmTdnGRjxVduHwlXEYNg6QtqpFKc5B
         cQZ4X0vfIJAxCxHWqIlZNSnokP7C9VvCEpV+ewb9IIYKlBvVULxlMJigQCcokfg03SCe
         ehdtYVQU/L0Su+IwnBC0BfMfP/O65iKPqrMyXgpPquwPPHUg6hwu0lLW7C/Cuj5tXSCr
         ThXhX9ismnC1+wTbU3snAIEhrmgWbC9GYn2bnQALXzmlXCT9BppJQ0NAQvPFe/Ntf92G
         GA2g==
X-Forwarded-Encrypted: i=1; AJvYcCXQ2HKUKaIPilcpH/gZaYn2vBEL3QaC2iBeW+TljxNplWHURGamWmdP10myvBlf5atMklhretTs3cHr@vger.kernel.org
X-Gm-Message-State: AOJu0YzTEhW4lZNyfsv2iRhIHDzaqjLjAiNKc8kvGGvVi9+OGZMdl+z0
	GfCQSsBg7F7TjGL1e6U4c02yJDnQifMGM6h7bs0PCx9WCkWybf5JktBhc1sfrGyDQZFrxZQNb0W
	80kHISy3viqBW/Lm1GVvWSvfIpZ7ahlxTGIeipYIuToOR55eU8k1b1vXGb0e3Rrv5
X-Gm-Gg: AZuq6aKOX4wRRgWdL1I+PYt+Gy/gdQ/UfcziiXBypT3dIok17NclD5+inNFhaccbeqR
	jN9Px5vqlqDEa4p6KjklZlRdfHjtMGO6U9ScrbYavLrKzf1Ow54p1bgikHpyZNuvcwz35L0js8A
	jw//2GdMdpbOXfW5SdQLZYukLDG6PMfVZeaEntbFy7dPGChHOOyVW4h8zILIoDjM/hwVQA1WW5O
	BNHyFRWKBq7vPmcqcQPyOEqN8OMPWCYCOy3sz7RFcQ1PFlIMYuClmGOvDphgvwQPSSo1nN0JGQh
	txKnBtjJlWE22lelFweNGGYecDjl2tayU1n8gHfq+PSstLI5H1viYe6bV5/vcjR/MPsm9LjB8f/
	ZiD86xNaoTuoOmSK1iz/2ZlozPyWwdhg6ciXdH9xa
X-Received: by 2002:a17:903:298d:b0:2a9:34:eb65 with SMTP id d9443c01a7336-2a90034f0c4mr58846415ad.26.1770049186518;
        Mon, 02 Feb 2026 08:19:46 -0800 (PST)
X-Received: by 2002:a17:903:298d:b0:2a9:34:eb65 with SMTP id d9443c01a7336-2a90034f0c4mr58845985ad.26.1770049185974;
        Mon, 02 Feb 2026 08:19:45 -0800 (PST)
Received: from [192.168.1.4] ([49.204.107.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eee4asm147472785ad.20.2026.02.02.08.19.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:19:45 -0800 (PST)
Message-ID: <61ef66ac-3919-48e3-a78e-eef54001ae6f@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 21:49:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] soc: qcom: geni-se: Introduce helper API for
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
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-6-praveen.talari@oss.qualcomm.com>
 <d13d1931-c6b2-4f4c-873e-efd45823fa89@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <d13d1931-c6b2-4f4c-873e-efd45823fa89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FDrsWOZkZqxJgufAmyz_1UUHkZ_y4UKk
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=6980cea3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JMgISmeAsz0pT9/O8qDBbw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RFm3ULBN9CpRR-2xPD0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: FDrsWOZkZqxJgufAmyz_1UUHkZ_y4UKk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyOCBTYWx0ZWRfX8bF2bdCIPOjB
 8+oDP/GraUSKg5NeMzNRVBGdK3oL+Z6DJqxVIFOhaviBkRIr5hLYy02qf/rrMzpDno9Czl0fxE4
 JwSnxBwMdUpzLBQ+cOCuChcbKYVsrnAszlxqLkLmdklY71EwVU218vh9fvpcdgDbaD6uTyFiuBf
 3QItuL0EaWANv0s+tvyRRStgaCjYjuvO/jLz6D7m/aUw8oJfSRHamnk8U6F3+r52SOT8cOaKlKz
 V7j9oivLTIJEA6h9N9WucL07G5S/bdXyJHyWmlSSA7r1yeSiVprK6Xn0EdE5u01qxDEKqyqJfss
 EQSu/4eEH8RGlwPyHygOsDN/17YEbXsMZk6uuPFPg2ENoO/7W+rPRp0jdIouVj+VVoQVQZ5hbFT
 /k9vkHEkSu8HVYd2nLAY8+fftgunTWKvfgsMMzq3nH56Md9fjYN8dLzaNo/cI4bOcXYReux/HIg
 4zrHy3XjhmBGGrWZMSQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020128
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
	TAGGED_FROM(0.00)[bounces-261887-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: AC967CEF72
X-Rspamd-Action: no action

Hi

On 1/30/2026 5:42 PM, Konrad Dybcio wrote:
> On 1/12/26 11:47 AM, Praveen Talari wrote:
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
>> +/**
>> + * geni_se_domain_attach() - Attach power domains to a GENI SE device.
>> + * @se: Pointer to the geni_se structure representing the GENI SE device.
>> + *
>> + * This function attaches the necessary power domains ("power" and "perf")
>> + * to the GENI Serial Engine device. It initializes `se->pd_list` with the
>> + * attached domains.
> 
> Please sprinkle somewhere into this kerneldoc that this is specifically
> for the SCMI-auto-VM setup, otherwise "the necessary power domains"
> is at best confusing to an external reader

Sure, will do in next patch.

Thanks,
Praveen
> 
> Konrad


