Return-Path: <devicetree+bounces-132880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A13C9F86DF
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 22:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83C6516C64F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FFC1AE875;
	Thu, 19 Dec 2024 21:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XG8ri+B/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30F91A3A80
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734643536; cv=none; b=po03/z8Lefq/NSsCpKg/i6cOLz61y0UXdU6bv0CI1olxzjXTvCuNBDmiBXVV0LX85wZh3Cd7MVw99atmMohurmZgfw32hUEQFQhr2V6KkHKOg1d5MHNxwhmx4ywqv11hiZ2sfRZyOtwr3fEEUzj5qEIam+k0yGRgbQkFMyjg+3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734643536; c=relaxed/simple;
	bh=8slQvS2w/upG8XcObGxk3QkoQhnf4VuuON6Sm7XmvSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k8zl28IhTj1/jvPIhrltnQ+edtwDCsk7dKDqB/Ob/YKbfb8Kfsp+T5YOSOB9TK9YcMkOe6v8jnjQk7Zb/kr2Rh3tOLl2z+HoVIEG1Kd4LWPWhA4PsU0IY1SX/+esCgmG5CIpeN2D/3Y+zUqfYSHOCjgUf07PkJpWPEEbsxjmDr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XG8ri+B/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJGGkag011025
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cGc0Uw2HQF7FA2fB+lXZBAhvYnwlpJitKkltHLZFEDs=; b=XG8ri+B/xmyVbOSr
	TAFToiaBrUAjlqq1cg8cTGJ7XUy4L6kF03zLyxEVowvfM7hUCYbaS4nP1HHca3gV
	Lmgl79YPlaQRlVQ1Z4kV2Ct7H9OnUIrhwfNKUIulwPBxK7jPTtXrS4QJIWIoq4Dg
	0NsWdm2IlQ2qWeIW077zWbsKRpv5JCEMJ1PSx7z4FEj1Y/9kkqJK0E3RfKTPIWTu
	cntDU7gNxORKzHtGcDGScX+psh7G2uhfuFYo4CUVbakpjPmSQ/gyclYf1PP1xaRu
	sqCxBUULKCopAG000tKDTUhmmVyemzENnC2jhDJ8Sv4t30yYQp3UdC6kRLIJU4hc
	13ajcQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mpvagq2x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:25:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6da2abe1720so1950906d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:25:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734643533; x=1735248333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cGc0Uw2HQF7FA2fB+lXZBAhvYnwlpJitKkltHLZFEDs=;
        b=QOyeJu3XsyAeopZBQEXEs5iu61HBl6kNy0nw7Tpqf9BVzH3sZcra6FVSvR07hVzQhO
         o1pl9PInIAgfysjX+YnH4mWzz40SBJO+hwWdPC+5oQBdsIMb4WiqpPc6FNhe80pO/ihY
         SVUVN7PJJqhvviH6UOtLqmWSsnLB7YOxNDZf6E7DN4BThD7vX8ro7PiwRxhad0k45gku
         Sa3zkbIWxx4QJJUAlr9e07Jk/ERlBv+2CoEkQbDYRYZNTBqiyvQkht4AfpXq5muweH7r
         DJuaTmHhFlu/yEHMn0k4Kx6EPnXzEpticFbax6n4Hf9Fi9ZRFlp7xbY75znpU1dmT05j
         wlmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv9CHLAIvHdKdFG3wQwc2ZCJjLsryXkSH7Cryqmk2a2fnv7vQfwTDlvIt9wJyJ5Erfd+q1fINWCiT8@vger.kernel.org
X-Gm-Message-State: AOJu0YzaBrgoqFOS6FSp1enIRL3qz5JRlIct9lQADpgEEuRzXtA1Z2Ox
	Kw9S1tqCaOY+wqkDyeMxvFdR3l5/5CQ1txTu9ltp3/3Jx6LiPtjNpd1oAF+xu9iDLC24rBhvPTs
	cpqd2dWIusueOAZpLuIb79oo+4vQqvFEh+pKulxnNXtAKanpMMMN6gzrQjN5d
X-Gm-Gg: ASbGncu9PxjFWkgP1IBQrZYKSu+QNr0w8JTfgCkqmT4t7e3KiSFZgUP53DsK+qzCT4P
	aw2sf4Fyh550HBnIzWvz9QCHJaBlg3kXm3m0wnbFqu7ws3avDznnP37l3Vo/9hLLx8NPnuH0Yu/
	RW+bvUmnU5sQcJpz+XICiHQYgyuYUuealQ39Qa6RZUnVpvjjdWpHNTKhMQNTkKzadLlyDh9zKc0
	T2Yim4DO+PoGa2/V3K72ailrvcKiOO1GQltmUy1AonRZ4deokM0yiQW/qL7f53Bulyro0HqRzMR
	xvitttELCAkwiR0LGD9hrBp1giPqFa1QXHc=
X-Received: by 2002:a05:620a:240f:b0:7b6:6765:4ca2 with SMTP id af79cd13be357-7b9ba7bf91fmr22452985a.13.1734643532761;
        Thu, 19 Dec 2024 13:25:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVsG0EpsxpToxiwu1yQ+bJZVFwl7F4KFuaL/4r6a4jGHLEyVn/+obSwx2N7ksOm9c17zWVTw==
X-Received: by 2002:a05:620a:240f:b0:7b6:6765:4ca2 with SMTP id af79cd13be357-7b9ba7bf91fmr22452385a.13.1734643532420;
        Thu, 19 Dec 2024 13:25:32 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedaf9sm1053356a12.56.2024.12.19.13.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 13:25:31 -0800 (PST)
Message-ID: <2b4adb2d-29f5-459b-bd85-d5d12876f7eb@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 22:25:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: fix the secure device bootup
 issue
To: Jie Gan <quic_jiegan@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>
References: <20241219025216.3463527-1-quic_jiegan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241219025216.3463527-1-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: hAbr4Vn6FhNA_Jp7oOFbRtk99bA7oU6Y
X-Proofpoint-GUID: hAbr4Vn6FhNA_Jp7oOFbRtk99bA7oU6Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 mlxlogscore=793 bulkscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 clxscore=1015 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190168

On 19.12.2024 3:52 AM, Jie Gan wrote:
> The secure device(fused) cannot bootup with TPDM_DCC device. So
> disable it in DT.
> 
> Fixes: 6596118ccdcd ("arm64: dts: qcom: Add coresight nodes for SA8775p")
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---

I was thinking, is there a QFPROM fuse we could read on both
secure and non-secure devices to determine whether all coresight
components will be accessible, and enable them based on that
information?

Konrad

