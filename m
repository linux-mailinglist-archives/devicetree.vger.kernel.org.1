Return-Path: <devicetree+bounces-262268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIVFMsn5gWk7NQMAu9opvQ
	(envelope-from <devicetree+bounces-262268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:36:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA44D9F34
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE6CA30976FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB1939E6C2;
	Tue,  3 Feb 2026 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F1X4xgzf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CZ8o1RmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A639E6CB
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770125739; cv=none; b=RqkT4G/AiwjE89ZyNurfrbpj/cEfxZ8hCW1rcURrlwq6s3L1EH8JoDgnMVUHBWiIAWFr0y7vPqU6tOlwXsiWzUcr7BIxhjclxWlHqWX5eoyPuz603FwB5y4gVrqUP920ybSD/wk566r9f3Rz7lAKwwHdqJPXAeN0XYifkzKXXSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770125739; c=relaxed/simple;
	bh=yhkPRi0ykYv+/r6lZRFmlj13ldSW6PPkSFHE4XNFCw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W4+usUSC+G0xpCFI3+mQb3vL/gB6y7UNZQy11zY24dfbYbwzeYmF32JbcEc9oU7FY1ItnFrHyJz3cykb3+wlw795mHI4O/qiVtJ+y2CPuzKSHk6OKO0OfRwKqG9R3Ln0CvampmTR8TehrMlmTA51loHNdPmWl1BcOP/cmzQL5hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F1X4xgzf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CZ8o1RmR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613BlNPk2418360
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 13:35:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hJLSOlCwUoSC3zdBMUZ/I2OvP6LPIYSpZBcnJOK9LSc=; b=F1X4xgzfCqVUpMMw
	FRtiUiHWxSNr45rvSIlaCSLWroD3NQNZ+JlprQWsvskqibLreC7pMaGHxS9fI5CF
	opBgesQsC/Wby75TkJBphc2eWR2tvl3dx12lzTQ+upb/4GJxGywyhc7d6xYnokzM
	lxCI9dwqbek0BBk5NSozDg7jgVmqZKJKqx69hq42DTrp2ubGcag4iqXvszZdJ271
	BKOB05XL0uDtRADAU08MkImOMXPbH5IJH/AxTYheJwFSqS1T63ldSsp9M39s1WCg
	zOk7uZh3kZqG/t2XydueSSZWeJPdxfMetudK6DQkveTjagTVkmmn81S4xYCrb3F4
	wg1IKA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gew898w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 13:35:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6de73fab8so164725185a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770125735; x=1770730535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hJLSOlCwUoSC3zdBMUZ/I2OvP6LPIYSpZBcnJOK9LSc=;
        b=CZ8o1RmRPQ2faiOQdtiI3EuOvLZKBHwW1lA4h7DWQXesJLi7vsIb0QmITnEM2fDp7Y
         suhV4WkQSFEsN7SiuVuNEY7iQiFrTtnDZHvIiDPAxId/iMmLP5y6Nm0i0e8xm45LljJe
         czZJoEG6ii2wHHSIc/xgNcpLInInX1HcBnmAG81mHUWvzX9pjxjtK9wHs9dEgt2k0kZq
         eP1rAzEDOZ2ftZHkj3Tkn1bizEwGIqFiyZ9eesDPgokcW4HhHUmQMzx+6jRmgK4ewEbF
         KO9rzs3C8wBvHlGI0wGUQYebnVPkx6FK3Ha7Dofw8fMRDMuzHkkAF+IJ2GiwJZQUjhub
         xxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770125735; x=1770730535;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hJLSOlCwUoSC3zdBMUZ/I2OvP6LPIYSpZBcnJOK9LSc=;
        b=BwU7iUPkcAbD7Y7Ba+NS/pyVcYgvjd3G6ZOigeqvnMZRbcgRk8hgm7NLJ+9VxcSTo3
         M9SU9yqJlKL5UJGdSQU924be4zfYvMa2iQ6p3izgj5b1W0MJxnvG4Ak3LmgfO2bq19tD
         eA1Haq2vpjhO0VuQSBE7Y/z8hicHhwmmf8wd494QAQWbf3mwKxwo+7gP3gE+m8QQlRjh
         +JCGRIde84shsBMn/wUgaUZjEmWaPnkANJgVzYLY1eYDyXrQlI9GOGOFcP0lP2tuLMY5
         QNjYSF9WefPtfEZGCwNVS9m+xwml9yh6fhVq01pHFE1wJFu1KWhBsJ2uLHtBZMdxjrlE
         e+3A==
X-Forwarded-Encrypted: i=1; AJvYcCX/JdHW0Tio4CMs0RqD4r6FdN1cPDptXtNuNda6C4yveyw+cKwri8vbo2vbJRqKF3i9ya1QnS4yDa55@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0cNGAxjpxQBdCbhLWsRRWgTDgw3blTud44Y8dyw1Gi3cmGW02
	hmngOXkhiSOlHtimKUp4d1w1q6eyNF4AVAJdk9afW+y3ragJNdqc91lydoFtnqlbovqwqpn0G8G
	xNS8DUdOYdYEcWPgVwcKObkSD2IlnxijLVO7/eO1/XIngCoyWqKCefXxQTqpX5UkZ
X-Gm-Gg: AZuq6aLWEv6G64Zs2XpUrgY5ljR+E0zIfrAEzXfoE0Mhb+TmBuX0Gt1JREwe9662l/L
	RncoEdF2rOG2q85KCWUGi9eUpvkZoCIUA/rK0izPY1sCsV6Tgb0MCWQuvlEp3SmXp/xEzLSELbw
	PbYuMQXX+1PKp4hP6bOZ2ygYV7A1QokuaCGB5rydcsvBLDKCc3Emn8G7wMPq9pak+m4tNpTe0nr
	F5jZdEeiEW9pyTAt8c2u5/TSMnFKvXIbE//2RC6TmhY9Y+4Tl28fXWDter54OWoi2p4JoRFn/TZ
	G6vEWLd0q/S47hxw6AyC26+TEgTuSB+zzRG/opd16N7kOdAZKuptGzGI6rAho9H6o4MiGAudVda
	P+fzwqAJ08rD77QCyzEAYxVr4iqOWR7MVMnLcnQu3vXsC2Vm9F1stdX8hgOuUXvZ4IS4=
X-Received: by 2002:a05:620a:4141:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c9eb2b920amr1467182185a.5.1770125735230;
        Tue, 03 Feb 2026 05:35:35 -0800 (PST)
X-Received: by 2002:a05:620a:4141:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c9eb2b920amr1467179585a.5.1770125734777;
        Tue, 03 Feb 2026 05:35:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc56e8sm1036415766b.15.2026.02.03.05.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 05:35:33 -0800 (PST)
Message-ID: <a61eab24-a5d9-4253-b27d-89961b62665d@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 14:35:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: soc: qcom: eud: Restructure to model
 multi-path hardware
To: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
 <20260126233830.2193816-2-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126233830.2193816-2-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: UZi-K38qXC00ousqmTrKrSQOOpH4zKVy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDEwOCBTYWx0ZWRfXx7CXd1fdZklF
 Hlfk6IuxM/uVKrbAIy8p2vXiN5DQjB82sCe8PYWkOj/v9hb6Yr8GstUz/ojnFgQC0inzoqaXobo
 zLVO5YLArRYfQS3lyes4/tWqdTDkU7eUTn/QQlolSRjpABb6wyXu7tx3JxTi7WzgDLHBjOAF9jj
 cXAwB57Jo5EeldKPm7E/NtCKBBx4uKBeYo7xYd77UuA6ephvBSPg8ji0e+fF/UTX4GEx84dMngD
 ErticsQLioHPqO7DeWr6P6lKRLIgqgxJVjkjP/XCcb0LU1oiHal54N/0GFl9GUVmjue4Z37EdaL
 4fD9CvUt6qiUywI4CyWiIprPiW4SSq7hOXFG2SxHNfZvphhKksxrr4K1ULdVbkHX+iyiOc6EbC+
 ZZHYat2jgVoOKd9dA4kvCmRCdeHhqXPJ/fHl/vwi5d6hDtj6cUmAY+B5hwAmcGngSFvrxANGyrJ
 Cvw60cVzEplhAhnRegA==
X-Authority-Analysis: v=2.4 cv=XI89iAhE c=1 sm=1 tr=0 ts=6981f9a7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JfHo2pUdUrpnrbDD1w4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: UZi-K38qXC00ousqmTrKrSQOOpH4zKVy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030108
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262268-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7AA44D9F34
X-Rspamd-Action: no action

On 1/27/26 12:38 AM, Elson Serrao wrote:
> The Qualcomm Embedded USB Debugger (EUD) can intercept one or two
> independent High-Speed UTMI paths, depending on the SoC. Each path is
> distinct with its own HS-PHY interface, connector/controller wiring, and
> UTMI routing behavior. The EUD hardware sits between the USB2 PHY and
> the USB controller on each path.
> 
> The existing binding models only a single UTMI path and does not provide
> a way to associate the required High-Speed USB PHY. EUD relies on the
> HS-PHY on the selected UTMI path for link signalling and correct operation
> of the hardware.
> 
> Historically, EUD has worked on platforms that use a single UTMI path
> because the USB controller maintains ownership of the PHY during
> enumeration and normal operation. This implicit relationship allowed
> EUD to function even though the dependency on the PHY was not described
> in the binding. However, this behavior is not guaranteed by hardware.
> The current binding description is not sufficient for SoCs that expose
> two independent UTMI paths, where the PHY association and port wiring
> must be explicitly described.
> 
> Introduce per-path eud-path child nodes so each UTMI path can describe
> its HS-PHY, port connections, and the role‑switching capability of its
> associated USB port.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---

[...]

> +patternProperties:
> +  "^eud-path@[0-1]$":

I can't quite put it into words why I don't like this name, but I
don't like this name.. That said I don't really have any clever ideas
for a better one, so I'm not going to object, suppose I just needed
to vent my ramblings

> +    type: object
>      description:
> -      These ports is to be attached to the endpoint of the DWC3 controller node
> -      and type C connector node. The controller has the "usb-role-switch"
> -      property.
> +      Represents one High-Speed UTMI path that EUD intercepts. This node models
> +      the physical data path intercepted by EUD and provides graph endpoints to
> +      link the USB controller and the external connector associated with this path.
>  
>      properties:
> -      port@0:
> -        $ref: /schemas/graph.yaml#/properties/port
> -        description: This port is to be attached to the DWC3 controller.
> +      reg:
> +        maxItems: 1
> +        description: Path number
> +
> +      phys:
> +        maxItems: 1
> +        description: High-Speed USB PHY associated with this data path.
> +
> +      usb-role-switch:
> +        type: boolean
> +        description:
> +          Set this property if the USB port on this path is role switch capable.

This doesn't quite sound right. The EUD acts/can act as a rolesw no matter
what's connected to it.

> +          In device role, debug mode inserts the EUD hub into the UTMI path. In
> +          host role, the EUD hub is bypassed and UTMI traffic flows directly
> +          between the PHY and the USB controller.

The rest of this paragraph is good stuff, explaining the reasoning

> +
> +      ports:
> +        $ref: /schemas/graph.yaml#/properties/ports
> +        description:
> +          These ports are to be attached to the endpoint of the USB controller node
> +          and USB connector node.
> +
> +        properties:
> +          port@0:
> +            $ref: /schemas/graph.yaml#/properties/port
> +            description: This port is to be attached to the USB controller.
>  
> -      port@1:
> -        $ref: /schemas/graph.yaml#/properties/port
> -        description: This port is to be attached to the type C connector.

nit: "Type-C"

Konrad

