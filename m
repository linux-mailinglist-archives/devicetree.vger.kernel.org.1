Return-Path: <devicetree+bounces-148885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C1EA3DA80
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:55:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D38D17FB23
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4A51F8670;
	Thu, 20 Feb 2025 12:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AwH+21JH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042741F5845
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740056058; cv=none; b=pYz0RLjwRmzYVlPVtiznif4JcXlQcaiLMhek14NGTvwueIvg4vwU934n9p5T95MI/h98t+BNVKrF9mNpMkOtzDVJ0E1TQNO7XSbFFaGcLJOy5IYLaojCJnAyPCBxhV9QP4S/4+xtqgO7HncMNWJvgcGMzEpQk2lThOOEBeOOXyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740056058; c=relaxed/simple;
	bh=wtysXMXEuszI0WzVDTD7fCVTSQ2uvWGULw7pEFDQ6ZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kXdGZbxzg8zXRhtpiit/yDMLObDqqwyfUYpEAlirgCdSSEypFCYsUNN0cWvtrX4v2t8e7VnS0nKYv6mnPbBWL9w0A5v4ZzPfXiEwEbcFRJr5ZwCbHxIBGAI8EH+/MZN1Jxcky9ISw6oxwOm2r7a0CPzG5/6zDIPDvurJPcioMn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AwH+21JH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K7dWwD020437
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dLlMw77hmV78xWDQ3iOlCxtFvrcHCYcUl0W3X2jB4N0=; b=AwH+21JHDoT+3XEG
	wHr3bzatROJCIaap+4cfDPuj+/BP6GLaZVrVgC7q+UKhJCXa7IkQaMqVrp5NUUNX
	Tc/XWrJM2L5W+rPy9HQFG4LNlrsn3WOQlIjPwBstgWAG6NlkFG5NXWQFmrPDTb4e
	98Nor55U9uyKy4uBZDc/ZosaiFugrarGea2rAWZsUrjA8jNlRdC91N43Ywxgcy3f
	xOfBuFrzK89aVRMlRpkjoHP94Rkx5B/9OFFpD3uWGsudp3+vgF7/tNKEuXfINB8u
	jrLJZ6vyh7wetWjnhJ3Gb3wda5S7PJZboEmK9LH119TexkQL9t5HWU/YYQ8r4qkr
	MJ25bw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44x06t0usc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:54:15 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e249d117b7so535546d6.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:54:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740056054; x=1740660854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dLlMw77hmV78xWDQ3iOlCxtFvrcHCYcUl0W3X2jB4N0=;
        b=jKN0pBIACZwpsKgdmW0HuzUH1XQ+2Tht5k7fpsoUgAoZtA74G/YtB26RK70LCVgovT
         t6UTrpnjbtI3EEsMJ7fKVVb6XflgvVvRQQgLoCpz8k3bdT6jkbfBuoUBolfIgwUBQS0L
         HsaRRWn3hCh/n5f+axKjaSkAikKm9n0YoIKP3/qjVmd7R59r4x+zXvEHdxQyNp701f0t
         0OIEhhrGV6XeAKiRGhuCuHbhOS9EE9wPENVH188fd5SxS6oHg5sgDnJXMnUx+eHiKK0j
         pe/XiX/GkwaSp6JeCOywkE4HlAw1wNTU928irYl18QogoPwH++rtbXi1Y8vlYXdZA52s
         yghA==
X-Forwarded-Encrypted: i=1; AJvYcCV1Ej902OjrTyFJlKtzHOBQPkPI8HPU9Vy8/OFK5+/e8Bx6lov1zCcpwcfTlH75Fq+HY0eS/dvEv2YI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+nufm+YSjz+8vgY4BTdgV9srOIdhaXSXODNavwZCJg2+bT3Wl
	ZzPZOVHQY9wRmYVW7q+kT7JbQDA4raIIzkVNYEH0YoAEZw9W/4WFvj32U3uQz445/8w+ItjehpT
	hxTV76J3ADdD7hvvc5JQo6wuuz8HHIMaL8EU5I9jeKrgVx7JiyqIEArCEmaPM
X-Gm-Gg: ASbGncvt1/KHd/EpNuHamBxsBT7mlhCZLAUKisD9zszAkOjMJgJNTVQWt3ud0wOCj2W
	0DHph42k+zSVFdyfkWGJPHGUo3WIyweDIBTJYUsL+dAKl92RxqiThMOX/PTrHCEnlRmmBTLwEf2
	KhBmtbkRhAxhzMZ/qS0VCVzPlefXbzhOZ+6o7Bl1KvknnXHHwRUZz0iodrZPaMJr+TZqh3Y89MS
	kkIswJciTpwKfVzYTeSAiq79GWbUbZYWKmnOH695kg341G+Kg8DhSkEZf6r8320w7fhhfbuuNVC
	p0s6tJeGDpkQH/L1xYIIQzTI6Z06a150RMQeVIyQ1bjWGgrrNI/PWS1ryoo=
X-Received: by 2002:a05:6214:21a5:b0:6e6:62e0:886e with SMTP id 6a1803df08f44-6e66cc89028mr120422546d6.1.1740056053806;
        Thu, 20 Feb 2025 04:54:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnptsrzjppKeiLuln6O8nckb7GxCd0auF1qo9TE7xd//kh2rJrmV/LSsCVduCWI14Qxlt6bA==
X-Received: by 2002:a05:6214:21a5:b0:6e6:62e0:886e with SMTP id 6a1803df08f44-6e66cc89028mr120422386d6.1.1740056053395;
        Thu, 20 Feb 2025 04:54:13 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8eea4d65sm874850066b.161.2025.02.20.04.54.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 04:54:12 -0800 (PST)
Message-ID: <9dd5f28c-3ae4-4fdb-b00f-8558f756900e@oss.qualcomm.com>
Date: Thu, 20 Feb 2025 13:54:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: x1e80100: Fix video thermal zone
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250219-x1e80100-thermal-fixes-v1-0-d110e44ac3f9@linaro.org>
 <20250219-x1e80100-thermal-fixes-v1-1-d110e44ac3f9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250219-x1e80100-thermal-fixes-v1-1-d110e44ac3f9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: um0kMqv_i1TjlfN1Z47SV3zKSwdcjkSO
X-Proofpoint-GUID: um0kMqv_i1TjlfN1Z47SV3zKSwdcjkSO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_05,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 mlxlogscore=916 phishscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200094

On 19.02.2025 12:36 PM, Stephan Gerhold wrote:
> A passive trip point at 125°C is pretty high, this is usually the
> temperature for the critical shutdown trip point. Also, we don't have any
> passive cooling devices attached to the video thermal zone.
> 
> Change this to be a critical trip point, and add a "hot" trip point at
> 90°C for consistency with the other thermal zones.
> 
> Cc: stable@vger.kernel.org
> Fixes: 4e915987ff5b ("arm64: dts: qcom: x1e80100: Enable tsens and thermal zone nodes")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

