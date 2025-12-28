Return-Path: <devicetree+bounces-249940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44931CE50ED
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D9AD3009FA7
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 14:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EACAB194098;
	Sun, 28 Dec 2025 14:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vf5c6h9s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L3jRWm95"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B4A6F06A
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766931653; cv=none; b=j0dEW/laub4Hq8TruaXtaOJj/VN7oL4olvxHYAzyumDwzwSbDxAHipO/3r9hND+SjfsbTZQ6XJIwoJNYwWVcn1VyU1/CwE17RysJWcXny2tUdfrQgih9bc1FLfRq2YGpHVWgTZP2UnUTVWlbT4+FtkrmKOtwOCSoiEIdXmgHols=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766931653; c=relaxed/simple;
	bh=CkCfmQK2py/H/MdTLyGaCQu/e56lLCGGa7Ihg9zl0hA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DAeghW6Vq/dBlTZLoAfTXWlLZUXHppN/kKrprwLABDU6vVQxbrtZkYL5BEuiP4/T2v08iNUCpsCdGelk4HFaTgl2nw719tmYKsI4KwiSXHreLsYi2buyeW7EJY9B6WfY0oCx4YqXPECnJ8VhtGIFpgs/JQloi1EJ50O5ynCKZ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vf5c6h9s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L3jRWm95; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSAP3ls2628256
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:20:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZV90aa2JGVwVJ1ltYtHFbAF8
	YUWVR1CPjUq+qjIlEgw=; b=Vf5c6h9szKtuBE0es3+wRvC0dKuumnFBan4d/XoR
	lVoy3QzYCNS3e+fjKfgSGx9L7uViDEtYsIOdzRSCB7b/HZ9XXojMGpj8pR7lBcTb
	dP3i9q3M9xhn0b3Xt6MfKpVpWdnBszvAIdI++NaMZYpCX2IFGKKj0yRfJ+j5He6M
	k4QO6oQACsaUO/VEBgkwl46IBGI97vW9VGbGhnD44in8062Qs8KAMhzbWRVcXXaU
	ZW8XNPEgWWBKd1y2wiQZHoadCNdAzrIdQIldZmyOGmSA1A9y/mJ5x6g8lF2HwNO6
	AWFry7vdfyCa9VApvJFU9fDEW4rEODlQGABWfnHCb+Iuhw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7hsa90v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:20:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0193a239so87580431cf.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 06:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766931650; x=1767536450; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZV90aa2JGVwVJ1ltYtHFbAF8YUWVR1CPjUq+qjIlEgw=;
        b=L3jRWm951fkFQX4o40sikLPB1EeagNYCsmWJpwSjFDi2HaeHv37LhBjfoXhHEoc95C
         PlqkMT7KzJ5eW0lXmrXKI6tdj1D0iEl8xoCFpToezrVJpEsqPuEilMSo5jLVsLPXIUE0
         /4/Q/1A7Xsbi99Ocg2GmN9gsbJgdu5p7Hx9jpcTibsf2pMysQX70OC7zSi8mB0HhN5xI
         2F78lT+3br5HueFt4LkjL7OEEyUoKt5rtpNlLjUP7feZHrnM006YahVxn/rnyvUqIFd/
         zMnz1iUbhmhXptPc5KQVeDOxXk4t46HMwOnxIOzhGaFqbu75rOiP4ivSkwEdWoGjw0QS
         INtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766931650; x=1767536450;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZV90aa2JGVwVJ1ltYtHFbAF8YUWVR1CPjUq+qjIlEgw=;
        b=YF/skcoVzIrDdAEfrryQ47/1rOA3niY82EWZfXIIH4eHgaT/2uGcYWDlAQuJZm5jcU
         xA3WjOsSDNud1kjVHcZ1FncLf6sxgCCkfgv4NDpmt/j4tQMFestwAyU/gWtDJo2ihqOW
         HtsjNC5+ysjWOvAcNdqJ7A5H0l2gamJ80CfhskjZ7WtIPILG3304udUeNH5V4IFfKM5S
         +J2H13vn7j4CThVTvynBE2i0sBF4x4DLaCEfjhwDgF739c7tM0y2In/+x2BaRSHSaDQv
         hWNdbvDmYtjkkXEl7ru3yAq+OClS8ERQ0i49c2QfmfHZ6B+6Ncr1EQkyDj+/chVFr+b1
         P/sw==
X-Forwarded-Encrypted: i=1; AJvYcCX8/vRQtdFC2myXApd6qS+qjJqhJ1hyfrqLfQDQpVnMUxmBpZyj8I1oyqYhZ06AI+5IcUyc2cxfUVmZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3lcFmslU3w9+71JkwCTw7QWPeS9g7x+h8s/aQUxYcN5h3D1tK
	mDQiwwcoiwYa3ErJYCV9GS1LIp1c2cwyclBvgFWHy1T/qlHuatx9yuvEhNwSSnDezAwqwoPHAWO
	bnsaYUqgnBToET25qglCe6Fkt3zwdkY2g75Xz3gyCaQf1kRBo2AsqgSOhVJmK24n7
X-Gm-Gg: AY/fxX6Iy5Jq6nL/uk+8URXJlLSsLAYF7o7CJpBjJDtUEpuKu38ydboNAk9z2QJcgQ7
	NcjyPN/hK1uncJDdeBVnAUvzJdbtGTyX9LPab8JiAOh5n1wum1SSvsswpw5tdHLrTFQmfao0MVb
	9wUg2FGhZZw8mo06wKcRWNwRdbhNN+3mh8gjg/A/Os5NGehZq3u0MI1fvXZ+3Tqg36VXoQK0zMg
	1NXLlOd+v3BWEjzBj6s0ZzUjQgCRNiiQOLAxGIhGJ//+UzNzoU0w5SXLrSyGT92S/MMcynQitvS
	oZFBv9Q2PyMkJE4NYcRmpGkRqVMvr+Z59fTtY5Tc9Wgrlgiel/B351I4hgGNHzQihuwcDa4nt7G
	j7oci5+upE0amx7bmjurChGsul0uZSeagZ1NHkrUlusv9hifxNt4Bo/LEJ2iGNYiO4oDl7RfYpH
	fXr/QaMtwx0nz4ONmh2mRops0=
X-Received: by 2002:a05:622a:4d06:b0:4f0:441:96be with SMTP id d75a77b69052e-4f4abd6097cmr400844801cf.51.1766931650155;
        Sun, 28 Dec 2025 06:20:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgLon84UIj6xT6LECozm3iETiUIpuOGMX0UBf3yRSXKGa+FwW7Nu23cxGm2ZieR7OnQ2nGGQ==
X-Received: by 2002:a05:622a:4d06:b0:4f0:441:96be with SMTP id d75a77b69052e-4f4abd6097cmr400844381cf.51.1766931649650;
        Sun, 28 Dec 2025 06:20:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5eb2sm8016730e87.1.2025.12.28.06.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 06:20:48 -0800 (PST)
Date: Sun, 28 Dec 2025 16:20:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Message-ID: <ua6ewpauwabzyf4srnawqz6znsvrzkkl75zwqhpxk4ltdnzvj6@dkntys7skfan>
References: <20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com>
 <20251228-lt8713sx-bridge-driver-v3-1-9169fbef0e5b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251228-lt8713sx-bridge-driver-v3-1-9169fbef0e5b@oss.qualcomm.com>
X-Proofpoint-GUID: mW-f9Wy3lBIhIYxUllDLboOquAnlnYB2
X-Authority-Analysis: v=2.4 cv=O4o0fR9W c=1 sm=1 tr=0 ts=69513cc2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8 a=FMXgjKT3AwVderRZyjQA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-ORIG-GUID: mW-f9Wy3lBIhIYxUllDLboOquAnlnYB2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEzMiBTYWx0ZWRfXy9OBu+fod113
 M16WxlCarwXG8JsflvljCt3D70rZJSEWiEYIQ9BY+L99LGtGQtHuyQXTAJRItaooTc8u5uXGL31
 UGuDpmOGiJ0GcUcXNPgb0PSIL7+OSYQLWVoWnHmCmcf4PjBP4Ii/JlTL3hMoyLbpfp5ZkgrX4xa
 GQRcE+rj71u70BIOmtS2F7KDvus1pgmArV+s4NaVxLawV7duIe/iT/YnMKI0PvFyvFwotZXHs1q
 lRyeZeqjQNzHZIrjIy13Dh5FFLWZivi6CSfHeBpsW6Sy5vo+MyQAM5l4FEIyW7CQFAF6fbED/dg
 2rjRJ8c3/f6S9jAq+2KjzNu2Bu8xWVdS+S/sWhpH5lk/2KzeaYw+ZIJw5EoKRiYIHaxn8xgadEe
 ww8KwuGEXAk7rPbho2HCXOmru1ODKqxBVqQi95jBfzgj6bS3377+rsDihAgRFH0/qzVKTytE1/R
 op6NbXMonI7db1fxbiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512280132

On Sun, Dec 28, 2025 at 05:10:39PM +0530, Vishnu Saini wrote:
> Add bindings for lt8713sx.
> 
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> ---
>  .../bindings/display/bridge/lontium,lt8713sx.yaml  | 101 +++++++++++++++++++++
>  1 file changed, 101 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> new file mode 100644
> index 000000000000..0a6dc56e337c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> @@ -0,0 +1,101 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
> +
> +maintainers:
> +  - Tony <syyang@lontium.com>

Is he/she aware of this?

> +
> +description:
> +  The Lontium LT8713SX is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter
> +  that integrates one DP input and up to three configurable output interfaces
> +  (DP1.4 / HDMI2.0 / DP++), with SST/MST functionality and audio support.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - lontium,lt8713sx
> +
> +  reg:
> +    maxItems: 1
> +
> +  vcc-supply:
> +    description: Regulator for 3.3V vcc.
> +
> +  vdd-supply:
> +    description: Regulator for 1.1V vdd.
> +
> +  reset-gpios:
> +    description: GPIO connected to active low RESET pin.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          DP port for DP input from soc to bridge chip
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          DP port for DP output from bridge
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Additional DP port for DP output from bridge

Why do you have only two output ports here? The datasheet documents
three ports.

> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        bridge@4f {
> +            compatible = "lontium,lt8713sx";
> +            reg = <0x4f>;
> +            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    lt8713sx_dp_in: endpoint {
> +                        remote-endpoint = <&mdss_dp0_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    lt8713sx_dp0_out: endpoint {
> +                        remote-endpoint = <&dp0_connector_in>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +                    lt8713sx_dp1_out: endpoint {
> +                        remote-endpoint = <&dp1_connector_in>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

