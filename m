Return-Path: <devicetree+bounces-295795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIekCEFCAmq3pgEAu9opvQ
	(envelope-from <devicetree+bounces-295795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:55:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4CC51609C
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78DDB3003419
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA573B5314;
	Mon, 11 May 2026 20:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzvFV5TH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89913B38A2
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 20:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778532925; cv=none; b=hhpiOxxEVNcHRExvOFYAZIjJnUey8ULn+pDSzVKQz0k2Pgq+4w1QGqvW5Z2n5vSYX3yxusXCMva9r1kYVKYL4b8j+bq83OKWKVArF8oGJQ2NEg3Y9t+zNTmRlbLRerziHR4lZ0LYIM8mTPPZXD3/tHpeD6L31frdEN5oYzqoAtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778532925; c=relaxed/simple;
	bh=1tm+dfJuD/h4D/2FFNNK4rTlhHi6le2t/aCZqno9VU8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PCxqG0fWXGiL4CpXhAgjc0JzRabpSl8+ujEBm5kVJaACMXW5hNGQMgPW1yG+BGMyDqSolB76yapeYyBUP4ELK8UMp1vBCYlXMrlcRZoyIinB4t5GlKuJXSb4qgzKpx5TQpHzv5VYriO3/gLZWcVdJ/t7bjS8i7SxhSFO/Devx6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzvFV5TH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04A49C2BCB0;
	Mon, 11 May 2026 20:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778532925;
	bh=1tm+dfJuD/h4D/2FFNNK4rTlhHi6le2t/aCZqno9VU8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AzvFV5THNV7No5da6rgm6A9KZOwpYUxTohaHUNqKZ8xH2l4UDPpvTp9c8G3Ata2eD
	 7JXJIfhwGGVIV3m68xnWVUhCdkjPfJSW0LyXVicHuVUTeYK6KdwVBtmlWdKAWGTjBq
	 pOmjon6JjCH5jzaDOBhZUbZ1WVryOvkB2Rk8wyulhMqDy5V0N+3RjtbNiJigBWJUC1
	 FUKNZkj9eNYdtuBO6DNGiwUDEdyEFycW8G6sQyKm/rx3MQY0BLgL7SRv2yvxpqqsfO
	 FYLD46yJt5/GOCY5ZKg3TzExWf70JUTstkEaXDcbdgMpcz31x4KykNgpmXqtWA8bAi
	 lOmZScUuSNZ2Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] dt-bindings: iio: adc: Convert xilinx-xadc bindings
 to YAML schema
Reply-To: sashiko@lists.linux.dev
To: "Pramod Maurya" <pramod.nexgen@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510120141.118057-1-pramod.nexgen@gmail.com>
References: <20260510120141.118057-1-pramod.nexgen@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 20:55:24 +0000
Message-Id: <20260511205525.04A49C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7E4CC51609C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295795-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Low] Invalid scalar constraints and missing length bounds on the `reg` p=
roperty inside channel nodes.
- [Low] Fixed-string property `^xlnx,channels$` is defined in `patternPrope=
rties` instead of `properties`.
- [Low] Redundant `type: boolean` declaration for the `xlnx,bipolar` proper=
ty.
--

commit eb30bdd7a415cc66765c82f5a5300f2adb66fb3c
Author: Pramod Maurya <pramod.nexgen@gmail.com>

dt-bindings: iio: adc: Convert xilinx-xadc bindings to YAML schema

This commit converts the Xilinx XADC and UltraScale System Monitor device
tree bindings from the legacy plain-text format to a YAML schema. The new
schema covers the same hardware and compatible strings while enabling
automated validation with dt-schema.

> diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml b/D=
ocumentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> new file mode 100644
> index 0000000000000..ab6f16109aebd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
[ ... ]
> +patternProperties:
> +  "^xlnx,channels$":

Is it intentional to place "^xlnx,channels$" in patternProperties? Since th=
is
is a fixed string without any variable or wildcard components, defining it
under patternProperties bypasses explicit property tracking in dt-schema and
usually triggers a dt_binding_check linter warning. Should this be placed in
the properties block instead?

> +    type: object
> +    description:
> +      List of external channels connected to the ADC. If this property is
> +      absent, no external channels are assumed to be connected.
[ ... ]
> +    patternProperties:
> +      "^channel@([0-9a-f]|10)$":
> +        type: object
> +        description:
> +          Represents an external channel connected to the ADC.
> +
> +        properties:
> +          reg:
> +            description: |
> +              Pair of pins the channel is connected to.
> +                0: VP/VN
> +                1: VAUXP[0]/VAUXN[0]
> +                2: VAUXP[1]/VAUXN[1]
> +                ...
> +                16: VAUXP[15]/VAUXN[15]
> +            minimum: 0
> +            maximum: 16

Will this fail dt_binding_check validation? The reg property is intrinsical=
ly
an array type in device tree schemas. Applying scalar JSON schema validation
keywords like minimum and maximum directly to an array type is invalid.

Since the node name regex ^channel@([0-9a-f]|10)$ already enforces bounds on
the unit address, should the scalar bounds be removed and replaced with
maxItems: 1?

> +
> +          xlnx,bipolar:
> +            $ref: /schemas/types.yaml#/definitions/flag
> +            type: boolean

This isn't a bug, but the type: boolean declaration here appears redundant.
The reference to /schemas/types.yaml#/definitions/flag intrinsically defines
the node as a boolean-typed property without a value. Can the type: boolean
line be removed to align with standard dt-schema linting rules?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510120141.1180=
57-1-pramod.nexgen@gmail.com?part=3D1

