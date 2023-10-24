Return-Path: <devicetree+bounces-11315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 870337D51DA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B1B9B20B8D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF232943C;
	Tue, 24 Oct 2023 13:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035A51C20
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:33:38 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97CB66E9E;
	Tue, 24 Oct 2023 06:33:37 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1d544a4a2f2so2946698fac.3;
        Tue, 24 Oct 2023 06:33:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698154417; x=1698759217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R27q7c9EKmEosDmmZaiSbraI2ky/QFLv5D4s5VAG5mA=;
        b=ksApmv3bSRNvZImi++yoceTVO4ClUrdTPsowLaUo0GovB6afs44ErdjJANeiWuWFcI
         76gQtuBO9qQ848ymKwDZVMY1feUqJSxoDgD/NztmASSvkChyyLgNjTJwNbAxiXxns/Xo
         i4n27V13vEGQ9R5hFewUDKNBZd0z5KmSEL9FN4meMm9jr/cF/qWH6J3DtqCt7M04A+kD
         IuD3S7wvL/kQJ210KYX9k7STt27V4GFbJNnExl3Xz0kUP+Tc7rpIOr37IiXVEwwsOfJV
         PS+uz0ezBJNqba8XGDV/8M68c2JnbJcbEogud7x3H9lKaMh1VfCBvAKLfjYc+IWEH4Ik
         bAAA==
X-Gm-Message-State: AOJu0YzTfYOE5BRXRKHdZD4ma1W1I7hQFzl1y5oWJlUPRfDoyKSQx3Fw
	ynta46/vnfGQHFxKq+4SR6gM2bXFnQ==
X-Google-Smtp-Source: AGHT+IE0RQWbN5MRGPoN8XI3I5uiTU4s7pxD1k09Wc4jt7VpGEBTvj8O1EeQdZbkLq80NXHKwW83Ag==
X-Received: by 2002:a05:6870:4c02:b0:1be:ceca:c666 with SMTP id pk2-20020a0568704c0200b001bececac666mr17699878oab.14.1698154416791;
        Tue, 24 Oct 2023 06:33:36 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id zl1-20020a0568716d8100b001d4c5e4c2c5sm2112612oab.25.2023.10.24.06.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 06:33:36 -0700 (PDT)
Received: (nullmailer pid 3514808 invoked by uid 1000);
	Tue, 24 Oct 2023 13:33:34 -0000
Date: Tue, 24 Oct 2023 08:33:34 -0500
From: Rob Herring <robh@kernel.org>
To: Brenda Streiff <brenda.streiff@ni.com>
Cc: Gratian Crisan <gratian.crisan@ni.com>, Jason Smith <jason.smith@ni.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 tty-next 1/2] dt-bindings: serial: ni,ni16650: add
 bindings
Message-ID: <20231024133334.GA3505191-robh@kernel.org>
References: <20231023210458.447779-1-brenda.streiff@ni.com>
 <20231023210458.447779-2-brenda.streiff@ni.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023210458.447779-2-brenda.streiff@ni.com>

On Mon, Oct 23, 2023 at 04:04:56PM -0500, Brenda Streiff wrote:
> Add bindings for the NI 16550 UART.
> 
> Signed-off-by: Brenda Streiff <brenda.streiff@ni.com>
> Cc: Gratian Crisan <gratian.crisan@ni.com>
> Cc: Jason Smith <jason.smith@ni.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/serial/ni,ni16550.yaml           | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/ni,ni16550.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/ni,ni16550.yaml b/Documentation/devicetree/bindings/serial/ni,ni16550.yaml
> new file mode 100644
> index 000000000000..72ab125dd892
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/ni,ni16550.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/ni,ni16550.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NI 16550 asynchronous serial interface (UART)

Is this significantly different than all the other 8250 compatible UARTs 
in 8250.yaml?

> +
> +maintainers:
> +  - Brenda Streiff <brenda.streiff@ni.com>
> +
> +allOf:
> +  - $ref: serial.yaml#
> +
> +properties:
> +  compatible:
> +    const: ni,ni16550
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  ni,serial-port-mode:
> +    description: Indicates whether this is an RS-232 or RS-485 serial port.
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [ RS-232, RS-485 ]
> +    default: RS-485

We already have 'linux,rs485-enabled-at-boot-time' which seems similar 
purpose. It also tells me this is not a fixed in hardware setting. If 
that property doesn't work for you, come up with something common and 
explain why. Or explain why this is completely unique to this UART.

Rob

