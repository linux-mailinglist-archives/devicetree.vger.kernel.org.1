Return-Path: <devicetree+bounces-31818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DED82CC94
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 13:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB06B2850E6
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 12:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE8C210E5;
	Sat, 13 Jan 2024 12:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s48LZkN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157D0210E2
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 12:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-336746c7b6dso6127972f8f.0
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 04:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705147782; x=1705752582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IG/55Cf3qu6wUWnb9WGIqVzCFMPu9zDS54WirLALgRs=;
        b=s48LZkN/4Q/+pf490OUXMxbhWeUEyUsWnmOe+cfEG+CEYo6EIXcgdhNN2ZKe/dnbZd
         mX14QNw0ZTWBVX4kw8lwhRoMS5I6Lij3/m1lqUkRHRBmg3WI2DY8stoKWZ4bPqVA3UQX
         A6m4f2HkevWykfUfP/OBTg7uVB2TANqrXXOFhJh0RM//uKIm5QrUcNXBSjyMy3AjN7yu
         /M988mfQxZcjL3AUGCA1WwGeYS5cm+I8AL9M2EJNK/Pq1MGwaWd6KoAn6QJnOjY+bHay
         CVd50R8uCuiLfXS4h0qWcCiCsNINAEPtLuMRqQw+AcLNQE0Gqz+sQpEEuMVoRp8R3ncz
         lqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705147782; x=1705752582;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IG/55Cf3qu6wUWnb9WGIqVzCFMPu9zDS54WirLALgRs=;
        b=nIViQKQxpxWPe/Eyfd9z4TZbT7oQ3zBduQwiP5nVuoIKKlRW+nhQPV8cKhuPGk4pMu
         TAZFNqnEUzu/7sezOhDN2PO4dpoNhooEY1cx4W+2KDsozSFyF3k+TviIiHVU7SqZa4Kl
         Nk2lYZuvcsbzacZiu47Tg7lqzfkRnOX1coNiPGmB3kGgqQEsht6dANLzJvHrg5G91MCv
         ThVKDUm1ehzFzTKUqt7pn1jV0HDUCw1fdBMJP+UTO3ry7D/5OfH4dPhXilOWE/2My81y
         F6dLJBvpOrctpBm6GcQeNRwY9RniJM2Gwd+JdJ1brMLQc0feYVvBtHwxM4/ZNcsOiM66
         1zjw==
X-Gm-Message-State: AOJu0Yx/dGMllFC9d2Gl6oPmtvAuodGZFrGhTmSWb/+Gx/FIMTcxde9J
	p9TUULNCv3FbI78Y3eQZKIfOu8mAfsHXaQ==
X-Google-Smtp-Source: AGHT+IFOjVkMUDiX/JF6Ci8fa9sYuwV217p/+QK4r8dNQDD1tbjte+LtvE/BHdAp+VjJKXZ6gVnNHg==
X-Received: by 2002:a5d:484d:0:b0:337:2aa3:ac85 with SMTP id n13-20020a5d484d000000b003372aa3ac85mr1372470wrs.117.1705147782263;
        Sat, 13 Jan 2024 04:09:42 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d4c85000000b003367ff4aadasm6606483wrs.31.2024.01.13.04.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 04:09:41 -0800 (PST)
Message-ID: <cb2e06cb-2139-4846-8f7e-9102d952a7a2@linaro.org>
Date: Sat, 13 Jan 2024 12:09:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support USB-C data
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-4-de7dfd459353@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-4-de7dfd459353@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/2024 05:42, Dmitry Baryshkov wrote:
> Extend the Qualcomm USB-C QMP PHY schema with the USB-C related entry
> points: orientation-switch property and USB-C connection graph.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 39 ++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
> index 868fabd44d72..da5d4cbca24c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
> @@ -50,6 +50,22 @@ properties:
>     "#phy-cells":
>       const: 0
>   
> +  orientation-switch:
> +    description:
> +      Flag the PHY as possible handler of USB Type-C orientation switching
> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output endpoint of the PHY
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
>   required:
>     - compatible
>     - reg
> @@ -129,4 +145,27 @@ examples:
>   
>         vdda-phy-supply = <&vreg_l1a_0p875>;
>         vdda-pll-supply = <&vreg_l2a_1p2>;
> +
> +      orientation-switch;
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        port@0 {
> +          reg = <0>;
> +
> +          endpoint {
> +            remote-endpoint = <&pmic_typec_mux_in>;
> +          };
> +        };
> +
> +        port@1 {
> +          reg = <1>;
> +
> +          endpoint {
> +            remote-endpoint = <&usb_dwc3_ss>;
> +          };
> +        };
> +      };
>       };
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

