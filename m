Return-Path: <devicetree+bounces-266896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iH7vLCs5mGmFDQMAu9opvQ
	(envelope-from <devicetree+bounces-266896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:36:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7796C166DD8
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:36:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6CA17301E98F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3AE333E358;
	Fri, 20 Feb 2026 10:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RKQQHNmD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gF3xLkvh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69AF33DED5
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583782; cv=none; b=cFMvjrYE4VeHe8dHEOX2yNvd3cNCFyKV4TSAK0e1nqhl6HFNj21LlC2bnKKqNsWAbNAyVWGa3OfMPM4+V3AFS49W/V+ljf2gqQb7jUdUoF/aAFqUXVlA6LxGHmT8NLs1UzlNDdG3twlRticaXxGrHCAWf0dIMIvI2qhJE03t7qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583782; c=relaxed/simple;
	bh=G5at7ibjN0g14PaG2FatNt8F41ngH9k8/i1n0QqS/zE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a0PLblgVn9aBp+/toipLZvA5kbDrc9dhypWPnzsdicsV2g13Lt5aVPgvt13W62RcWP6VsZZPJ8YWzkBUknaru9wwBigm9x4PINr0+GrnPZ/+7FlH7Tsap+9S1QueLmJ2xeU+Lv+y9mu6rjLT7D6NxZUL6JL3xNW0b8q/lchHeq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RKQQHNmD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gF3xLkvh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5Rq2w2552687
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:36:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	73hsc16MmRU/mTVMGpbbBTJJ3KemmpyZ4ao7J6lqNsg=; b=RKQQHNmDXinPsObc
	wzVKb4XY4P2Qyj2ukBVebHrLACA6MGsrpO5mQa+F6/XY8N9FGONoHO2yrn/yFvaE
	uoexgLkrwuo0rJ7nJzHjWsuFX/b233GLbvFXbae0RK96LKQ7poprIq22ecY+H3kI
	Dvpihf/UJX8OWR+DArsVEVjg5qtz2k7vRAsk9xXSrGn2cVluNaGomNJUStYIQRtC
	vnhMH5Q1MjJqUPTbXZr7kXrx7xS5ZCGezCT6btHl5mRHJ4TimQFCrPCi79NPxor+
	fLhmsB4SX66X8lAKvpmFXD+aaI71ZcwrQyGq/54kJzd+DXD07uPJ7C/z4KJmc5RX
	vGoqzA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh7t0r74-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:36:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70cb31bcdso195899585a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771583780; x=1772188580; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73hsc16MmRU/mTVMGpbbBTJJ3KemmpyZ4ao7J6lqNsg=;
        b=gF3xLkvhUM6ppVEpUWUvydHoJii3B6YPIP9DG24kdUCadoCOJORjKFlut5Rg4B1hqw
         1YsVumG1ACmvIXPM4WZT2ZP2WdSWwIR4uQuB5ujhfkDDe45n75A3Umc86rzDM+YlTGNx
         UAwDUPAQUtq0a+fq4Zp4D4Iz69FgIbchHtsOzuC5aQjlwgy4r8uTUVpi8tkgZuy25Gz5
         npUHb8VzKmeFHAPfTtHQQPORCgFd/F53luhD/sGjWUflbtMl7tNDf2Gyv1/hcDjjLO4q
         FHuiE9IlvxIaLROwZC95ejf18s2vstLgXte3LjdvLZ89ZWY4T25opQOkdFPYL42r97h/
         1OYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771583780; x=1772188580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=73hsc16MmRU/mTVMGpbbBTJJ3KemmpyZ4ao7J6lqNsg=;
        b=py29ykoxE7yUcVo/jmPAktmW5yYcAZvRPAS41HenJtiBSuIxyKwCm6Ub9qmPIiQpKB
         jtXGNn3XfyRaSI9Oo4jVmOakRDpxWbRXxqIFUXnBjxd0n6aTYaCsghwWOG1aZnE+Zzck
         ZesQhqDb0VDWZsiYXgb7oADVYJgjRxXBIbJY2Tdo5lWODE69jnMVnkbTbbyUmh6Cac00
         dBdN5jzw6Ov3Hda+j/kJ24LvTOLHpycg/2eHJx0HwzEtWNSfYGvnuGQRvImIVPESa/dl
         IrL9/mJ7g9TjAjGlnGas1sREpKGepHBQF5cf2UWih5sQCiWarYZYVSTTIvMInBy9mcjV
         mH+A==
X-Forwarded-Encrypted: i=1; AJvYcCVagihB844KnCtbfw2/vab1mxObk5lZ/hoYijWOyWCTaUnRDwdW+hqq0tZat2SqVkA+obtY//kGsqQP@vger.kernel.org
X-Gm-Message-State: AOJu0Yymguhima7eokqFDCvoVC6oL+60er74BegKdWT0vzXiwVnxoXK3
	qsuww1dhQhwucZaUG7w27OUNc/+G4m7pMoxMQafPz9odfqnp41qK2KvO3vDPr5NXz6nb9h7nsA3
	fEqwFJI2CRhWp8KM+xNLxJf1Sr2bMQtBdGx1nIontrZDsUUCf2XxHiergYzC29Wi9
X-Gm-Gg: AZuq6aKiWqku3df1AXb6oYngrXdxdP7/xv4ZxdaZnM4nJKxhYuZHJ24mVoKHuiGTCy3
	puOwmltg9cKut6/+VSmotiXC0Hr2QY7PR1x5PD8v83jtITft86OJwwYABV9vGgxcg3vu1ot/3kC
	pvU4XCzgaplM0vrqFKu+UELCd31xu/XtWi1fglDdzusvUznSntDWI6KdcuLt3pYF+MvcvEKB7XD
	jh3EJ6CPS5ql+bBYRYQ6p+6Pl4TG2noIIpd7GV4JwTvhEL90P1OjzttM69UeKU16WanlZS3oD1t
	bN6KXQ2/SEIVYIfhU5mzOdiyqkuBBxYjqVu0EKGn/XndvERyxtQ8PQ3M7GkvRc928czNHGHGuU2
	DNa2kyOCEDx3GmgW5mevmGUGOI/3Fs6KM/JYjOCJEt2+6t0NVzMj0q9eionPz0b5g277vM1znDQ
	7a9B4=
X-Received: by 2002:a05:620a:d8a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb40820215mr2416018785a.1.1771583779842;
        Fri, 20 Feb 2026 02:36:19 -0800 (PST)
X-Received: by 2002:a05:620a:d8a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb40820215mr2416017585a.1.1771583779333;
        Fri, 20 Feb 2026 02:36:19 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad2a9d1asm4594244a12.15.2026.02.20.02.36.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 02:36:17 -0800 (PST)
Message-ID: <be05578a-d90e-42ce-a1de-4f670fce03d0@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 11:36:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/6] arm64: dts: qcom: ipq5018: add nodes to bring up
 q6
To: Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260113092021.1887980-5-varadarajan.narayanan@oss.qualcomm.com>
 <62d53cdd-b71b-48f8-88d5-65407d3a80c7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <62d53cdd-b71b-48f8-88d5-65407d3a80c7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: XAdDfcTMEDgGTHDV2qpFvprtKx0d957o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA5MiBTYWx0ZWRfXzD/mqQ1yYXhQ
 S4AFwDkA2oX+bK80bo7G9hqSPKkbUxpB2vkOuAz9YiHmxlqmpjWMwk0OL8kbzD1ctkhtJQUERda
 h29solZbm1/qWGhAL4VnFq+65brHCv0avHbWNAVHTBtfkJqcZdK9Uw4Xze0oPUXU+k6Y2acAwnm
 wLwHU4SdP9nrYaydY1W9wBcuqASwXp/2osCtL9BCmWfXP8G3umo1alWb8Q0GTc8+3xlVESLkxh8
 M5b0s81ZGz6T9DHgbNGzOGTLvpEjagXxFv3XEjm5l8okS821Fry9JUchuM/BDXcJmYLlR91W4JQ
 Sx9R6wgU3GeRbJgVQ0wvFQQ1UBYLfqrgxRPBKLbFr8qGUnvQPFsRAAXyXhlvuP0oj1B/d2yhsXb
 sN7p96P3xn6EEVJSqTNC9Bpz4LONx3+yUmpx5Ng+4srAe4y7v5B4FS2oskiRm5/qDPFqCHr7/Hp
 N4yz8bfsHqic4ExUMxA==
X-Authority-Analysis: v=2.4 cv=PcTyRyhd c=1 sm=1 tr=0 ts=69983924 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=UqCG9HQmAAAA:8 a=HV0a73jl2iU2vqZvWrUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: XAdDfcTMEDgGTHDV2qpFvprtKx0d957o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200092
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
	FREEMAIL_CC(0.00)[outlook.com,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-266896-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cd00000:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,outlook.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7796C166DD8
X-Rspamd-Action: no action

On 2/19/26 8:42 PM, Jeff Johnson wrote:
> On 1/13/2026 1:20 AM, Varadarajan Narayanan wrote:
>> From: George Moussalem <george.moussalem@outlook.com>
>>
>> Enable nodes required for q6 remoteproc bring up.
> 
> I just recently became aware of this series, and have some questions...
> 
>> +		q6v5_wcss: remoteproc@cd00000 {
>> +			compatible = "qcom,ipq5018-wcss-sec-pil";
>> +			reg = <0x0cd00000 0x10000>;
>> +			firmware-name = "ath11k/IPQ5018/hw1.0/q6_fw.mbn";
> 
> This file does not currently exist in linux-firmware.
> Instead there is q6_fw.mdt with associated .b* files.
> 
> How do we transition from .mdt to .mbn given that distros update their version
> of linux-firmware independently from kernel updates? Will we need to have both
> the .mdt and .mbn files present for some period of time? Are there associated
> changes which no longer attempt to load the .mdt files?

Since there are no in-kernel users for this one (the ipq8074 WCSS driver
requests that but no DT is wired up), I would say we should promptly move to
MBN..

> I ask because I've been told the ath11k/ath12k drivers will also need to
> transition their firmware loading from m3_fw.mdt to m3_fw.mbn, and I'm not
> sure how to make that transition.

I can't see any m3_fw.mdt in the tree or l-f, unless the m3.bin qualifies

Konrad

