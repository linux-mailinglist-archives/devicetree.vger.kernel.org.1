Return-Path: <devicetree+bounces-67692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 637A18C9583
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 19:18:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09D40281029
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 17:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B994045BEC;
	Sun, 19 May 2024 17:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VYoStaD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0701DFCB
	for <devicetree@vger.kernel.org>; Sun, 19 May 2024 17:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716139089; cv=none; b=t1jrpjgiRuNYKnu5+3Xfg0DhLnjGvWP2+7NSp8xRX2C/ekv1qkBNL/Krznz4be1xXN/1uuWHSwupbqv8Q549DFb1Iq747Xe2t8YA5FpG3TaXOjhi7TU5fhwFMoPy8Ea88NbGGPBs2PfwBzTtNVXoKbr3weRlqSzAeE26p2Yjzdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716139089; c=relaxed/simple;
	bh=NU+GexzKZQLtxHZ60Cin+MhIbRiBpdnrsff+oEBMq+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NBPJeqns3hKZX4egfXttXEw2LHrnKPuFZ/wsUXz7CsNiqoQ89OqYJ2RJ/7lUKybPYqb6GYv20xBnHbqYNz+11Ll02G8uzig4Duo92hunlRCvYCOh+n6HfZz2nXtvtqSMXGBCQOG1Jg9kHBm+u3+fDw0PLcwm+2Rw0zAMhWJ5XmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VYoStaD9; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-351cda41b53so1398859f8f.2
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 10:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716139085; x=1716743885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZFfFHRscCa8sWyp/mI5Ke4tlOhkyrUjzyPT9JQYiZXs=;
        b=VYoStaD9lZNIKFnxqD4crEBNDkYM9UB4DW4m3MLm1tka+1dod8u5c9NYL0v64KnZfA
         ySlREF9Q0oveG0S5ljH8EJn/oXsIN2rAlFFqIofFUEvQoyk7kUwwQs+eGGT+K5wBYJ2Y
         cuz12TZSXurYaXxm0KUi2w6t4cN9oVjI6b0lwHkru4BRLomZIW/KdEJWA84ciCdjr1E8
         2dKGzkwOezhhpxgxuINCdVGOLJZmYxmQvXrsiqv0hZb9CvZfVhcQYr6B6GcThatq2Gnb
         cjFSLwr6jFr3SImb0w7o8UM/oyDQS3BXSBQ2bI3JmYV42RMdEoycOdM4Tb3fbeyf0SkH
         28Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716139085; x=1716743885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFfFHRscCa8sWyp/mI5Ke4tlOhkyrUjzyPT9JQYiZXs=;
        b=RmiKylVp8bR305FZWDkd3gDivo/2/6Em3OTfrWleIESNuI87JVjGkTnI9ElSRVmL79
         sWDlG3v9T8bd5v7GStOQm8jULJyH6Q82EN2QtYOZR6Di5e3Lkeh/5FmGSejo0odpmtzp
         RwYJDgJny7NQ8Pez2PtwdVEWvicvIWgdfbB5rLkyp48Jhdvvr72bPHeY71CpddNHCvTQ
         VKWtohx+1K1sT2Ct36tqLm/07/qszWKjDERkW29TtYIa6pR/tIxY9hnOPpfmUuqOoxf1
         lQkIzogBKvKvLKiIRUg4Si7R1G0tvvEe/jKIMinZUT3Btsh7XYc/OFNFJXqHsiApKKKu
         0FJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrFsX5/e7rY9F6oRoMBLDu1IIfJ2gcyknBcolUNJ7lli1X/ph8QHUyAMRRkgIKOpRd6mLDEhXNsmRBVyRM6lG1kd4QaTeZGFbv/Q==
X-Gm-Message-State: AOJu0YwNVGpar4JMp3za+BkWXZ4+RkmUvuHh38a4c3kzlCFTCV+L9jMk
	vVy7F4OkD7ri/PrglwIwGqR1/AQ4aIP3kH8VJzjzjMld6f9CNWx1QNkAtDRx2KE=
X-Google-Smtp-Source: AGHT+IEVe3OJrvn9s1tUxcavG0nrrG8NUEl7NTZuN0MfcIVSegrUuefd4sCREc8FAj/4MId4r0LPwQ==
X-Received: by 2002:a5d:6350:0:b0:351:dea5:f808 with SMTP id ffacd0b85a97d-351dea6093bmr7250421f8f.26.1716139085076;
        Sun, 19 May 2024 10:18:05 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b896a89sm26871478f8f.31.2024.05.19.10.18.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 May 2024 10:18:04 -0700 (PDT)
Message-ID: <ce1de395-3f60-4f7f-9424-bf036134de94@baylibre.com>
Date: Sun, 19 May 2024 19:18:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wenst@chromium.org, kernel@collabora.com
References: <20240516081104.83458-1-angelogioacchino.delregno@collabora.com>
 <20240516081104.83458-3-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240516081104.83458-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Angelo,

On 16/05/2024 10:11, AngeloGioacchino Del Regno wrote:
> +    oneOf:
> +      - required:
> +          - endpoint@0
> +      - required:
> +          - endpoint@1
> +      - required:
> +          - endpoint@2

I'm not sure this is what you expect because I must remove this part to pass the dt-validate.

I have 2 possible display at the same time (DSI and DPI), then I add this in my DTSI:

		mmsys: syscon@14000000 {
			compatible = "mediatek,mt8365-mmsys", "syscon";
			reg = <0 0x14000000 0 0x1000>;
			#clock-cells = <1>;
			port {
				#address-cells = <1>;
				#size-cells = <0>;

				mmsys_main: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&ovl0_in>;
				};
				mmsys_ext: endpoint@1 {
					reg = <1>;
					remote-endpoint = <&rdma1_in>;
				};
			};
		};

But the DTS check returns me an error:

dt-validate -s Documentation/devicetree/bindings arch/arm64/boot/dts/mediatek/mt8365-evk.dtb
/home/*******/linux-upstream/arch/arm64/boot/dts/mediatek/mt8365-evk.dtb: syscon@14000000: port: 
More than one condition true in oneOf schema:
         {'$ref': '/schemas/graph.yaml#/properties/port', 

          'oneOf': [{'required': ['endpoint@0']}, 

                    {'required': ['endpoint@1']}, 

                    {'required': ['endpoint@2']}], 

          'properties': {'endpoint@0': {'$ref': '/schemas/graph.yaml#/properties/endpoint'}, 

                         'endpoint@1': {'$ref': '/schemas/graph.yaml#/properties/endpoint'},
                         'endpoint@2': {'$ref': '/schemas/graph.yaml#/properties/endpoint'}}} 

         from schema $id: http://devicetree.org/schemas/arm/mediatek/mediatek,mmsys.yaml#


In other hand, if I use "ports" to keep only one endpoint for each port:

		mmsys: syscon@14000000 {
			compatible = "mediatek,mt8365-mmsys", "syscon";
			reg = <0 0x14000000 0 0x1000>;
			#clock-cells = <1>;
			ports {
				#address-cells = <1>;
				#size-cells = <0>;

				port@0 {
					#address-cells = <1>;
					#size-cells = <0>;
					reg = <0>;
					mmsys_main: endpoint@0 {
						reg = <0>;
						remote-endpoint = <&ovl0_in>;
					};
				};

				port@1 {
					#address-cells = <1>;
					#size-cells = <0>;
					reg = <1>;
					mmsys_ext: endpoint@1 {
						reg = <1>;
						remote-endpoint = <&rdma1_in>;
					};
				};
			};
		};

The DTS check returns another error:

dt-validate -s Documentation/devicetree/bindings arch/arm64/boot/dts/mediatek/mt8365-evk.dtb
/home/*******/linux-upstream/arch/arm64/boot/dts/mediatek/mt8365-evk.dtb: syscon@14000000: 'ports' 
does not match any of the regexes: 'pinctrl-[0-9]+'
         from schema $id: http://devicetree.org/schemas/arm/mediatek/mediatek,mmsys.yaml#

Additionally, with the last DTS example, displays aren't working, probably because "ports" isn't 
well parsed.

So, I don't know how you want to manage multiple display, but IMHO there are 2 ways:
- removing the current "oneOf".
- adding the "ports" support in the documentation and driver (to be parsed).

Still possible I missed something and I doing shit :)

-- 
Regards,
Alexandre

