Return-Path: <devicetree+bounces-267097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WK1WOvyNmWkwVAMAu9opvQ
	(envelope-from <devicetree+bounces-267097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:50:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB3716CB50
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 80DB83002917
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 10:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409442E54B3;
	Sat, 21 Feb 2026 10:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9Mu5xfo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C661A930;
	Sat, 21 Feb 2026 10:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771671032; cv=none; b=SwtoUofYIr4R9rBmWRJc83Gw60/onHaYbI1BVQcMA4Ut7WllmF62CmylPH6V+YrHtRGHtDhbyGeEBTPJcX6SkRXVUcsrZflhJQHLkWYaZUYjWbnzhxjLpsBWQvwA5Po46c0HaR6xE3sdfOV1YgHu+pqP0o9x0UK4X/7NnLj/Mp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771671032; c=relaxed/simple;
	bh=/P/wUs/RpRhI0E1M0aMEkA8nxb12jUrG+esikZ6r3S8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RCdj06+ZwmLnBpSLmKsKHb6MIxIFybni0xgNiFgCcdrHubHDqI/oA94oy5VuMEb+fBR4SuIE2J+MxZwWhiPowBDdW43WfCOY9LosbwEiwaBZwzwsIrTZJ/TlL6TgaxMPFQ9vvXtoZ7FwkQ0tSQVPUc2jB6d7J9fjSQ7WSv0kFQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9Mu5xfo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36ED1C4CEF7;
	Sat, 21 Feb 2026 10:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771671031;
	bh=/P/wUs/RpRhI0E1M0aMEkA8nxb12jUrG+esikZ6r3S8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b9Mu5xfoUua6lFAi/NIaU1S/kIhwWgFUuuhQlH2XQOzwQVhGAtrKgGKDxKPxRdeRP
	 3RkxAFWQuzN5eUIHgCIN4zdfA56bF/vORnLiiy/VXWXSySri0r1h15jGNlnsHM/59n
	 E7q+vMfYPqD/FAUWlvwuFHKxHEb2xFzRMYGa/NqQzu6xdODU7bChO6cVPQZqo7wf9F
	 jMZTRnsbqMNpHoOa5MHKXvpbHN3s11TrYMBxZN3lhxy2zHhJH0d7i9f5ExUy6ICIBX
	 0ejcB//tKwEcCWLCQB04Xs3oprxcKu4KcD4ELVjE1KDq8kMnrFVw8GNsEEXcVZbuio
	 eCUBK9P7tcKJA==
Date: Sat, 21 Feb 2026 11:50:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: mfd: sprd,sc2731: Reference
 sprd,sc2730-regulator bindings
Message-ID: <20260221-unyielding-violet-dragon-6121d5@quoll>
References: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
 <20260220-sc2730-regulators-v1-2-3f2bbc9ecf14@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260220-sc2730-regulators-v1-2-3f2bbc9ecf14@abscue.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267097-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,abscue.de:email]
X-Rspamd-Queue-Id: 1DB3716CB50
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 06:01:50PM +0100, Otto Pfl=C3=BCger wrote:
> The SC2730 PMIC provides a different set of regulators than SC2731 and
> thus requires separate regulator bindings. Determine which bindings to
> include based on the compatible string of the PMIC.
>=20
> Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> ---
>  Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml b/Doc=
umentation/devicetree/bindings/mfd/sprd,sc2731.yaml
> index b023e1ef8d3c..e4ebb511bba1 100644
> --- a/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
> +++ b/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
> @@ -99,6 +99,19 @@ required:
>    - '#interrupt-cells'
>    - '#size-cells'
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - sprd,sc2730
> +    then:
> +      properties:
> +        regulators:
> +          type: object
> +          $ref: /schemas/regulator/sprd,sc2730-regulator.yaml#

This contradicts the top-level which says it is sc2731. It cannot be
both. You just need oneOf for $ref or compatible, in the top level place
for regulators and then just drop this. If you want additionally (!!!)
to put constraints what can be the child, it's fine, but just with
compatible if you have it and also what about all of other children?

=2E.. which will lead you to next problem - it's getting complicated, so
why not having it just separate schema?

Best regards,
Krzysztof


