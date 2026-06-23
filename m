Return-Path: <devicetree+bounces-314871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p+i8G3GaOmqZBQgAu9opvQ
	(envelope-from <devicetree+bounces-314871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:38:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C733D6B7F81
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:38:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fXUaovDi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314871-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314871-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C7B61301B179
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF9F3876A7;
	Tue, 23 Jun 2026 14:38:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ACB385D8C
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:38:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782225517; cv=none; b=LdFiSr1w3Yw5xp7NNWl9IdZUdYfsB/ZHcGV47+CPLsrKB4ksBGBXfCzuvE199ebD6u7k4PubxO8gNkpvs6EZBYp8npoyH3nJhM1ewIAk0dAZnRV2+RkS13wknZoqQuyQGtz5453BYyEYY/ufeNqfzovCXY5XrOCXG5lAPLNBq0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782225517; c=relaxed/simple;
	bh=ArzT8UcgfnHbI3gec8negLrn527Vel9ku/F0envoBJE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LiG0s51DJxyMlVxPunOBsRIbgNWEYy2+HCOEhOk8fyNd3sNQWsdB+yq7LJhQHyqcGkxukt5KAboLeqMt8c1vcqQAhDoFr+LhtPnxgFIQcMucQfbuE+asFRi+4RW7pqj+uVXkwUyxckeqZ/RzyJywcxb+a/GRv4zAIbSk8Sf9QwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXUaovDi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489CB1F00A3A;
	Tue, 23 Jun 2026 14:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782225516;
	bh=Ngqs0nMeVSmO3jGC8fp0r54WR5qzAXAljPqAPVbQTAM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fXUaovDiITsdCWYl9Vpmgt/uYZaVfiIQkPLVRYvFHkOQ0GQh7KTiPPhCkjoWfuUAl
	 TxtVptTvKaFgZh3vvCB1M+66h0pGn3UiqymMvGv8B3FF38vkUWfxakYPm7CdjEUjCY
	 GSS7xS021BjD6xcOIIEDPp8tZv3RJRDkKosvBj8dPyXlZran5oqUMQYQsOj3VOjgWF
	 ntMJandsw7cVkBgnxUJJBWhoNlFnFk/6fgWL3GNp1Qx/sjlKYkZjPRsuJrGEIPdpMw
	 +E5sM/+wLFVgl4UrqxdzVfuH6S/iQGBhTlKSI8Jre7sYZcBLNGmBd53VVjfxU0MGDh
	 t8Hxr1jPs0Uww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/7] dt-bindings: serial: 8250: aspeed: add
 aspeed,vuart-over-pci bool prop
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?R3LDqWdvaXJlIExheWV0?= <gregoire.layet@9elements.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <73b2bd81ce70814612e6d3cb689c3296de742aaf.1782224059.git.gregoire.layet@9elements.com>
References: <cover.1782224059.git.gregoire.layet@9elements.com>
 <73b2bd81ce70814612e6d3cb689c3296de742aaf.1782224059.git.gregoire.layet@9elements.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 14:38:35 +0000
Message-Id: <20260623143836.489CB1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314871-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,9elements.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C733D6B7F81

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `aspeed,ast2600-vuart` in the top-level `compatible` proper=
ty schema definition, causing `dt_binding_check` failures.
--

commit 33747bb385812ccb653177817f0ed8cba28dbdec
Author: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>

dt-bindings: serial: 8250: aspeed: add aspeed,vuart-over-pci bool prop
   =20
The ASPEED AST2600 has 2 VUART accessible over PCI.
This boolean can be set to specify if the VUART is used over PCI.

> diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documen=
tation/devicetree/bindings/serial/8250.yaml
> index 3cbd0f532e151..b03797f4674d4 100644
> --- a/Documentation/devicetree/bindings/serial/8250.yaml
> +++ b/Documentation/devicetree/bindings/serial/8250.yaml
> @@ -26,6 +26,14 @@ allOf:
>            anyOf:
>              - const: aspeed,ast2500-vuart
>              - const: aspeed,ast2600-vuart
> +  - if:
> +      anyOf:
> +        - required:
> +            - aspeed,vuart-over-pci
> +    then:
> +      properties:
> +        compatible:
> +          const: aspeed,ast2600-vuart

[Severity: Low]
Should aspeed,ast2600-vuart also be explicitly added to the top-level
properties: compatible: oneOf: block?

Documentation/devicetree/bindings/serial/8250.yaml:properties.compatible.on=
eOf:
properties:
  compatible:
    oneOf:
      - const: ns8250
      - const: ns16450
      - const: ns16550
      - const: ns16550a
      - const: ns16850
      - const: aspeed,ast2400-vuart
      - const: aspeed,ast2500-vuart

Device tree nodes using compatible =3D "aspeed,ast2600-vuart" will be rejec=
ted by
make dt_binding_check because the string is missing from this top-level
definition.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782224059.gi=
t.gregoire.layet@9elements.com?part=3D2

