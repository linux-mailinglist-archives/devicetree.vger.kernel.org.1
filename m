Return-Path: <devicetree+bounces-216394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 744D0B54A25
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B13F1CC7826
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C852EE604;
	Fri, 12 Sep 2025 10:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FpZLhtJE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEA22ED843
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673845; cv=none; b=eO4axgpEXS0IL9fJGOTH5euSI9E7JT480qnwY3xtNUZrTwJPQUdOUAtxEiBGBuD4tYsXp3ldkyzEc5ZOMNgwd396xKvAE+gRtXMzU770v2JTczKXJWE7vx58cOQMS1y/XL3OJdDe9MqSKQ34JtzKG6Fli8SOd1HQxrq5WmFbSRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673845; c=relaxed/simple;
	bh=1RhAAhWL14KKCCwjLjtFQQnHEgSFzReQkw1xUr24XvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nc/GOocNTTHo2n3xj8mccV5M9tuFNPf0hNmMCR3s24n8Z/17Iis/ew1V88P6ZU4tkabb7KYdaHcWpJ0443zyTrm2FMo0ZojXIr9pdZq9kiFY+qqfcaGm2KhmNNP8HHH9YoWaTVcJvRLqgGBoFRysnjwUb2brozfz3GGNilJJh2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FpZLhtJE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fNa4023229
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:44:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U6ixdakbQ5kVuK1Oh9RTq+mbKIlEiLNdgoJFQouUhYY=; b=FpZLhtJEUzFZSGt7
	q43V341L7ZfsFjv4qk3jaCT6k/npPf4Us9JafjejZCvcBHGsi/kWmN9w41ixpi9F
	7bdorMaHGnv5v9PQMNvLsUcnsMqk8Zljp5lPFOg06pt8m5rXWlIHS+KWsgbTv1om
	g14V8fF5F7G9w50drTe+jQtTcdRsZ4n1GNiWWW1urhPe5KuJtB9pWRrR1D2qU0Rq
	aw+nnCSYjrN9xvmrIxXGNKlaFlnvIAvPlf+EICRlcELOzDGr6t8EVWMpG9EzkkQf
	c8129BIdf4u7Funx7B6aUvIPasQ1v4Q02UyVruLSVBRrvduBw8drgQrq75Phpfb1
	0JlVxw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2fab7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:44:02 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-721c6ffab9cso6798716d6.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:44:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673842; x=1758278642;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U6ixdakbQ5kVuK1Oh9RTq+mbKIlEiLNdgoJFQouUhYY=;
        b=MMTUnlE5dIbT6MrvuFQGkG3wnrbuvrkpB92Opvrj98ifgC7WlGNILKXWVPSzd81o1U
         zHrB6ow5Nt/CmEeuDU5g/8dRGJDhu3/ffShbSYRoIteUqv5aoC1F2ysWfbMvNeUIDdEa
         rLzQD06KK0qJaC0uFd/Ky5ya14ptMiOQoREkGteD2JEFNXF44QnPAfqegmF0poVN+LBR
         KqIMdEgNFERxDQ5AU12Jp/onUGBODGg+9rwOzO4B8Ia58VHsF1y54lu5rJ86xddb43hz
         /XLXq8RVLPIITxfMaM2D1bJlf7C1r73BRTdpBYgbZuGbpfM9+Kwh4j6uLcpC8carUhHj
         7goQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAlEc5sCOtzNBgTpPynDel0OaWOoyMUXbHgJYgxmkV8o3gS9RG8ipR8thfKU6MMkuWOdb/hxN/rYuo@vger.kernel.org
X-Gm-Message-State: AOJu0YyAMsWOTbc/H0xMPCw+oXGgTnxlzV9P64AzBbOGgO2vOlo9tRYP
	iftjhxXDSjnnqpltz/sZ/GG0qob1NbF7udt4V55t4FnIxV0LimoM3fG9sgIo8UupQoPWgDtUwnN
	+orPN3hCO80qzQ6q6IFGy1zb6xOJqIYKKSSdsH9hPnunq/3Wsch0JyHjHM9lgESSc
X-Gm-Gg: ASbGnctkaLJiauGsMHem/ZyObosVq3JHXB0VP1pXwycZlWi7ajIORAWnPiGpeKBNqAS
	CBYT8RuwqQ7+zw3xMzk+1PH1n6XayQwvLnnbKKwUdgYRZ7SPQYo+AcSdDySnbkNEexwdRH28OZl
	+xERHo2NvPNtHQXaE++hnGI+bRyqhZ3gvo/RWGJg06pL5lAq5YPoHUq/eu7BCJM0MEjqFnAz9Vq
	n+uv+gN13CkqhN6kLnIDYtoXrJfcCXvRsWWoFI73BkH6JYn3TMHxnKWda3f3t/6SIRTcYtHIIzX
	3uXRBMS3nGYO5lixBMxAVEjTATrmr/y6xw4PISf8SH1osRf3WHzpV/l06n8ugs0lplWZLQ7VRNi
	G3tYkunyPO6cRvrD8IPzS+A==
X-Received: by 2002:a05:622a:1455:b0:4b5:e9b6:c9f with SMTP id d75a77b69052e-4b77cfb686dmr20878231cf.2.1757673841889;
        Fri, 12 Sep 2025 03:44:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZWNrezfUYTvVB+lGnpKpkT5LYRuL7bmjPVtk+17xLrpknyf/SfpAgAUionq66fQygxAEbJQ==
X-Received: by 2002:a05:622a:1455:b0:4b5:e9b6:c9f with SMTP id d75a77b69052e-4b77cfb686dmr20878001cf.2.1757673841419;
        Fri, 12 Sep 2025 03:44:01 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33f3c01sm3111408a12.34.2025.09.12.03.43.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 03:44:00 -0700 (PDT)
Message-ID: <e54daa39-ffb1-4f0e-82c6-42e45efe5044@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 12:43:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Rework X1-based Asus Zenbook A14's
 displays
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
References: <20250908-zenbook-improvements-v1-0-43ecbbf39c60@vinarskis.com>
 <20250908-zenbook-improvements-v1-2-43ecbbf39c60@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250908-zenbook-improvements-v1-2-43ecbbf39c60@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c3f972 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=gxl3bz0cAAAA:8
 a=bDNgJRMZ7ET8QJXj1coA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=vUPM0Wvl0xcrLs4nqPIT:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: _hMD4yEnVctjv03ZVQ4Ck1Ez1lqY1aS-
X-Proofpoint-GUID: _hMD4yEnVctjv03ZVQ4Ck1Ez1lqY1aS-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfXwFJnpUKCmHPy
 7AVv3P1SSC6FYNdpDAc9b35igbNgHQjJbsJMQeBPVwVmidjvWSzTu6+ndlMsvs3wcjMqj0dpyN3
 qW3RfdzmbKQKOwYtc6VHnKTEpyK4ly44n2yGVoWKoABFCtDIUIjuY6EXkDzcwDm3Lv+rjor0qiL
 uXS+cVyDWkELzpx9KTQATtBSyR5jRCiq5yajnrOQY7tAxtb+L2ieNe9EmDXHEuiIz6BVpi4HtOV
 FY/BZ2Q62Yc0U8+rnSApWauaw7RTQRJMVLlOyTnWMlVpMkqAUNlgrf8hcMcXRf/cJNMtK5wA8wS
 Q8UDNQn5mqZDDyLPPJ0Y3DgNFm10eeTF1uQxwTCZnmhlEp/E+LdY3rBApWf7Im3JgrcW9524MWF
 15hSKWUg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

On 9/8/25 8:45 PM, Aleksandrs Vinarskis wrote:
> The laptop comes in two variants:
> 
> * UX3407RA, higher end, FHD+ OLED or WOXGA+ OLED panels
> * UX3407QA, lower end, FHD+ OLED or FHD+ LCD panels
> 
> Even though all three panels work with "edp-panel", unfortunately the
> brightness adjustmenet of LCD panel is PWM based, requiring a dedicated
> device-tree. Convert "x1p42100-asus-zenbook-a14.dts" into ".dtsi" to
> allow for this split, introduce new LCD variant. Leave current variant
> without postfix and with the unchanged model name, as some distros
> (eg. Ubuntu) rely on this for automatic device-tree detection during
> kernel installation/upgrade.
> 
> As dedicated device-tree is required, update compatibles of OLED
> variants to correct ones. Keep "edp-panel" as fallback, since it is
> enough to make the panels work.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
> Co-developed-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

[...]

> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtsi
> @@ -0,0 +1,141 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2025 Aleksandrs Vinarskis <alex@vinarskis.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "x1p42100.dtsi"
> +#include "x1-asus-zenbook-a14.dtsi"
> +
> +/delete-node/ &pmc8380_6;
> +/delete-node/ &pmc8380_6_thermal;
> +
> +/ {
> +	model = "ASUS Zenbook A14 (UX3407QA)";

'model' in .dtsi is 'eeeeh'

[...]

> +&remoteproc_adsp {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qcadsp8380.mbn",
> +			"qcom/x1p42100/ASUSTeK/zenbook-a14/adsp_dtbs.elf";
> +

are both of the aforementioned variants' firmwares the same?

Konrad

