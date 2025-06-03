Return-Path: <devicetree+bounces-182377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3208ACC05F
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 08:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AED8816C22D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 06:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF68267AF2;
	Tue,  3 Jun 2025 06:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m4YWk38M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6C3211472
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 06:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748932964; cv=none; b=MF9b5ULp5YGdJv9tiXAB9m/UW3RwyL/qwe+OLKzrQiiwP+N6WmUesBjl09qiAQkdAeNmV1Sl16APUfF4tQE0Ut+N0uZlzQCSfaqe1m6F+gkmHdHNpigjEQc0YNRRdoi05qH79rj5+HyUC/iclPEyjHCZ1kw3nlo0vZ3TtmsTXR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748932964; c=relaxed/simple;
	bh=GN44FSpPUMryhxPjpfEqKO90JozkFgvGGpM5mOb+UyI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fulu2RxQRI01tPpeQ852k4qMhHyUP5htl5yL29xdRejkC5ey+lfSnzREThyrjYvbPwptLgcQ3VPoLe8y6Wli5EmNBC6p8OOphTNln+9cyb0GSGV5MLlWPBmMMUnkFmx8wTzUOngnUkXhppAIQnUYqMjtmnVGqzCtN30MUwB2avU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m4YWk38M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5536XDce007550
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 06:42:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FapTv+hgyXWAiQtFZ/6aCrTIGpX87fiidKCn0qHWkY4=; b=m4YWk38M+e+WaUU2
	2MNnPRd1e3Wq3UkuCDEej4pffPNTitPdua7/lMlqc2fHzYiLSSX2L9OWlyXfABKJ
	8V7kETY7JrwU3NqtcXI8b2sJseVYOpP2vPpNOJuKnfFx5PY3GKcI97mW7F/AI7iX
	jmWYgthlSteecvgmEb5Hs1H6FvwIa+9Qkk5Q/ms7l/6aS0T3U1Vnn6XGgNLSQB9o
	+VFHEt9QDfCo2QrU2uD3svK1YCFScCfVTjudGNkWv0gEUZvBCtz7FjwnLGIEDZU2
	aIf3ie8WOXDf732HT9jP+8P9RYDUjxeRlGUT63+Q4QOjgT395KOxJtUzsd0IFDjn
	/dXExA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t9mm1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:42:42 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-310e7c24158so5160432a91.3
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 23:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748932961; x=1749537761;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FapTv+hgyXWAiQtFZ/6aCrTIGpX87fiidKCn0qHWkY4=;
        b=imuX5U4KDQ6/AOxcRiYKgSFyKlfZ5l2zpbM2SQcKYQ/Fakwzj+m4zekUcFtgQJg3A1
         a9WPuBlM+DskwdsxvdVtYzn1+SVojQwHK4RjjTsvevR6v+zwM7i1jiXDFJLzxQdi2nCe
         EePlsu1JGHNUudthOSfqr9uPUcv2LCvOUdRvhgi5wb4GOWzs8BgZzmCXyR7swjignTVK
         os9qClbbpquWry18PEZmJ8wjtKXr1YC0ZmY/O3oyvFWdq+NhYlVglZRjxiifLvxQOnbn
         6gL8KNNPyQPNn1naAiVjyptkFlTO3lzyM5BMcueRArIWWo+iyRutPDC4Jnovu/Q93lup
         wWyQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+3nL7OrpUshxeAipjMg/lu8pJozEI+j2TonYraiBP1HzPzXrG2Jy2agmTOQkQkHIfOa2FNd3WSex0@vger.kernel.org
X-Gm-Message-State: AOJu0YxrrMjxPAVkDSNknob1qKGLl5sjm+DbfBQIbGjHfeLc7DMQbMSy
	QQ9QEiROddfSuHVHCgwkesIEKqobbmrfzr736fjopEWcfDZCssIbnsP/5pRadO9RqIy0q9v8gby
	E6uOjTP6hjDbM3WEBCvyW3rlO+mV/8y9xeJAgOfTD30FIZ2ICVE6SDAuGxTcmDiqd
X-Gm-Gg: ASbGncuhqTCqKwG0fgkoE//5vfFa+2V6c408/5BMAe1HEllpk4yJnw9D0Nk2yV78853
	8NRsIq8UDdq8qB3uYlgRO6eiIMlEbNZm5MT+VRKj64WUZQ9c9GJ4qHHCzpklLbH+cxEnQcQw8UQ
	xX6Fy0Rj8+rCDFmAOjq8xPWDJ/fmcTR7tsdVg88aQaL5aqhNRSpmvudYW3vxZ68/ViANpXR52NQ
	uo8x2clZno0V1dNXw9TclJwitzdidVl5tYVzoDtOGJEoWuxEU363PWd1ea0btuc6rNU1Xf3rKEE
	qW+JxXfk63zGaJzia09ydTdux1n07mlzzGEsaJCVQnQZl1LkWbGvBNB3uLUqL2Q9V8x6FECW/j9
	F
X-Received: by 2002:a17:90b:3e89:b0:311:af76:35b2 with SMTP id 98e67ed59e1d1-3125047f1b0mr18780913a91.30.1748932960973;
        Mon, 02 Jun 2025 23:42:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGVU9kEh+fJEWFdjM3ozZfG8ZXX9JAQnIZMnanwAHvQ7aYTu3wh5QiNLtgU2x8tq/oYaLaBQ==
X-Received: by 2002:a17:90b:3e89:b0:311:af76:35b2 with SMTP id 98e67ed59e1d1-3125047f1b0mr18780895a91.30.1748932960527;
        Mon, 02 Jun 2025 23:42:40 -0700 (PDT)
Received: from [10.133.33.127] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2b67f4sm6603856a91.3.2025.06.02.23.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 23:42:40 -0700 (PDT)
Message-ID: <14cba9ae-e3bb-46e8-a800-be5d979b2e06@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 14:42:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] dt-bindings: soc: qcom: pmic-glink: Move X1E80100
 out of fallbacks
To: Krzysztof Kozlowski <krzk@kernel.org>, Sebastian Reichel
 <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-6-9e377193a656@oss.qualcomm.com>
 <4e093835-af3b-4a84-b42f-fa7d3a6f60a1@kernel.org>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <4e093835-af3b-4a84-b42f-fa7d3a6f60a1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA1NiBTYWx0ZWRfX4OO3rx1/NPly
 7fxUBVb5otkfqeK9zHhHfiyX4ZtemtbKKtkTsBzEp0HHD5lSE6B8zQuE93uGb8yEb+35XSrbRIW
 qlXOdBA3/bduAG7g4obWfvvsjHbe5wO9+0V/j4BK+YCyauww8aUbN5/KkDPa047kCS7iy8EfvHg
 ro395SJbqP0UxIawGC+5/Vh/Z5OqPN9gdz4ifuHf5kNJ5AAVme6d+RHiefAyxQmIkL9n29AnIqp
 uI8NAJZB2Exo/nz347g8x/qz0vyT94OGKt/cRcfht+hKEYFTmLnUg+tRZkERhpNc/pbMxThfpXj
 kPbDb8Xv72VmeMOHO9A/Wfb2ZyJsiHof/fVZwEUT4KqzP7BRD68pLIvcEsFuQfTkkRJwKRgQe67
 IFSBnR9SaL7rgAOlsvRDui3+Ez89U48NDhLqI80Vh468LFX36lfj/dUz6be45F1K/triV8Gn
X-Proofpoint-ORIG-GUID: ec3ZSJMR8F-3VKwrcz8ETO9eFm2mxxPG
X-Authority-Analysis: v=2.4 cv=OuxPyz/t c=1 sm=1 tr=0 ts=683e9962 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=kUhqu5DrlFyasPmHbFAA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: ec3ZSJMR8F-3VKwrcz8ETO9eFm2mxxPG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0 mlxlogscore=805
 lowpriorityscore=0 spamscore=0 mlxscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030056


On 6/2/2025 3:40 PM, Krzysztof Kozlowski wrote:
> On 30/05/2025 09:35, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Move X1E80100 out of the fallbacks of SM8550 in pmic-glink support.
> Why?
>
> Do not describe what you do here, it's obvious. We see it from the diff.
>
>
> Best regards,
> Krzysztof

Previously, in qcom_battmgr driver, x1e80100 was specified with a match 
data the same as sc8280xp, also sm8550 was treated a fallback of sm8350 
without the need of a match data.

In ucsi_glink driver, sm8550 had a match data and x1e80100 was treated 
as a fallback of sm8550. There was no issues to make x1e80100 as a 
fallback of sm8550 from both qcom_battmgr and ucsi_glink driver perspective.

In patch [5/8] in this series, in qcom_battmgr driver, it added charge 
control functionality for sm8550 and x1e80100 differently hence 
different match data was specified for them, and it makes x1e80100 ad 
sm8550 incompatible and they need to be treated differently.

I explained this a little bit in the commit text of patch [7/8] in this 
series, I can make similar description in patch [6/8].


