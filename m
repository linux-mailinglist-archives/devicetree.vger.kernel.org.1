Return-Path: <devicetree+bounces-130486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDD79F00CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 01:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13C4F188C25C
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB26629;
	Fri, 13 Dec 2024 00:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p42LOldi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D28383
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734049923; cv=none; b=spoQDbfrAMCPKwldCEWbHnYAwN5UN9B7lDp4SE6GztlO/kwClCu2qYDd1NWLqDXu3KwGZfvYoGO3QwCWroHa21OPuBtG1rt88zECL49JiKkB4Mko1lhtcwDEVai+jy1shhFICRkaZsa7jeZXfNLD0lzNNTGTWtkc+O+LL5qt0EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734049923; c=relaxed/simple;
	bh=D/4kLYmFL1vv+53gZjM1mRfVNWOPM/Vze22YPqTVzxI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=SbiEDQHGkw5Dk0qSB+hwtKlFvpnamEkKck/PwYF3BVgjJOmWbT/3XhLPXvYOAlEk2pOXx0ipa3UqznAWwFCgrKUUGenQ8ZFJTV6kSR8qTAaDiSoIrRWyuMSaJYXbg88XonRbgOTWet/4tet0B9TjngMYyr77q1Pdbrx1/Xo11Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p42LOldi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCKVtWb006041
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:32:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nQT5cApvwI8XzBPWTLFIItYMGe5Z6ZcYS7pK+Sy0jBI=; b=p42LOldiimdXtgBf
	ipePWCcrYrt5Bf4Ow222Y8xbL7cOUjGfcwXBZxSehWmg7gLWPM6TJzVC3dsy1DfB
	j6QchOIRqTrkNY8FnqRAAsEuJKshcuB3AErkzFwnDAbi4OTkXj4R1I7Wojzzs7dG
	5sizkigiONozJFSV0ftD97ltoptAG7HYoyqqNm+0X0jXSye5LtmS6eejen6as7zt
	jpIIpRXx7QCZVzcoDFjL6YbZIhnFRxif3JV0aIpPZBdUpqBkyqSyr8SH22rjkMsN
	qCMP1myex7LDWVZfesVfiaKZDfVNCY5F7UW7KQxNF6zuN1OKlJ42oXc7AtnZuFo3
	1wYIZA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g6xurdmh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:32:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-466a20c8e57so2651411cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:31:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734049919; x=1734654719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nQT5cApvwI8XzBPWTLFIItYMGe5Z6ZcYS7pK+Sy0jBI=;
        b=v0G8WedduRAwg7iMegMHkQxAx7zpl+0KtYJld+jd5z/4Ylw0Vg1udBHnw1pQ3jRCKH
         nUAzmsaRyMzh9QLOdjg5LwJdQuBVXK2DM/8cVBGCyX/EFKv8+eLiWCWo46heqC+nZlbg
         foJaWqrD0UTV3lH6rYjE0oVOYN6WKEgxh4JsjnbXCAg7CQBDKNY2Y6uztIa427EESNsG
         NlPSNMx8c7JhaRggBgIOINvHwB6MNwOe0cIDtynGHcJuBkV4dZtxsSQGo/roF4JC8wMI
         43KERhAYR9lwIuZBchRUI13znOJvoGoMWRpqzzl2EURK4dml1HditPIdKnX3ddAgarDB
         q5cw==
X-Forwarded-Encrypted: i=1; AJvYcCW2/56XZz2S7NMzuJiIwIg06NkSuCX/UmA5gRzoIRFoDfrhi5Avbf4qFziIdi4yr+03B3XoI303n8uH@vger.kernel.org
X-Gm-Message-State: AOJu0YxNYcGNJkdNe2GZsJL2WdUfP5QLiRRFCUPaP9tyCiZqxIqQaUq/
	U0nK851cstDE4A5MHKKocX+W0mVqW4N90GVdFQUHqoGfIRPAbdUX4V9Cn87eHb+Ir6i2Rnm7L95
	piJwEnmF2+3Mo3MuUY+BKJeYVo4K1tpfewYJu66t5XYiQ7DOBDNLDQs/pbRfS
X-Gm-Gg: ASbGncs1K0yAS/RSlhSaITNI6wAXrk/dAi/nb+GXxRJRdO0WU4joffbf5qfLDqQISkH
	C5yJNzryEB5jJL/Po8dVR90JWUPSbVUKgpX+Azn7BYFd21dangFja7ipmQAOIVr560rcOQ3aD69
	qLFJ1itz3k1ut0VAyUUKzawlqfaCgXMOfOOFHbWfnJw3ES7RTZ1drSaWoVY9zcg5BgtW8HESr3n
	iN6wC1xwzReU+59gi7jr8C+bB5XU2E1n7WkXYYLRlGm+0KWqW5IJj2gyz0V+tIyo6eV+dEDdz4/
	H6ZkiA5zEnutLzoRitcWe2gjQbmKXwfwp1sq
X-Received: by 2002:a05:620a:4609:b0:7b6:ce8b:6858 with SMTP id af79cd13be357-7b6fbf3267fmr28128185a.11.1734049919242;
        Thu, 12 Dec 2024 16:31:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWb9ZQmLKHGmplUKTjXWDHzRq9o9QmV84Rtz2ZziZdi0Ye9FSUP8wFPTpIk7tLTtWNWf84yQ==
X-Received: by 2002:a05:620a:4609:b0:7b6:ce8b:6858 with SMTP id af79cd13be357-7b6fbf3267fmr28126485a.11.1734049918873;
        Thu, 12 Dec 2024 16:31:58 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c79919asm10760882a12.67.2024.12.12.16.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 16:31:57 -0800 (PST)
Message-ID: <7abec959-3987-412d-97ce-92cd3e501dc1@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 01:31:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine:
 Add industrial mezzanine
To: Sahil Chandna <quic_chandna@quicinc.com>, kernel@quicinc.com,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, quic_nkumarsi@quicinc.com,
        quic_akdwived@quicinc.com, quic_kkotecha@quicinc.com
References: <20241206065156.2573-1-quic_chandna@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206065156.2573-1-quic_chandna@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5o6xJAuDQ6UX-KBkgPu8EpCZpOLwV6bA
X-Proofpoint-GUID: 5o6xJAuDQ6UX-KBkgPu8EpCZpOLwV6bA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130003

On 6.12.2024 7:51 AM, Sahil Chandna wrote:
> The industrial mezzanine kit enhances the capabilities of QCS6490
> rb3gen2 core kit. Add support for industrial mezzanine board.
> 
> Signed-off-by: Sahil Chandna <quic_chandna@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  3 ++
>  .../qcs6490-rb3gen2-industrial-mezzanine.dtso | 44 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6ca8db4b8afe..6fe5a5ccd950 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -111,6 +111,9 @@ dtb-$(CONFIG_ARCH_QCOM)     += qcm6490-shift-otter.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs6490-rb3gen2.dtb
> +
> +qcs6490-rb3gen2-industrial-mezzanine-dtbs := qcs6490-rb3gen2.dtb qcs6490-rb3gen2-industrial-mezzanine.dtbo
> +
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs9100-ride-r3.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> new file mode 100644
> index 000000000000..74f2f782d166
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -0,0 +1,44 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +/*

Err.. does this even compile? Is this a whole-file-as-a-comment?

> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include "pm7250b.dtsi"
> +#include "sc7280.dtsi"
> +
> +&pm7250b_gpios {
> +        gpio5_tpm_dig_out {

Node names must not contain underscores, use hyphens instead. Please
refer to [1] and make sure to test your patch with make CHECK_DTBS=1

Drop the outer node and include \/ under &pm7250b_gpios directly 
> +                gpio5_dig_out_default: gpio5_dig_out_default {
> +                        pins = "gpio5";
> +                        function = "normal";
> +                        power-source = <1>;
> +                        output-high;
> +                        input-disable;
> +                        bias-pull-up;
> +                        qcom,drive-strength = <3>;
> +                };
> +        };
> +};
> +
> +&qupv3_id_1 {
> +        status = "okay";
> +};

It's already enabled, drop this hunk

> +
> +&spi11 {
> +        status = "okay";
> +
> +        st33htpm0: st33htpm@0 {

tpm@

> +                compatible = "st,st33htpm-spi";
> +                reg = <0>;
> +                spi-max-frequency = <20000000>;
> +                #address-cells = <1>;
> +                #size-cells = <0>;

This doesn't have any child nodes, remove these two

> +                pinctrl-names = "default";
> +                pinctrl-0 = <&gpio5_dig_out_default>;

The label should be descriptive, usually following the (destination)
name on the schematic

> +                status="okay";

When you add a new node, it's enabled by default - drop this line

Konrad

[1] https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

