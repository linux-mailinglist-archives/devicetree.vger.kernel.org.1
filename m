Return-Path: <devicetree+bounces-266290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id X2k9LCXplGmSIwIAu9opvQ
	(envelope-from <devicetree+bounces-266290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:18:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D036715164F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9FFF301AF5F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6F030BB80;
	Tue, 17 Feb 2026 22:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mU0BSUwY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XngxxOjx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DB329A1
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 22:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771366689; cv=none; b=okpEo5LEYTx7uoX21YPpsOjCIjtzJAxn0etUx7njLVjVxFYjjxbX6vmpvJrZVFy9bbGR9rYZ8bEpbruAufhI0+GicxoqEekVIy65JseFTOLQYfP1tRWcKFMpJpa4kwW0Fq58YE2IGudIIaBAxd0NSSbpqZVFMZxaY1937PjUoCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771366689; c=relaxed/simple;
	bh=SXpSx7WMHtVORUj1JyaFxGtu4f7dFLYpyqZ0r7psjnw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lhVexYGB/8CdQ2L7uhzL7pw/f3hpKSK+3EGwTzA155h9C2V1y1CRCKCH1LZsnAmj6GixxWmoPD5ZudLgljG+dPFpUyJRkEaKzkQlz0+9jA1Hd5KynIjDhYo07G2r6NDT/tJs9a7EhAkXamRTlCNjXNxDS7mdOUdu4K8qJ88zZiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mU0BSUwY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XngxxOjx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HJboIQ2417574
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 22:18:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0zJ71lGN85nLguALAwGHbmGb7XD2DILMpKE2Y/7toqk=; b=mU0BSUwYV6csZlT9
	Phg/pYNy+yMBpy8t60tP/Cle4dGUtgSJsv+eivoeYj9d0qZF5BeXwwPbwGmoTv3r
	GDmqltCdSBiVBoHxIGWonm1Snxi2SUJvEYPgGWm0i1dLZnxRs6GDjtnlHbe6djr4
	Ni/GNUyv3rDQa979YxZgexxglatJQcAfCt5DQzeJvSGnck3XPKOI4VDFS7DUIZn5
	sTxOK3pnomqIGOLCmj3k2/336I3AuZHvoE4ZvAdUcMoDpbAhP+ONEtlG2j5Ba0DP
	oupAD2s9iH7kR+hnKtPUXsd8U+C+4ZkWngdft/TTtB4M1TlNksJ4yVgYzNCxzxhe
	iGvA6w==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tmc3nv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 22:18:07 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12721cd1a2aso11831254c88.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 14:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771366686; x=1771971486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0zJ71lGN85nLguALAwGHbmGb7XD2DILMpKE2Y/7toqk=;
        b=XngxxOjxR9bQanTuo6o3MqoW8AFvW30FAuzWph4c/2KwegWaFYvU7nH7Io6u1RfDq9
         ytpmWxJXrO8X56zbsbKQD30sJCI/Ha3wj6S1wC595vJvXAGALn8QYzFK2SghnYGi7c3N
         48xm8OOVVS74KNenaR3Y6bYW+zM0VXLyQq1P+YRRpbZX5GG4yOXwns2n70O8trPF22nZ
         fZJw0tc1UKU88wCstQc1zEfT1s5RiER522ljS+6tfgWred7CKaci4vR2sV5yZ3DWVlCQ
         AXiWdTwiRGzvKErwcP57GO0OLy50aT+ylcg/4IvcsxyqBMRnR8HOlKCPv21TMKdGmzq9
         tOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771366686; x=1771971486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0zJ71lGN85nLguALAwGHbmGb7XD2DILMpKE2Y/7toqk=;
        b=ab5SwfoTNkVxMjaoroARxHwx5T5BkSaZQX7WYPfAdmUJjiCB8H75uCNwlgHthQmAdc
         OCd4zL5e5Q6lTQfHLaiV6tVLdDpj9yrLdpmYKuzcKzVMQCiQqeNx9IG+m5Sbstv7Yfq0
         /97bTOyhpZ7re061SEabRZp0CNRp+BT4B1IfpYagvnKVqVOCvVscGbcvMMhZ+qqF25OF
         oyyGTnz3tGgp4KvUxofTx8gpxX0QruLpKRpyX9LXGODGey/Kh8jUepH0xcMP02LCyLJP
         Pq6CV33as62Te4SqEed7X4bTTh0gCDFSmKvGCu/mOhyb2XO4bHLKX0d6WOcufPLUbFo1
         7ejw==
X-Forwarded-Encrypted: i=1; AJvYcCWHDyNn0gsw3Zp+E41vYIK9vf0ObHT+8VWTXd/BHcGRBvp3IW6xwbyO70o5/7Ocon4uJUUrcyyjXeAA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8iSHhj0RQOViCeud3es2pxU4kWIlaC2w/g0wXqIRA99PCRNk1
	HpmW0WgZhbVoj2rREuDp4l/ya+YB0K1hdQX9hk290+PpvlMU0jwVAbcYjLIL45SkxjDJjNfCmZL
	lNo0qCMzhqXFg74KGQPLCOajHkUu0DqI4aM7tCsf21NDfiovYph3EzHLRG1m5DgHi
X-Gm-Gg: AZuq6aKuUqqcw966qGyiJKozUlIpBAVsf4NfdrLluV/g8rGAjB0TvgBGhokiyO3TQ1a
	5UVJfT8nMFpWe8FEqQQDTyPBIo+BIgmHy94XgkgmqBMTh2CcFyL5mYlb+qSo++EzkfHnJ1IEpJQ
	U0hRufowsAZ7Elx7QG+nrDxKjmaI+PHqMyb6WtzuaabDzfQpmmkz0yXbUN/ctft1L0mgaaP3s0X
	TuMxybXp7B9KZlDt1Yu9Wz7io62d0VWHUY8BbdVHrcIZ3diHb9XQ3KcJh+UmR7XdtrQq9jP62hK
	UGzdrLs608nSMQ/cbTTU+2Xw+VCXUvOi1EhL690CxvKNWxG2g2tobGb4pAJWpVb38XKlSLAkgjG
	43OaXLkyuqYD8CjTuuMxNmhVtmc7ka+P+RIc6Lu/7vsiSON3itgZvPRbxrZLS+DKsghBVhUgIZw
	4P8Q==
X-Received: by 2002:a05:7022:a91:b0:119:e56b:c75c with SMTP id a92af1059eb24-1273ae80e60mr8137334c88.33.1771366686311;
        Tue, 17 Feb 2026 14:18:06 -0800 (PST)
X-Received: by 2002:a05:7022:a91:b0:119:e56b:c75c with SMTP id a92af1059eb24-1273ae80e60mr8137311c88.33.1771366685754;
        Tue, 17 Feb 2026 14:18:05 -0800 (PST)
Received: from [10.62.37.112] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742c6430asm17279170c88.6.2026.02.17.14.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 14:18:05 -0800 (PST)
Message-ID: <b3e76e9f-a820-43ee-9089-7b7eaa876ebe@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:18:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: media: camss: Add qcom,sm6350-camss
To: Bryan O'Donoghue <bod@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
 <20260213-sm6350-camss-v3-1-30a845b0b7cc@fairphone.com>
 <W3evhxwcLQLbkKftGpGmJ5LaEO_h3nxsWSSzrthlfatPfO60KrPpbyaq7yAu1vKbQc0RLqsaCQhTPzRruNTg_Q==@protonmail.internalid>
 <20260214-slick-ringtail-of-innovation-d8eecd@quoll>
 <f5869002-1b42-4164-9f14-2ee41f5b1496@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <f5869002-1b42-4164-9f14-2ee41f5b1496@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4CNQZSOWYOvHK7lbGxrYbv04q-MK3hM7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE4NCBTYWx0ZWRfX/Kq95y+eFLU6
 IjzYVGS1rQcn85Gv4NgSDEBJTp8Z1SDbvtVL4+nAP81p9kMQPG7+DduGCTcD0WXVZl7QuWeFM6+
 6wzQhzPbbM1h/MJKopOB5R+4mPO2OW64n+0QLSf4tUqxVJ/1LzEyZeNiXQsKx7jKzcvNTnQK+Gl
 bVyGa2FsSf1T1yGOynDHGoJksxpLQJ8f8s16j2sKiTJTx5agoW5x80OHKVIqWvKFG5dV0dM0Uqw
 rVdj4HReMntlIYhzWw67NbAjGP4OvGu5gyjdicCFjBcb2qJS2LSUgVFBxbA9qQS7ErIOaeii8d/
 WnKkSTz1cXZ4w3a39ccUcjoRK9VTJ9UMgu2IG2pOrCXIfaH1W1cLg0YQqL7+I/hmn9OSYS6/5Ft
 zX/ZjxfwErwavAadn+Rn3DX6pTGUUZu1RpoFMa9i8ER9rVndwXModchXS3G+OtdfR1EuPX08tex
 XYkhwnvYBx/uycVbryg==
X-Proofpoint-ORIG-GUID: 4CNQZSOWYOvHK7lbGxrYbv04q-MK3hM7
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=6994e91f cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=uS_WSclN8nCJ1qZK6-wA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170184
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-266290-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,lists.sr.ht,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D036715164F
X-Rspamd-Action: no action



On 2/14/2026 5:05 AM, Bryan O'Donoghue wrote:
> On 14/02/2026 08:37, Krzysztof Kozlowski wrote:
>> On Fri, Feb 13, 2026 at 02:15:01PM +0100, Luca Weiss wrote:
>>> +  power-domains:
>>> +    maxItems: 6
>>> +
>>> +  power-domain-names:
>>> +    items:
>>> +      - const: bps
>>> +      - const: ife0
>>> +      - const: ife1
>>
>> ife0, ife1, ife2, top, bps, ipe like in sm6150 or sm8650.
>>
>>> +      - const: ife2
>>> +      - const: ipe
>>> +      - const: top
>>> +
>>> +  vdd-csiphy0-0p9-supply:
>>> +    description:
>>> +      Phandle to a 0.9V regulator supply to CSIPHY0.
>>> +
>>> +  vdd-csiphy0-1p25-supply:
>>> +    description:
>>> +      Phandle to a 1.25V regulator supply to CSIPHY0.
>>> +
>>> +  vdd-csiphy1-0p9-supply:
>>> +    description:
>>> +      Phandle to a 0.9V regulator supply to CSIPHY1.
>>> +
>>> +  vdd-csiphy1-1p25-supply:
>>> +    description:
>>> +      Phandle to a 1.25V regulator supply to CSIPHY1.
>>> +
>>> +  vdd-csiphy2-0p9-supply:
>>> +    description:
>>> +      Phandle to a 0.9V regulator supply to CSIPHY2.
>>> +
>>> +  vdd-csiphy2-1p25-supply:
>>> +    description:
>>> +      Phandle to a 1.25V regulator supply to CSIPHY2.
>>> +
>>> +  vdd-csiphy3-0p9-supply:
>>> +    description:
>>> +      Phandle to a 0.9V regulator supply to CSIPHY3.
>>> +
>>> +  vdd-csiphy3-1p25-supply:
>>> +    description:
>>> +      Phandle to a 1.25V regulator supply to CSIPHY3.
>>
>> I assume that we abandon the idea of separate CSI PHY devices. It was
>> discssed way too long time ago.
> 
> No just waiting for 6.20/7.0 to drop however, I think its fine to add 
> new definitions until we merge that series.
>> With domains changed:
Please correct me if I misunderstood but if we are not blocking the new 
patches over PHY node separation anymore, can you re-review SM8750 
patches please, Krzysztof? Thank you.

https://lore.kernel.org/all/20260119-add-support-for-camss-on-sm8750-v2-0-3e06583a0a81@oss.qualcomm.com/
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>
>> Best regards,
>> Krzysztof
>>
> 
> 
> 


