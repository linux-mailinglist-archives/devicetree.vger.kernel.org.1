Return-Path: <devicetree+bounces-294939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Qg4GBGV0/2nE6gAAu9opvQ
	(envelope-from <devicetree+bounces-294939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 19:52:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51388500D29
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 19:52:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7C883009CD4
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 17:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F232FD1B6;
	Sat,  9 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJkUInu3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F198003D
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 17:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778349153; cv=none; b=aRusncHGE0546F2B+M7aVcsc1ZAvEiWzjjfQIGVaSwQA78fMBBgMWEjLgA1hlyYzb/snhWjMZZDsS9lX5DvsZ4l0KhkF/rHmCLKw5fmTMQG5tIni94ax+TzF4yrNtYjdfnNdmLpl/YBF/QSmpoDQeOp/Nr2rk82CM6PtCOc1IDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778349153; c=relaxed/simple;
	bh=AZyDvBuieCUAg9ZV7RUGRR/29k1YyhI66Zsuo7vNF9k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EGRPBLANJ2Z1uJWRyzPBZsJ2lNpEpl0LyY5bqrmD5TO9XwYcxE0+mwCdzh25DQS5Sqp+3Sf/W9ZrGkecybi8k07Z70t1MF5EhEj26qZHN0+iKDUpxz65feb9ZWg+deesNE8lsaCaAAw4X8xIOmKXJ/0gmAtEyXDJvnNN0ijzD/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJkUInu3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E78BC2BCB2;
	Sat,  9 May 2026 17:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778349152;
	bh=AZyDvBuieCUAg9ZV7RUGRR/29k1YyhI66Zsuo7vNF9k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=eJkUInu3NCqYtBDN8jswnXWXaIAs2MClsKz8UZ6Y8yRmMDyWbxYOY3poX9F8YWZmR
	 EoVnGR5g1vrg50X8qOHr2YoPGgLVSdAPb7JNgKHqPyX1+n0gUV8juI3o/JSmowo+iP
	 T71kCJ10BXpHDBxronUt6qyjijs7J+tCtjq0BU2cdB4QV3guC0+PbDZb3qPcnkRxxB
	 QuWsrjr2XrLZ+O1Z2pszq4S6Z6fHtp/8MpjGoFH6ySTLS6XbjoxZFl+CrjlI3dJr2s
	 9QTZY/18fimDTp2Bo/C3+Mz2ZKdAT79s8k8KcQA7iTFuGLUDU7Z3t9fzeyT4QxhgfK
	 lBagUufXUK6aw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: Convert xilinx-xadc bindings to
 YAML schema
Reply-To: sashiko@lists.linux.dev
To: "Pramod Maurya" <pramod.nexgen@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260509171453.45844-1-pramod.nexgen@gmail.com>
References: <20260509171453.45844-1-pramod.nexgen@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 17:52:31 +0000
Message-Id: <20260509175232.4E78BC2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 51388500D29
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294939-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,a:email,f:email,lists.linux.dev:replyto,0.0.0.16:email];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Incorrect regex for `patternProperties` matching channel unit ad=
dresses (expects decimal instead of hex).
- [Medium] Missing conditional schema validation for `xlnx,external-mux-cha=
nnel`.
--

commit 9cb917c448e17a8e4cd03c2b0f448fe1debfc5c0
Author: Pramod Maurya <pramod.nexgen@gmail.com>

dt-bindings: iio: adc: Convert xilinx-xadc bindings to YAML schema

This commit converts the Xilinx XADC and UltraScale System Monitor device
tree binding from the legacy plain-text format to a YAML schema, enabling
automated validation with dt-schema.

> diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml b/D=
ocumentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> new file mode 100644
> index 0000000000000..86bdc4920cdbf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> @@ -0,0 +1,191 @@
[ ... ]
> +  xlnx,external-mux:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: |
> +      Selects the external multiplexer mode.
> +    enum:
> +      - none
> +      - single
> +      - dual
> +
> +  xlnx,external-mux-channel:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Configures which pair of pins is used to sample data in external
> +      multiplexer mode. This property is required when the device is
> +      configured for external multiplexer mode.

The description mentions this property is required when the device is
configured for external multiplexer mode (e.g., when xlnx,external-mux is
set to "single" or "dual").

Should the schema enforce this dynamically using an allOf -> if/then block?

Without conditional enforcement, device trees that enable the external
multiplexer but omit the required channel configuration might silently pass
automated dt-schema validation.

[ ... ]
> +  xlnx,channels:
> +    type: object
> +    description:
> +      List of external channels connected to the ADC. If this property is
> +      absent, no external channels are assumed to be connected.
> +
> +    properties:
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +    patternProperties:
> +      "^channel@([0-9]|1[0-6])$":
> +        type: object
> +        description:

Device tree unit addresses must be formatted as lowercase hexadecimal.
A reg value of 10-15 corresponds to the unit addresses @a through @f.

Does this regex expect decimal numbers instead? If so, it might incorrectly
reject valid hexadecimal unit addresses like channel@a through channel@f,
and erroneously allow channel@16 (which corresponds to a reg of 22).

Should this regex be updated to match hex values instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509171453.4584=
4-1-pramod.nexgen@gmail.com?part=3D1

