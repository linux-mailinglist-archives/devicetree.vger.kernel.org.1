Return-Path: <devicetree+bounces-276041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aK6YN9HOt2mDVgEAu9opvQ
	(envelope-from <devicetree+bounces-276041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:35:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CB25E297148
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:35:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 28A693004D82
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165FC388E5E;
	Mon, 16 Mar 2026 09:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U/PkFDeB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZTriZICZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7A9251795
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653707; cv=none; b=E7jThXT0MLAqsbxz4RLl4tARgoCKLoPiqKDgB8x96HhvTQdwcmRo5lfmNisyauWKJrxu6WY4ln7fkXeypY2mSORLlQYXMXyW5s5tvvR1loUM2fJRBsyn6pZXqicTb936Ju6nF1mcVcwSVYq+T2Do9yh1LLGNBEl6dHmmB3lnmdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653707; c=relaxed/simple;
	bh=4r2iMJNnjHizHuoua26v+38XXw7c1p7R6XSQ8WsVbGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dU1wZ3L+yBYB6/jMQlma2U1lgN6N6z+y8fcFbnS8w+VvWN2t10Wsv7EsZYBqzaXN4Kv3Q1qTAIg83oVi23ET/QxtFxCBNanGSwqaUOW2WqGTG5KCj2Rnt/SYKhmbMfFDXmRQOJhz1v2ruSGfihRtOsM9x6O2PEIE5C9SAEPlvCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U/PkFDeB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZTriZICZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64hOx1724716
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:35:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1B/hBs9jqGXN0SatIrrTFMFGQGJmlKhZrWp6PbywrY8=; b=U/PkFDeBlrTsKB4C
	6YsBXWqQLQNNKucxb4AjteIqyUsG8InibHHx6ZMbPsEHm3s1HGtUDQt2fukXAI/i
	V9XJXMqCRWxJ9/furxhpWWH0hrEWX1uv6n35rKXt93ceeX7jR+O2MfoivZoWdbe3
	Mktc3TXJHl6eUHdW06qqkfjP5NITEW3AznvFj1vCT0mBJhEauqWHJeVL1v2zf+5R
	848vXObuf59Ise8YjfczNFrguqYdJ/D7ge3dHodfA8iPDDUJ+Rsn+GczS/rWdrMj
	Chr3Jv0eRUZ+jQ8WyKf2NXAknettViT57x748EZ88KUQoriLMGMwBqhlQlua4dpL
	u7JHow==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udmxqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:35:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd8ea43d4eso216199885a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773653704; x=1774258504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1B/hBs9jqGXN0SatIrrTFMFGQGJmlKhZrWp6PbywrY8=;
        b=ZTriZICZAqaMAdvDiWGWDrzsripmEcJfg9YGRvmXK2uYi+bm3ZpYQTG55Qjd1lBpsK
         WD2ZDDvH4zu1YqxxOGP3+gW2XwbsQSUcmIHJrED0gK2Rv9oQPeYro7BJT8Jm/EidMX7Y
         7q+h2gf84CkVthQME1CpnPls0GzD0lk/kUgDQzeYa3siI6nd9ZwlMAtcj8awx7XVJs5O
         kqtd/0uJQbkKXZxXW/b0kNFZ/G/FeTNfgBC4C6Dbkpqbp/dZBideSQPM0GcAecbYmqc5
         lpzlRcpjDLpkA9Uto71X8Ef3OL1HhEsmB6V0Qbx8C7VQbawUrdwjlGa6C3C4duSaXojb
         kGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773653704; x=1774258504;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1B/hBs9jqGXN0SatIrrTFMFGQGJmlKhZrWp6PbywrY8=;
        b=jkG36hj+tr+SGEhneJIAj1o+MEMC+uuDuH0ZmOTM2B9h4/Y1zK98UgB84elan0HiUl
         Ob9+ktWdFfk2Nvk5OhTKyIkRr9R/0bfBYG9e8Di4oMrBUJKoHJ7PDhJ01UH12MdnWdl1
         R0lwt9NYN3culN5KQ2dUfrcfMJ+Fq3fcKs/HyW5OlCmx8OifZHkJZt1QyhV6rR4s132W
         ic2FnfJWelaMg4AstUWTrKDGO8ku78QQRocLXpXoLjrg+mDRY0wXjH3eSKEQD0mkMoUn
         MZRPBEvgESR0bdSo580LqJf74UhZdRUbC7+2O9xhvSrGTv7Q7Dk31NL08PE2Fn/niIBe
         3sCw==
X-Forwarded-Encrypted: i=1; AJvYcCWBF54A1TvyhQ9dylFI095M2Pqmc7/RpFtPs9s5QoWyVkciC+4C6JAmoOIf3/EbIikXwPctjpAYnAZx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7j7U8j8GB4Fg7xkVbuLqmJZnR9VAlIELn5U4/dFCGg0sq38S3
	m1aZ539lgswh1IKRL8W25G1YSxtjXhpQ1GDaNQvbq77ghQ/Kyv87FCBbgWgQKNpazwiHcX4zvMu
	Fy4e0VHfoGOI81Ndp0GCOZW3eKgFqVEZF72vpbIuNe4FEGnjEnAcXU3ILGCFJQ3sQ
X-Gm-Gg: ATEYQzwQk5flrzLJFSMp88LnYx+L3mwF04AUX09nA6rXLL8LTopIu69Y1c43cRWmlfs
	9jUnXs/eF7P6Xd1ELlQnPZL2Tzzu1ejhobI+hewHsrUzq7R/iZLXfoZ/qXStkSrgORC9/kaqmQn
	bVwWO0DeFp8zqpbaaS/vAdmHYnmGE5GJgHMy2EoNBg/R0eSPN2umm5b6uncLaav5BHkV7WKfW0Q
	gQxQ0rv9xIaphZEH0aqiLVLL9E5Rh99gnkj7ajQU3s4HHZK+2Ml5mKvQuapC3gVcCNsCQ420tUd
	zy2pKuAYI03vlkYWgbXUElGX6TEIKxiXGnuoOqu4fVMIHZ9sJurIOcKRauM/trce+rE2+RIsRlC
	4JAIZ1hXPbdJimDmHZuCyofFV5zlUxcbsF7GYWxgNJqM6pCeqtAVTUAoDf39sBZnTuR4LUSH3ch
	aEcTM=
X-Received: by 2002:a05:620a:290e:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8cdb5b7617bmr1232410485a.7.1773653704205;
        Mon, 16 Mar 2026 02:35:04 -0700 (PDT)
X-Received: by 2002:a05:620a:290e:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8cdb5b7617bmr1232407785a.7.1773653703814;
        Mon, 16 Mar 2026 02:35:03 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97cb0d2df2sm45121166b.54.2026.03.16.02.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:35:02 -0700 (PDT)
Message-ID: <6679e85c-4eef-480f-882b-c64f8d0eb1b7@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:34:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: add IPQ5210 SoC and rdp504 board
 support
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Sumit Garg <sumit.garg@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-8-fe857d68d698@oss.qualcomm.com>
 <6e33daf1-bb90-47d8-955c-12ccdd30ebce@oss.qualcomm.com>
 <84f1407d-62c6-4ec2-8976-eabe66c74728@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <84f1407d-62c6-4ec2-8976-eabe66c74728@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b7cec9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=4Zt3pBCKRviRSeEyxVwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: lr-W8WVG4z_gsuJv8AONBsfauKk9XS6P
X-Proofpoint-ORIG-GUID: lr-W8WVG4z_gsuJv8AONBsfauKk9XS6P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3MyBTYWx0ZWRfX78akxndrs2bo
 HARYQD/HiqSmlQ7mdxCYuvbPjNzmnu6WLaYIkOnoHy38rt4JPHj+wUtvRjlG+CqBeoVj48jdFHi
 GrR+CC5IvSKgr6wEwxkYi1ZvcW7EAReKUSVG3zP7ZkIT8PgBGsrEFxDurdgXLzeryBxvfXbG/Qo
 sqDmNgjf34UPWNqHLVo2GZDti9LSCm3/6nlv6f9CYHIpjEWVpPk97TCTHmOTw5qwSpAGjZw5s75
 gXrtyDPQ62HswvuxGPUPDDVarMZaaAakv5bhHDjd3q0mpsrKXZm/o4u2nP6xPraibR89qCx7Gaw
 NqzmLmcVNVfU49fU7n4dqvN1OjjwcARLYBGCrpxTmUbt5TBrvVWMcV3uFukvxFbDdXssAKJOzjW
 VOSa1uoF+zplwqdnuz6Z2KpfP0HtKWS4efY/N1/KbK5FOo8YrdD645LXYd/VCYFbAykd9lPcLSM
 HmvB/7Jxr+hfqocS6wg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160073
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276041-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
X-Rspamd-Queue-Id: CB25E297148
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 10:03 AM, Kathiravan Thirumoorthy wrote:
> 
> On 3/13/2026 6:18 PM, Konrad Dybcio wrote:
>> On 3/11/26 10:45 AM, Kathiravan Thirumoorthy wrote:
>>> Add initial device tree support for the Qualcomm IPQ5210 SoC and
>>> rdp504 board.
>>>
>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>> ---

[...]

>>> +    firmware {
>>> +        optee {
>>> +            compatible = "linaro,optee-tz";
>>> +            method = "smc";
>>> +        };
>>> +
>>> +        scm {
>>> +            compatible = "qcom,scm-ipq5210", "qcom,scm";
>>> +        };
>> OP-TEE *and* SCM? What does the former do?
> 
> For OP-TEE, we have use cases like getting the random numbers, remoteproc PAS and few others.
> 
> For SCM, setting the download mode is one typical example where OP-TEE doesn't come into picture.
> 
> Please let me know if this helps.

I think it does, but it's odd that OPTEE wouldn't handle both

fwiw +Sumit is poking at OSS firmware for other platforms and may be
interested

Konrad

