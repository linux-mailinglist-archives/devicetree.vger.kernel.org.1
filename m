Return-Path: <devicetree+bounces-249616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE47ACDD5F6
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 07:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45AD93010CFF
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 06:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F9022D949C;
	Thu, 25 Dec 2025 06:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CY9CkMrV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JOayT+Ah"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0657126F2A6
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 06:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766644127; cv=none; b=ltRFz5Q3NAadta7qRKC+PL6nEIM49LYMRI0dC5TUwZRJ8T5eXw+qRc6r0mXoDhJWSQP5qcLd6VFR3skrFzLdUBLyPvxWabsaD4VXedz7eWcjLrTSkhQdYTgIqzwFNdpZ7HVdQe1ORRecqi4CApL9LbeIq/SXw/7K2AdLAuIdWSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766644127; c=relaxed/simple;
	bh=Ur7SnQIJSASWBdZksx41yHoSOGr3iS9s+l3j8A/keAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VkyviK5Mk3KQzcH2twDitAmNTK1Vdky7wt4dsoDb1p0mHR1ZTig3aYdvFLzRPoRnaZqiVAgfzNU2bnbP6p16xKedcwtoddn6RjbocM/TCxQr6NPiau2j+wCNKEwCBx42RhHN6n+HadLY0FlpHtipL40gNLIL3ry3yl94GebOj9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CY9CkMrV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JOayT+Ah; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BP4rWk3835519
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 06:28:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+L36TQdaYvG5NZA7PWJObkpQ1NZJPN35UUoghloEMWo=; b=CY9CkMrVBrJjATGB
	EY07dhZWXj1xTWafccrY8WBrB///JnACfVz+DyctHdV3HEHcmkl0h+7fGabGaFJP
	0cLCRdyXc0mh9c0eIalou5wT/kVE8VIQsNTid2mTjKeGmAeejPcW6TJThYRDPDr1
	Xa6KcoNLjWLA/kcFcStThxAFmPaJG21i/PxN5/vVy+erzNXQw/IqbDojr21UDv0X
	7oI4poxkcznni6IswIgdkhdOz7MF3r3A2sFp0yHgl3IneA7VYMhneV1zGXC9HcMg
	9m+IzJ3Tg2e4Xq2+WM+ObRdWIi44vLXZmCkqWuuBCIOTlyiwOBGtr7xy/pA+Tdtg
	m+/AZA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8xn28425-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 06:28:45 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso126921415ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766644124; x=1767248924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+L36TQdaYvG5NZA7PWJObkpQ1NZJPN35UUoghloEMWo=;
        b=JOayT+Ahqhk/xGPalLM63AhpPj4BMBgq4tdIGSyo6bT3V2fTpznhEX4FN75s57rhRc
         h+OlErqXazmaShkbEtwhjfn6obbPmXJqjsbwIIdqSpB4mkMvEkdvBG6PimwUkzT32w3+
         rDlEuiW/RKRy3byDZwf24oHpZSVOBVKF1Z2QqlH+81bWNwWfyjMH/62faCErnf2C9X6/
         59Lf9KoovUfUtnt/s1PZ1cza4OXR7xbtO7IEzY3LtuJZcOAJL9y9IiHul+j9akDU8tGb
         WEJPbu0mofOJ4frl3iPBqsjId9dm0manePJBiiE0UjuYqyt3i6xXJpKACckZ2ZY2ekIE
         VlOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766644124; x=1767248924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+L36TQdaYvG5NZA7PWJObkpQ1NZJPN35UUoghloEMWo=;
        b=YwDzlBeLAVi4uLRW/EOPhprYrjTlf45eOdqSJ6K3ci0AQ9eedpAkeImjlZ2axqWI4y
         6/aKsT868JOKSQ7FMMHIQ5GaQjUzKCK3OBfrX7XSeWEGXT1wE7xyIB0X2Z+23WxgIrjJ
         aaGlB5J5+NlxnwTUGNUJbEUawqNlvK1ZVV2YR9Q2leSsGF2sRMF1hVJPfmAx7+DEMnHl
         MS0SeCZKK40d2uG4BpD+mgFOmlwsZ8HyQj99xYsg/xV0Hl92Hn/ybhEdkWrYkh9uo909
         OnbJzrOeA6/puBnTxlq1YdMMGM8xfec/kMEYTPOaLbiXhvz0XJdCDlpmwhjlXLevEnkI
         6Asg==
X-Forwarded-Encrypted: i=1; AJvYcCUS/u2B9t0xrH0NwCufPwJ5DO30SSy0qlwIZy1qv0PUUp5gYITrq3tZGGv7QRxeYwHif0//yMaK2V0x@vger.kernel.org
X-Gm-Message-State: AOJu0YydyaR0xAM/5XHLOO0NP85yN3mVQ2OfEVkG98X/BedktNIkI9OM
	eCROHRPPnqiWzzP2E2SVrHN2R5RaMsiVwebhVMtJhABHKtjvjpr5w5etQlisuidbYs+2jDPGjdH
	ovFCZZSVfIbdvw1i7qLYzUgQVlDdTGEri1wk+LwjA8URlRQrVxYZV4nzO+2VYBzEp
X-Gm-Gg: AY/fxX43ktQcm/b/DrW/ZJLNN3YViAu51sfKvJdMPjdElc0TE/ORaU3Cf9NlbKg8pFA
	8Z2BP/Q4CWawh1KGkCGn7EruXQ4wIIhbtY+eHXF/Ul66ItQ9uzbzhN3oXJK6GPNRj2SK0dgJQ8G
	tB2j0nDKunkKSwbO8DeSnm7CNCwaLkrSmkxweu8LOwH7hgwhgBK4TvzKJ7RahahvKQrQzc/QZxs
	YfolVCkN5mO/RrpfBtdCntrrFXYWIKnz1Zo27aLyGEd3UbMhq9ENGC2qvYWzDmOlUGfDwuLK6D6
	Ub7sO84GZG+gkgnv2PdaQHvlPktm+21xeWdsu/3wIY0xmsPZwy3pDWlGCPfGxLtl0H/kWSGGp+4
	4uEhUB5ELijE3UHwKDG7kz6xrj099SJjgoD5CpfKk4VNITXSksQIgQSoFCNS4fPKWNWQ89jmgfK
	Y=
X-Received: by 2002:a17:902:c403:b0:297:f527:a38f with SMTP id d9443c01a7336-2a2f2231764mr203724065ad.18.1766644124455;
        Wed, 24 Dec 2025 22:28:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHG0UvxEYhyR8hnGhLzCb3EHJqm+ZgPrd482GH9b3/wTEjNP6sjA3YoUbut5JctCdz7MQ7cA==
X-Received: by 2002:a17:902:c403:b0:297:f527:a38f with SMTP id d9443c01a7336-2a2f2231764mr203723805ad.18.1766644123964;
        Wed, 24 Dec 2025 22:28:43 -0800 (PST)
Received: from [10.133.33.250] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c820b8sm169959365ad.23.2025.12.24.22.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 22:28:43 -0800 (PST)
Message-ID: <ab7d3026-4172-4f8c-942e-e46d984d5f21@oss.qualcomm.com>
Date: Thu, 25 Dec 2025 14:28:38 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/7] dt-bindings: arm: Add support for Qualcomm TGU
 trace
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
        Rob Herring <robh@kernel.org>
References: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
 <20251219065902.2296896-2-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251219065902.2296896-2-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI1MDA1OSBTYWx0ZWRfXycVCd4kfm108
 CZmYbA8qODM+xJxahh/aQhtYvr1Ncl9DoH0fGB3aBqgzNh8Guhodf6KbTdQXoZ9zQpoZU4hbcbm
 3jKCf9cnC0uFcMK1ZjmtN1JphCIPdf4pzDQgb8Sr94RhSjIdF5/bofhDu0zbCdUrrBo7xdq1LIa
 f7hBJKjUu3ptj0WNNIOsnwWOLfuAqmylFjPjyvxYj3Gu4W2ROgJPWPZSxK33EEiG10cvvk8tyge
 fknb/Ew94BixzEfpfHQpxHPy2JVszviSrP6cFgJUiKvPPyDuwBo6jhxTOhfTIwAmkxqZvWtDRLE
 VUfoB+iYQxi+ij7/8SVGtZ32kWCABWW0VPjId0zZUCt3OlSL/mKwB03RO8VbrrRQG3ilHsmdPjJ
 O1CMgSV6/AhsbTIci7IM45Lb5292y9TKsiZdFyKtIbFP/B2Czb/uGVbM6VpgW6c+AXWBQnZihVk
 hhk8+R0ckuqULbbOweQ==
X-Proofpoint-GUID: NEfLEu4UMOosCKATB0lJ3H5duBngo6F5
X-Authority-Analysis: v=2.4 cv=Cp+ys34D c=1 sm=1 tr=0 ts=694cd99d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=IwjJGIUIzvyStixYlZUA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: NEfLEu4UMOosCKATB0lJ3H5duBngo6F5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512250059



On 12/19/2025 2:58 PM, Songwei Chai wrote:
> The Trigger Generation Unit (TGU) is designed to detect patterns or
> sequences within a specific region of the System on Chip (SoC). Once
> configured and activated, it monitors sense inputs and can detect a
> pre-programmed state or sequence across clock cycles, subsequently
> producing a trigger.
> 
>     TGU configuration space
>          offset table
>   x-------------------------x
>   |                         |
>   |                         |
>   |                         |                           Step configuration
>   |                         |                             space layout
>   |   coresight management  |                           x-------------x
>   |        registers        |                     |---> |             |
>   |                         |                     |     |  reserve    |
>   |                         |                     |     |             |
>   |-------------------------|                     |     |-------------|
>   |                         |                     |     | priority[3] |
>   |         step[7]         |<--                  |     |-------------|
>   |-------------------------|   |                 |     | priority[2] |
>   |                         |   |                 |     |-------------|
>   |           ...           |   |Steps region     |     | priority[1] |
>   |                         |   |                 |     |-------------|
>   |-------------------------|   |                 |     | priority[0] |
>   |                         |<--                  |     |-------------|
>   |         step[0]         |-------------------->      |             |
>   |-------------------------|                           |  condition  |
>   |                         |                           |             |
>   |     control and status  |                           x-------------x
>   |           space         |                           |             |
>   x-------------------------x                           |Timer/Counter|
>                                                         |             |
> 						       x-------------x
> TGU Configuration in Hardware
> 
> The TGU provides a step region for user configuration, similar
> to a flow chart. Each step region consists of three register clusters:
> 
> 1.Priority Region: Sets the required signals with priority.
> 2.Condition Region: Defines specific requirements (e.g., signal A
> reaches three times) and the subsequent action once the requirement is
> met.
> 3.Timer/Counter (Optional): Provides timing or counting functionality.
> 
> Add a new tgu.yaml file to describe the bindings required to
> define the TGU in the device trees.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/arm/qcom,tgu.yaml     | 92 +++++++++++++++++++
>   1 file changed, 92 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/arm/qcom,tgu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom,tgu.yaml b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
> new file mode 100644
> index 000000000000..5b6a58ebe691
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +# Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/qcom,tgu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Trigger Generation Unit - TGU
> +
> +description: |
> +  The Trigger Generation Unit (TGU) is a Data Engine which can be utilized
> +  to sense a plurality of signals and create a trigger into the CTI or
> +  generate interrupts to processors. The TGU is like the trigger circuit
> +  of a Logic Analyzer. The corresponding trigger logic can be realized by
> +  configuring the conditions for each step after sensing the signal.
> +  Once setup and enabled, it will observe sense inputs and based upon
> +  the activity of those inputs, even over clock cycles, may detect a
> +  preprogrammed state/sequence and then produce a trigger or interrupt.
> +
> +  The primary use case of the TGU is to detect patterns or sequences on a
> +  given set of signals within some region to identify the issue in time
> +  once there is abnormal behavior in the subsystem.
> +
> +maintainers:
> +  - Mao Jinlong <jinlong.mao@oss.qualcomm.com>
> +  - Songwei Chai <songwei.chai@oss.qualcomm.com>
> +
> +# Need a custom select here or 'arm,primecell' will match on lots of nodes
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - qcom,tgu
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: qcom,tgu
> +      - const: arm,primecell
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: apb_pclk
> +
> +  in-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    additionalProperties: false
> +
> +    properties:
> +      port:
> +        description:
> +          The port mechanism here ensures the relationship between TGU and
> +          TPDM, as TPDM is one of the inputs for TGU. It will allow TGU to
> +          function as TPDM's helper and enable TGU when the connected
> +          TPDM is enabled.
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    tgu@10b0e000 {
> +        compatible = "qcom,tgu", "arm,primecell";
> +        reg = <0x10b0e000 0x1000>;
> +
> +        clocks = <&aoss_qmp>;
> +        clock-names = "apb_pclk";
> +
> +        in-ports {
> +            port {
> +                tgu_in_tpdm_swao: endpoint{
> +                    remote-endpoint = <&tpdm_swao_out_tgu>;
> +                };
> +            };
> +        };

In Coresight driver, the helper device is enabled via enable_path, but 
for TGU, it's enabling via sysfs node manually, so why do we need 
connect the tgu with TPDM device? I didnt see the connection with 
Coresight Core framework.

Thanks,
Jie

> +    };
> +...


