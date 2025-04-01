Return-Path: <devicetree+bounces-162328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 047B5A77E95
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 17:10:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A535316A579
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7EC207653;
	Tue,  1 Apr 2025 15:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D8outwqM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3E0205AAC
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 15:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743520208; cv=none; b=PWdNrjCd8fl87kGM+Q8XRglfeZ1qVcl7eFR7avg6xu9ZRPWG6M28VM+XNiqDEE126Ww4J700A1rdgLGdAAwK73ZkUDaNFiElbUCGcv3RPshuBUTEbupEelR9jVFjJLkLsA66NOQhguU3dpAKoFjtDByeq/s0/Xtq8XfQRlyZcMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743520208; c=relaxed/simple;
	bh=MtrVWUUNiRVXIciGpxveG4PU596BsaqSyAFWwVNH0kM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YtfFJmPNe0FQf8eq1dr0AJpY07leO/GVtiCMKjlVSORm97F081IPWMs4POiyZlHCZTdhwJ3k5wHaDCB282bJ8gg3gkxIbNxQABsO8NSIUAZecf9wEeRRBaB3Xfh0qFgF3YCuZBDafd4iV6GoJYiLepwRYNWyTbvcKCnWW1Y2hhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D8outwqM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531BcMfi026983
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 15:10:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yaoFeXEqsBoLpp2UaYkNQ+sK/vFM7odw7Waxr6O46Ug=; b=D8outwqMHAX4jadO
	mGtmXkGRG2UxWs5K4Y0Xc14YkrSqAi9QqePS6hiYvvqdWGtBvkRb2nk086ewPVBy
	PsI1os+K6RV5779t8kwzkKewQ85IzDwjv7MZuG+8PGCGTVG0wUqpZAV7mvEgrG1X
	Tt2mYEsvKJToqazYPAI37Ok5Wky1SsrOrJHJwEeOS4MjCuggw220Fw6UeaBQkw7A
	UOHauEWUMtYcaMdMTXVJ25XMkCcqpghAPweaXJynbkjmINptLIw7V9fJkr9/XAGK
	zhzD8C9GpSosSRq0FxaJkkVZ7miJTbt5Hm+qt4hkkms8J65GVO25h787NINMTYf6
	d5MrKw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p6jhrm0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:10:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54be4b03aso123918185a.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 08:10:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743520205; x=1744125005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yaoFeXEqsBoLpp2UaYkNQ+sK/vFM7odw7Waxr6O46Ug=;
        b=r8VYghSYP1iNfdSoLMHcMVL4tNCgLB2u6VqMrb0oLmkAWWBwj0u3lTvrF1vTf1f8WS
         zB6NZrHZ1/qT9ZVO44yY7/AXENh9jJEYHym2Zw0UXQTAjBRYwKEYXHWu6u/9kUDMExRf
         fiR6NgJrs6FWIGRBR8lzNZ1/4lD+cigxtVbN5yRGpMMuxqVz/6QBC5Mk7QA1qvNr8r2x
         4RUEErEL15kg/WdfmMFG3W1l3ovw5hI93sj5b0MBg5GzgGZYvUn/v301NsJ7BA97HoyZ
         uO6iWkTMMqYeyyJ3lxoqSAf6sOcJqP3P5cfCNN5z2G/fuIKsW7aFPDfrBhAyiDN8UilA
         3cNA==
X-Forwarded-Encrypted: i=1; AJvYcCXSJeHZMpehkzwXgkmRdZlXBa/fKFfPvoOWtACgJoDINgqIyUhgi+v64rcA7oA0WmERq8q/aWZX7w+N@vger.kernel.org
X-Gm-Message-State: AOJu0YzDU1fRHxhtszK2VQcLm0aBt45DbJzY31mXdFyzZy4PF1RDkO/i
	vXJSke5FuZmlV/On9aMj4RkdYVDYfPXvk5CHBdupZwdHICxLnvItaTged2Dfd3BB5AriyM7nKJr
	1j2rnpUaUQiG/iLpVh6fDTnrcLS+a2pYF7pDlwVAePyOf0IRH/NcSxjZQ88GLY2s19dcE
X-Gm-Gg: ASbGncuwms3uW+DJVb4NIwBttqnLUrtZJ/8Jqw06cu1q7HD3xRYMLlTW9fG+qdkIaVR
	rPR9lGlrPmWcx7tiqbEtJaKfh5zcqeLYl3YvTSXfrcZMCD/Uod9xN/5ud/f6QVz75swiuHgbT6H
	E4chlJZTG5ix7TC8Sd/ypnLnzwi6dTjTl7RBshqZCFOi2jmOnrxynyygF/CQ8f/y1kJjmu8qt79
	XYfd7ZreUF+7imdFUBnVkZomeOC1FFYZZKIejT6pzRXJU7RFSG7uvuXGFZjRrPeApRn1Vg3H3Mv
	ZLCcOBszWeBnoP04N4jD3ywCUDcZQr3jedXgFAZY4/XO2Eqclj+eJzCgplkeVkfqz3N6/g==
X-Received: by 2002:a05:620a:462a:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c693b6ecdemr732942885a.14.1743520205063;
        Tue, 01 Apr 2025 08:10:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFU+1PHJW24gjoWsxn0K230Z6K7Ht5OFKEzNnSEfKY3yar6C/YOrn/SQOTnTzp3KTqZZyMikQ==
X-Received: by 2002:a05:620a:462a:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c693b6ecdemr732941285a.14.1743520204684;
        Tue, 01 Apr 2025 08:10:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac719220358sm772674966b.36.2025.04.01.08.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:10:04 -0700 (PDT)
Message-ID: <e95e5317-31c1-4263-a6b2-ed362d10045c@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 17:10:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: i2c: qcom-cci: Document QCM2290
 compatible
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <y> <20250401143619.2053739-1-loic.poulain@oss.qualcomm.com>
 <20250401143619.2053739-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250401143619.2053739-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vLvocVTVK4AmAs3XBEpb_-3E2D3Zz78m
X-Proofpoint-ORIG-GUID: vLvocVTVK4AmAs3XBEpb_-3E2D3Zz78m
X-Authority-Analysis: v=2.4 cv=bZZrUPPB c=1 sm=1 tr=0 ts=67ec01ce cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=stLmoef1on31CLXXj-sA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 impostorscore=0 mlxlogscore=727 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010094

On 4/1/25 4:36 PM, Loic Poulain wrote:
> The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
> It requires only two clocks.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

[...]

> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: camss_top_ahb
> +            - const: cci

Hm.. looks like (at least the pre-Titan) CCI only takes 2 clocks, according
to docs.. maybe the other entries could get revisited one day

Konrad

