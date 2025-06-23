Return-Path: <devicetree+bounces-188311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDFEAE3779
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 09:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C9C11895C80
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 07:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7691FAC4A;
	Mon, 23 Jun 2025 07:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RCFHL/ZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCA1EDA02
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750665127; cv=none; b=sT4iL8mwd59irKLjMvtrk0M6ZrC+k8NXxCujt0yyhFuyevuPiDUPVsMaLCLvSjibyZVJgz+qrz7fqzskdNz96DOFrXT263IdI7CLLQzNsdpMbo+ezdDLChBjaaex5/Rfx0kizGJDEAZjZwaMq4Ua40i79YdGEBuOJs7Z8582FL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750665127; c=relaxed/simple;
	bh=uPzPLbno4uVQ6hlHmPSJ1p3r01sApeqRX2/GUkNLw54=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b10qGfmQC+zvWYXrIU7edX4iH1hRwjFmuMTXHR49IBrzSrOUur11w4a/TRK8TiCzvzXzXPBcSXfIiQa/z7s5qVUqRWUzerjoonfUx2fj9buKbl15cL3kmt1ZEbW20j/I9kct0aTcac1qVZ/hOZjCraXkJrS2O34uz0HTug+VEBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RCFHL/ZI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55MNJGK6012695
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:52:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R8KlMl6rNEnyTnB7QdDvjs+I2KkPy2RCoYHmWXPUL3k=; b=RCFHL/ZIallji1Sh
	eh6Z3rKDDIzs2m4/Vi9wn+3Ap7D1+uGkK7MD0EyZh4tvnIZf0wbgaOJU4k7hBAGQ
	kOcTeBaVdEIOc892GrEjFTBc8bor8BVAdXyQksL2YHgyvKg17AviTnWJuXEkO4uM
	MCTMbd3DusU6mzM0jBcs9mnoj5CTHRDV7r00q6iCNMMNq5C4MsknlfxGOjalkqYE
	7rCHRXR7Vbm45G2LKoOMSD1YgLG2jqdXSo3y8tC9nK7CMeLO8gxIJ1hJiJcRPx2M
	B8Mr3SvjpoKYE6/tjuQsLtPkxoxPuJ+d+A2JJ0RhSdeiu793cvNw2Zc+mQNilr2d
	xvExsw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eud090d0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:52:05 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-748fd21468cso2805569b3a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 00:52:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750665124; x=1751269924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R8KlMl6rNEnyTnB7QdDvjs+I2KkPy2RCoYHmWXPUL3k=;
        b=AbBBMeAzURThFwnKmqK7QUfXlBR+wgQ1f+p6inPL8jUdupVXTsrRhjUfeANAUwA0dG
         PgvSZui+Cb5ou14RMipnJIGC6VQB46uZ9kHD3St3WF8/u2jzb+LhKqmYEnj3pQyzEB6W
         CAEWVjFXSlAi5pdQ6zbWN+DP84+sgXmBY1uss/Wob4FSejogs1yZk1rT8GlSvQVPi0EU
         giEqkrdbonVDMv8m4/P4l0m2uCMIcuRMO88gCaFAyfAFBLk5v/fycKJbs81A4vqrd6V9
         kITiRztv6MwPU3t3/g2nBV/kHrKJr0a6F3bJJgo6aIJ8ElQ/1uNrFmw5s4WP+J0yynOn
         knrg==
X-Forwarded-Encrypted: i=1; AJvYcCVJAiFDS5+Dm4mqEZzPbTrV3zbe0OQEfFwYABQFn5eLS9gMSWr4kfs2/dbAmDhYmHr74pg+V39/jLBx@vger.kernel.org
X-Gm-Message-State: AOJu0YywgiqlbJitQp6YC7d/nxZVocjYSWltjTnwCKnqxSY15ibG8MDG
	Nlo7fbDcMcLUnVdRx8FU4VCYiwwokMk65/1QuZD2GGAuEZrboO2MIy3AoMNMZQG72RDEplAUwn/
	sA0S+RzGjJ89g9lsEpmGGG55SKqCg3jJSp3zN8uYDEXxQPKE0De4zmPEdr2yERCn8
X-Gm-Gg: ASbGncu35mF9uk802vInN9/gdM1i+VHeZBC3zhoFbp0dVtn5QC4RUj9qple1zpNUY8n
	qBU1JEgTorVDNrvriKwjMJiEY0JKNQzRERrE+W9cp1zwgmTuvNWA7OahvqqBjBghSRk1Xs5HSsb
	liXV6z7cASw0POPgP+pbb9KaKADgHhvFOcesMhUc1l4fPMuano30571p0Y+FkykEU8k9py4fZfF
	GT0X2TGkFRcWP1rDGdGbbTiZnUOdaV40qphcA/f4b/ukRA4Oj88MJBUzr0PZ0oDnI9+5AoQ/N5J
	eM8Nf+CExyQibx1cVFdPJMP/JSdicRgNyTlpjRm1w1d5yVQ4RzCo
X-Received: by 2002:a05:6a00:4650:b0:748:e149:fa89 with SMTP id d2e1a72fcca58-7490d5a6b8bmr20059530b3a.8.1750665124592;
        Mon, 23 Jun 2025 00:52:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnefZLmLyw9BZQNOzK+M4PlREh/+03ub4fmgKHNxasTDiuFUjhGZCrR5KVOGMUWET11DC9SQ==
X-Received: by 2002:a05:6a00:4650:b0:748:e149:fa89 with SMTP id d2e1a72fcca58-7490d5a6b8bmr20059468b3a.8.1750665124143;
        Mon, 23 Jun 2025 00:52:04 -0700 (PDT)
Received: from [10.92.214.105] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a6275b1sm7797294b3a.79.2025.06.23.00.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 00:52:03 -0700 (PDT)
Message-ID: <29bdba7e-63f6-4084-901d-beaab0e74894@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 13:21:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: amd-mdb: Add reset-gpios
 property for PCIe RP PERST# handling
To: Sai Krishna Musham <sai.krishna.musham@amd.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, mani@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, cassel@kernel.org
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, michal.simek@amd.com,
        bharat.kumar.gogada@amd.com, thippeswamy.havalige@amd.com
References: <20250618080931.2472366-1-sai.krishna.musham@amd.com>
 <20250618080931.2472366-2-sai.krishna.musham@amd.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250618080931.2472366-2-sai.krishna.musham@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BH0QMtqo9VpkPm0ffi9fHvf_PCynzJ1V
X-Proofpoint-ORIG-GUID: BH0QMtqo9VpkPm0ffi9fHvf_PCynzJ1V
X-Authority-Analysis: v=2.4 cv=eco9f6EH c=1 sm=1 tr=0 ts=685907a5 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=zd2uoN0lAAAA:8 a=5_Q9n8kPR3DJOernC3cA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA0NSBTYWx0ZWRfXwMyeSAmxQrOb
 NXNtpeX2AvjS4EV7sOf9Wc7TRJOxIiaRH59SiTaZ5Atwv6O8CQXrTCdydwfFfFcLY7Dq4s0Kb8e
 w5EEfPc9SadDxH2t+mQGyTzgHQZNZwqVxAf5o48lAryyvgXOpNLyDNx+Q7tPvAnfEkRQ27AKNOy
 2SUZgAzrHeB6oFHe8ILV5k7hmVMEiMurGDbbrUKGxsGF5h9lwstQ+VGAQ54Hgj4SdP7LitC0Wl5
 XY7K4/dtBEzKYQ8LgNwi36nvhSShoGppbfvwX6zFb5HrnQDoHfGF5AqAmoR8W4abzTAv7Gz3KL4
 QIsWQ6jhg/ObOwV/nbRXeEkm8A203p5Fl5H5Snm3Rw+lqPobmuM7bBjqEIOUfewzjD6QMHDf7HC
 ljV3LL0MmmiRtoiuaVd/+HArvAlzf9bn7Bzzl7NaxkSGKWmATpq9Gc6TOutQyrzCnMUACjKA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230045



On 6/18/2025 1:39 PM, Sai Krishna Musham wrote:
> Add support for the `reset-gpios` property in the PCIe Root Port (RP)
> child node to handle the PERST# signal via GPIO. Update the example
> to reflect this addition.
> 
> Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
> ---
> Changes in v3:
> - Move reset-gpios to PCI bridge node.
> 
> Changes in v2:
> - Update commit message
> ---
>   .../bindings/pci/amd,versal2-mdb-host.yaml    | 26 +++++++++++++++++++
>   1 file changed, 26 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml b/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> index 43dc2585c237..3ffe4512650d 100644
> --- a/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> +++ b/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> @@ -71,6 +71,21 @@ properties:
>         - "#address-cells"
>         - "#interrupt-cells"
>   
> +patternProperties:
> +  '^pcie@[0-2],0$':
> +    type: object
> +    $ref: /schemas/pci/pci-pci-bridge.yaml#
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      reset-gpios:
> +        description: GPIO controlled connection to PERST# signal
> +        maxItems: 1
> +
This is already part of pci-bus-common.yaml in dtschema no need to
define it again here.

- Krishna Chaitanya.

> +    unevaluatedProperties: false
> +
>   required:
>     - reg
>     - reg-names
> @@ -87,6 +102,7 @@ examples:
>     - |
>       #include <dt-bindings/interrupt-controller/arm-gic.h>
>       #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
>   
>       soc {
>           #address-cells = <2>;
> @@ -112,6 +128,16 @@ examples:
>               #size-cells = <2>;
>               #interrupt-cells = <1>;
>               device_type = "pci";
> +
> +            pcie@0,0 {
> +                device_type = "pci";
> +                reg = <0x0 0x0 0x0 0x0 0x0>;
> +                reset-gpios = <&tca6416_u37 7 GPIO_ACTIVE_LOW>;
> +                #address-cells = <3>;
> +                #size-cells = <2>;
> +                ranges;
> +            };
> +
>               pcie_intc_0: interrupt-controller {
>                   #address-cells = <0>;
>                   #interrupt-cells = <1>;

