Return-Path: <devicetree+bounces-223825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2F6BBDF61
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 14:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADE0D3BC442
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 12:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AF2F27A135;
	Mon,  6 Oct 2025 12:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J5+5RvO9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E946F27A11E
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 12:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759752398; cv=none; b=OuwPjwzGxbAcUkEm4NQcIHFQfRvC5Z1aHeMq/t3SCKCvbBEDDkzO7MFAQMMJgzjdgjtDJIuSDbBa1mBz5qkhlbzeCt3HRKZKQGg/KqivBUQjSxEVbV5lW73r2FovAB8GB4xQ4j4siD809W9Y1x8eX89XJdy4+yip62hnoDkEXAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759752398; c=relaxed/simple;
	bh=HLxEdvzR/XmxUl/mla4qo4fEhWeRdHcVAsmMcuzaVAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bP2tQuieuZZYRwmJSj0CDz3k6IefFU5DTG74rXJGusByF+HRc24NiOtwJUm3EaBkI1HJw50irke2Yhw5bdqS3mezZFJklMdWSACvGg2eiWU8OAUzEVPv7yAM4V+8bx6BrS2O3uyKsOrFE+gShFeb+EVzFUg92/me0DbCyOQCcTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J5+5RvO9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595Lv5hl011725
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 12:06:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HLxEdvzR/XmxUl/mla4qo4fEhWeRdHcVAsmMcuzaVAE=; b=J5+5RvO9h6kgmyJq
	3s4aN+jSgg7ZlgIi39SDGq/U8iWM99LpVnT6S6sRBhLTewpejXsIAnSyOMqk9Qf1
	NilNGFPs/FRLZNUHq+pCPse4wR8eEQqJtYyYEcdZ7lB4/s/ZCokSXUHWZsjZIM7w
	q1YBM4taYNT5aAn6YS248KlL+n9gAfNl64iQ8s5Js+e1ssgzBWRplkIBK+0/luNn
	PMAliVQzD349+IOaXSlCt27FCUYfinhylaMjZVQcWlgpawTrGAa8BcBMo2OlF+wI
	6UrF7eUgGVj76U6Vm8VlrdQ00B/VZVW+wUP4GMjOhX+D2JQb3J5W36L056uZ4SLW
	USF6Dw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgkuj2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 12:06:35 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dee3f74920so8312861cf.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:06:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759752395; x=1760357195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLxEdvzR/XmxUl/mla4qo4fEhWeRdHcVAsmMcuzaVAE=;
        b=u2baIPhDnLtxHYJb2dbOpXv3l6M8HLU1HzzYjh9Xb2hK/lcIpRpyKdKEQtIXWAQGmS
         uWpJzu+hqs8Y1OK5RVZFQAwQFe62a6eaOEVkl49+TiEwPGDGiQCaeGoafxjFOU5KqsKI
         3Vjh0zQo231N2POTi9JYNRop4O/7uRgFPD54vTZWeDaLtm+HRsQvaDFSX4pLbymx/zNA
         awgIifbfAN8XtamcbOnSAS46aPKAMTrD8jd2IUcZ5BVxQrHRoB4ko64ai128bSUrFSGG
         3gAIR6ZFjDNH2onIH9wIGkPUD9LMYCFdE8b8pUScRMx39GvnrE3qSPDNXwRb2A+KoJtA
         Nyug==
X-Forwarded-Encrypted: i=1; AJvYcCWpzKsK/2uzQDw8IXkLcfYZ+ez/tFKUaGeLDWbqsXGND60rWr+jKRHwmpue3RnBggGyA6x5fYn1a1Fu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4tRRPVeB5uG1K2hltgPCdewBUFQwNHXmyjugostbNFtOt5ED0
	Z2Vw+eCspNN4fZTDnbHn9BVEBR5r1l0O/wdthXY6rV6XA/kNiTThdYABaO1/uwqFy/gHL0OdaVh
	1kXqHfFkTH812KvVF8Cj0BKkWJVbT0LUGkRQI2q+tHtlsTwa3BC+l6IXu8wPyOmWh
X-Gm-Gg: ASbGncv0VTldCUf8TDnpDG/xxNZlwJox2OomP/SZSCUcufmDYYRQMPbPX1BwCPGi7FZ
	QB6Rg+R0kFsEKUmYFjoIiEa39XyIuGZMAdMnNyUeKNg1tZaY4Jk8vyjR0XPZG/c1XmJFKAfYG7W
	P/FnhpFBA9X0/Mav9hDxwbsdMOnvUa9JphQoCZC0QKRM7VJzfAipPDtbtENO7btpX4cy4D1lfou
	bzDGbZnJvsFiGWqXSo6LaieR56Jxb0BV1uUUoF8GEci4oB+piGgQyyr7c1wxt1FF2Xu3FfJQ4/E
	LIkxk/iELyXxuySw0CyJGOKo/OYCb74/2X4QcvVZ5/F/z5EtH8rHLh0n9t7Gx7zhK8ZEOXsmBf9
	B+Hk8y/7vxstw0IFFa3slo69IB6M=
X-Received: by 2002:ac8:7f41:0:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4e57695639emr101645491cf.0.1759752394851;
        Mon, 06 Oct 2025 05:06:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGL5Iaw44FNavlmz+iujGEn4Rtr8EjnBdm2ElAhoWxAuwKxOPHJ8yJ2UwPQnRwz4KKHIwtvMQ==
X-Received: by 2002:ac8:7f41:0:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4e57695639emr101645031cf.0.1759752394248;
        Mon, 06 Oct 2025 05:06:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3b6927sm10231021a12.14.2025.10.06.05.06.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:06:33 -0700 (PDT)
Message-ID: <2ce295a2-586c-4fb7-ad10-3c7734e1f590@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 14:06:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 0/9] Add PWM support for IPQ chipsets
To: George Moussalem <george.moussalem@outlook.com>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-pwm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Baruch Siach <baruch.siach@siklu.com>,
        Baruch Siach <baruch@tkos.co.il>,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Devi Priya <quic_devipriy@quicinc.com>
References: <20251001-ipq-pwm-v16-0-300f237e0e68@outlook.com>
 <175936202881.2426650.1624694657690403545.robh@kernel.org>
 <DS7PR19MB8883CF5D3DA8ED32B6A919449DE4A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883CF5D3DA8ED32B6A919449DE4A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX5fguTU4bdfLr
 e3nJHouWBihLVQQkrnFR3J+jpywe6SSXlzq6VsRT/0Z4LLP4ittFjzqZnSyl+j52ACmBeXNqlBM
 QkpCGC2Lb/EmFnBbClAX4u4yvZMwkcH12uNKtTSL2IIQzA0epxwuKRuVM3EC7mglK/BPkd6tsls
 pQsx8UYB3dtngQHGVClxYeH0vR9Wnm3H78De25acjDACqj+7aG2U6nHE6XV77ObY1TgCSutOmuZ
 YJwGRJjwiZlaBokswu9YM+5nUfvg4Wovqs090wtsX2+kdclh+mP4fR6YC0SmrvVvtwypxcMWVVw
 KAmYnyFSDpx5lmahGc79goyYoShAYKlp8qoxg7Eet68RXYZftPabxlqzVZ8BLtJnTHpAbTJIGkK
 Mf88RIXRrK8TRKWfWq9BIuenGds0wg==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e3b0cb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=2C6YHBdLAAAA:8
 a=v4cj00jlyj8MMA1A80cA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=yxGMNg53M24zlVSZdvMH:22
X-Proofpoint-GUID: m3Igq6b74l9yPfFsdsqdxsGaS3rGc7sX
X-Proofpoint-ORIG-GUID: m3Igq6b74l9yPfFsdsqdxsGaS3rGc7sX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/3/25 9:06 AM, George Moussalem wrote:
> yeah, my bad. c/p error as I moved it out from the TCSR node.
> Ran dt_binding_check on the yaml, did dtbs_check on ipq5018 so missed it
> for ipq6018. Will be fixed in next version. Waiting for feedback on the
> driver (Uwe's?) and on the dt bindings (Krzysztof's?) for adding
> additional compatibles. Will then send out the next version..

Please see Greg's note on top-posting:

https://lore.kernel.org/all/20170823231800.GE5193@kroah.com/

Konrad

