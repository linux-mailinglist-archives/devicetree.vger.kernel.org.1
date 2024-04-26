Return-Path: <devicetree+bounces-63211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 433B68B40B1
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 22:11:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF147282E85
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 20:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA99E20B0E;
	Fri, 26 Apr 2024 20:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LKz5p9fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60903125AE
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 20:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714162279; cv=none; b=gQszUl51Leq3djRdRN77+t2D9YfSa32tS5Y6S2Q/f04sixvVogZDjgv3bD0MJIROwLBWrH/QtP6GWHkxsz9MPAE3eKxA57A5+d75koOOEb/EQhM/jvj6ySaNd5hqMnqNrnQWrxByzRNy4BexwoH/1OtTtcctsbLxWYYf2PLJ5IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714162279; c=relaxed/simple;
	bh=CCtrDmowOfUzSRgAL6a/caO428RWP0SEeDG7dtLDLu0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZOdsxa7WvXTpDx/YRzrPo2Jhnp2aOuX1Z56xgJtyl63avHIZDCaYCjtv/rJ/RsaLwqD+/gAbmd8C9d3f5ZvzQkb/DkdzSWqcUUbX69kQpoDYym0ei5ZKxrq3yw3JbfmFl4ofIW94yifgpmTZFpyiB/kckNKbCuUSt/yqmhV+0V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LKz5p9fq; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c85a9b9143so493446b6e.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 13:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714162276; x=1714767076; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6CwGplRyVlrAojs0p2Bji7yf6qM7XioPGpQcoYE219Y=;
        b=LKz5p9fqrQuDYdCfGxq7VMw3zzd2k+fVYbrPnBE49UogwCka8EC7lu+/RyKUFawqJ+
         XcpN2obHhLp9watFnRtosuTZU8UI+mUktNgiH+1jo4mhs7bcrAp2k+YzV3EMDLh7St8N
         5uB/cHn7Ab0Cu6ITrxmkSDQLCa++u5cwAHJcRTqCOXspQWBOQCOJRhx8Xr08n/ao+72o
         Rjwo/psXVmMYnKo30ev5Bl2GSeiyHEs1POHRM2RQYu63R6VYNMn/NXk755+Qf8eWPmsZ
         kleXOhfKluaqe1pUVvikyNn0y1ovkU98uakFMMxC9N0Ydle9i4ZwjF7Twr86384UYLQ7
         Le/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714162276; x=1714767076;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6CwGplRyVlrAojs0p2Bji7yf6qM7XioPGpQcoYE219Y=;
        b=I39mhxJigvj4wnO3b8PiDTilGRjZP9UlwBCTYar2Q6K2gtt2jhm5W9yEAGgPg+pTyt
         LbwSQ05kZhHTYMoLbZucC9udSP1mKuZf8P06yu9eeV7aZWXFkQJUx14/Jv9wYH9g7BCg
         sdx5O6XSGbFMafyTbIotkcUdHIDlRJ/wQsuy6D4HSAOxVDiU5DpogMmIG0pgxB2nxxK1
         5qYkBpEHL+aNf3WS8o4iwL611s5riS8xssH/4EOmsEGXDtNqLdtSVbOkqAS+yQNEQbNL
         8+uufbGs4ZHtNk33ma3x3zsTIKxTrpHOuvlRcW4HbT9lSvbkkQg+K1k2n1XEGeOkNJox
         +fFA==
X-Forwarded-Encrypted: i=1; AJvYcCXKEGWUoksI+6uJxtZOrohtYgAW16OOI5ESy/KbPoHQvY9yCLYtSclJa7AiLSDNr8toHyYnuHl/qLst3KoJnUXh31CQipbTT8FrXA==
X-Gm-Message-State: AOJu0YztKWzM1mfQH4cqaxea4TnG9DiwgHTpXD3o52A90Awfs7jLGRTm
	V9SK4XZLhCTu7GVQZnNl8Njkl6ROICe/5JHz68EIWbLBjX49/p+KQJvDbHkig6o=
X-Google-Smtp-Source: AGHT+IGmGPMXguo4qOP7xmoYacLCC657AcV/qNocAoxOLQZB8ATEhQX5SkqofkF+5cuwjvIkYsjtUA==
X-Received: by 2002:a05:6808:628e:b0:3c7:546a:33b4 with SMTP id du14-20020a056808628e00b003c7546a33b4mr3467736oib.20.1714162276318;
        Fri, 26 Apr 2024 13:11:16 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id a7-20020a0cca87000000b006969f5d3159sm8227068qvk.50.2024.04.26.13.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Apr 2024 13:11:16 -0700 (PDT)
Message-ID: <8bc13253-db16-4801-9f69-b06ba4e129be@baylibre.com>
Date: Fri, 26 Apr 2024 16:11:14 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2 v5] dt-bindings: pwm: Add AXI PWM generator
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 michael.hennerich@analog.com, nuno.sa@analog.com, dlechner@baylibre.com,
 devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
References: <20240424125850.4189116-1-tgamblin@baylibre.com>
 <20240424125850.4189116-2-tgamblin@baylibre.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20240424125850.4189116-2-tgamblin@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-04-24 8:58 a.m., Trevor Gamblin wrote:
> From: Drew Fustini <dfustini@baylibre.com>
>
> Add Analog Devices AXI PWM generator.
>
> Link: https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
Note that I missed the following two acks from the v4 series when 
preparing v5:

Acked-by: Michael Hennerich<michael.hennerich@analog.com>
Acked-by: Nuno Sa<nuno.sa@analog.com>

Trevor

> ---
> v5 changes:
> * Modify to list only the supported axi-pwmgen-2.00.a version
>
> v4 changes: None (rebased, added maintainer's previous Reviewed-by)
> v3 changes: None (rebased, added maintainer's previous Reviewed-by)
>
> v2 changes:
> * Address feedback for driver and device tree in v1:
>    * Relocate "unevaluatedProperties" in device tree binding
>    * Remove redundant "bindings for" in description
>
> ---
>   .../bindings/pwm/adi,axi-pwmgen.yaml          | 48 +++++++++++++++++++
>   MAINTAINERS                                   |  8 ++++
>   2 files changed, 56 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
>
> diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
> new file mode 100644
> index 000000000000..ec6115d3796b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/adi,axi-pwmgen.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AXI PWM generator
> +
> +maintainers:
> +  - Michael Hennerich <Michael.Hennerich@analog.com>
> +  - Nuno Sá <nuno.sa@analog.com>
> +
> +description:
> +  The Analog Devices AXI PWM generator can generate PWM signals
> +  with variable pulse width and period.
> +
> +  https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +properties:
> +  compatible:
> +    const: adi,axi-pwmgen-2.00.a
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    const: 2
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - reg
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    pwm@44b00000 {
> +       compatible = "adi,axi-pwmgen-2.00.a";
> +       reg = <0x44b00000 0x1000>;
> +       clocks = <&spi_clk>;
> +       #pwm-cells = <2>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ebf03f5f0619..d02ece54ccf6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3465,6 +3465,14 @@ W:	https://ez.analog.com/linux-software-drivers
>   F:	Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
>   F:	drivers/spi/spi-axi-spi-engine.c
>   
> +AXI PWM GENERATOR
> +M:	Michael Hennerich <michael.hennerich@analog.com>
> +M:	Nuno Sá <nuno.sa@analog.com>
> +L:	linux-pwm@vger.kernel.org
> +S:	Supported
> +W:	https://ez.analog.com/linux-software-drivers
> +F:	Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
> +
>   AXXIA I2C CONTROLLER
>   M:	Krzysztof Adamski <krzysztof.adamski@nokia.com>
>   L:	linux-i2c@vger.kernel.org

