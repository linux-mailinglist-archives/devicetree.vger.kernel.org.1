Return-Path: <devicetree+bounces-138515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C069FA10CA2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 17:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE3DE168917
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F6051E3DCC;
	Tue, 14 Jan 2025 16:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b="uCA7NPIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4B41C2324
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 16:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736873173; cv=none; b=DPrSwzFZnTHAIJWm/7KwgSKLc6pGbDE8o/JnYAZIXldIm7cWiR5S4ZfAQJ7yMzuqbPcz0+HYwkJEbYXGDKQA8GA7SQiZvokHwztvkUWumS0xq58L+fUoFKEcWBHvAluec+pQb6oIQMjVbxeEXJmST/Y7bqUo8YSvYC2pphtpu+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736873173; c=relaxed/simple;
	bh=FeGRHC4opBjeYP+NykQJ9KuRA1EzhXTFeXezxUccur4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fbgv1DO6e1vSc8CYfR6sjOBRB8JcallNrYyPtThgu+2iF8C+S46+r37vdZgMzGiO7z9Vzwe4D70fTYoFdaWF9PgEh7B3NR7mYtVujmrL5mIz+P8KoiBFwNqg4QCKhGp9nh6iUeg1gJpekQBbK6WMGjY6qiamyECUexEsUFVzkdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net; spf=none smtp.mailfrom=minyard.net; dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b=uCA7NPIO; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=minyard.net
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-21669fd5c7cso104829015ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 08:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1736873169; x=1737477969; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RxWYotfxywN3NwGBQO3BiIkoRPcGTpIVsh2/TXME74Q=;
        b=uCA7NPIOcbXCFnA8+H16dcqnyoaP3hU3Ya+s4nJbEZLKwRAy0nKoWWaNYhC0/TIh57
         HPDOI71FtcZGwliRegj+fQBm6jhGRcQqKD8qFhIY3s7rJYexWE+a56cDrSTvc83Kkz5T
         k8hid0dHLR4WxNJ7IsredvG2eKsHqhJe+ltwLxfPNaZArLPvhoSNPDPDPeWKoU1eJZRW
         DIlXBC9e6J+OQ5Sk+bIS/YnUZcUcCsSb+WHdQe0Etrar8PaEFd6/Wx0UqUotf9YM1Ks8
         6eU9mVLUqjBdF1OeP8QsFwDIRCpbmWpcOxu5YXBDVcMaNR4XFO4kxr/kzvRkVvsXA/8B
         fvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736873169; x=1737477969;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RxWYotfxywN3NwGBQO3BiIkoRPcGTpIVsh2/TXME74Q=;
        b=RjKOeaqeX/QBIzv2lKhgINXXL+fThsbva+rU5YMiQcNNrj/aHMVNnEv4IGyXE70wK/
         UgEwh83EcOlm8LLeZ/UM2X0/rjpc8n2vMG5VMIQS8EaryY6gEzb2dumIrNT9M/c4eYyX
         N+i7krRWWjk2YhXox0yqVdwrz7OpM+oanU1VHJbp2k8FTZJVZASqK3Ah+NdjUjiVRwNj
         cFS/B/ro30WiQGoOxQimMPYtI/Qn/AUZrMogVESQuSDrQezWCFi7ntMVkBuijjJi7YSD
         W+FKiF/en3pP73opLuF7tpjQmiJGlCiNgOCpgUDHGWzJrjrBFlifpkghaPGXtfD7L4zF
         MUfg==
X-Forwarded-Encrypted: i=1; AJvYcCVhvo5yEQuq7+s8Bs484U2qToIZdbdTln9+jfbFpoP4k+/zZTUlROSLI5TcDYUBoAoOSku5AWm4qt20@vger.kernel.org
X-Gm-Message-State: AOJu0YzgrYG9rHGhaiFmG+XCbgdpBWGxLjkpDqNic9wA9ebfg9UsWdZ5
	qGm15wr4B8kOw+HV4D0nTGCwoxQnUXRXKms5Epec9HhQv/wmDoYvztL56aPGRMc=
X-Gm-Gg: ASbGncsJGfYagRYqmLJP5Hbe9TDFzuJ8CQqx0WDS4QcG7c0fwazkRX0GrIZTN2/6jKj
	eB7gvndWzin3X+CMn9daeBPZWSUPBkepCHcYkE672JElJpnJ5jHgWRGoJxN6WE7/W2y/mE+yHkY
	h3MBTz2O2STtZDP0cExRMLamuM1ZZY0vTmfhsMPUGl/Vy+OeCS8q0nGNthTv346GaTeUcfC42w7
	NnjLgZY7iY6tJ57O3JuaWHLiscao7GoHG0fGPP6AfdWD3J4/y+aUPhmKEpn
X-Google-Smtp-Source: AGHT+IFduq35RcsU3aO5RRhPDalwAW/p83/zhfkLttMULeNifRcViC7DtwI7vuIYT8rQlSliD0flaA==
X-Received: by 2002:aa7:8887:0:b0:72a:bb83:7804 with SMTP id d2e1a72fcca58-72d21fd2e16mr34122515b3a.17.1736873169522;
        Tue, 14 Jan 2025 08:46:09 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:4641:6dae:60a7:e5ab])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72d4065a560sm7614353b3a.87.2025.01.14.08.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 08:46:08 -0800 (PST)
Date: Tue, 14 Jan 2025 10:46:01 -0600
From: Corey Minyard <corey@minyard.net>
To: Ninad Palsule <ninad@linux.ibm.com>
Cc: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org,
	joel@jms.id.au, andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org, eajames@linux.ibm.com,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/9] bindings: ipmi: Add binding for IPMB device intf
Message-ID: <Z4aUyX8g-JprzLpd@mail.minyard.net>
Reply-To: corey@minyard.net
References: <20250113194822.571884-1-ninad@linux.ibm.com>
 <20250113194822.571884-3-ninad@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113194822.571884-3-ninad@linux.ibm.com>

On Mon, Jan 13, 2025 at 01:48:12PM -0600, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface.
> This device is already in use in both driver and .dts files.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> new file mode 100644
> index 000000000000..136806cba632
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: The Intelligent Platform Management Bus(IPMB) Device
> +
> +description: |
> +  The IPMB is an I2C bus which provides interconnection between Baseboard

"Baseboard -> "a Baseboard"

> +  Management Controller(BMC) and chassis electronics. The BMC sends IPMI
> +  requests to intelligent controllers like Satellite Management Controller(MC)
> +  device via IPMB and the device sends a response back to the BMC.

device -> devices
"a response" -> responses

> +  This device binds backend Satelite MC which is a I2C slave device with the BMC

You use IPMB devices on both the BMC and the MCs.  The sentence above is
a little confusing, too.  How about:

This device uses an I2C slave device to send and receive IPMB messages,
either on a BMC or other MC.

> +  for management purpose. A miscalleneous device provices a user space program

Misspelling: miscellaneous

> +  to communicate with kernel and backend device. Some IPMB devices only support

"kernel" -> "the kernel"

> +  I2C protocol instead of SMB protocol.

the I2C protocol and not the SMB protocol.

Yes, the English language uses way too many articles...

That is a lot of detail, but it looks good beyond what I've commented
on.

> +
> +  IPMB communications protocol Specification V1.0
> +  https://www.intel.com/content/dam/www/public/us/en/documents/product-briefs/ipmp-spec-v1.0.pdf
> +
> +maintainers:
> +  - Ninad Palsule <ninad@linux.ibm.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ipmb-dev
> +
> +  reg:
> +    maxItems: 1
> +
> +  i2c-protocol:
> +    description:
> +      Use I2C block transfer instead of SMBUS block transfer.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ipmb-dev@10 {
> +            compatible = "ipmb-dev";
> +            reg = <0x10>;

I'm not sure of the conventions around device tree here, but the reg is
not used in the driver and it will always be the I2C address that
already in that node just one level up.  It does not serve any purpose
that I can see.  My suggestion would be to remove it.

-corey

> +            i2c-protocol;
> +        };
> +    };
> -- 
> 2.43.0
> 

