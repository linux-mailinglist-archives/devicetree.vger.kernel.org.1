Return-Path: <devicetree+bounces-189022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 442B8AE6652
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10FB3189647A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E08202983;
	Tue, 24 Jun 2025 13:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SegW1WwK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A002BFC7C
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771556; cv=none; b=W3aIpsp2x3u0CBU957HUWcAgWEfk8qwN0TYON2Wlg9qnkqx+gkYqqsjuiiYiQKZVsEg9GOCPCG5zIBGXLQY4G4dUVFcAA9U+8Yh0hmwlsIeOfHNOMURB3S0O1GHXo9Y07gu5qXbuovlumvMhf/6AHsz3iyWlpcZwCVs65lBinBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771556; c=relaxed/simple;
	bh=PA9hvTAzLsA+usJ2+Mj9NJkIcp3aM0mxLM2JBOJeV7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TwM8pFZrprXSmg6wnpy1Ub3YQSBsck2xKA86fSfdJcDrYBCnf4L+isfdt1+Tsj0PTgpPImTsM7RCm3qZ5rnFUC0DGgcTMnZG7NFUM+3RHmJj+WxDwPiq6KDFcy8zK/ikBXyjvs19+5zBknfkREugZJEXFnEzuh1opbDaQ041BVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SegW1WwK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O7ncDi027614
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aX0gtlsQln8GIpy3r5I1Qit6u7+/jH2GtkFLZXw6FzA=; b=SegW1WwKU9Kssmxr
	AxAzIAxHfAatYoHopqw50DZKx/SKXVX08/OIzIXOvFH83bedTMWuDm4OWxYyxXjT
	um9eZ6D5jjzearI9IN0x6AtH2E5dgqOcrT9zrGZTm+a8+XwcFIWEgUT6aNjP8FBj
	ZvLQGXC7B1izxwNaPCed8dzeaTGKp/tSvg2ALhMfUrcxkwm3MH2ndeiFUAAq8Y7x
	MzBf1vRZOG45r1aa7VWTIGLAM7BKhwkyjnD633zDniPYvZ02MRPiLQS19BI1kM5P
	dzWWh1VwFAM+qGHYOdZIPcfhHrnJyyYSuteGnk3f+j/WshOtV621ROYN6pSwxeMY
	nYxZHQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqjqc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:25:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3ba561898so96400785a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771553; x=1751376353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aX0gtlsQln8GIpy3r5I1Qit6u7+/jH2GtkFLZXw6FzA=;
        b=TI3HybFZW2l56cErnc5C6nAACZXZmQvy0vFvLv63sHlZeAguFIai0EnmsPmU3jm0NK
         bnGWYELafkRe9iXBv0faJLvhDWjjYXPlkW3jSnYY1htiMJLtQSvvPYYgrZGDSuca2nQp
         iKsUuXz4xJHiKN0yrRG0EJSD20jYjc3f0DpM5pGyla5aD9rBEEqffoNFr1RqJyS0EeXs
         F4sLFma4uEhBOUq/vsPe7783E2YmaNvJgngLG0RXZY2qLMeDocaI8+erbPHWsO2fOfMq
         sQXGYX1JXxv0c2a6oCfq1iaePV2KQ1v44ZQ0atYb/U8RtenrcoVZsi7ALf/QV+7klU0y
         8EyA==
X-Gm-Message-State: AOJu0YwAaDrmzWDM6hdZbCMM0YwQCVcHP6yJpZbWUdbXkEn8Pmc5Ee9V
	PgYzq11+nQk3uTiTpMKZ4W5sIdInswFdBdDy5P2pAkC5mVkMekkAp80nqyQ1HCiPo+2+eOrBlP/
	iBhLPgP30LuxG2+oYNcqPHBhukMSJI3n2Wsse/MwkzBe86YW8dDXaKGFoEtbfMEPv
X-Gm-Gg: ASbGncs+LY3v/tIH7SubvQYIYCBsmDWedTj2/Dyw4xd1j4EDpkEmp5vxUGP7qIP1rlY
	zGNDMP/6a3JSO60Q3Dk4e7+CJJad5Nomciq9NcP8ZRWnbbnATppgPxyDoi/XJdggG/Pandwmt3W
	9Vr/9J8sY0/BegV8f75HHDcDUe9qfSKEnsYN7VaqtG6k7uJgzXg1nN24pPb7382qOU8NDuR8CGq
	re1o7xzWGPNmNgfrgIQiQgvQKW1az3oulyoSOW4LX08q7126Ft3HNQ8YHS7j8IH0Dk3hc/1XB9C
	quUAcQcuStjLiPTanv54IRoe1DyFCC62sVTwAHNDIuwcCIdTmnWqWV4kYcjxVdA1hy658ZkBkZC
	6mj8=
X-Received: by 2002:a05:620a:4594:b0:7c3:d752:f256 with SMTP id af79cd13be357-7d3f98e73d3mr833914585a.7.1750771552545;
        Tue, 24 Jun 2025 06:25:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtmqJgy1cNQYlHf9rNiieXLLQW3l8oeZCtsM+x77D8zUcwYzl97X4xxSiLnDezlRaz0qJg2w==
X-Received: by 2002:a05:620a:4594:b0:7c3:d752:f256 with SMTP id af79cd13be357-7d3f98e73d3mr833912685a.7.1750771551856;
        Tue, 24 Jun 2025 06:25:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209ad2sm889931666b.148.2025.06.24.06.25.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:25:51 -0700 (PDT)
Message-ID: <874d57c0-a124-4767-acac-05e1a491b7da@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 15:25:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8953: Add device tree for
 Billion Capture+
To: cristian_ci@protonmail.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20250624-rimob-initial-devicetree-v2-0-34f6045ebc30@protonmail.com>
 <20250624-rimob-initial-devicetree-v2-3-34f6045ebc30@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-rimob-initial-devicetree-v2-3-34f6045ebc30@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: h5Q20dccQySMNV3ajZ6ex90lasJfSIW2
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685aa761 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8
 a=n_RBVNUhXirTSVEQBK0A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: h5Q20dccQySMNV3ajZ6ex90lasJfSIW2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDExMyBTYWx0ZWRfX+oNOfj5YEa+O
 LLVLuGMwOCL2ku8nqQURvlhrRj0a0SurXZHHS6gjTH1for6+lHg4ZsoS+aVqYKeH5YEgtDug8vk
 BahLlXSmOaPLEmrUWeC8ihGz56ettiTPEEE35uJV0OD1cD7hUtxxsdHOylGsd0nyhH7tEORevSX
 luUUyNSfWPqWIxnvemKd8GKoqxIXtCutwy8K/w3De8vzwp91EqVRfHD8eUKPxwX10GAeSRijpmn
 jsoLtSzVzmhVF08Hs5k68MtQ2qzubXW1Mv5P8C4+tMhO/u0pOBp9p+5eweRxCp4AncTUPWb8M2T
 KL1Gb785YBldMEycZFwsvXWJyRL7hxMVKW5fNZiz5gXjSQohOIH7Hm0R3SNnN6qH/yBEtxo9b3c
 UlhkppvUoYzYmG3gOwi2cpjXh/9++d4pe8zSgd7CzgH/bkf8MMTaTCR44qHwjscpwvmdUTMN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=614 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240113

On 6/24/25 3:20 AM, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Billion Capture+ (flipkart,rimob) is a smartphone released in 2017, based
> on Snapdragon 625 (MSM8953) SoC.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - Regulators
> - Simple framebuffer
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

