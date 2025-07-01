Return-Path: <devicetree+bounces-191387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8A3AEF198
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39E23164F8D
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 08:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087B126B0B2;
	Tue,  1 Jul 2025 08:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LTmc355r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720B0267B65
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 08:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751359465; cv=none; b=iYQdiSkC4gH8XmnR/8u2hFdpvCTFag0CK22+E+ftJfSJBpFE3d3kQBQo0vcAHBlJVMVfpZYKY0z65emoVzVv3uHpv6GIC4Mjmui3ZBULwSBKkwmgThoMujZS3gq3Pbil5XQjqotcbJqoWmKZAkx9qUiP8he2mhxBt3L2P/k8Mdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751359465; c=relaxed/simple;
	bh=ETahjvfhObWfhp3wH4KH1j1xcBmeV7kvedrPys7wXik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t4esaMEzUQtu+/fwB6uZVPTZ5PLHkUhptLCtBZkDBEah7LSLBApfl22P8kknQDloh2p072W0FIspLw3FPL+0F+A7eRK0K/twzZ9+aQqiGHVQOPPdw/n8vJ8nwyMb3++4CXJgcWeLTllmHTfTtELkO4sEey2ExnJ1c6+rUnkEEn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LTmc355r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5614DfRO024875
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 08:44:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yf8OXMx4FGnWdIQA3MUAkQiLT+ux14ax47Cw7Z9XIeQ=; b=LTmc355rIX1vCd4V
	QbKXgSVG2hnzEhL4Ak+j0xi2wCu0JbWCm/5pLIIYILdPLgozQFThyEIW5eblLMM5
	L9Lf36yFB7Od6FdA+S29o2nLp6hv5+7sJ0PKmBqujBxy1rqHP00Lp14ZUgNp3+D1
	cFQ/Xsh9ZpUviWrYhSBOocEraKWvZGxc1sIiHXClNJ0rzX12DM5vOc8xUb25Diyx
	3e1dgAaRk4rWMOgbJry92RksReabhtN/hz1aw4ODmsNDP+TAIXq8ZkQC4IJ631zr
	D4wZ6ecxNW0z2IVmCj/7ZCFQ8r8Sw/s5CIITLXi4My0GnMcpxG9sBW2qqLCJhDsL
	aRa03w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j801ysvm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 08:44:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a5a9791fa9so12528751cf.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 01:44:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751359462; x=1751964262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yf8OXMx4FGnWdIQA3MUAkQiLT+ux14ax47Cw7Z9XIeQ=;
        b=DV71n3CLi3gTlYP/ZHr4PXs4h+zCXkwy7xsx1gKIh7ZloFdnDfWspTqQPDiWxgapnZ
         CKEMpHyWtqA8AZUp/EQ/XrSzCGT4+l3J7gcMos6qOj8ZQs8Pmuna2GEK8ON7ARcFdYbu
         r5+EnF96y/FtYFcefsCGXQeiDegonvy/SgcmX5dhUusokuBCiWsUxhsFh198a90At6va
         zH7zqbkTKC0NrvlsjgQv7qe/oX8T/rv9hGrw4ZAphAm8Bz1tOoYnIia7ic4HRFoDBe8F
         kJ2A5YiWRjaKMHfYjzeeM1WNyMeM5caaYjpEhGX+uIFQFbfycb9LBNS35RRQZNi1OnZb
         93bA==
X-Forwarded-Encrypted: i=1; AJvYcCUbdTnTe97R1ZsJJiWmH56TXtuSi26pbFDezvnGrOvfWVX6s+4b0pDTD0BJKqrgfra6TC/HzxtSb1lP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx39eGewP6DzUvy69r5HDKgaE1vkxC3VGR/1jKeVzRpfLB9mw2
	cFmyg5fLAAPrGV2aOXmWvicuzk4aPHMrwtlsD/VIsd4m3i/hlB6mgABRI06AoVgVV1QinHKPSBu
	pP2FdIeoiOGfWXhVxsFOZPCcasZLDUe/hbyjrB1zn3zFRn/+Vzy2Mz+7eDo+NbD8H
X-Gm-Gg: ASbGncvE1SlIRmbMu3vBV4CmOSlI4bB9W3eEP7CWRjNeZqf15GDz+1P5ggy0bbOfFBg
	nvB8pGXUF1psE2UOqOGCXc9fHhvnq40N3nHDTuCgbVq9VSJI69jNpzkM9GYcLYBYKBVUaHBJJMR
	pi1RCx/XEfk1RZF1T74xLMqfq1gTU0mDZXNN3Mpi/+hcuH8wAK/CrU5zUqPFFtqaVnv5jC5v7dP
	HBQwkZWnld2z2a93BNG5uCSwHXHSJmasQI5SYMT4HFOA6I19uj5jDSeZXdjw3xBAdhq50roat5c
	1U293gYlkEtqoAxgoLOhI8S8FvOzhSWzw6gmIRmutNS+XP0x4pcnmTPMx6ZEpSsOcMiOudV3+9j
	UKBtImaXH
X-Received: by 2002:ac8:5a81:0:b0:471:f437:2973 with SMTP id d75a77b69052e-4a833959521mr9863431cf.14.1751359462357;
        Tue, 01 Jul 2025 01:44:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/sA0oirRY7BnsvlJ60EVwuLrYw1JMcOwklbuCHYYyVTAZbHQKxT6zpexqZo4Yazepm+DXNA==
X-Received: by 2002:ac8:5a81:0:b0:471:f437:2973 with SMTP id d75a77b69052e-4a833959521mr9863291cf.14.1751359461842;
        Tue, 01 Jul 2025 01:44:21 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8319aef5sm7312708a12.48.2025.07.01.01.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 01:44:21 -0700 (PDT)
Message-ID: <850260dc-7e67-4ae4-82a5-5b8f5197633d@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 10:44:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: clock: Convert qcom,krait-cc to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephen Boyd <sboyd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250630232617.3699954-1-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250630232617.3699954-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3zZ3gHM1MK39acYZFsEzEQ7i3lxr-6W9
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=68639fe7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=LpQP-O61AAAA:8
 a=i-1VaULvG7sLBx-uF14A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=pioyyrs4ZptJ924tMmac:22
X-Proofpoint-ORIG-GUID: 3zZ3gHM1MK39acYZFsEzEQ7i3lxr-6W9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA1MCBTYWx0ZWRfXzHhux1Pg30Lp
 XrRUg0Ez8J5Zckm3TKqao9wlebNK3+6fIaNB6RSIURlkbqFyoefhlHv3EQ0phDvnWdzZAT1L04M
 xmcYlAVA0qhsDuYP5PeEbfDp/04IdvwkD9Hxt83B62dJUUOAN8hZVH6r6rrcg8t2DutPE4UXuUI
 kndAiKpmn59Wi/gIFg0Bs58vkzP5KdfuJJwp9V2b59oxYHJF3fNyT13hOz+yi/yQ5Kf7mKk4Mrc
 uWoCd05xRBiH+RnFsiOJbDzdhQ5qH07HlQuC1IHCmCqGvmBXNP3DvrS0I9krnXAVOPMg8Jn7PhW
 Kenf1WAs827/RP+6qw9He3ZRaIfeX9b0lN5veJboItNgxz8GLS6qBbNUAP7FdRmtnlb0nXZ0zRC
 yDXp9ITWJNX72QBkKIqqJunvoqOcs+5SybJFUxioUko7Y0kvPK4jEvI2pKYq/HFAjgwo/Jxk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=987 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507010050



On 01-Jul-25 01:26, Rob Herring (Arm) wrote:
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/clock/qcom,krait-cc.txt          | 34 ---------------
>  .../bindings/clock/qcom,krait-cc.yaml         | 43 +++++++++++++++++++
>  2 files changed, 43 insertions(+), 34 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/qcom,krait-cc.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,krait-cc.yaml

[...]

> +title: Krait Clock Controller
> +
> +maintainers:
> +  - Stephen Boyd <sboyd@codeaurora.org>

FYI codeaurora has been dead for years

Konrad

