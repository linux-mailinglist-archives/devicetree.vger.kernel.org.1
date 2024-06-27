Return-Path: <devicetree+bounces-80958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB2D91AD18
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 394ADB28602
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2050F14EC40;
	Thu, 27 Jun 2024 16:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="uLCCihFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCCA14C592
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719506763; cv=none; b=mJTRbHvrtvc93tnj9eKH/1Kan2oltZo5c8366hQTFhXioQ2r60QJIGFU1I/JPwFCp7s92mpOiSqQ4AMSdkjATMYitsyhr7Wj/KVJDS0VKCp8JjooVnZkSLRBZcwVXv2RcbbwfxkrBcrGdxM3NFdqTCnOpnp66quQQKhbgx0F7Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719506763; c=relaxed/simple;
	bh=GpSGQC8Lg26QkYGefBuZKxp3Opdx9gK22ng1OpQErTc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lo/8SH7JM0PBIwm1Rh88rcoPebqxdf8td/dBvsH3qzBw3f65E9c10PHg3sf7TYIu4/nz6hgicXHlQ2h5Cn6NOtdHBbrwklQOno2WjgWDTBCJ7DPlx506d6tJSdAgfV6qTQzcwz3S7wdy74Y7AUf3iBkBPVG7P3BVBeapIHqWVx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=uLCCihFf; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-421f4d1c057so63902485e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 09:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1719506758; x=1720111558; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RUlTgVjd1SWrlQFq5ZUdpN+bd1M6z2ww4u0olJxdHqw=;
        b=uLCCihFfiYEQiImHZvHyacJ5YxKWpiKWUn9wu7s7Ohs8gXm7WAPJKjuY55kOzkCElO
         VZZGHNBQz8YOGE8lRjMovh6lSCzzEsMvUoR5+lIPB6fyZA0wTHRo62vVZTaOUwKvAWR4
         IdIxNjlmHyC2zu7Ws03iE5hP/ng+4nYgfVtv/9kj+cQjlM8AFOAs9YUU+zifm8jp+/Xz
         NQR0a695BdQgwrWNKQnovCDD68h4GcFFAxfXjErrtfyXAYtFCUszEWb9bgNUVcu+yv+D
         DOa3us310RIAbdtEGg0TONSrcwk1soitAGiUJ1qGZyEQ4rc4fw8mMSI0QQo2sw5TxeR2
         XwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719506758; x=1720111558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RUlTgVjd1SWrlQFq5ZUdpN+bd1M6z2ww4u0olJxdHqw=;
        b=jewa4Ck8nX8bLrCwbwsV7C58YEKiF9LaMw3JYhXl5Mg/8Rz0Yuo+K8CXUXZtfamwel
         v2kZBXsVAUR4lQaJir19WIVcrTcrkUa9oGVqLfziPAnu6nEnJj70H3qB3QU6lbo/Bmp4
         M0QVWkkWcu7t117wdw5qtVDpqhTyz2My8xsenXRz0djrQ62eR5WsZAvg42b+bYKbYckK
         PPGruqEfoykHAlFZcA+W9gFhzz586+HABROrmt90QxursnJ22WjI7Lc6s3xnjzXXgJC5
         qXUL9LwltQiiq7SMvCEV7eiypqOJAKQC6athRc1zV4ePRB0Kwdrdq03BhJM5QE7kQZeA
         DNLg==
X-Forwarded-Encrypted: i=1; AJvYcCWLszVpmjXvUjduDsOOZ8V2mv/3zUtjnmPnNXoF0ZvjrGg7WUWTl4nIf/lW79oPcUoiJabO75vw3b1Ya6mZZmLYA8CQ77kaFTz28g==
X-Gm-Message-State: AOJu0YzIygyAgXci580TvHzSYAv3UKgICA+44PK1ubhO8xXR7w1maKYF
	743Dgfwmi7/3rwTdnCVhxCLgOAC9AjG45Ve55swQYUb1BOui8qnj7Upx+s+rU6Y=
X-Google-Smtp-Source: AGHT+IGIYRxdqaTOfk3Ahf8IGX/zJweg6pUTNHBb0iDQkXENMydzf+ntT71BoddaWEhyCxAUa1GbDA==
X-Received: by 2002:a05:6000:184f:b0:366:ee84:6a79 with SMTP id ffacd0b85a97d-366ee846c15mr12700480f8f.51.1719506758451;
        Thu, 27 Jun 2024 09:45:58 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674369ecd3sm2401901f8f.104.2024.06.27.09.45.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 09:45:58 -0700 (PDT)
Message-ID: <2fe0c2c0-2f67-4549-b62f-3b9db005d3f7@freebox.fr>
Date: Thu, 27 Jun 2024 18:45:57 +0200
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

Valid question.

As discussed in my brilliantly expanded commit message (:p)
the device can be configured in various ways, either through I2C registers
or by pin strap. We use the device in its default settings, so we don't
touch any I2C registers, thus I'm not sure the reg property is required.

>> +required:
>> +  - compatible
>> +  - vcc-supply
>> +  - vdd-supply
>> +  - ports


Regards


