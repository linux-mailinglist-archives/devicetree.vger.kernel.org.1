Return-Path: <devicetree+bounces-249272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A66EECDA5ED
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45D22300ACDC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01FE234B1B2;
	Tue, 23 Dec 2025 19:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pZnfzgia";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YXhRSOXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637643090CD
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766518253; cv=none; b=a2xr91bRxXr4YyJVuflWUtb4tLWkd88C1yGjWgm+70WUy+Z23dxH7Xmin+m9GEbqzKQWf3Y56FXyRmNJYdd8keUj/oPxDJWgigcuosnAOucsh+awQQTz2W9AccLL7/HMRHSlwCP5efRvB+aKRGeXsQRk4GQNyE1jXQeFfEPUNbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766518253; c=relaxed/simple;
	bh=lpfwCWAZ7+wTD7QrVV1mgvT+unO5FNjQODfCh6BMuaA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sr/W5fvJ3e/Zsuy9aqEvQNjk39KV/abz9REQ/o7Y7BvEAY4kw066bb+4bjTEwLSO2Ri3OD7bJjMjAlaewEI9Wnkw8O2HE6f55dYzr7qP9dp3r+EbHh2cwJdzKDsIV1wHaPeqdogdcPwuRccH3f9lpZ6vYvVSijaluYjvvNXTLsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pZnfzgia; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YXhRSOXH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNFcEhC4044261
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h6lriivzVPKYtHRQjomqIXlX
	ye2O+WWWhsb5/tws/RA=; b=pZnfzgiacWhx07YYjGaYRHsLrPekIHwb+fGIJsvD
	a3cgBxbOoVOx2+pUjn6PmBkHCY8JC73Cq41qiHM06JPlFMb0OHM2rvSdhQSDQhpd
	34RqYHuruRNb/Di+2YMQx9KvpDFuEG9MvXvwCUcanEBMz/czp7ckFdzLUvTUKFNc
	e3NWlnwgwPM+zt9GxaRdtYGtNZFWeJhHSEmvXpwJkOVCS2g3jLHo0jJmRSNo72RT
	QUGgVwKG+lxXq/xsIt3GVcT68v8PUrJb1ufpbXmnibLL3+le84YhKjY6SFvZ4X1y
	QA2HgvwNZ7uS3tq31cnupS+G3ENm0+xF2wX4qtJhKhjn8Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cuhbvjw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:30:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eff973c491so131277151cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766518250; x=1767123050; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h6lriivzVPKYtHRQjomqIXlXye2O+WWWhsb5/tws/RA=;
        b=YXhRSOXHYD2EGz1Rgf3JZtBymzV/sH5hHVEJk6/QQhpNcKqgpxyliWPSCCt08dEkid
         /mfYRPdalyKND2S8URMhtZpfBVf5Gv3SpSAcphSwczPX7X2PZquAW6vID+kCIYDycxBv
         KcNxJsaKn0fVevJB+3vdeDxUftPhDL23ivUVW8O0BhZZXE6wmvzDogz0v1to4UEyd4IE
         +vQEdQn/P/2KPDneC44sFm6xxkdLZGmP3h46OO/o5+zqnHd4HCxILcNDXlSYq66UdIbZ
         tqTds5/sSJL5awT90Yrwy+aVue9njoiqZz9S1PWUqSF7UOQlTpJcqGLPq8+mLefGHcWr
         FmKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766518250; x=1767123050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h6lriivzVPKYtHRQjomqIXlXye2O+WWWhsb5/tws/RA=;
        b=v+fNT+7azH387qAsF3J9fHCmFINtpvBfdO64RGaXK5461gYsHnyCM/jLPYvxAhECxw
         bFrN08JrQ2ZN5fnqC3pPyZlnAMQgrHhCSNxg2buLRGi3E1nFToCXlPT6YMDKQEQo+E+a
         T9vZI0ByzHG+u5c2ilmOnwz0Ml+HQuy5BE2QzhvfVI/I8Wo/voYaC5Hww9a52sNq+S1y
         r1IAB0LZXZX0CodGUJUc01RmDrXYQAwAlw7hofuMNZEmcxiWkYKffnzsE1ab5M5H2c1L
         tBXttic14ZfOwuwI3wb1bWgI+KAFuxPi3ZPD8/D2fvu9QSwUt7j+msMjBI3/9RSld06z
         ENTw==
X-Forwarded-Encrypted: i=1; AJvYcCUOqPneDqJ6cJWBHdKs+S81tWp28hdi8X3zUgar94QFoZw0c3tqnxpBAdrKGjBX67Ebvm8I9GPg2rgN@vger.kernel.org
X-Gm-Message-State: AOJu0YwghgSxpYLWkicZtYpdiScE1up5BHdpje8eeaE4aOjKvKSxeDgc
	JM5ce4BQjC9CEPpkjfV4ABw4XBVXU0qZWyeLtQ/vU4ekgqsO2nZ4PQ771W807ZKrFU44enqQMiY
	GSda3Fdl5buy/dHI90pzj3rVXJ7bR9wa3UJ3sNF+8V2vDxynxltbX4MiPNCWafNVc
X-Gm-Gg: AY/fxX6q0HbUeGaXRLXLmEE6O9PnpRYdasbP9ghgfPEvD4Z7gDs3xxM7linkmHbpVM1
	Fihc1Gb7SrhfxH4cJA+rlCCVu/2bDm3BTj8KxCpGyfzOEwOTqX3QEjV9EFPqzOJzV7l4843AX4/
	Rr0zIgZgB8l03SPKs49HVJBiWpLSHOXOxz6YDP4bLkQpWosNh7Ct1d9GNl3/Nd+RfxbtfHzK4v6
	vIiGI3TfC/7jRyK1dUYPdDXdtQTnPIMlzIih3EcqG45NjdLAeMnzS83kutZz0WymGgjfKLo6RjL
	/9afOCxohPlt9EkZGo5tmrQbdKCghgN28BTIrOG1bt7tTXiL66lzuxKTeNn3UXsqGnhUN99KGOz
	BZpRkJyunyT9c59BV2SM8Hj6yKk93Su4LqvZRBh1fKISoWd4HfJbzn9X/m1J2lqElCbpcFo+7l8
	h0cxWtOoZM0V8Hw92ru8WGJBM=
X-Received: by 2002:a05:622a:588e:b0:4ec:f6ae:d5d9 with SMTP id d75a77b69052e-4f4abd9768bmr224557551cf.39.1766518250431;
        Tue, 23 Dec 2025 11:30:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiQFhmg+1LgcdFhv8vPUyL27Emq3BsdV/vBymwMw0Fb3q3aNJMLIasImN8RglxRiPoWEF65Q==
X-Received: by 2002:a05:622a:588e:b0:4ec:f6ae:d5d9 with SMTP id d75a77b69052e-4f4abd9768bmr224556911cf.39.1766518249895;
        Tue, 23 Dec 2025 11:30:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1862846asm4272768e87.102.2025.12.23.11.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:30:49 -0800 (PST)
Date: Tue, 23 Dec 2025 21:30:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 3/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
Message-ID: <fu7rhvpo7t2fjx4l7nvzd2cec7loyjeqyvwgochghyyax4nqof@6bat54r3qgov>
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-4-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223123227.1317244-4-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 6bt6OG-reEYmAKDvYjPPz1dPpbC4xYYP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2MyBTYWx0ZWRfX903koSI9O8le
 orvC6paMQdsM6Dk4IYnCNLBMq2WWKvOPT0RrDPk++URco6ZIP7to3LOXjtxZjwWUI0hjWViWUCZ
 Ei2zDiBQ0G1ZubiQBctfbxnRJ8xnxj8wwKUiK4+8PW3mYx5uzUNmY787jQWYr3JyJwJ8bZ3+ZGh
 lB+893J6qtm5o2NKn/xlRobJ7pPA3s4OmPwyhMzLx6RL6CH9pTbkK5Ff5KNsuzLACIoUpsrnWtN
 CyIl342we+WsNGAQ20diFxmak5A8P8X/5OBlbtHDdXUlqQGi9GJB4AfXCm7QfdLJ3BDYFwPhzkp
 KW+GFOxa8LHkUSM/cR0oEPYP47ewAnzUINwsqpD2r+WYbrL5VPVzl/x9eozsC3DFwzkHcCw3JrU
 hU16Cgkxh1vmZ/YPUANHbGiyffBUfhorG3hnAIVUP8Oout6TuZqFP/j94dJiH62D31IlfaIzN+b
 soepesAlap9fd9kVbDw==
X-Proofpoint-GUID: 6bt6OG-reEYmAKDvYjPPz1dPpbC4xYYP
X-Authority-Analysis: v=2.4 cv=NZDrFmD4 c=1 sm=1 tr=0 ts=694aedeb cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=CyQ3y-Klav5xImQqluMA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230163

On Tue, Dec 23, 2025 at 06:02:22PM +0530, Gaurav Kohli wrote:
> The cooling subnode of a remoteproc represents a client of the Thermal
> Mitigation Device QMI service running on it. Each subnode of the cooling
> node represents a single control exposed by the service.
> 
> Add maintainer name also and update this binding for cdsp substem.
> 
> Co-developed-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  .../bindings/remoteproc/qcom,pas-common.yaml  |  6 ++
>  .../bindings/thermal/qcom,qmi-cooling.yaml    | 99 +++++++++++++++++++
>  2 files changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> index 63a82e7a8bf8..bbc82253f76b 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> @@ -77,6 +77,12 @@ properties:
>        and devices related to the ADSP.
>      unevaluatedProperties: false
>  
> +  cooling:
> +    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
> +    description:
> +      Cooling subnode which represents the cooling devices exposed by the Modem.
> +    unevaluatedProperties: false
> +
>  required:
>    - clocks
>    - clock-names
> diff --git a/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> new file mode 100644
> index 000000000000..90b46712d241
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 (c), Linaro Limited
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/qcom,qmi-cooling.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMI based thermal mitigation (TMD) cooling devices.
> +
> +maintainers:
> +  - Caleb Connolly <caleb.connolly@linaro.org>

This wasn't updated.

> +  - Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> +
> +description:
> +  Qualcomm QMI-based TMD cooling devices are used to mitigate thermal conditions
> +  across multiple remote subsystems. These devices operate based on junction temperature
> +  sensors (TSENS) associated with thermal zones for each subsystem.
> +
> +  Each subnode corresponds to a control interface for a single instance of the TMD
> +  service running on a remote subsystem.
> +
> +definitions:
> +  tmd:
> +    type: object
> +    description: |
> +      A single Thermal Mitigation Device exposed by a remote subsystem.
> +    properties:
> +      label:
> +        maxItems: 1
> +      "#cooling-cells":
> +        $ref: /schemas/thermal/thermal-cooling-devices.yaml#/properties/#cooling-cells
> +      phandle: true
> +
> +    required:
> +      - label
> +      - "#cooling-cells"
> +
> +    additionalProperties: false
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,qmi-cooling-modem
> +      - qcom,qmi-cooling-cdsp
> +
> +  vdd:
> +    $ref: "#/definitions/tmd"
> +    description:
> +      Modem processor temperature TMD
> +    properties:
> +      label:
> +        const: modem

Why it being called vdd?

Why do you define modem-specific node here, while the CDSP-specific is
defined under the if block?

> +
> +required:
> +  - compatible
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,qmi-cooling-cdsp
> +    then:
> +      properties:
> +        cdsp_sw:
> +          $ref: "#/definitions/tmd"
> +          description:
> +            CDSP software TMD
> +          properties:
> +            label:
> +              const: cdsp_sw

Why do we need a label in addition to the node name?

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    remoteproc-cdsp {
> +        cooling {
> +            compatible = "qcom,qmi-cooling-cdsp";
> +
> +            cdsp_sw0: cdsp_sw {

Is it allowed for device node names to have underscores?

> +              label = "cdsp_sw";
> +              #cooling-cells = <2>;
> +            };
> +        };
> +    };
> +
> +    remoteproc-cdsp1 {
> +        cooling {
> +            compatible = "qcom,qmi-cooling-cdsp1";
> +
> +            cdsp_sw1: cdsp_sw {
> +              label = "cdsp_sw";
> +              #cooling-cells = <2>;
> +            };
> +        };
> +    };

What's the point of having the second CDSP block? Could you demonstrate
modem instead?

> +...
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

