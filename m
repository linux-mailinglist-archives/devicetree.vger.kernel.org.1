Return-Path: <devicetree+bounces-134773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C4E9FE7A2
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 16:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30F203A10CE
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 156251AA794;
	Mon, 30 Dec 2024 15:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fp+hDUDN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912391AA1D0
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735572918; cv=none; b=dt2GsxPkRjmr01fmiqS9qGG8bRgIYnPMxuSB0/dFs/yQTmrj3W0WV4Q9J62NpeMLgE/ONtJZyhI9f+FUmXMbwln/wvdCBdXNDI4vBdjSdhFgIL0KxWCccfe2+loJt+YcmnQBIt7Ze+cSKu4wylew/42sDA1I7t9P+NgMMKRFbmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735572918; c=relaxed/simple;
	bh=AiwCry3Gs5B2dJI8QUl2J32f9NlIJFvE4utMRo1+AwY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oxq7PY+dp/1vepZtCNZaSiqtczk6BT05eyjYbrcEaL/CA6eZrCiBFRc2lUF3iDYbmh+NHI6Knb6yxw83LA7aTxOXG+lQ+nJvEBv3utSEj8RdohCWslmnSL5jYwJFFKS6xcY5rOcWVFaIph6c1XZW0NjzdWH9DYVnMEAqZO1NYds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fp+hDUDN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU5RsIb004941
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G6DsLmKHA3xw0Cm7uPlNkuGtUtB9kPNcRYhw+UIhcf4=; b=fp+hDUDNq07NgwZr
	2nP8Tf4bLReyqM2tIfHJhIFM/fgdX7wGUQqMElm/vT0XDTEu5e0tpfqaVx6VkF0b
	HkIXusfY1vlOqeIIHXE1p3awYsDnfHyg9GUogTV/ks+4pXMIG5Uud80D3RTVxaJ+
	Vxr9jSOLE3uznCbhKH/OQ5g62Gr1xV3K2pfvArTwtIDfuqssELvWvUAG7Z0n5bXK
	H1A3RtpPZ9w/j1MoRN9HB6ds2AOT8Y+dz7SRtx0zFdFMl549WAhRZUKe4TKkBa6R
	UZyuclwXuuw527eeYqE21j91cinM4vTQ1ab9yU2bYKuBn4HobAg0qVZtMwyutCob
	8ulBXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43und2s6t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:35:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b70df784cdso46511585a.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:35:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735572914; x=1736177714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6DsLmKHA3xw0Cm7uPlNkuGtUtB9kPNcRYhw+UIhcf4=;
        b=FkiPnzH8yJgJzovp16ykJR/nvt/kZ2BrBbcoTddT+idgt3Il3PYZn/jdaTouovTtn/
         TB4JcrEB9VQsPbOszAwyfRSiiF4JXHa0WI/RuwOFydbG/u6OBBjSRFVpzbHa7SBatvma
         xtd5WUNzdEmI/16g4rYYCdiohGCKkUFe2JoczzkgHz/9qfQ8hmW9wZf1aQS46wGo83Iz
         i6E9RAY9KVFJ6uk3MHavg1tgXgepzbBjsxo9h/E8whaSioisL35JfOvr+JmxZj0j/fwa
         Q0isMRxX/Zv64vLWYwmTqT+zrQ84pSm006niHPdIDm/odkV7d+NTLisPH5g0mgQParmg
         aZZw==
X-Forwarded-Encrypted: i=1; AJvYcCX8AnIWU6I9D+5MD/Py0uqQt2mA17HrOZ6u3unzgVWAxeLiS5Gz2HQgB8J5/rqXFnVGLxr1k8DEcEr0@vger.kernel.org
X-Gm-Message-State: AOJu0YzaPSCRqdM9Uhve2G2TKzKPTz4P2SzV80xe35SvcIoxobYDG2oY
	8BfJDG4Tteqt9a6icdynQ9yh3kSB0kg+z8F5LohtO1cqXyd+my+3N1Jh9hqCjFb6sk3C15FuAfo
	ucf131DpV9wXIs0CAcBvMe9awueVIX843w/U5JRtBDjSiPBWc9ON9L3yLDbaD
X-Gm-Gg: ASbGncv+z/yQ8aH6HxV9fygAEmWbeKNl2XBDT8L5GDlTDybDl/U8O5tNmbLkd4jDG7C
	5aRrZaljPJrXFmnYHAdDRo8uyViu9M27m/w9RyVpHxZHXs4iShuyC/1lLscXe/u5s7JaFP8+jCq
	6HrWtEDbWTNb+Vv1IIDE3oNXVqPWrBNlkRTfIbHHRP+FqH15xVhGJldlRJLQ3EWYvtX//QMsSOU
	xYp2b1kKKe+yiJNW7TGKfyIDWyI3gg3pySt9OOSFg2r10MPab8dyrOUlrgtJLsGonTNkJSCOSIB
	l+6h373hG0d1fB5fAVdtbI14Q8Pai/ac5Rc=
X-Received: by 2002:a05:620a:2495:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7b9ba7ac3d7mr2226556285a.10.1735572914539;
        Mon, 30 Dec 2024 07:35:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgqkt0UOCFDb0H79bXWrsGewT/tB8O7wJMdc1uf2zbsprFuC+EnDk1PAr9Hps0gm0QaaWaMQ==
X-Received: by 2002:a05:620a:2495:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7b9ba7ac3d7mr2226554685a.10.1735572914162;
        Mon, 30 Dec 2024 07:35:14 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8954bfsm1499953566b.60.2024.12.30.07.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:35:13 -0800 (PST)
Message-ID: <dc6876f2-ede8-4105-86fd-fd7060d9e7fd@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:35:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/6] arm64: dts: qcom: Enable cpu cooling devices for
 QCS9075 platforms
To: Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-7-quic_wasimn@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241229152332.3068172-7-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: a-WiuSNcu9to__6mVJ867FFYpE-ZGXv6
X-Proofpoint-ORIG-GUID: a-WiuSNcu9to__6mVJ867FFYpE-ZGXv6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 mlxlogscore=615 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412300135

On 29.12.2024 4:23 PM, Wasim Nazir wrote:
> From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
> 
> In QCS9100 SoC, the safety subsystem monitors all thermal sensors and
> does corrective action for each subsystem based on sensor violation
> to comply safety standards. But as QCS9075 is non-safe SoC it
> requires conventional thermal mitigation to control thermal for
> different subsystems.
> 
> The cpu frequency throttling for different cpu tsens is enabled in
> hardware as first defense for cpu thermal control. But QCS9075 SoC
> has higher ambient specification. During high ambient condition, even
> lowest frequency with multi cores can slowly build heat over the time
> and it can lead to thermal run-away situations. This patch restrict
> cpu cores during this scenario helps further thermal control and
> avoids thermal critical violation.
> 
> Add cpu idle injection cooling bindings for cpu tsens thermal zones
> as a mitigation for cpu subsystem prior to thermal shutdown.
> 
> Add cpu frequency cooling devices that will be used by userspace
> thermal governor to mitigate skin thermal management.
> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
> ---

Does this bring measurable benefits over just making the CPU a cooling
device and pointing the thermal zones to it (and not the idle subnode)?

Konrad

