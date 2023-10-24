Return-Path: <devicetree+bounces-11414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F83D7D5B23
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:09:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60A231C2083F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 877C13C6B3;
	Tue, 24 Oct 2023 19:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1126224212
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:09:50 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70F6D93;
	Tue, 24 Oct 2023 12:09:49 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1e98e97c824so38995fac.1;
        Tue, 24 Oct 2023 12:09:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698174589; x=1698779389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9jvsXPyYyeMVm041VffEFNntoLV0ZUl3p1HXdmdupPI=;
        b=tEuQ8ow0R5iLCCuWMCLNHOttTTuP5XsIOE+Eo/+kzX+1khd3l0G49n8gClj5vBtBeB
         6zPpnNv74RLiQe4cVf7peHvIRJIH52PDLvVSKCKGRjITTwN2QJH8jTidYvQu0tdI81p6
         iqKJyDtrEyJQzKXHamOFgVwKD6tgMQeNl2wqaGESL35XRO6TN4vD4EzijhrLu8n/D6yW
         I7sYusKQoo7cERsAh6I3zuqS2Omx4ZIUjTnPdl/7McYGCULVvYml9ZdIkpM8QLioLAqA
         b/uqYH8uHgq7n5Ur8ln6SY9T/wbJ12iHhJL85lQASK2l+A8B9SGJNh8NHftLaLvcrzXy
         fAwQ==
X-Gm-Message-State: AOJu0YzhMJUb3OL+u2VYOXIVTefufRjqCMzO6m508mfeX0SBwzkQb0zO
	eyQotm1rdWMnHGCYQz4YZg==
X-Google-Smtp-Source: AGHT+IGB0umxgLN8yJ5dntvW4mlolJq1yY5b6Ey4WB6BCRoJ27UsNEqz5sGBksHAUyCv67SEcH5+ZQ==
X-Received: by 2002:a05:6870:e38e:b0:1e9:e413:b9d with SMTP id x14-20020a056870e38e00b001e9e4130b9dmr8785833oad.2.1698174588665;
        Tue, 24 Oct 2023 12:09:48 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h36-20020a05687003e400b001b390c6e00bsm2253181oaf.56.2023.10.24.12.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 12:09:48 -0700 (PDT)
Received: (nullmailer pid 344849 invoked by uid 1000);
	Tue, 24 Oct 2023 19:09:47 -0000
Date: Tue, 24 Oct 2023 14:09:47 -0500
From: Rob Herring <robh@kernel.org>
To: Eliza Balas <eliza.balas@analog.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: misc: adi,axi-tdd: Add device-tree
 binding for TDD engine
Message-ID: <20231024190947.GA270524-robh@kernel.org>
References: <20231019125646.14236-1-eliza.balas@analog.com>
 <20231019125646.14236-2-eliza.balas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019125646.14236-2-eliza.balas@analog.com>

On Thu, Oct 19, 2023 at 03:56:45PM +0300, Eliza Balas wrote:
> Add device tree documentation for the AXI TDD Core.
> The generic TDD controller is in essence a waveform generator
> capable of addressing RF applications which require Time Division
> Duplexing, as well as controlling other modules of general
> applications through its dedicated 32 channel outputs.
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
> index 000000000000..4449d9abf46e
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
> +      - adi,axi-tdd

I don't understand where the version number went. Now my question is is 
there only one version of this (ever). It's not specific enough unless 
there's a version register that can be relied on.

This patch needs to answer any questions raised in previous versions. 
Assume the reviewers don't remember your patch and will ask the same 
questions again otherwise.

Rob

