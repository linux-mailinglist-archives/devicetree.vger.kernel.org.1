Return-Path: <devicetree+bounces-5165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0757B57E8
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AC9ED1C20491
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A489C18E19;
	Mon,  2 Oct 2023 16:32:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937B51DDC0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:32:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FA28C433C7;
	Mon,  2 Oct 2023 16:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696264366;
	bh=PjHXjJrymy9E1ifabnA+7L10wdhWj8PEINNxVQa+mtk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OKBVbRBbLIgROEbdXK769s8qOn8qHBhmF9JHZtDXFvK33SQKUFixcq9fz+PbKTwBf
	 4tHxVyKq+XK+TncmoflVtynqR93eEPC9AiIPutFyylvzyvjaMQxv5YSwLJ8Dth5sqn
	 R5DEhs72ruuoQysq4ONAAZwN5/u1JON1Z70V2bJGfN4oqmFdBvVMfHBHc2fevrhvSK
	 NvE7awwlCR+hm+t2FG4icbFsM0qv8I/NXodyU4IYQD5pSyS9r6PtY8SkFhi+J5WF+B
	 1cZAwkP99SC6yTCj78gXQPge4HVpBWLYBo3k6EICLo9EFK02kEqCLWyeRAMgVwZzgw
	 WBei2x9IUBUQQ==
Received: (nullmailer pid 1903151 invoked by uid 1000);
	Mon, 02 Oct 2023 16:32:44 -0000
Date: Mon, 2 Oct 2023 11:32:44 -0500
From: Rob Herring <robh@kernel.org>
To: Eliza Balas <eliza.balas@analog.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: misc: adi,axi-tdd: Add device-tree
 binding for TDD engine
Message-ID: <20231002163244.GA1886905-robh@kernel.org>
References: <20230928092804.22612-1-eliza.balas@analog.com>
 <20230928092804.22612-2-eliza.balas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928092804.22612-2-eliza.balas@analog.com>

On Thu, Sep 28, 2023 at 12:28:03PM +0300, Eliza Balas wrote:
> Add device tree documentation for the AXI TDD Core.
> The generic TDD controller is in essence a waveform generator
> capable of addressing RF applications which require Time Division
> Duplexing, as well as controlling other modules of general
> applications through its dedicated 32 channel outputs.
> 
> The reason of creating the generic TDD controller was to reduce
> the naming confusion around the existing repurposed TDD core
> built for AD9361, as well as expanding its number of output
> channels for systems which require more than six controlling signals.
> 
> Signed-off-by: Eliza Balas <eliza.balas@analog.com>
> ---
>  .../devicetree/bindings/misc/adi,axi-tdd.yaml | 65 +++++++++++++++++++
>  MAINTAINERS                                   |  7 ++
>  2 files changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
> 
> diff --git a/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
> new file mode 100644
> index 000000000000..8938da801b95
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2023 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/adi,axi-tdd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AXI TDD Core
> +
> +maintainers:
> +  - Eliza Balas <eliza.balas@analog.com>
> +
> +description: |
> +  The TDD controller is a waveform generator capable of addressing RF
> +  applications which require Time Division Duplexing, as well as controlling
> +  other modules of general applications through its dedicated 32 channel
> +  outputs. It solves the synchronization issue when transmitting and receiving
> +  multiple frames of data through multiple buffers.
> +  The TDD IP core is part of the Analog Devices hdl reference designs and has
> +  the following features:
> +    * Up to 32 independent output channels
> +    * Start/stop time values per channel
> +    * Enable and polarity bit values per channel
> +    * 32 bit-max internal reference counter
> +    * Initial startup delay before waveform generation
> +    * Configurable frame length and number of frames per burst
> +    * 3 sources of synchronization: external, internal and software generated
> +  For more information see the wiki:
> +  https://wiki.analog.com/resources/fpga/docs/axi_tdd
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,axi-tdd-2.00.a

Where does this version number come from? I looked at the above link and 
see versions such as '2021_R2', '2019_r2', etc. I didn't dig deeper 
whether there's some per IP version.

If you want to use version numbers, please document the versioning 
scheme. For example, see 
Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt.

Rob

