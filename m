Return-Path: <devicetree+bounces-301070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OTlNiPBDmrXBwYAu9opvQ
	(envelope-from <devicetree+bounces-301070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:24:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FBF5A0F99
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3E3B3008227
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 08:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DBCE2147E5;
	Thu, 21 May 2026 08:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezJms1eG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F39C1D5CE0
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 08:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779351413; cv=none; b=h5oehaiQpPrzg6aVtot5TKIeY5xZVrJxCIElRxE+oGFJxoRRQje8qFziv5eK2lmtJXtJFGrfmmL2nyDNFWNEzwJAUmRGttYCEJsBa/k5Sy6WaizS3lhRpbP/8BhptFkjDgqwaHnht9y291sa3arCx42lBohEtLX97pFwqq9pUyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779351413; c=relaxed/simple;
	bh=kaWOhlH187V/S6Ic3R/eq3mKDMehQnv2OBf4aJkjggM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LizHfV5uB4NYV4sZQvvSEmDc6Z5rakFqxY9mRcQ1bEK2MxjQELBPfgELPzyaZHDjKwyYQlMKVQOT0vRWPgsYlAgf8zLr2VS59WRSEqrp5vkxx1lPvaFw1WTgt/dQXeY/HlT22oYaHo6VfNsrmgm5JkLlFB43FOsKmNdpgUdiI8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezJms1eG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D22181F000E9;
	Thu, 21 May 2026 08:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779351412;
	bh=QM/tvA1aNdh2WHpt3uR6q+eCYBk2dzAwsGkjzUF7GQ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ezJms1eGPQsWSm+wzxGtUgfZcfYk51WOFxx25xMwEEeRt9pCgUMn2gsdBROK3V5Ts
	 W2GcG7COBIp4fG/TDJBcwpZc2mnXUdk/Pv60Va2oZBLN73HXmMXhoNtMHg4oFrPTl5
	 TmL19SHU+yhqCmhbXbrsQ3Vk1UpljZw4xzYT8ZcPSmN9CR2gtx9aemeagkcEWfFO2U
	 5emastyazFPg4WSiVyRrGvMd/MQ2MHLXwEdM4iAbrgbPNJS0AI8iTtIjBJz/uaZzzA
	 illioW810AnDxsfN9/UJCUDZWvQPowxM/XhMpA/S8Q1rd7vFP00esH+DVI/dgYwIDR
	 t5yBHc50fo6Cw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 1/2] dt-bindings: usb: cdns3: Add cdns,cdnsp
 compatible string
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pawel Laszczak via B4 Relay" <devnull+pawell.cadence.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260521-no_drd_config_v9-v9-1-2512cef10104@cadence.com>
References: <20260521-no_drd_config_v9-v9-1-2512cef10104@cadence.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 08:16:51 +0000
Message-Id: <20260521081651.D22181F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301070-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,pawell.cadence.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cadence.com:email,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 46FBF5A0F99
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The schema does not enforce the presence of the `dr_mode` proper=
ty when `cdns,cdnsp` is matched, despite the commit message explicitly requ=
iring it.
- [Medium] Array bounds (`minItems` and `maxItems`) for `reg`, `reg-names`,=
 and `interrupt-names` are not explicitly constrained inside the conditiona=
ls.
- [Medium] Use of the empty schema `{}` as a wildcard for compatible string=
s breaks dt-schema validation and explicit documentation rules.
--

commit 1f787c873a0b8a21200340bba7dffd95f1916193
Author: Pawel Laszczak <pawell@cadence.com>

dt-bindings: usb: cdns3: Add cdns,cdnsp compatible string

Introduce a new generic fallback compatible string cdns,cdnsp for
Cadence USBSSP controllers without the Dual-Role Device (DRD) register
block. It restricts the resources to host and device configurations,
requiring dr_mode to be explicitly set.

> diff --git a/Documentation/devicetree/bindings/usb/cdns,usb3.yaml b/Docum=
entation/devicetree/bindings/usb/cdns,usb3.yaml
> --- a/Documentation/devicetree/bindings/usb/cdns,usb3.yaml
> +++ b/Documentation/devicetree/bindings/usb/cdns,usb3.yaml
> @@ -17,22 +17,24 @@ description:
> =20
>  properties:
>    compatible:
> -    const: cdns,usb3
> +    oneOf:
> +      - const: cdns,usb3
> +      - items:
> +          - {}

[Severity: Medium]
The commit message mentions using an empty schema wildcard {} to allow
future vendor SoC compatibles to be prepended. Does this break dt-schema
meta-validation during dt_binding_check? The tooling usually expects
concrete compatible strings to be explicitly documented via an enum rather
than using a wildcard.

> +          - const: cdns,cdnsp

[ ... ]

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: cdns,cdnsp
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: XHCI Host controller registers
> +            - description: DEVICE controller registers
> +        reg-names:
> +          items:
> +            - const: xhci
> +            - const: dev

[Severity: Medium]
In dt-schema, specifying an items list inside conditional branches does not
automatically override the top-level minItems and maxItems length constrain=
ts.

Since the top-level schema allows 2 to 3 items, would omitting maxItems: 2
for reg and reg-names in this 'then' branch allow a 3-item configuration
to incorrectly pass validation? Similarly, does omitting minItems: 3 in the
'else' branch allow a 2-item configuration to pass for cdns,usb3?

> +        interrupts:
> +          maxItems: 2
> +        interrupt-names:
> +          items:
> +            - const: host
> +            - const: peripheral
> +        dr_mode:
> +          enum: [host, peripheral]

[Severity: Medium]
The commit message states that dr_mode must be explicitly set to either
'host' or 'peripheral' when this compatible is matched.

Should dr_mode be added to a required list in this block? Without it, the
property remains optional, and device trees missing dr_mode could silently
pass validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-no_drd_con=
fig_v9-v9-0-2512cef10104@cadence.com?part=3D1

