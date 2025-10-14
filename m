Return-Path: <devicetree+bounces-226821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6B1BDBC71
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 01:21:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1944F18A787B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 23:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DC92E0B74;
	Tue, 14 Oct 2025 23:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b="Ky8H5v9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3163C205ABA
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 23:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760484095; cv=none; b=hXWt3yjEwqIK12gK3USF07EuXKNmrVLdsfygheWW2XSJKR01fG1fKZaoR0dYK7GA/3/hHAzDlPpCTwjWeC7me6lF0L6+q/Iy0geDNr7xEk0LZkpiKB405GCq6GJHDhwn7tK39PG4hAid6HbZFz9zPumudOeNUF/kAhnVbUiNIrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760484095; c=relaxed/simple;
	bh=r3Lp5QcNwsIG/hyBCyKlH8nW7+JhQtgEY81j4syZzLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZkiCe8kJyMpia2zWGhJoW+ekzOizG9rLGtWaUSlJXmXLVmNRLJ7dtTVSL+pD5NOL0vZgTTNE/SjiMNGbmmoFlzz+mNNYc09m23JWGK2BuXvM44cZDEnK9JIF+Cr+Cr+S2m2ommxmEAtB6lTDq/taiUWsr/P9WVPT5PX23H2ZsiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net; spf=none smtp.mailfrom=minyard.net; dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b=Ky8H5v9t; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=minyard.net
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7bd8909c682so3891987a34.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 16:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1760484093; x=1761088893; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSShFjPEhGZS0W8PMTI5EHo4sFmoEnYAkCUykXUZUtk=;
        b=Ky8H5v9tQ1WvVDBg5yXG/pZvAxMg6KTx3DZsbZLqbKA0a7UkSo06DgJsw3bsKf/+Ug
         8jPHrgi1yHJ6L5J+I1EJZuR1X+zPEQPOhsAlM5m6M7iCipxpv/usZlFGYl9KGBvoGi1V
         JlB3U3cpXPK6FHLiDCKWqxY3zZPnzQpF8a3eZXlDY2Nb0aWEoWHW6DFqWuhxZ+5BvmPc
         PUorlfW5HpBME8GYnCDK3b9D7x0HrVL5SOKRy9smSIuawuNQEk5QjgmL4qIXLDCcLnBI
         wPL0vZzi4jaQIhegEhvieXPuPvhun3FJvL46/rW5acXXWb8eq2V+cK6DIYAcvQnuTmC4
         sBtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760484093; x=1761088893;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OSShFjPEhGZS0W8PMTI5EHo4sFmoEnYAkCUykXUZUtk=;
        b=MHMBZhWGwy0PQycyXBb2sXEM/GE/yAJhsXM4g6B6QfhhBc7MJ9DXhiv1XDZ4ij9xsz
         KR9ifqjwQpKRT4jWFTslPfjpdW5XAeJHmBLdWRP9bAfZyYkWh6JiB5BLVRxCdl1kD8bE
         Jd2iLYeqxz/Ib64tLtPoAWE7W2sVnRV2YAsDuIBwWSfUPfqlqBCs/05Zl8xThTYxOZGZ
         NaXVIW0Tig54vM8CB6FNV55VNKcHaK7dGbbY6xyfKREjDD6tAO54ZEoxdAACGdH10/HP
         WlsJ1yLfsp4PC8DTy0mjxGJUxBzo9qJXNx8PAhzdjpLmRIq1RH7kM/bx+PHoETElMwZe
         hm/w==
X-Forwarded-Encrypted: i=1; AJvYcCU52tkrcI3H6gvfV+faxD6jFXKTjGJlPqW9ZV/MWQ1NYfxPEVqZo0awhb/lCdYYyD5k3pkOw9gKBxq/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3igPaD9m8MyZ5RH4V0HH6i+O1pPS8UudlwE/2IZ0PUeONdTwe
	35xNsbiTI1bbpDqMfbTube3MRZHUpXzM0CfucwCRCX0jhkFJ9GDNYPDqlE6sAE62/VIwqdiZ5eJ
	7fPRd
X-Gm-Gg: ASbGncugXS8cVRRP+TtEbKSe2vk1jxJjucfbPE8VYyr5rnZucZ1nyyGppJvvqZCY1eY
	w3z4l+IjEVG1voxw6BiCInWm5FzoZlDEX3iMgUy6/pih7xM/ZD1PCFf0oDsJPLIOENbfwTjbVk5
	8Dwo6X8bAZpHLJnhbLgMFt8DKctr5pS+yINkoicGsFOWrVFj6u0bSrnlck0HVuCxytB6VXBuV9d
	vwm+WuzF3ig/OE0USE2cq7/Ccb29bwSbvAMZs9ZrUNz1l5gQeJUsudqHdfszJcV3c1gpy/+r04y
	7K3XhvJxiFK5eXdFW25a25kA+r1yIXJ8VSRlTysOP5kIkvUjuEwyS9B1DZvvyddtg43VahDj15V
	sCgm2rqtMRCPDN8R3E6ea6GETUqGRkKPJvM7vuD6yr1Yf5WRqqlvxlfo=
X-Google-Smtp-Source: AGHT+IFyq+WDPFYOSKVvyIdkGtxTVAzzTyKhwOBWQXTwZ3nOyJ35Dj36gHaI4KcaGzemEBsN+8m9XA==
X-Received: by 2002:a05:6830:661a:b0:799:bdea:3470 with SMTP id 46e09a7af769-7c0df6bc4famr15912480a34.18.1760484093234;
        Tue, 14 Oct 2025 16:21:33 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ad63:63fb:ee1c:2ee9])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c0f90510dfsm4856881a34.5.2025.10.14.16.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 16:21:31 -0700 (PDT)
Date: Tue, 14 Oct 2025 18:21:26 -0500
From: Corey Minyard <corey@minyard.net>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	openipmi-developer@lists.sourceforge.net,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ipmi: Convert aspeed,ast2400-ibt-bmc to DT
 schema
Message-ID: <aO7a9moI23th0Oo9@mail.minyard.net>
Reply-To: corey@minyard.net
References: <20251014152948.3782738-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014152948.3782738-1-robh@kernel.org>

On Tue, Oct 14, 2025 at 10:29:47AM -0500, Rob Herring (Arm) wrote:
> Convert the aspeed,ast2400-ibt-bmc binding to DT schema format. It's a
> straight-forward conversion.

Queued for 6.19, with Andrew's review.

Thanks,

-corey

> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  | 28 ------------
>  .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
> deleted file mode 100644
> index 25f86da804b7..000000000000
> --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -* Aspeed BT (Block Transfer) IPMI interface
> -
> -The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
> -(BaseBoard Management Controllers) and the BT interface can be used to
> -perform in-band IPMI communication with their host.
> -
> -Required properties:
> -
> -- compatible : should be one of
> -	"aspeed,ast2400-ibt-bmc"
> -	"aspeed,ast2500-ibt-bmc"
> -	"aspeed,ast2600-ibt-bmc"
> -- reg: physical address and size of the registers
> -- clocks: clock for the device
> -
> -Optional properties:
> -
> -- interrupts: interrupt generated by the BT interface. without an
> -  interrupt, the driver will operate in poll mode.
> -
> -Example:
> -
> -	ibt@1e789140 {
> -		compatible = "aspeed,ast2400-ibt-bmc";
> -		reg = <0x1e789140 0x18>;
> -		interrupts = <8>;
> -		clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
> -	};
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
> new file mode 100644
> index 000000000000..c4f7cdbbe16b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-ibt-bmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Aspeed Block Transfer (BT) IPMI interface
> +
> +maintainers:
> +  - Joel Stanley <joel@jms.id.au>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-ibt-bmc
> +      - aspeed,ast2500-ibt-bmc
> +      - aspeed,ast2600-ibt-bmc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +
> +    bt@1e789140 {
> +        compatible = "aspeed,ast2400-ibt-bmc";
> +        reg = <0x1e789140 0x18>;
> +        interrupts = <8>;
> +        clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
> +    };
> -- 
> 2.51.0
> 

