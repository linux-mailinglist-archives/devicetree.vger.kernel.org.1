Return-Path: <devicetree+bounces-82049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5343A91E445
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 17:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 773951C21B37
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2EF116CD2C;
	Mon,  1 Jul 2024 15:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="ZCkNohcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A030B16CD28
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 15:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719848199; cv=none; b=GLcW1cdSwcmDo/3VjbXMPGjsz4+KLC87MxBkVj/DjkNhCjMyZTU0ybdsucrLCUe8/+EWp19n5YOwokl6Vpw3ewy4YAqp74gr0R8abFsWw/r50oH/ECYDCReXmZfswhyafy5Jgr2u98/qN+Mgyd3vJZ+bNznFUwy1gys828z7Dn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719848199; c=relaxed/simple;
	bh=COABjvRahnJ6IgnpJ9NfNtQpmwvpDATkNl/kHBcCiIQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=opfHuVHSO83tOctY6yPxnO78ZvgeTxZedwa211YJvEBw3fID1Uc2KX6jEk4r5xiYe/h19qR6vSA7rhT9xQnFbT+gM/knQU8Qwsu4IfqEwX9QHsmiD2r/C9KDeT2Gr+aH92SdJ07MrEsK0hPpa/S1g6Q3PyF9ltU7kHVAPUNvNaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=ZCkNohcu; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebe6495aedso33118311fa.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 08:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1719848196; x=1720452996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bvfSKmQBY9o32fhoQH9rUnJzU5eNp6hOXWuH3dxG8cI=;
        b=ZCkNohcuBXYhjMYG3yL0FeBlIKuAvYZKj3AKKSayGlGedLcXuiPP6k0qZ0xKrPUrQA
         Xv5C32CHXtgPK7La3ZCjlAw2AzAu9AjEOI/0cBUqKYXZx/MoQA54kQdkzLnrSJc8EkQA
         VF2mroHt8CUFCOOh1AmSWUxRbO9xFvC272U3F/iO/nj7N1sXpslFA0Yhlbo8/s6TOz+d
         RiQEainu/BAd64Dw7ZNPzXZ+pFSV8ahwSGnedFh9FIkjjsF3VGI+PXOp4EmLeWghiv/r
         q6CEJnSvYO2bMoEzj2cfo4hRXtRVyD1mi0MCWAd+qbEykQazJElj0VmFBzMj4NyiPN0z
         uIcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719848196; x=1720452996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bvfSKmQBY9o32fhoQH9rUnJzU5eNp6hOXWuH3dxG8cI=;
        b=p9ObL4DJoalssCJ9dl8x7dEytHHP0x+GzymrRsaY40DnYdNlccrU6way2ZJfbgr4oN
         s99FXaINZwEGa+jzpWunPUvQB5gGqw05s5hcq95lPk7F2o+OktoMEoepGHvCVJTmc+uM
         7dDTV8ZAwHRreZySSlxokuw3drFGS1ieqhph/1ksBUcFp8HjqWk7OfurFLUVq3DNz61Z
         yoV9hbFqxFw8nVI+/VLoSLJ3tR71gHg3aL4OhL9dy91yKGYYfqWGzU7o2jpOAbJWUJI6
         8YoAJoU64ep+y0ea+5lkZuefPNrsrpX8u6pSZILgmawfaEy8IdE3pVIf5ujJpGQUOphi
         X+wg==
X-Forwarded-Encrypted: i=1; AJvYcCXvRvVotti3FYMeM1Yt6EZlzafXs1xxyw/BnhDO6hUOCE6UXjzKusO32vchyQv1bGjmGtmxS4kVy2sUi3IwFhuGB3HijJMsZ1z8vg==
X-Gm-Message-State: AOJu0YwQaOU6g74sUUpHC4kV/oVG7lnfmMBVRNi83bpsiJvakVmGVOG2
	xojfcaor+T1H7VXbfkUgb1tCfdpDls6clM4dMRxaNm0tcc+ej12k5tTZv0r0OtY=
X-Google-Smtp-Source: AGHT+IEDSC4uaaLDJAS21ejjh/FE4t1bkWMHxfeTl3h0IkEGfg8lVFkE7MXRxv+Fq3Es3bKHHc6Kng==
X-Received: by 2002:a2e:7809:0:b0:2ec:5a0d:b2dd with SMTP id 38308e7fff4ca-2ee5e6e0279mr37769401fa.39.1719848195577;
        Mon, 01 Jul 2024 08:36:35 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af5ba51sm156852355e9.12.2024.07.01.08.36.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 08:36:35 -0700 (PDT)
Message-ID: <e7bbbe4e-7deb-46c3-9cce-1922f9b6b3a2@freebox.fr>
Date: Mon, 1 Jul 2024 17:36:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240701-bug-of-great-honeydew-cfb6ef@houat>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/07/2024 15:50, Maxime Ripard wrote:

> On Thu, Jun 27, 2024 at 01:13:03PM GMT, Marc Gonzalez wrote:
>
>> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
>> It supports DVI 1.0, HDMI 1.4b and 2.0b.
>> It supports 4 TMDS channels, HPD, and a DDC interface.
>> It supports dual power supply rails (1.1V on VDD, 3.3V on VCC)
>> for power reduction. Several methods of power management are
>> implemented to reduce overall power consumption.
>> It supports fixed receiver EQ gain using I2C or pin strap to
>> compensate for different lengths input cable or board traces.
>>
>> Features
>>
>> - AC-coupled TMDS or DisplayPort dual-mode physical layer input
>> to HDMI 2.0b TMDS physical layer output supporting up to 6Gbps
>> data rate, compatible with HDMI 2.0b electrical parameters
>> - DisplayPort dual-mode standard version 1.1
>> - Programmable fixed receiver equalizer up to 15.5dB
>> - Global or independent high speed lane control, pre-emphasis
>> and transmit swing, and slew rate control
>> - I2C or pin strap programmable
>> - Configurable as a DisplayPort redriver through I2C
>> - Full lane swap on main lanes
>> - Low power consumption (200 mW at 6Gbps, 8 mW in shutdown)
>>
>> https://www.ti.com/lit/ds/symlink/tdp158.pdf
>>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>  .../bindings/display/bridge/ti,tdp158.yaml         | 51 ++++++++++++++++++++++
>>  1 file changed, 51 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
>> new file mode 100644
>> index 0000000000000..21c8585c3bb2d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
>> @@ -0,0 +1,51 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI TDP158 HDMI to TMDS Redriver
>> +
>> +maintainers:
>> +  - Arnaud Vrac <avrac@freebox.fr>
>> +  - Pierre-Hugues Husson <phhusson@freebox.fr>
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,tdp158
>> +
>> +  reg:
>> +    description: I2C address of the device
>> +
>> +  enable-gpios:
>> +    description: GPIO controlling bridge enable
>> +
>> +  vcc-supply:
>> +    description: Power supply 3.3V
>> +
>> +  vdd-supply:
>> +    description: Power supply 1.1V
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description: Bridge input
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description: Bridge output
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
> 
> The device supports DVI, HDMI or DP input, with various requirements and
> capabilities depending on the input. Your binding doesn't address that.
> 
> Similarly, it can do lane-swapping, so we should probably have a
> property to describe what mapping we want to use.
> 
> The i2c register access (and the whole behaviour of the device) is
> constrained on the I2C_EN pin status, and you can't read it from the
> device, so it's also something we need to have in the DT.

We are using the device in its default configuration.
(Power on via OE, then it works as expected)

Can we leave any additional properties to be defined
by whomever needs them in the future?

Regards


