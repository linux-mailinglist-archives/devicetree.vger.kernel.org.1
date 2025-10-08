Return-Path: <devicetree+bounces-224507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B6EBC4987
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:38:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E79163C29CD
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412862F6581;
	Wed,  8 Oct 2025 11:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cWBYwcD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F442E9EAA
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923532; cv=none; b=ei25DpwuDC6Nxbo/0VwwR6UwJaqMxfKmM+Zh3gIcH+nboupzTJxWI2szcLNyg31Uzv1sROE+mb0bP3jBicfj1V2JfXa/jHd68+Lo49lp+KaCJKLxQenks1fH5N5i1YH4vD7QAkr+C+r33osfMuCuTvhrcle4/6/3mWI9ORtJUms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923532; c=relaxed/simple;
	bh=6cCF2LvbGpbslhl10HwoVuuROYSKzmo8yAWwSaQlewY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N3vX27LlhJH5wkeYXhgtvUppUxsyXro/84QchQCqCKoPaFDmjWhm3ezLwDuGtVTE0fSJxjWEmDsxq/5rrOrjGuGetf8R2/k1OemnuO/so7QPTKN9IrSOe9j4uyYm3Q5liJfwAICP/IieWo73Zll/uHAaGwjzaqhNlhCsyQpO73Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cWBYwcD9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890O98011742
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ktF9PzCzZcJEY3eWTWWmqTdv5VI7UzhEYtnCUHGqeRM=; b=cWBYwcD941nJAH5m
	5tJXXvUAOqWfhkRWM2SV8Xiib7SYanDX7hnzdxjAsa4kgC3aylWwMNroFJpPwxCm
	b7fCISias3S6C1jHuspaPpVuecVm5kB5X+3Yn/klDd+1jRg8zQGloPg9l3zwHIL2
	2vcQJy49UXuNOJOGSvIOpuSoE7EGbenEZo/Y/PGiBRrwEjQ4+bLs3fXBB3pRLjzn
	Mv9bO9QEiaIYb7eu7IXGtWWBDGyD9qunX8vLxyXKfB4x3s/hi5FXe/HwF614C+nT
	MzHLLQ68qMXSDYL+KAitM3fqKv8WksE2g5q15VVI/yIUZpxV+UlgEi7oqiI0mjRv
	RRL/gg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkpw3ut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:38:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d8c35f814eso16642711cf.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:38:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759923529; x=1760528329;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ktF9PzCzZcJEY3eWTWWmqTdv5VI7UzhEYtnCUHGqeRM=;
        b=r48aq4RtHaQORRmf2hp5MzHwrVSFf8OO/aTQEgFmf6uFzXa4ZQEB3b0NKTMbVoHrD7
         xfEoFdEQBDhAldgjQxUZZiWthsWYNLPfscX6FejCMRjQDLCRjpzVHVa4oyzlFiWMKb4Q
         jERZYLcAUqaXshDKwrhsFbt8gWicviXiZvIIpdq13u91L3bbgP3kDWjKuZFmV1sFHhew
         Y97ObIBMTebQLTSh7TX70JQmgTgT40br/3hI8uym2YqSFSqXwC3iIde/OF0/tl3m1J3o
         dj/dE9TQ+lUkD799bp3n0XKfEP3HE1YmeuM+Y/QtEJ/LN4gHGmjMp06+dbsuFD1Udrzn
         jhiw==
X-Forwarded-Encrypted: i=1; AJvYcCV0bwth1l/zl+8Nl+fU2F75x3QAItMICXam41PHnZhCIUcG5QAh0tXUVNjY4d40FFd404N+eoAtuKjW@vger.kernel.org
X-Gm-Message-State: AOJu0YxjtlrxNdKOQ+hJiNqEWYl2savIahqMj3bWJDH4KjPJskimis+s
	Q2n9nHeGkZf08tdjoX0qnVhjdurHRcL1NiVe+n3wmOLdyUBgFBmKHT1mi0CU0tnT3jeCfR1hQ3j
	QeAeM95wmJYceuIkk7VG54fVVolHlmD3LfRAweikgtCGE1dgZMnppkDCR2iPcyhbu
X-Gm-Gg: ASbGnct7nZ8NneUZINsV9CEJPdL+pNk7/OPn3KC+zb6d6odxY4zawh3TIG07apUuhjB
	nxNwmpTTCfvLfhyb8naeoaku+0Sa1FI/ielAtUAYOR4/9QPtaEqyuPnef+Fv6WRWLKnzEf8pHKU
	j7DsDltRStXshOthj99lvrkqnCsIM21EzMZ7JNj0mvz0k0YxeeqR05kZeNKvv8QSFIdUC+ZOaL+
	mM5e+O/0zCPxFjKytP3ecNhLnwqoFbo3wl2Jcb7NilimeeIzqDvUnDhxp2WPRBkn/lxBOxATnWq
	FwOeM+TPzASBggGnHYiFRc/rkFrZlB/O+k2B+Y/s1coqWljWCvyl4G1S0plKmOYyoFdEnU6a06e
	rHgluVWfKtRZTaNyBdrQv8AZrMQQ=
X-Received: by 2002:ac8:7d8d:0:b0:4e5:7716:53f2 with SMTP id d75a77b69052e-4e6ead4d187mr28105731cf.8.1759923528714;
        Wed, 08 Oct 2025 04:38:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxXdxXLKV4c4vK741eJCYPaC0LrPYDOhy1QH4L6lPiyVX/KVRS60uwDKYl774T/rgeiZSNvQ==
X-Received: by 2002:ac8:7d8d:0:b0:4e5:7716:53f2 with SMTP id d75a77b69052e-4e6ead4d187mr28105351cf.8.1759923527915;
        Wed, 08 Oct 2025 04:38:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-637881011e9sm14525558a12.25.2025.10.08.04.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:38:47 -0700 (PDT)
Message-ID: <7abe83dc-5469-48e1-8964-ce3377d82a4d@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 13:38:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-asus-z00t: add initial
 device tree
To: Erikas Bitovtas <xerikasxx@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250930132556.266434-1-xerikasxx@gmail.com>
 <20250930132556.266434-3-xerikasxx@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930132556.266434-3-xerikasxx@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -b6o8ZPcY5SJi7155gP2SVTR-2ErUM9N
X-Proofpoint-ORIG-GUID: -b6o8ZPcY5SJi7155gP2SVTR-2ErUM9N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfXxXUlUz8mXM6O
 /rxynVQSGKdRli1wWpyndpztSdeNUVCkKjQbPyYCjoNQN1eFRfr19qjzilnUkf+w0HDEzfM7QYT
 l+e0HS1Jhnd7AQsOe/d8mB0gZSZm7sFXwmWg3KOcTFJ59gDzrFJ+S/A70jdFCr/hz/+7oWbBMbB
 XE/YPce63fSXFXJjxtEdqC22P2znl9/SB4JLC/Q6AXQiQ9/u4WgGcAt0vgTl4NIKxynPX7jrAAR
 KAHJCCmjkGaaJV/dsJN4rnD8+4tqfEwjNGmupdNrxke0Sbzh+BYIfTmduDZlKuQeUikyNvp6RBB
 I12K/py1donrzpyhgdUKkKv181bjj6UdOFOwnQqZ1vvYwQfbqklomfHerTtu8apKlJcfp2p18pc
 FIM7FHomGic58VIuxN3v244irHByeA==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e64d4a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=wSXgXpi4_rt3d5ynXFgA:9 a=QEXdDO2ut3YA:10 a=5XHQ0vS7sDUA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168

On 9/30/25 3:20 PM, Erikas Bitovtas wrote:
> Add an initial device tree for Asus ZenFone 2 Laser/Selfie. This
> includes support for:
> - UART
> - USB
> - Internal storage
> - MicroSD
> - Volume keys
> - Touchscreen: Focaltech FT5306
> - Accelerometer: Invensense MPU6515
> - Magnetometer: Asahi Kasei AK09911
> - Vibrator
> - Audio input and output
> - Modem
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---

[...]

> +&blsp_uart2 {
> +	pinctrl-0 = <&blsp_uart2_console_default>;
> +	pinctrl-1 = <&blsp_uart2_console_sleep>;
> +	pinctrl-names = "default", "sleep";
> +	status = "okay";

nit: a newline before 'status' is customary

[...]

> +&tlmm {
> +	gpio_keys_default: gpio-keys-default-state {
> +		pins = "gpio107", "gpio117";

pin configuration nodes are best sorted by their pin number, please
reshuffle them

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-nodes

> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	imu_default: imu-default-state {
> +		pins = "gpio36";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	mag_reset_default: mag-reset-default-state {
> +		pins = "gpio112";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-disable;

odd \n-s in some entries, please remove them

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

