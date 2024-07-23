Return-Path: <devicetree+bounces-87658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5BE93A3AA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 17:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE58D1F23C1F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 15:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8263B15444E;
	Tue, 23 Jul 2024 15:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="qvSXdRjC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EB93D55D
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 15:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721747838; cv=none; b=VF0aj8WqUPuZJnIwH2c171F9iAZTwJb4G5nmh35nhaKgPTZirX6F0/uOuJaBzWWjylxHLPJCZllO+NdPBxP+gNzny/NvXqyTOtaN5fgj7XKKoVBdqKn7vEK3cEzAb7M+Nz8wTAyhJUcnMHHEAopZeXGoevy9iBApUT0Fbhm2MG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721747838; c=relaxed/simple;
	bh=k4BLloF5clv2a5Kq+UyoZgTDDctx+BVkEwa4h8tIOIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sclCu7PwVemUbh9hjjk2x7ZQV3zzTmA5yLQT3OMOfYr+SXemtruQJUQ8MWB6TgSHX2UU0lTbuxNv+hfWoB7ERQa52feS8/I8o2lQVCty/vZH8YKUWwQP4ft+LmakNrr6m6QxnG6SXPt1mqBHT4bQHN18SgZ+ydz1sE7D2cN2ccM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=qvSXdRjC; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-427b1d4da32so27845835e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 08:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721747833; x=1722352633; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uea7fpwFzsLB/1iqowl2rAELpCia/ExDlWK7awEvfuY=;
        b=qvSXdRjCkBG13g5mgnLNNc4hglm/SiXhBjvHhQ4PNzMeQegcsoTbvDEqj0St7CZcp4
         t8iQpZbkxyJvx1oxunqN2TkdOiDVkM4kTUVuQV7Bts+J4FpW1UfJ4XoSb24EOG+tc9jb
         MnO+3tkFVFL/cWgrCUrvEsBFKh/vp8ymtLk6IeUNgf4ovFg3ZeUkje0rSAYbOz6s4co4
         VMa6TWjhrdHvdpwDrsGr6I5eM/spR6Y3JOfu39gTko5UPZibc/WPXus1pxhQs1kK4Vlj
         AHqffq732A/Ibz3vc/oLP/nYo9jny9yYaa16XEfwzNyahwN6LY9YcWBMbc5NDO4BRg5v
         gqHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721747833; x=1722352633;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uea7fpwFzsLB/1iqowl2rAELpCia/ExDlWK7awEvfuY=;
        b=R3npyHqJQy2lvOVE2gBAuDnA9DEeobrt1nFl7tEyKfs+0LpLGJCYLelRELrN8uQ5+i
         v//kKTJ6c6iYy1/9021DtDRVfumx8regE827xP+h9qfhq0DfK+mGHgm+pDZGhwStYQ8H
         wi2hUwSGhWjd45UA1DiFmrhbn6rNmWYeBmyFRzr3Wh99cnVMjkAhzKKJ8MG3Z0nIIQdr
         Fw/g5eQgoDjZaJxaAWabI7Jyn/5h6wlnIeXDp3Oes9e3N2Dz1PJ/3DJFj3ght7IwHxGe
         4jXKYLj337GkCTrlQcvvbyZ8yzCGaP/mvZzgE6dUXH7PYaZkflb8W5Phzy2qHh5Sb/NM
         BMyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVAYULs57KTv3wgFGQIx2hm1R4n+C0QT5l300o2DxMrNphVkNXkTeyew2hCyskJLHSofxBNL96yE3OpyIX2LfLoIQsilbtysewKw==
X-Gm-Message-State: AOJu0Ywjyfu6LBFXXUwtv9gTpgUtHEC4XOT/cEMn5HaxkH+ttW1bg8rv
	0+QbQeVqXt1G2620RQbfHBouquHI/XHHOk6e9656bpnd60ieG8oQcMHSJZPnSWs=
X-Google-Smtp-Source: AGHT+IH9roU7SNg3lKjUnvzKa5IVDcJhlS9aYo3/Vqu5EDsOfZaYrMKcTKOzd1KQB0CGXudZUT579g==
X-Received: by 2002:a05:600c:5122:b0:426:618a:a092 with SMTP id 5b1f17b1804b1-427ef3a873emr17950635e9.13.1721747833567;
        Tue, 23 Jul 2024 08:17:13 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d2a5c3d4sm204304085e9.17.2024.07.23.08.17.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 08:17:13 -0700 (PDT)
Message-ID: <e9d53545-80fc-46d2-83a1-79842a729688@freebox.fr>
Date: Tue, 23 Jul 2024 17:17:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Conor Dooley <conor@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240627-display-quantum-48c2fa48ed1a@spud>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240627-display-quantum-48c2fa48ed1a@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/06/2024 18:25, Conor Dooley wrote:

> On Thu, Jun 27, 2024 at 01:13:03PM +0200, Marc Gonzalez wrote:
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
> 
> Is reg not required? How do you communicate with the device if the i2c
> bus is not connected? Is the enable GPIO enough to operate it in some
> situations?
> 
> Otherwise this looks good to me, but given Maxime commented about the
> complexity of the device, I'm probably out of my depth!

Hello Conor,

A cycle has been detected:
Above, you defer to Maxime.
Yet later, he wrote:
"DT maintainers have required that reg is always present"


I propose we NOT mark the "reg" property as required.
(Thus, keep the binding as proposed in v3.)

Rationale:

- The device can be statically configured by pin straps,
in which case it is NOT connected to an I2C bus.

- Even if the device IS connected to an I2C bus,
no I2C accesses are required if the default configuration
meets the ODM's needs.

Is that OK with you? Can I get your Amen?

Regards


