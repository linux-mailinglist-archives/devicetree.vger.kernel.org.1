Return-Path: <devicetree+bounces-141951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D47A23482
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 20:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AE871883CE5
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 19:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F8C61F0E41;
	Thu, 30 Jan 2025 19:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VvBdDwUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7CE1EF0B1
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 19:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738264041; cv=none; b=FFhvXSddPj6RQJCxysS9K08RuyZCsoQ/1OkmTNF5TKBYARl9p/On8kXUbOUW5wh2yZmc0GmIZxXN+kVR2BQXk4L+/5fld53+Wohq/pQNvSacDOEZgTtDe3DT2ef2vzbUD4ace3LFJg9SMNRm4X5bQNxfI3fTbLUovkHwzdYgY+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738264041; c=relaxed/simple;
	bh=pBj/Ril1YnghqrkWxFD8p/K4bAcqVGUkw+8Wg5nUKUo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pV78xLisbnWZdBJWJqV+aLav1Dcp4kOuKPeu4S78cVcffx2Gw2pmuL0wWS/oYGg8PqEZvQaCc+sfwgqB5rOHUqbxu9pSmXRARBBohypiVufxFxp534B+zbQdeKiBMBwhfe+3k+H+kcOZSMrKdPNzQSJzEs6uRv32FDb2fZrgwZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VvBdDwUy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50UJ1V6G003884
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 19:07:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3BhaqXgrMLyKfVblpg6Bsrl71b0YFcABEbF9BiIscYg=; b=VvBdDwUyDlBcBHYi
	rjjkal7KVs9FjsoZefLoyuXHaGPybd+B296tdMJDFNcjkuJc8vowZKYkXZImESKu
	uY1HJ1PA2MBSFOoHWZ4U30Fqef9nTv/8MR2jEJKL1YyfW6o9Noni32IqnamdJh2n
	FoaUVXCvkQpnA7Wj6kYDNBkSwirXsnFhLU+B4LGEiD/k2LSaIdCm4kR7KBcXvE9j
	1L6DVFD1+O/y5rLPvw9EFs6KrTsKaEocS+zGaK9/432a08HPOgZfbALDkSKAvXwW
	jOKCgCloDrdc0CunM7ykFDmP718PyFrzHdygc9jQVjrFXxmfkVKK5j+mAYA9B16h
	zqg9Jw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44gf7j80k6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 19:07:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ef80d30df1so2149568a91.1
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 11:07:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738264037; x=1738868837;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3BhaqXgrMLyKfVblpg6Bsrl71b0YFcABEbF9BiIscYg=;
        b=ojwn9WuxC3EbTbLVYv80h9DuQkD0XYQXOBGZo9nmHbGsg9nugbeenQL0uu71fmf/0X
         TomYl15fOSMgqjsB2P3CVm+K1nMMYW5roIMdd5DtrMK6GovxLuSowbkLV1Ars/MNOxn8
         BbwVR3xBSSayKjztLfka42y/FLaqo3mr56GFxySK3uNtN1cAvmUty0uUo2n34O0DY1Y5
         C0KNb3QACE5J+IXTFa5VtM692pc1bKE9acjFVWjdUqbDwSnrwLgAUYSSu/ogHtMWJ8vo
         JSHKXgD0zoRP7hzvD6U42jZ/OmEQHm0NId7/j66bhHjaYyx/5hLaS1Mlo/Di+5OGLvjP
         0uHg==
X-Forwarded-Encrypted: i=1; AJvYcCXfcW1DtWs/zbzkGyQOPa7istyDAAJbiLjbcXPul5+yivxdwS30oQtKJIioi32AMSTfMLmWDVw2TwNL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm77ZItq1S+POdU441fAyPtPx55izYU4/uvzfSq7vZ73XCeM+T
	l+fr1nguJfro7Ps6Qn4CVaff59r7CivVq5jF/ou0M7r2Mr+r00ed08Eut/VMLxzxhL/B2DHA9oc
	Ikye0rM3BPx9cZPMplFCdnT33mtSiB4/DbbBPoXhWvp2ht/edXx5vwY1tI01F
X-Gm-Gg: ASbGncvYXf9hMl+riILxmxg5uVpPFNBGSN3tuzZqQr07iNxKoDvObpnxVPpZdyJhnvy
	iCfFqDLPJ9Qs2RKFArYSv2gBHCPDvSX6NDdOm/dkaXqFM4Py16hnNhve2nJceIq8DxgDQPb4Jok
	HUCRCpSZ9nv5bkgsZcJ0rVN1QoNXVF+t00bDCS7CojcWy5AdQoRMQp/rAbXL2yU2DzYK+AI+sAV
	gL4HQ8QB+dhuwxVYwPuxKcnJxnlbEizP4QB3eJVHT9SzzM2GVYthH+OmM89vXJXcG6CsQCz5VPg
	e7PeYAJHl5RvXEVDkAslIF+7nBk+6XK5Lnj9ruWU9wZPRwHlPLhzQav+LLcsnEhO7utcAlXtkg=
	=
X-Received: by 2002:a05:6300:6713:b0:1e0:d766:8da1 with SMTP id adf61e73a8af0-1ed7a6e12f1mr13417014637.39.1738264036777;
        Thu, 30 Jan 2025 11:07:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHg96qvbgqQ2gmDdQfd6xQyLD7vfiaEvtI6JhWhTIDtpEzP/0JSK3SeWZjihVBwGXNWf3YRmA==
X-Received: by 2002:a05:6300:6713:b0:1e0:d766:8da1 with SMTP id adf61e73a8af0-1ed7a6e12f1mr13416970637.39.1738264036374;
        Thu, 30 Jan 2025 11:07:16 -0800 (PST)
Received: from [192.168.1.111] (c-73-202-227-126.hsd1.ca.comcast.net. [73.202.227.126])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-acebddbb165sm1701686a12.6.2025.01.30.11.07.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 11:07:16 -0800 (PST)
Message-ID: <b3637222-d79a-4019-8155-d14abbadd6f7@oss.qualcomm.com>
Date: Thu, 30 Jan 2025 11:07:14 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/13] dt-bindings: net: wireless: describe the ath12k
 AHB module
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250130043508.1885026-1-quic_rajkbhag@quicinc.com>
 <20250130043508.1885026-2-quic_rajkbhag@quicinc.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250130043508.1885026-2-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rx-Iw6bDZuFvwg1zcsMScC7fj3Q8aCup
X-Proofpoint-GUID: rx-Iw6bDZuFvwg1zcsMScC7fj3Q8aCup
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-30_09,2025-01-30_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 bulkscore=0 adultscore=0 mlxscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2501300146

On 1/29/2025 8:34 PM, Raj Kumar Bhagat wrote:
> Add device-tree bindings for the ATH12K module found in the IPQ5332
> device.
> 
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
> ---
>  .../net/wireless/qcom,ath12k-ahb.yaml         | 319 ++++++++++++++++++
>  1 file changed, 319 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml
> new file mode 100644
> index 000000000000..bd953a028dc3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml
> @@ -0,0 +1,319 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/wireless/qcom,ath12k-ahb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies ath12k wireless devices (AHB)
> +
> +maintainers:
> +  - Kalle Valo <kvalo@kernel.org>

sadly, you should remove Kalle since he resigned as a maintainer this week

> +  - Jeff Johnson <jjohnson@kernel.org>
> +


