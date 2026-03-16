Return-Path: <devicetree+bounces-276080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CZFKlXYt2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:15:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0871E297C3A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA4AE300DDFB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8BEC25DB12;
	Mon, 16 Mar 2026 10:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nw85Bzj2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HbC7a0iX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBB338E5C4
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773656127; cv=none; b=TlHya4QXr/xCpEWnmSxjeRgcV42yZIsC6sokCmZWDY9KkSHyg1fczEL7KMX+vOLa02lbFRjK4Qea/Z61KPJYOv44qhQ2HBjREBzPKdaKw87vQObE9ivkdoNE32STme1tyD8p2HVObz0eOoT/Es2jHzB1ajiv8/dpkGEPGZPdDDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773656127; c=relaxed/simple;
	bh=W+GzarTkZQxf5Cs3/AqSFUh9TwFieU/YTGKXpRhcQeU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AqF1uNn+zxEiE1VYKGNtubQYZsFfbrWixVvraDMrpyPGfZtiNu3nlHQ56JvX2xNnvH82EX6Xt1UqJT2Up8Ai7nUadUwVq2lvo8Cgg7CoaAwPVfYcUZj2vxyel+nKM0+YEgAqyvQZfLPQAi/D4ZiUZ02H23qkglMFPOiYj6ZHe0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nw85Bzj2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HbC7a0iX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64l0c538989
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:15:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x5f29stZvo4x02UtMHbpPEOGs9TVIEI7ZNuzFrcPIeM=; b=Nw85Bzj2Rm7nuYYM
	2eLkK7xgtLzbo8IuEQ2P8TtO+QbjNEt5FvmRXa4e/eK6WN8Wte0SdRhlmk1XtT7i
	MJcTQTlGDrl91Qa4PlW0WwniBCt4aXtZ29ukpObJeY1Ec37lqR5DOV3hVTf/mDjp
	Ng+dVHsygNfjOJn0XgGaHT4NBmQrwox7vEBm0ItDelQLB631ny82KgEudblhIuj0
	e+VCt31EuOnmNUGeBVEiRz3G7hfPUC8NKVjqpMlHNiMnf9oP9cBUwmC+tNj1AKGf
	EIKsNMfUcoCXZ/ioirrA9413MAj3VigkXDudSroo9O/C1F7NvEN9UOsYfGRfeHKF
	/qLU/Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5n6f0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:15:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd90958f24so245694385a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773656125; x=1774260925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x5f29stZvo4x02UtMHbpPEOGs9TVIEI7ZNuzFrcPIeM=;
        b=HbC7a0iXOwdUDkOobA3WSXVMwxgGEbEAT/loHehr6/oD48dgeG4LSxWkUbRE+vUyWH
         U8E8BtyOnyYjKMX+5MLBPzahp/nP7tD6lbM6e9LuOpesc4X0bQUpoTA3eoebCRlLnnq3
         sHYg2XKvp0O3BRFVbPOIldYXZoiXWLKsXBBriQZlBF1kXF0jZ4h32XradtseEUkt6LnB
         eX9D0lu0ceXSXGwym+IVKDXMCp2Q1f6ugW7Ozll9rbkvJOtgM74cT4HcxI9Nw/QG0cFO
         BJUaFmFqhdsKpxvxsqQqsRJxIGoWS12r6hBBrGMsvLbglkSFU30NoJWVKqUnsMoW6Kq4
         tZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773656125; x=1774260925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x5f29stZvo4x02UtMHbpPEOGs9TVIEI7ZNuzFrcPIeM=;
        b=l37HeVnGZtlbXZNGg0zjH8/ykYWB3P0cf7Dgf0d5qS+kYCywV8V6EXW64FPBo+wP0c
         cARDTDHJgD4CoFceFkSWv/WzVnO2yXZaHORn9ObLwmcI6zQccL9qdtAvipKA/u14alwb
         g9CVDiF21KM621r6z8361fWFwaua8wOBixrKoc9bu1uu07wjza0bwsEUaLb2yFYED/s2
         tjHN9iZbTDi14tn000mfiWd6bcCHZYMDPiBczlBkE4KS46mT+mcv0lQx57Jj/ZUNPSSv
         e8tcm+ccScIU+69jj6IEKWYUdDjCdWqE184rakoks1S9RlnrvchbSdr5zGKb4dTQ+CW9
         8p5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXqHIIfmnBV+5KjsETpKKbA8a8Pkd7PoTn6a9AsPLr9dEUFqEhnIN/5c1CsEANirExZE2berx89lc4O@vger.kernel.org
X-Gm-Message-State: AOJu0YxBx0MneEnOesoAEqOJ5TC55baBM0yk2IuP+P9stGLmrBHcyd9h
	G5Mdk7pszHv5R9zoYt+SCF74avpZDzrrnXBwaFF4gvQILIpV8nC1uMf/Wn6Y17dkFGV/YRX9gxu
	9jBCZRLa2Ku8v18S4N38Wmm7dE6+rgeBnWxp+gVT5PT8zKWpSzOu0arcxOep/jEGm
X-Gm-Gg: ATEYQzxJVvoTvLZNMIk9o5VB6P91nFuc5xJTWnvncAz9KboW/X/KSxbdcOpYSpt6RpA
	XWJ5yGmfvG53Ba2rADwY1mZxoY1h1qTpEpH3HCI7F01W1xWg3JOnhFNutUL2UlLga0fJK5b2Abr
	QAYkULDasAw158qtpubKh+6H0RMHY+5Z1rbC3DCUAlh1gJ5ByC5gWJBsUdCudnJWWDZK/mm2JQK
	k1bRjRZdcZ1y3ZJobKapXGDKjQYZXDzXk1xyoEXDflQYZkXU7alTHwRXa8K7PSepBofAA+PE1g3
	+LAdsvvQEi0jmtC+kgWIx/KDT7ob118kqDgjLeTkZ7UgWAQ+QR19xVb+yiwC/iSkn1YXYrDFpwd
	GopMJSiIK7UBpJXdbiPLV9d+VffiKIEhWe4cMAcVExQyzfIo/jpMoWd8jMo5lNgRXoVQojj+YVV
	UOFb0=
X-Received: by 2002:a05:620a:198a:b0:8cb:1c69:b7e9 with SMTP id af79cd13be357-8cdb5b43ac9mr1237624885a.5.1773656125046;
        Mon, 16 Mar 2026 03:15:25 -0700 (PDT)
X-Received: by 2002:a05:620a:198a:b0:8cb:1c69:b7e9 with SMTP id af79cd13be357-8cdb5b43ac9mr1237622285a.5.1773656124572;
        Mon, 16 Mar 2026 03:15:24 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978eb9d5c4sm429242466b.48.2026.03.16.03.15.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:15:23 -0700 (PDT)
Message-ID: <89d1b384-7a93-461b-8ecd-00eae1da58fd@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:15:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/2] dt-bindings: usb: qcom,pmic-typec: Document
 vbus-detect-gpios property
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Alexander Koskovich <AKoskovich@pm.me>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
 <20260308-qcom-typec-shared-vbus-v1-1-7d574b91052a@pm.me>
 <d6d859a3-4137-4fb8-8b04-40abc86f4e33@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d6d859a3-4137-4fb8-8b04-40abc86f4e33@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: z_WIxpThVeb6Lawqzo7zD51xv6aetb8C
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b7d83d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=cXWI3QU9x2L6Cd98jxUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: z_WIxpThVeb6Lawqzo7zD51xv6aetb8C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3OCBTYWx0ZWRfX21/6cehlLK0j
 yBy9aXJjkLBtmgfP21d3ca7ej6lwVle2lH+xynTLItTPWYc+2NJFgt5arV9rB8tpVpFVAwfQpS3
 Y1Tu3bsNUE2U3G9waonx9CQiy4cRQuWmVhyX10TIYnfxC5hS2uTCUqjBm6zpulUdXKOGdqYYRkL
 X+GLa1+MJpl2IOq0gdsASrhDaN+a9H/E0tU2wcanYWW0TkHKOI33t1uoa556y9RnlkxEEh9+/KE
 wtHn0G97uDnBXpZvgrrMybhT7cHy963mg2IqulhoG04p4CmtGyWE0pRs906lCg9UGBQ4UZkW5mL
 x+4lZlySZi3IXm5xgj2RVxcsQ4MMv2YnW6WikSF3ix7kHvc2KRI/04JCum+PWMJMKMuZ/I120La
 Gyad5bfwAQVLopN3o91nDbvRibpuKpbkkhwsERsbwr+RCVTGn2xnhI77x/sJARJFNEZGQ6WuwKE
 rnx06zWx6CfNlubUCkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160078
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276080-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0871E297C3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 12:02 AM, Bryan O'Donoghue wrote:
> On 08/03/2026 23:20, Alexander Koskovich wrote:
>> +  vbus-detect-gpios:
> 
> Should this be plural ?

Yes

e.g.

Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml

Konrad

