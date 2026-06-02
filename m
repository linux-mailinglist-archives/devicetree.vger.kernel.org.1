Return-Path: <devicetree+bounces-305661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id djiKKIvYHmrlVwAAu9opvQ
	(envelope-from <devicetree+bounces-305661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:20:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF41B62E6AE
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:20:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OIrxcSw9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305661-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305661-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86B7F301DAF2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2075430146C;
	Tue,  2 Jun 2026 13:19:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081F51DF73C
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 13:19:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406363; cv=none; b=idiW8rzVlSDdSl6qm2/mz+wU+L/DMjTnOxvh3pTfKo8+bFQarx16mRx6306PNC1lawGYUWQu2abmu7eb9XWX91InW9F3XAdZHi0dbz0vZg30YL9q9QKZl2V+TtqnsY0CCRpwHLwKI6Nk4QsOpCp18Qr8CzRroIABJ2sIoYtSgxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406363; c=relaxed/simple;
	bh=D/Wl1U0UPioWsHqOG59SubfHcK09LPSYYPbHMFMEVxo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=StM8YE6ojY8ilRM9ImYHhF8ZCGPcmqg/Uo57CvUzN3OEWHIdVzY2nePLgOaNazDolyabq11KRwKayM2U0RT2juAXpq1Vu1K3P3D5l9vBWVTtbioQ2qa+171DaI9wNqiEAmHD1JwN+DcXL0liGISZB7MMDrqy984tt801UnhvGnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIrxcSw9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 661821F00893;
	Tue,  2 Jun 2026 13:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780406361;
	bh=EGBIF9jwVFIsrfbLYAsAwp9RZKmdvqaxaj/XMnbDC3c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OIrxcSw9BopdmAT8XAxxsipjfo5+tpEXJuHRm3ZLMHWy+kXW9VZaNzazcqkHKKHuI
	 RnzTLWTTdjlqCVcg9qi+sDUwh5aImSOgZjYFWK5GwnjgSdeF0d+a/PIsqh1yMiD8ti
	 vujsXaxwQDPA2Cm1FhNooxZwIJGv9hKEF0/FgT9SX1hAh/K96+ox6ySR3iylzI7/kn
	 AKhlDVUP2aMhyxLMMcOwMGJFhwyzVp7M5CaPcz7BLDhRzA2g5GuXmTrnqi74HrxTYx
	 psWgWvqlxV4Db5hLBdHDnjZ+h3tvIORoQ7qM/n/s/FLJGqGgupIZRuaHNf3KEd41f6
	 Klm2LBlrzoNxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: net: qca,ipq5018: Split IPQ5018 PHY
 bindings from ar803x
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem via B4 Relay" <devnull+george.moussalem.outlook.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-ipq5018-gephy-clocks-v1-1-2df8287712c3@outlook.com>
References: <20260601-ipq5018-gephy-clocks-v1-1-2df8287712c3@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 13:19:20 +0000
Message-Id: <20260602131921.661821F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305661-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+george.moussalem.outlook.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,george.moussalem.outlook.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,outlook.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF41B62E6AE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Schema Validation Bypass Failure and Binding Incompleteness
- [High] Broken Schema Validation for AR803x PHYs due to Removed Selection =
Criteria
--

commit 48327af0b67eba3af6e8fa934ae07a6c6cb94d54
Author: George Moussalem <george.moussalem@outlook.com>

dt-bindings: net: qca,ipq5018: Split IPQ5018 PHY bindings from ar803x

This commit moves the Qualcomm IPQ5018 Internal PHY definition into a dedic=
ated
file. It isolates the binding from qca,ar803x.yaml in an attempt to support
both RX and TX clocks, as the core ethernet-phy.yaml restricts clocks to on=
e.

> diff --git a/Documentation/devicetree/bindings/net/qca,ar803x.yaml b/Docu=
mentation/devicetree/bindings/net/qca,ar803x.yaml
> index 7ae5110e7aa2c..3acd09f0da863 100644
> --- a/Documentation/devicetree/bindings/net/qca,ar803x.yaml
> +++ b/Documentation/devicetree/bindings/net/qca,ar803x.yaml

[ ... ]

>  properties:
> -  compatible:
> -    enum:
> -      - ethernet-phy-id004d.d0c0
> -
>    qca,clk-out-frequency:
>      description: Clock output frequency in Hertz.
>      $ref: /schemas/types.yaml#/definitions/uint32

[Severity: High]
With the compatible property removed, how will dt-schema match this binding
to device nodes?

Because device tree schema validation relies on the compatible property
to automatically generate selection conditions, removing it leaves the sche=
ma
with no way to match device nodes.

This causes qca,ar803x.yaml to be silently skipped during validation,
breaking validation for properties like qca,clk-out-frequency for all
downstream AR803x PHY configurations.

[ ... ]

> diff --git a/Documentation/devicetree/bindings/net/qca,ipq5018.yaml b/Doc=
umentation/devicetree/bindings/net/qca,ipq5018.yaml
> new file mode 100644
> index 0000000000000..7cdc96f6d389f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/qca,ipq5018.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: ethernet-phy-id004d.d0c0
> +
> +  reg:
> +    const: 7  # This PHY is always at MDIO address 7 in the IPQ5018 SoC
> +
> +  clocks:
> +    items:
> +      - description: RX clock
> +      - description: TX clock

[Severity: High]
The commit message mentions splitting this file to bypass the 1-clock
restriction in ethernet-phy.yaml, but does this actually prevent the core
schema from applying?

Since the device tree node is named ethernet-phy@7 (as seen in the examples=
),
dt-schema will still automatically apply the core ethernet-phy.yaml schema
due to its select logic on the node name. Validation will therefore still
fail for having two clocks.

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +
> +additionalProperties: false

[Severity: High]
Does this block standard Ethernet PHY properties?

Because additionalProperties is set to false without a reference to the
core ethernet-phy.yaml schema, any standard PHY properties (such as
max-speed or interrupts) added to a device tree will be incorrectly
rejected.

The standard approach is to modify ethernet-phy.yaml to allow multiple
clocks, include the $ref to it here, and use unevaluatedProperties: false.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-ipq5018-ge=
phy-clocks-v1-0-2df8287712c3@outlook.com?part=3D1

