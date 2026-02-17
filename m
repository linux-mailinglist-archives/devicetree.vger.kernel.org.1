Return-Path: <devicetree+bounces-266195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCDqIa2KlGnTFQIAu9opvQ
	(envelope-from <devicetree+bounces-266195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:35:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B8814D96F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71C42301C91B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF83536AB7B;
	Tue, 17 Feb 2026 15:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hybi/tIy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TebiQMG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956994C6C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771342504; cv=none; b=Q3W76QWdpy6HY3DJLHY8m4MGHhTCL2jiFjJg5iAyE9htX6Uo0MIbGOnNKrwN5OlFnwMd2yI+7wOMUQjKsSzAkj1ahARAqn6fnyy5Q7oKMeUGGy0+dvGcPtKs4uELuv64aLZ6kwAr9tIY2Iq2rzGQAhp/m3+wkZLm7OZglgeMQjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771342504; c=relaxed/simple;
	bh=s/UCEVRgEYfNEzZ71RHuEOGWTZxbw6VaGhQmxYLphh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LI7jS4kvDlYf2S2RgL+R7SUnRi/B1bnOgSxpWOoP66vbmBm88RJIT/dPUsxD1HeiptdyAhTY9nslhvaZS2nz/vr8hEhpqLpPS0lM1igJhWYjUCrg4AkVRgk9mDnMCoJWzY69jyD0D4uhijtMggFZ2+wusePLM1k5F+RzpUl8ldw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hybi/tIy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TebiQMG3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H8o73M1601138
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:35:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2iSuBcgCjBQ+kBQhdKe5EhYzO4nkXBajZ+4DR5vCa/w=; b=Hybi/tIycvdrFtRe
	JPN8ykQ6yHimUGhtFFiwCOnQrnL/QvPtZ/TOLBbpyqdclDhFzLVSimibcODdq9iq
	oGBrxzck4lJ0m60b+FQR3iPhAB9PvKsuyamZpsMZq1nCVmNCEfrRJylllcOhtR8K
	QH/tBKDGA3MmNCIs3W0UnaR/AR9Doun/5/3yFW1mtOQBvjSXgwNlVKPkas/P0Mqi
	q+GBL4ccEZ3P15ZeWP3R8YTR+Nsvism6YGSEK891jvhsiCQnd0y3l3jh/VLu0NJK
	/3FNs5eACEComL8+ARRFfNNype6qGVjxGRwMTHWcpCyETw5t0kzboQBpoLzDeVQB
	hvfC6A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tmassa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:35:02 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7b7f04a11so232327405ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771342501; x=1771947301; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2iSuBcgCjBQ+kBQhdKe5EhYzO4nkXBajZ+4DR5vCa/w=;
        b=TebiQMG3qiIJYp2C6IbqUWMjWvPE0lFk5vt31MThSOuAaZiQbMr0KRkBvl1O8bk9zr
         QvsVnYpJzelOwpSs17PSobg0QwA0OY9qLz5f3+FgL8rUDB27e+UEsYOX8r9WdA9ZIOMm
         DjP+Q8Dg2c/BZA5dkMEx2e5UVGd4Q2YJFdwWrc1VnxNnvLYZfM8KsRXI51yjqFAGt5xM
         e2aVG40e+fqTY0Cyu3v1Q59138L/1KFhOjsq2lHRn69+Yumu8yvtc0Bcx55q6di+FX3S
         EgAdIZ8lbC32hQmOa0o1Ypm48DtRrrqap1uwrPQ+M0nqmj0kwsEBSqGcJxzmykaYfZgU
         xGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771342501; x=1771947301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2iSuBcgCjBQ+kBQhdKe5EhYzO4nkXBajZ+4DR5vCa/w=;
        b=Awgj+nL1HbzTAuHnDVekA99BJx/ZIJ5YQxxIiIUqUIgJovQ0a2vy/1/76jv9FaYwzM
         pRSbrR+1+jiEXwWqK7/F8bBqLs6B1QcsIDqzZFuYJS2Qw5fVwsoyY9bEdGC5XIbiZPsj
         8LQID2dwkRtv+6g62AwD0CzF1xBgq3b5X/+How0HfHg80W9GPjr1KqSAn/ReFKgq4KVn
         3am6s9AaG3Hn7d44FQrOLFjL+0ARzI95FEemJzCrdEtHGP4KTejRj/JlLsS6zMacooPH
         Z5v2ZJoZGW4wKA//NnUqPH88s6xySq3KRy+9oRdQHd3NgtDPGDibzMOAk9U6+l1c/wL0
         wN1w==
X-Forwarded-Encrypted: i=1; AJvYcCXGdxoqZ+oVzDtAdaAyvpecGM8wubfKL+fgTT9AEDGqSUW1IlktzBgWn7XIPIXHXDG1D5B0QJTY0jr6@vger.kernel.org
X-Gm-Message-State: AOJu0YxApoUgmnRC8u2c4J62PSwT++lMC8FzR/5y78JKwvAqjI9APtHB
	puxJFwpQvRvdYbrQv8H0dFMNMpRXXImgUr4FuO4U9HQb2dVGLo4WvTSoAT+rk+yPykhwfswhN6+
	h+cYAunwRytN+itf++b275CQZkCaFxNbVVQtZeeq/WtsRTFAYRI/XvBx2i2cKgt9n
X-Gm-Gg: AZuq6aIgWgGUi/+bj4nuHVJrs402+IG0omvHfnsT5BdWJ/gJvK74/LNSxTurIWfZcid
	0ydA8Ju81G9Vzm6OTbI4Q6fS4reOvAXvvTSGQ6RyyUgkMAjm3388eBRn3T6jOObz6ND0KQYXNx0
	LZrFKCxbevbEOHqLy37qilLskX+RngN1HU8U/iHyy597zaQ4xDL5+qCmENXzgU9I2znEPVV3n2e
	Wbd3H3fIxZbyH69ZLeh/N477/Yxhitf34YlrapWnGHHzRS+QIRHoihb+KT1gRzTXpgZF1HfTUv4
	OmacMsrNZg0Fpcf+iWUZdPpDG8AZE1rU+mdLvfvUU6F+MREZ4QIk1LD48vAv5XT2qpy8LgFnJft
	QkHeGzAxAtHfCj1ysOdYiF4mj9485rQfY2AJlx1m0kblWzLy7iEYfWA==
X-Received: by 2002:a17:902:e787:b0:2aa:d11d:5c36 with SMTP id d9443c01a7336-2ab50598a38mr147079405ad.30.1771342501433;
        Tue, 17 Feb 2026 07:35:01 -0800 (PST)
X-Received: by 2002:a17:902:e787:b0:2aa:d11d:5c36 with SMTP id d9443c01a7336-2ab50598a38mr147078955ad.30.1771342500876;
        Tue, 17 Feb 2026 07:35:00 -0800 (PST)
Received: from [10.204.100.45] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a72e444sm112400885ad.34.2026.02.17.07.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 07:35:00 -0800 (PST)
Message-ID: <5170c5df-e22e-46c0-9713-3c4e7bbdbf63@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 21:04:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
 <20260126-kaanapali-iris-v1-1-e2646246bfc1@oss.qualcomm.com>
 <r642meaclfme7thmb6spkna6xiuhbjuqw6x32jndjqhwqjtbbr@qkcziz3cyxb6>
 <b5ac0ab7-2540-4691-99b8-18d67ac63717@oss.qualcomm.com>
 <dhcsnc6y2r2bcjlc54ebo2hakc4tufub6f4oluqq6etjzdlas2@ggwzwoz24kjc>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <dhcsnc6y2r2bcjlc54ebo2hakc4tufub6f4oluqq6etjzdlas2@ggwzwoz24kjc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bg_AoH1NLtD4M8_7insbyohblv8kdXcE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEyNSBTYWx0ZWRfX5j8Os4cdrENv
 cqzlQTgKhfLFEoY3cqgHnnbA0jP9XXLbQyX/ybPLao5IXvKNWneyhZM2m1xmkjtBJiWhJFucl59
 +SUcapyAV/zz96dpUJ3ji3TPtDJxoscqP8nS9PzEgkdnDUsHOCG+troLFrbq8slIgi3//gE9sdK
 4gH/qqLZX9d11BZJgV/Q0M5mZoTCd/LDHdMEzbl0tczDx/hFbRIkawXoL4rrXA8SqfTQ8OLcqqR
 o7MhO4GEvOKPwg8L/GF0IdBQLzT/oFJ1EDbBKx0yEcrLVwFn30361ZWF9cQDgGIV/Nf8EjIe5Cs
 6WQyUoS6SN1Bmt9sA9Kr5c27W9hT6Z8YpB8lBidSvh4JrzZkQuWs3NPdQ2/yAMkU0lR2/xlSInv
 QSLgx8hMb4dKJXwHAjlMYPali7Ht+7tu5wjH+pKbsT792wiAr09EZJSt54lE/8axSNOtFOx7/N7
 uDLwtAYDGLpQT3e1UWQ==
X-Proofpoint-ORIG-GUID: bg_AoH1NLtD4M8_7insbyohblv8kdXcE
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=69948aa6 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=FBmHkFZO9mc88S3EoQsA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266195-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E5B8814D96F
X-Rspamd-Action: no action


On 2/17/2026 8:06 PM, Dmitry Baryshkov wrote:
> On Tue, Feb 17, 2026 at 07:13:39PM +0530, Vikash Garodia wrote:
>>
>> On 1/27/2026 8:39 PM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 26, 2026 at 05:55:44PM +0530, Vikash Garodia wrote:
>>>> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
>>>> compared to previous generation, iris3x, it has,
>>>> - separate power domains for stream and pixel processing hardware blocks
>>>>     (bse and vpp).
>>>> - additional power domain for apv codec.
>>>> - power domains for individual pipes (VPPx).
>>>> - different clocks and reset lines.
>>>>
>>>> iommu-map include all the different stream-ids which can be possibly
>>>> generated by vpu4 hardware.
>>>
>>> It's not how it can be defined.
>>
>> Do you mean to elaborate the different entries within iommu-map or to
>> elaborate the different stream ids and how they are grouped into different
>> functions ?
> 
> The comment was sent three weeks ago.

yeah, if you could still recollect, you can comment.

> 
>>
>>>
>>>>
>>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>>> ---
>>>>    .../bindings/media/qcom,kaanapali-iris.yaml        | 234 +++++++++++++++++++++
>>>>    1 file changed, 234 insertions(+)
>>>>
>>>> +
>>>> +  iommu-map: true
>>>
>>> This is totally underspecifified.
>>
>> oneof would be a better approach describing the possible stream-ids.
> 
> oneOf of what? It is items with the definition of each item.

something like below,

properties:
   iommu-map:
     description: |
       List of IOMMU stream IDs corresponding to hardware function IDs.
       The number of entries depends on the SoC variant.
     type: array
     oneOf:
       - minItems: 8
         maxItems: 8
         items:
           type: integer
           description: IOMMU stream IDs

       - minItems: 9
         maxItems: 9
         items:
           type: integer
           description: IOMMU stream IDs
> 
>>
>>>
>>>> +
>>>> +  memory-region:
>>>> +    maxItems: 1
>>>> +
>>>
>>>> +
>>>> +        iommu-map = <0x100 &apps_smmu 0x1940 0x0 0x1>,
>>>> +                    <0x100 &apps_smmu 0x1a20 0x0 0x1>,
>>>> +                    <0x100 &apps_smmu 0x1944 0x0 0x1>,
>>>> +                    <0x101 &apps_smmu 0x1943 0x0 0x1>,
>>>> +                    <0x200 &apps_smmu 0x1941 0x0 0x1>,
>>>> +                    <0x200 &apps_smmu 0x1a21 0x0 0x1>,
>>>> +                    <0x201 &apps_smmu 0x1945 0x0 0x1>,
>>>> +                    <0x202 &apps_smmu 0x1946 0x0 0x1>,
>>>> +                    <0x300 &apps_smmu 0x1a22 0x0 0x1>;
>>>
>>> #define the functions in the ABI, provide them in the bindings.
>>
>> Ack. will introduce a new header at [1] and define these functions
>>
>> [1] https://github.com/torvalds/linux/tree/master/include/dt-bindings/media
>>
>> Regards,
>> Vikash
>>
>>>
>>>> +
>>>
>>
> 


