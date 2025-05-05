Return-Path: <devicetree+bounces-173541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2C2AA8B72
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 06:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90D661890B99
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 04:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78081A3056;
	Mon,  5 May 2025 04:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RHomb34U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6C01A070E
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 04:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746419409; cv=none; b=QS7eV53yPwe/YfVM3GEBq500NRgGo1Csede4kDt4njp2xsG83tUk38xiXZcEWVvhMlzYJ9/GCvMOx3qp4cLgH+Ogj1L3wmHnAWENFRfr8FippdGdyh2LAckhASTY6oiTyhSk57bCWufpm7FfYpl+A80lwlUw+XBmbaU3GFyaa9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746419409; c=relaxed/simple;
	bh=tat/UdOeVW9y9E5UvXaU8Epq8XucIiru3S2OvjCiOjo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LF3FbpUkro0psRXblbkROXDbBvvooPhqAvxXSODsdCUbNCCm3k6PzVI6oab52mm2CSyqj3MDhblO9RXpypftHgMDS9562W77sevjR0EfKDztk5pzRtbeFCVJrrSETcgC8vwSbVxjhWcEYPyB90++0zqPEazbSQT8mLX00iEqAmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RHomb34U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544NN5oc021369
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 04:30:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RT+Thy0QvLCO4okTddVASjhzNC6Tj2+mPt9xU6TKuOo=; b=RHomb34UiVgOC5K2
	9NiA45A56iqz7xDXjr/EgzN5mTO0YQrwnUff82B7vZdBGBmKjYIKhOQnXM+MlMN0
	JNlWdgKaQD4owkq5l/rji1iquiF0QWFQ+fR5pZdud+5+rzM0C25A8p/55k17Hzso
	C3oMjQ7rjfbM4F1VmUBSoXmEU8GLHTbSPEPJRDPeoV9ILgdqTSR7RhqF8Df11Ne9
	s+xfInsU6X+pzzRmwDFGRx+17sm/5XRa5vnvX6IN6kiUdXkKNAlJnc6xQYtXC8hF
	X35gXKhNkgSmUhl1jAg8t3TD5noIwbZPWDvgwSr1xnxMsDQxh/IAyqnBHljJO/8S
	Tio9EA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da55tygu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 04:30:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2ff58318acaso5872541a91.0
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 21:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746419404; x=1747024204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RT+Thy0QvLCO4okTddVASjhzNC6Tj2+mPt9xU6TKuOo=;
        b=mztXXpbj4mzZAFwpe38PJHSWYCV00Yo6/OTUa+1ywcFyALwDdgTZRSMlRfxIfkd/6F
         9AM2IhKguoLIm+wQ3v6mPYoZZIULPlem9cDxz1h8hy9rrH5mX+etQuGR2ySL2K3jsZc9
         Qe0QVH8OmCTPFiXSefn0ClRId3BWE6uCpJJKwKCL/h3ay3XxMkuHkz2t16xCE53lR4oO
         4k3a81znFrqe5efEr4r2M+HoXe5a3vSgJlnKjQwkiHgoefegx0hsmzs/USw2gPpiU94j
         gsV9YcpMQgH7qEA//nNRvB3jpWIZj4pSLUtWCAvOHf6v88Ni5/HfR39lwLAmf61FBZVN
         WPZw==
X-Forwarded-Encrypted: i=1; AJvYcCWsBrtmgJs9wwvKFOeNhFGh96BSt1ObOjuKaTn758Ee7kqy1A+ByZAbvl31B8CbbqnzMiuUTynIlYxI@vger.kernel.org
X-Gm-Message-State: AOJu0YwzFH/AKawfDKX4D9nS43N6bt+1J93+0XO7l5EhFuM/APLsZt0c
	V8PEGtfObFW1NVN9C2J/P/1naZiEtiLAASHFBWWd6tgqu09LZ+AEoNi0AkDXXahUiEE1uHrqEbm
	D/c5BPpx3MqmnwyPbBPCRsa4W8yIBSgpgT87YCwNqC9tgqY+BDKuRwtczjJ+C
X-Gm-Gg: ASbGncsfF3MfAe/uZroiGGme4FbbeBlqrlslMX1QF/fVbHj+U48Nj4Bt66XET/3Osdl
	YAlmQlUCcT4jziu1GJUZRQLc1ono8EcFTDPq+ywcJkSvJwrXtm0iLo0lOhgp9wjxb2PONe5wrVj
	as94foB6/exeRjsl5BJZ0rCT5vcIvmN1VHx1jaA1FxQycBIRf/RrISOz3IpjQdXSIBg+rngHazy
	nLETeqoGgNErU+6TuTMFw8Ewjj8WNEN2VWT15s9KAGSXwH5gsDjCd0maVabmm+0OiyRMb3m8r81
	p7nm75qSVXS4/l6oVtb2QZUWHk+lrR+fDnBfG7ql
X-Received: by 2002:a17:90b:3d50:b0:309:f407:5ad1 with SMTP id 98e67ed59e1d1-30a6198dbf4mr9352645a91.14.1746419404075;
        Sun, 04 May 2025 21:30:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqUmOMTDYpmv11950TW1BS1e0LDkivXBdXi//Md6qRiIa4KrFjTB/t9ogC6F9TPBb4UttJXA==
X-Received: by 2002:a17:90b:3d50:b0:309:f407:5ad1 with SMTP id 98e67ed59e1d1-30a6198dbf4mr9352620a91.14.1746419403762;
        Sun, 04 May 2025 21:30:03 -0700 (PDT)
Received: from [10.152.201.37] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e1522f8c1sm44772135ad.246.2025.05.04.21.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 21:30:03 -0700 (PDT)
Message-ID: <3d03e70f-b1c5-48f9-9aa4-421e48ff7c7f@oss.qualcomm.com>
Date: Mon, 5 May 2025 09:59:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 2/6] dt-bindings: remoteproc: qcom: document hexagon
 based WCSS secure PIL
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-3-gokul.sriram.p@oss.qualcomm.com>
 <23f0efae-9d37-45cd-85df-7122843fece0@kernel.org>
Content-Language: en-US
From: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
In-Reply-To: <23f0efae-9d37-45cd-85df-7122843fece0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA0MCBTYWx0ZWRfX96KKTl7xSIei
 FFfP11fFYJzPdAFQ7ylfjbYLIrceJjMfsZmCAyHUc+S+qnc4gXX1WvWU8rfITlLQ0bTZvO4Z8sW
 VUJFfhP5JngFbNgbiU6ayjhNbSKDMMCylEb06swjBtDf6WqLWe3mqojcle/shJGnMdwkeZIxgtH
 Z1ua1pmVpo56xWXUAo1CJV3HEXdABoVF+lO1OHyHRDSiMG8NEeXLKlFaH4dmgBGYez5i/WanfMG
 l0a9lgSFXdI+7Q8JfPQvvChVTsdYOyn+3XBfG2OLvJl1sQFyc29gW1Ov49AidIlZMdmZ30sauCS
 uk4+YWZE3w8NaP8V6gg6+2lIoWJGTZvpEkzaNcl6wvUPFR44QxEjCPhAtitG/f9ew43hfDHsRF4
 2ZBFDk7wnahF2FW/3jEnXa/M2M3rRCOugcI82aBkoWcwv2XnO+4kQxdflpsQ9P6xBrRTdiv2
X-Authority-Analysis: v=2.4 cv=M9RNKzws c=1 sm=1 tr=0 ts=68183ecd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=lbk28AChQbnHTQvtX8QA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: BvN72JOdktxQ6KrUmYopOJC2-IHHHMmb
X-Proofpoint-ORIG-GUID: BvN72JOdktxQ6KrUmYopOJC2-IHHHMmb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 mlxlogscore=794 priorityscore=1501 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050040


On 4/25/2025 11:52 AM, Krzysztof Kozlowski wrote:
> On 17/04/2025 08:12, Gokul Sriram Palanisamy wrote:
>> +  interrupts:
>> +    items:
>> +      - description: Watchdog interrupt
>> +      - description: Fatal interrupt
>> +      - description: Ready interrupt
>> +      - description: Handover interrupt
>> +      - description: Stop acknowledge interrupt
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: wdog
>> +      - const: fatal
>> +      - const: ready
>> +      - const: handover
>> +      - const: stop-ack
>> +
>> +  clocks:
>> +    items:
>> +      - description: sleep clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: sleep
>> +
>> +  mboxes:
>> +    maxItems: 1
>> +    description: A phandle for the TMECom mailbox driver
> This is also a new property.
>
> Phandles cannot point to drivers. It is just impossible. It is a phandle
> to some device (as in "device node", but we describe here hardware)
>
> Anyway, either drop description if obvious or use simpler form:
>   items:
>     - description

ok, will update. Thanks


Regards,

Gokul


