Return-Path: <devicetree+bounces-249608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C61CDD3C8
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 03:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C185B3014AC0
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 02:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349B21DE4CE;
	Thu, 25 Dec 2025 02:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="igQhehDd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BdfTcNBB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD1E8479
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766631478; cv=none; b=gyUf0vMJYfMELrkaQac92XM63i05hgN3hgU2m7xIB9FkR/1OdQxuwKAeCWIX+jLZpY/BvW/06Lybsr3UQJfLdoHOXhlsIYAuSjopP9VEyPachjyiPsF26eb5cGNVaWyvx3bK7mw91mzRy0LgobXhmsqQv8R7j2Wfs73i/ttAJwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766631478; c=relaxed/simple;
	bh=lJ6ueQEYA3aIXEVospwgPiFJXldWtXFjf0BwnwOtHD8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y4Zm0BMUaQPfbFmop+2O5VwFgnhMcqwLaOtk7bhznPsUShhTLFWpi56Zuq6l0yEozTyEA55ZpqVFFwlJv3TYZgHdfwsuGIW01bpICnHR9lcz5UjCB6qeVTIBtsLG4YTBWgsF+JGAVt3ELZ6JgCTsfH+MVA2HRaYbieYZNJ8XpQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=igQhehDd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BdfTcNBB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOJBami463844
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:57:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JFPd58wm8mYS/zmIQEJmpXYiwDFADj86sZNP3r9GaCg=; b=igQhehDdGSSON/N/
	vllBXNcIvUCNMvNUHJENXu1zcBzVMZSJbgr8ccXJqGo2nK2jfXXmwiEKR5wNIsKc
	ripR3ysblcrQ8RLdKzQebhMK7cUm3hqfJI2nXt4OL5Ot9QWuNuMnnii0jM90qGV9
	DgX6Xh4/kCiyFbz+fe2c4J+vL3okVVfPU32ucGmU29ihuTpdzt7ZPc2ZiAiH4m3a
	qoj2qIuSg9rlY6QUNFKMUGpI0lXA0QrlFkSfSumPj8Ng7PYrBmuF/1iax6FzuJ+g
	+z2cXYiX74JW8Z33LrNT/OO0k7B3Vbdg4wM+ufRz7jXwPgsfu2+rh6egvMzaIzY6
	MKu8pg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8p490hav-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:57:54 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c37b8dc4fso13503640a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 18:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766631474; x=1767236274; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JFPd58wm8mYS/zmIQEJmpXYiwDFADj86sZNP3r9GaCg=;
        b=BdfTcNBBXbF1yxSM82ad/eRnXUOnSUeRM4PQtYIjjJt3U4jtTAsT2GLGc8RavmpSZg
         movTHH50cQGgY/bFSv6lwP0Qu2nR1IeeIXwSVgR9cd/pJiZeQwnt91uxdkB9PKgdbekD
         5UuugCassUvQ5XYJL6MKQsknLU4YlJBpRvtG0DRmRifn/xkbFpJfddOUALF2MT1i6h1T
         g9rlHUG5qW5ewMZT8EMvO++eaM3n1ts3rNaKJTwqQDls2sDuzW+ae9vOtkEszwbFqMgl
         OZI9TC5+ZXsymCJ1c4t3j5ve7SdaaIiSxkKk0vZaTt/LFWnG3p3xDsfAag8dkRrKVQUs
         fqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766631474; x=1767236274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JFPd58wm8mYS/zmIQEJmpXYiwDFADj86sZNP3r9GaCg=;
        b=NlWRMedrDBi7BiYrytt+LhQW1xJDaHOmjF/t0ZzS1Lhb41Zhjyv/5P9PLHF8/k+bYv
         nS64uxrmpcQf+H8rgmrhAz/Cpa4rNbUsXI/QtimHL8nElEaLVFu2Je4vuzQ5T09dSZgY
         CRRMlLHFbRDk062iPLiiK1ZbTJW00GWALZDEgOfF5wZjLBV/nJqIpCdZRHgN0ORH3WKr
         bVpazRx7qC/D9Q5RnwFEtvVFUr9/3lilaa9qo9sLTuaVaE3i/Snuf0dFWvLK5GObC+bf
         pHYC860e4N9JJBsjNbw8Y+aUW6GylZDxgnsA7y7wZ9fgq3lYkaA+NFSd6Fv+CjY8YMzb
         6E1w==
X-Forwarded-Encrypted: i=1; AJvYcCXLxWFVQWeZlIp2C0FKd1I2d5heAIltU8FovlQLTCjfFVRlEm+hEmoMTNtBa0cdNy4bABx7d9qEn45p@vger.kernel.org
X-Gm-Message-State: AOJu0YyvfZmT1+Y9BOzA/+JqA9YxpnubKbjsyUg4R5SjcWDZUTFOAbKD
	MX5/chZrjPA0HEK6squM0WBywyJ/B7ZakNyNcGuOH/7JvlMiBEk+6cL4E01tpkmwxot+lznA2XC
	N5+Mf7gAM8dMDnZU3Z7YSzdLJT1vICzcH78R3umh5K0isNmNInT+CWqYyawcUjTz2
X-Gm-Gg: AY/fxX4OJatjlCwqxXm1LgZp2+W6Z6DTRgrM8os7Dvx3i/KZuZ9JdUfvLu2mznrDpl1
	VclGgu8+T0LV0fgZ1ZyzFpALPcgDYb83u08XzvFhkh+JJ6zw2NMYqJ5ptFZGgSNTIAMF59re3l6
	XgJ0JrlNRxCMh6tlLk1NCxg61d9UmICqZLeivV58Ps8uMjnyZ+ukm6426t99MuJDNevKAHDwooA
	8GTw2g2+Z+KqzcOeLUlByikuy1aVyS9yABryylW2qdBxKo31cc8EmARN5KgWiRK6MPMzwB6E0iQ
	/aO/YR2jn+fGzbXNMyS6uzhRkyflqqG5TOqKUWYUYHLIqVNILaGDY/4dkbz3s9EaG0bVtSt9jEG
	wIyLQky1q5/9K0e4pdwk5U1LQkGR0S1XKgBw2PSRN7iz+dJZKiRbEVqKniqGT0NG8LHvovWea5b
	g=
X-Received: by 2002:a17:90b:4d8c:b0:34c:904a:d92 with SMTP id 98e67ed59e1d1-34e921cc22emr18964667a91.26.1766631473564;
        Wed, 24 Dec 2025 18:57:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLS4MIGJ0LuIKRIK72qiNNG01ippH6Yq5aw5IQOoDuFbYRE35g705XC+ROfIHK9ZC5xSBxaw==
X-Received: by 2002:a17:90b:4d8c:b0:34c:904a:d92 with SMTP id 98e67ed59e1d1-34e921cc22emr18964646a91.26.1766631472999;
        Wed, 24 Dec 2025 18:57:52 -0800 (PST)
Received: from [10.133.33.250] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34ed530475bsm3298572a91.8.2025.12.24.18.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 18:57:52 -0800 (PST)
Message-ID: <5c67a270-dc9e-4ada-af56-e97d4a925e47@oss.qualcomm.com>
Date: Thu, 25 Dec 2025 10:57:46 +0800
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
X-Proofpoint-ORIG-GUID: Qhq7LeLpQk0Y_W3hNLWjgqXLw519K0ba
X-Authority-Analysis: v=2.4 cv=esbSD4pX c=1 sm=1 tr=0 ts=694ca832 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=IwjJGIUIzvyStixYlZUA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI1MDAyNiBTYWx0ZWRfX/4jA6HOvscYW
 urEYhXH0lqo67zAPvRYTjgEY0trzZHPOj+SPHIRhZFgtUTi7mw0z0GvPGzJ/ppZJJn+tmk1Q9QH
 v9ZUuTymTW3RLI1UDbuT2cmYKU6HDwPGWcSTzDfpvF7epylZ4VTJyCgpqcqchCAmmbY1//qOYyw
 bjnpanrCWnVCZKgs8ODmjiPcGluI62XlJf3I6tUr0hNAwxOIr0O+EI0qh/d1Xn4F+1SlkIHbHID
 E4Pnn3K5cLTyjB+H8dWDUp8+zG0/aTEeJr3J0ubOJdoaW8xi1cG226Bjx/mCbv5FrEFe5yqBGwY
 zYNrpa5fl/whsWn5ROrExT51BfMeinUSc2rHM/5hkwm4Z2Yh8xSuyQxFypT4jjIhrC8+4mS+BH7
 ZqaRPVkc6gp+41JNMLvA1MdhesldbaKamUlyNLtQOjFwJzNpZpqguGZR1NhNKra8sY7u5pTibFE
 6+JAixT3oE6IeAtEBlQ==
X-Proofpoint-GUID: Qhq7LeLpQk0Y_W3hNLWjgqXLw519K0ba
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512250026



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

Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.

Thanks,
Jie

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
> +    };
> +...


