Return-Path: <devicetree+bounces-50028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1188792BE
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 12:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B2E51F236F0
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 11:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7E57993D;
	Tue, 12 Mar 2024 11:11:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bmailout3.hostsharing.net (bmailout3.hostsharing.net [176.9.242.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FBA69D0C;
	Tue, 12 Mar 2024 11:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=176.9.242.62
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710241875; cv=none; b=opvACLjuJq+rHsFT4DtNIgmZbENNJoboC+MOO/ql2qkCjKUHs9Qo+dlMQwHRJepynq9/K7OXeTnKRTcPMV4thdqnjW83KQoS6lxyvwJzs6JZOOa2E2eiTrLEFSfhmvznexTD5oHbivZ4UN2RG/8157F84X6h7Iyarstv5Kp3Jlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710241875; c=relaxed/simple;
	bh=5szbvSG9JnrvwDFGxsynaJ40kTIHT7cLhwAkgTEXuR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dNtQSYkGliuwjqfdMnoCFtxRNaIRX/Px38cpTp0T7loA5J8J1RwWKwBlnxt8NMULUzuWWCBW129gAlhlmFq/X677laD39aw6bD61zQjA0ap/5gzx/MFcEcKuW88XWs5/Rxe1PZZ9niQJZwK5GxKGnTg8XemDh4tEmkml67Swaa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wunner.de; spf=none smtp.mailfrom=h08.hostsharing.net; arc=none smtp.client-ip=176.9.242.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wunner.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=h08.hostsharing.net
Received: from h08.hostsharing.net (h08.hostsharing.net [IPv6:2a01:37:1000::53df:5f1c:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
	 client-signature RSA-PSS (4096 bits) client-digest SHA256)
	(Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
	by bmailout3.hostsharing.net (Postfix) with ESMTPS id E95E1100DA1D9;
	Tue, 12 Mar 2024 12:11:09 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
	id AFE422BC2D8; Tue, 12 Mar 2024 12:11:09 +0100 (CET)
Date: Tue, 12 Mar 2024 12:11:09 +0100
From: Lukas Wunner <lukas@wunner.de>
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	jarkko@kernel.org, rnsastry@linux.ibm.com, peterhuewe@gmx.de,
	viparash@in.ibm.com, devicetree@vger.kernel.org,
	jsnitsel@redhat.com, Nayna Jain <nayna@linux.ibm.com>
Subject: Re: [RFC PATCH v2 2/3] dt-bindings: tpm: Add linux,sml-log to
 ibm,vtpm.yaml
Message-ID: <ZfA4TZspY7oOQ4vz@wunner.de>
References: <20240311132030.1103122-1-stefanb@linux.ibm.com>
 <20240311132030.1103122-3-stefanb@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240311132030.1103122-3-stefanb@linux.ibm.com>

On Mon, Mar 11, 2024 at 09:20:29AM -0400, Stefan Berger wrote:
> Add linux,sml-log, which carries the firmware TPM log in a uint8-array, to
> the properties. Either this property is required or both linux,sml-base and
> linux,sml-size are required. Add a test case for verification.
> 
> Fixes: 82003e0487fb ("Documentation: tpm: add the IBM Virtual TPM device tree binding documentation")

The Fixes tag is confusing.  The patch won't even apply cleanly to the
v4.10 commit referenced here as the conversion to yaml happened only
recently with v6.8.

Why is the Fixes tag necessary in the first place?  Same question for
the other patches in the series.  This looks like feature work rather
than a fix.  Not sure whether it satisfies the "obviously correct"
rule per Documentation/process/stable-kernel-rules.rst.


> --- a/Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml
> +++ b/Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml
> @@ -74,8 +74,6 @@ required:
>    - ibm,my-dma-window
>    - ibm,my-drc-index
>    - ibm,loc-code
> -  - linux,sml-base
> -  - linux,sml-size

I assume that either these two or the new "linux,sml-log" property
are (still) required?  If so, a quick grep through the bindings
(e.g. auxdisplay/img,ascii-lcd.yaml) shows that the following
might work:

required:
  - ...

oneOf:
  - required:
      - linux,sml-base
  - required:
      - linux,sml-log


> --- a/Documentation/devicetree/bindings/tpm/tpm-common.yaml
> +++ b/Documentation/devicetree/bindings/tpm/tpm-common.yaml
> @@ -30,6 +30,11 @@ properties:
>        size of reserved memory allocated for firmware event log
>      $ref: /schemas/types.yaml#/definitions/uint32
>  
> +  linux,sml-log:
> +    description:
> +      Content of firmware event log

Please add one or two sentences of context so that readers don't
need to use git blame + git log to find out what this is for.
(Mention at least that the property may be used to pass the log
to a kexec kernel.)


> -# must only have either memory-region or linux,sml-base
> +# must only have either memory-region or linux,sml-base/size or linux,sml-log
>  # as well as either resets or reset-gpios
>  dependentSchemas:
>    memory-region:
>      properties:
>        linux,sml-base: false
> +      linux,sml-log: false
>    linux,sml-base:
>      properties:
>        memory-region: false
> +      linux,sml-log: false
> +  linux,sml-log:
> +    properties:
> +      memory-region: false
> +      linux,sml-base: false
> +      linux,sml-size: false

Could you add "linux,sml-size: false" to "memory-region" as well
while at it for consistency?

Thanks,

Lukas

