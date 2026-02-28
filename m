Return-Path: <devicetree+bounces-269524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI4kBozIommy5QQAu9opvQ
	(envelope-from <devicetree+bounces-269524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:50:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915C1C248E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BFB0303D673
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E814279F4;
	Sat, 28 Feb 2026 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqhd77jV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5459C3D7D9E;
	Sat, 28 Feb 2026 10:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772275847; cv=none; b=SU5e6ireyHx4CLSh12nbZf9JrX9upTAfuhXvl92uPzNfFDxRamKJfCxlnh2cbBzMQXNdPsOwo8G9ke+XvymkUpfNijv9ItxgSA2JByBuOIhhbMnGpDCaGF3YfO/It1SMuVQ1kt9c3D5M8VPKvpy4o00D0p98moxPmuL0MtvKKeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772275847; c=relaxed/simple;
	bh=EfYv3mrDsc83RiO0KEqvQBmcbhDHgfiULseqQZXVpug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhKAdaCAzQs9jeI4B7fwrUI8TwDVOofgYtpItwEdleOlEMlmomdfwFQlund5ON7MmdqBnp1JAc48jxbnu9aixYY3cwCD6FLdS5Ig16VctCA7HubFNox7erQSRaerV5cG4LrnIKUGKEYAHQRH1GygY9+PIGZz795DD8WxEoLAwJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqhd77jV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3D0CC116D0;
	Sat, 28 Feb 2026 10:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772275846;
	bh=EfYv3mrDsc83RiO0KEqvQBmcbhDHgfiULseqQZXVpug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xqhd77jVXFm1zoYMnFFps4Az328zVbe+HZrNve0veuH9+bYq34bUntcwI5ZUqvCax
	 odUqlT9Zes8c1lhXIR2SB/xFMPt0dy7sballmNh9jvr446n9dqFnfnC/5S0KiUIr46
	 U8ZqLOEGfRFJ6e1pOmtc96DVXzVE4zvnRwXLoU6cWmdcOvCbDwkIQsxllqXeZd5nHY
	 pJeshuyQNl7/+vKVpa72WwR1iefmB1gGwciEReEDovXZ/s5buejbgE/pDHc2uFF/Zr
	 2zc1pRgIw14ln+YQ38/R3U5WSWIQ4BoFIiICBuirBDm1iPgVe5Z5FV/1HIiEQcil2e
	 XjcTFgJwAvcRw==
Date: Sat, 28 Feb 2026 11:50:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Cc: gregkh@linuxfoundation.org, ovidiu.panait.oss@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v3 1/2] dt-bindings: misc: xlnx,axi-fifo-mm-s: convert to
 json-schema
Message-ID: <20260228-industrious-cryptic-dove-b50dec@quoll>
References: <20260227200857.50880-1-lucas.fariamo08@gmail.com>
 <20260227200857.50880-2-lucas.fariamo08@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260227200857.50880-2-lucas.fariamo08@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269524-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[linuxfoundation.org,gmail.com,kernel.org,vger.kernel.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,43c00000:email,devicetree.org:url]
X-Rspamd-Queue-Id: 8915C1C248E
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 05:08:43PM -0300, Lucas Faria Mendes wrote:
> Convert the Xilinx AXI-Stream FIFO IP core bindings from legacy text
> format to modern YAML json-schema.
> 
> While converting, the following changes were made:
> - Updated property types for 'xlnx,use-rx-data' and 'xlnx,use-tx-data'
>   from uint32 to boolean, as they represent hardware features.
> - Removed the rigid 32-bit constraint on data width properties to
>   better reflect hardware capabilities.
> - Renamed the example node to "fifo" to follow generic naming conventions.
> - Removed the legacy text binding file.

Last is not the change made in conversion. It is THE conversion. Drop.

You also dropped 15 more properties without any explanation!

> 
> Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
> ---
>  .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 95 ++++++++++++++++++
>  drivers/staging/axis-fifo/axis-fifo.txt       | 96 -------------------
>  2 files changed, 95 insertions(+), 96 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
>  delete mode 100644 drivers/staging/axis-fifo/axis-fifo.txt
> 
> diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> new file mode 100644
> index 000000000000..b3e6a2189289
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml

You need to respond to previous review you received.

So again - isn't this DMA? or some part of Xilinx SoC? Or FPGA
interface? Because for sure this is not a "misc" device.


> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/xlnx,axi-fifo-mm-s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx AXI-Stream FIFO IP core
> +
> +maintainers:
> +  - Jacob Feder <jacobsfeder@gmail.com>
> +
> +description: |
> +  The Xilinx AXI-Stream FIFO IP core has read and write AXI-Stream FIFOs,
> +  the contents of which can be accessed from the AXI4 memory-mapped interface.
> +  This is useful for transferring data from a processor into the FPGA fabric.
> +
> +  See Xilinx PG080 document for IP details.
> +
> +  Currently supports only store-forward mode with a 32-bit AXI4-Lite
> +  interface.

Binding describes hardware, so are you saying hardware supports it or
what exactly?

> +
> +properties:
> +  compatible:
> +    enum:
> +      - xlnx,axi-fifo-mm-s-4.1
> +      - xlnx,axi-fifo-mm-s-4.2
> +      - xlnx,axi-fifo-mm-s-4.3
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    items:
> +      - const: interrupt

Pointless name, drop completely interrupt-names.

> +
> +  xlnx,axi-str-rxd-tdata-width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    const: 32
> +    description:
> +      AXI-Stream RX data width in bits. Only 32-bit is supported.

1. Const? So drop it. You don't need that property at all. Plus I don't
get why "supported" matters for us - supported by who?

2. Outstaging a binding means you do not preserve ABI but go via regular
review, thus: Use standard properties, like bus-width etc. See
dt-schema.

> +
> +  xlnx,axi-str-txd-tdata-width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    const: 32
> +    description:
> +      AXI-Stream TX data width in bits. Only 32-bit is supported.
> +
> +  xlnx,rx-fifo-depth:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Depth of RX FIFO in words.
> +
> +  xlnx,tx-fifo-depth:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Depth of TX FIFO in words.
> +
> +  xlnx,use-rx-data:
> +    type: boolean
> +    description: RX FIFO is enabled.
> +
> +  xlnx,use-tx-data:
> +    type: boolean
> +    description: TX FIFO is enabled.

I don't get why do you need properties to enable TX or RX. Is there any
IP without one?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - xlnx,axi-str-rxd-tdata-width
> +  - xlnx,axi-str-txd-tdata-width
> +  - xlnx,rx-fifo-depth
> +  - xlnx,tx-fifo-depth
> +  - xlnx,use-tx-data
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    fifo@43c00000 {
> +        compatible = "xlnx,axi-fifo-mm-s-4.1";
> +        reg = <0x43c00000 0x10000>;
> +        interrupt-names = "interrupt";
> +        interrupt-parent = <&intc>;
> +        interrupts = <0 29 4>;

Use proper defines.

Best regards,
Krzysztof


