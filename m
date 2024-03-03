Return-Path: <devicetree+bounces-47956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B6886F6AE
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 20:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 242D51F21453
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 19:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872A779DBA;
	Sun,  3 Mar 2024 19:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SO7/Pzm9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B28579DAC
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 19:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709492832; cv=none; b=UcjtRWoul1JzCFTmxUYq5nNlCp459c/fUgzjT8oT+OJSihdq4+AQmQvJVF3OGC/X6h35JniPQibIgkPwkYnrG3BocCIRDjic/MHKP5pvYhhOdlsgU5yHWmBpAd+PCsDkOQs3fVRkDHuhFEUm8y0iOHeGLnqupEzuh8loM7jA/ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709492832; c=relaxed/simple;
	bh=Xq/6EX7Vma5DVArRtVZxDv2nekiTsrf7RQfu18aVsJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b8PZ0gFo/PHFvBvPiBMezHz9KBDQBI7XNakGMcLVdPSpclnNmRMf+NpmMWASwPpqrf+Lw86VTa1n0oUVkjFw/o/bigS59DgXj4UVxaXrwxQKpNoFj79o7D7AchsUBzs3IUdbSEPk8vU5d2dD8Q24HjbJI42jlXzVF4BO23DMcZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SO7/Pzm9; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a28a6cef709so614389166b.1
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 11:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709492829; x=1710097629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=t8+5hz1pC1NUruMJAl+eg8w3VSt8O+IZDxY81DWZbIU=;
        b=SO7/Pzm9XXLWchfdpbRM7BK4v1xSE2gJZO6QvknP/GGWh4HQiYt23TF7R5Mo3SRPJk
         Tini7fQ1mr2gRlMkpyLEn5XYngrkSfOP/8vHwSLNy0n5E8sn88YfFv/CY2IbzL9LbXwx
         MrEEX9DRZ8n3qvGEz68ipgB78d9gZsJAwTXXBoGAHYqeEBqzIAjKLKV9Sp8z5e/f2DiW
         j2UnoJ8EUe1bS/lQAlkq8PHs29hu0aq5LYMWhW5dHFRkm7K1CS4gmA+ArScysfm3Mgra
         eT4um6nF9vQxWOI3R/6jv7VL5PMEUIxHGAtw7sm60eZUag5GkqTBxokevwQS/AE9UYMt
         HLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709492829; x=1710097629;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t8+5hz1pC1NUruMJAl+eg8w3VSt8O+IZDxY81DWZbIU=;
        b=bBrG29ucy+5VtPXmtgtQh8ThEcSGmLjoHXzMhDYtZlPv1gUOCQVbp5lPGegmI6W0Yv
         a1Vmmbj0i3d8db+TkwFeVLqjwSgV4n8R12/OPBRc7tf6ri9tmFrtafmZ41I8yqMFNTta
         pLUsLzeQ5vFOjOI3iqGgU4qF4dUoMD/J6UKlnj5/twPNj/mTF6pUC5AxS38EicB7PzTI
         sTnjFTmB6LzamqDuzjlwLgqeXnvCIkOK0yOg0q+nG9ZfkiQ4u4tvv6vzznkel6mc5XQj
         5fNZcxLTbJcV7UZwCpG1XJzAhco9Uebvt66mgCFoGr06VhuIA+E/PC8rXI97zSB9xIKG
         I8yA==
X-Forwarded-Encrypted: i=1; AJvYcCUgDxx1K/aUHkjHmXQ9O6r9jScx+ZKZHHPJGBcI6pjo1tYrbC0XfbOELj68R47vGU5FLOEZHq07pHD1zEjpbfUMGkQtufx8E7czmg==
X-Gm-Message-State: AOJu0YxAe8fMwhvme4lvMpDfkyQqfravcGshHToaWqoKpamGMJr+xq9v
	zXCpMbxsJrlQhawUc6HxNJMKLSNACoHp1jFPaLWyuSfjbCt9mHn8UVVk5ZPpqb6mtsCaUZ0ZKYn
	i
X-Google-Smtp-Source: AGHT+IE0gq/QoToo3IKKgK/wLQhOrWdvlyROKGxYxQmMgG7sJ8DJthEQl1WpJmZwJWFdPBX9DJ+/Sw==
X-Received: by 2002:a17:906:48c6:b0:a45:2038:4caa with SMTP id d6-20020a17090648c600b00a4520384caamr1109660ejt.76.1709492828895;
        Sun, 03 Mar 2024 11:07:08 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id ld15-20020a170906f94f00b00a44e7afde87sm1669822ejb.148.2024.03.03.11.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Mar 2024 11:07:08 -0800 (PST)
Message-ID: <e13610f6-6e09-4073-bc26-108b76c2a88f@linaro.org>
Date: Sun, 3 Mar 2024 20:07:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: misc: merge qcom,qrc
To: Canfeng Zhuang <quic_czhuang@quicinc.com>,
 Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic
 <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240304-qcom_qrc-v1-0-2a709f95fd61@quicinc.com>
 <20240304-qcom_qrc-v1-2-2a709f95fd61@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240304-qcom_qrc-v1-2-2a709f95fd61@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/03/2024 17:53, Canfeng Zhuang wrote:
> Merge Qualcomm-specific qrc binding

Merge? No, instead describe the hardware.

Similar problem with the sibject.

> 
> Signed-off-by: Canfeng Zhuang <quic_czhuang@quicinc.com>
> ---
>  .../devicetree/bindings/misc/qcom,qrc.yaml         | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/misc/qcom,qrc.yaml b/Documentation/devicetree/bindings/misc/qcom,qrc.yaml
> new file mode 100644
> index 000000000000..730efd679ba0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/qcom,qrc.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/qcom,qrc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Robotics Communication Driver

Driver? Unfortunately bindings are for hardware, not drivers.

> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The QRC (Qualcomm Robotics Communication) driver is used for information interaction

Agaim, driver?

> +  between the robot control board and the main board when using a uart port connection.
> +  This Driver will support uart read & write and robot control board

No, describe the hardware.

> +  reset function.
> +
> +properties:
> +  compatible:
> +    const: qcom,qrc-uart
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    qrc: qcom,qrc_uart {


How does it remotely look like upstream DTS? Please don't send
downstream/vendor DTS before cleaning it up. Before posting, please read
submitting patches and/or quite extensive Qualcomm upstreaming guides.

> +        compatible = "qcom,qrc-uart";

Nope, so this is just to instantiate Linux device? No resources? This
looks really incomplete.

> +    };
> +
> 

Best regards,
Krzysztof


