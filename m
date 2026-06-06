Return-Path: <devicetree+bounces-307655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cx9ODkQJJGpt2AEAu9opvQ
	(envelope-from <devicetree+bounces-307655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 13:49:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCDF64D48D
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 13:49:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JPQhM9bO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307655-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307655-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0B813018C13
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 11:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C8F385535;
	Sat,  6 Jun 2026 11:49:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC789221723
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 11:49:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780746561; cv=none; b=XjivM1a0aWpxXPCLARuQsTxiPV8bSfRo1RAYhcOD6bt75/zFUsVFGmEFM+OwG4+87B9V1wzFqivO+ERJWE+XmlR3BbxnZRnnMscjYibkGFJvDR33pge7CK9bb4+qKPUGy7iRe+OxM7VKdAOvOG0MIZw3waGfXe6KcDYy0TMegqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780746561; c=relaxed/simple;
	bh=+sgciOfX/5DtcUjVo7WBsQ8KitXhVbGyMTaqn5/vLJU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NMGcXwa2uZEPahDLbyXQuqDCcTa6Jv9ZnwY6mIoMiPPqkVeb3O/12nuk1+QKbr6DyZ9ni2pwUGRlDtPMvQMtxf2Xez+nHq0ChUNqGRztn5sUcrUy+pMimfREXvj7/fV/Co2jdkBaO4KiHgog2hqZzXDsEVkzAxArxuYXauQOY1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPQhM9bO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E6CA1F00893;
	Sat,  6 Jun 2026 11:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780746560;
	bh=b8Lpbnc0quocKbCjRw4GZYiu6nix+4mWQd4HsGebYOA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JPQhM9bOqC1xZ0Ze1DSIq396qAbtYIKbCt+qac47zqcWM9aPcILCdQq/hb7wLGSzm
	 5MED+HSRjDLlC0osT3vxBciUAoefcEQBIsr4DrPGa6+6XeFSFnhxdk8/bDDhks1bN4
	 IF1T5dDkDRwyBisJ+kLZ27Y/FAmyiVHiMDBu2ku2W0J2SRlkObu8zQuzKEaykrH3LX
	 vrG+IikGSAtrPuiqZzZRMF5ZQIOZ+YLNfTO+PxrURr/KiZB0HQXlQHXk9lopVHYYKM
	 RBiwcF44YJMwQjYsAMTABRFXlZZinkft2pLD7mdxnIw1PpFBlRNtvA0RrDBKPWaGQy
	 ssynLy/6gndIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: net: add Realtek r8169 family PCIe
 Ethernet
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ricardo Pardini via B4 Relay" <devnull+ricardo.pardini.net@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
References: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 11:49:19 +0000
Message-Id: <20260606114920.2E6CA1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307655-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+ricardo.pardini.net@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ricardo.pardini.net,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pardini.net:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9DCDF64D48D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The binding uses `additionalProperties: false` alongside a `$ref` t=
o `ethernet-controller.yaml#`, which incorrectly restricts inherited standa=
rd Ethernet properties and forces their manual duplication.
--

commit 766e9c110aa2222534264bb4b3a784c0a71fcff4
Author: Ricardo Pardini <ricardo@pardini.net>

dt-bindings: net: add Realtek r8169 family PCIe Ethernet

Adds a device tree binding for fixed/soldered Realtek PCIe Ethernet control=
lers
driven by the r8169 driver. The binding supports Open Firmware PCI bus bind=
ings
so board DTs can validate attached properties.

> diff --git a/Documentation/devicetree/bindings/net/realtek,r8169.yaml b/D=
ocumentation/devicetree/bindings/net/realtek,r8169.yaml
> new file mode 100644
> index 0000000000000..6923211ff4c93
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek,r8169.yaml

[ ... ]

> +allOf:
> +  - $ref: ethernet-controller.yaml#
> +
> +properties:
> +  compatible:

[ ... ]

> +  reg:
> +    maxItems: 1
> +
> +  local-mac-address: true
> +  mac-address: true
> +  nvmem-cells: true
> +  nvmem-cell-names: true

[Severity: Low]
Is it necessary to redefine these properties manually? Since the binding
already includes a $ref to ethernet-controller.yaml# in the allOf block,
these standard Ethernet properties should be inherited automatically.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

[Severity: Low]
Does using additionalProperties: false here prevent the inheritance of
properties from ethernet-controller.yaml#?

Using unevaluatedProperties: false instead would allow $ref schemas in the
allOf block to be evaluated properly, which would remove the need to
duplicate the mac-address and nvmem-cells properties above.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-rk3588-dts=
-rtl-eth-describe-dt-alias-v3-0-8a8857b39daf@pardini.net?part=3D1

