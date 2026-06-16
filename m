Return-Path: <devicetree+bounces-312368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x8O+GUoKMWrgagUAu9opvQ
	(envelope-from <devicetree+bounces-312368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:33:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F2068D318
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:33:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iQdiqZHR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312368-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312368-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CAF4300C0CB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FE4F413D8C;
	Tue, 16 Jun 2026 08:33:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C153CC310
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 08:33:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598792; cv=none; b=TqYfBC/I+fd3lEMCWorLWCdeNZwRnkvJW3f1gbi0J8Q99v7kHmeQLXF33KxWf9avZu9Bd/5CR8sLYEqZ6X3sBPdyUPa8WoRD4rBtIpdqw5e9okvyAAY7UToiccbVIZ6UEysIEDcXPyyjnLuS2ahXwKMkKXSu6Aj3UJIk9HRxX5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598792; c=relaxed/simple;
	bh=M97Tz707eToHhH+ZrIUN8w+3ie0jgrgEvk6GX+oA+uE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lLM3wZArArrGCx4Of6V4gfpP7U1p3EXVqoFoQBL0JCsMPkRcEc1MPKXsNDzW7CXa52SJKQu1b1PjO43UiB9yj5SOGqlUsc8Bn1Fesu3uWU2EgUyX0NaHrLj+8wuu9zGWfTCcLTZDa0uyc6croeavZkH+R7qyJBuwmq8YLkdeql4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQdiqZHR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0BBA1F000E9;
	Tue, 16 Jun 2026 08:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781598791;
	bh=KgXtqJqX/GuaR8//qJPvF12+WJuDBbytWIPZ46OIzQs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iQdiqZHRBIkCQzTVOBK+PPD9q79MAgsw2WXVxxfUnlu3C2qNK4yYd2bMQ2jV6DVzx
	 mtb4qAljeJ3pKnuJnXpD+gKze6fzeiKQgEFjK6w86aMprc1qL1XOmltbxBlUatWmPk
	 E9EgnY1Zn/oPWT+sHi1NfjeAC1IN7QHWGGf7jwDbjIEu5do9c4pJLHVNJNDwIuKRPn
	 j4jVyszE2Mq35eMeQiL0SxNuZLIOUXMuYD95oxVzQ5hIrTSz0xYXaLjg0vlcZIW/BH
	 SPQv+6vjEYlG4ej/Pu1RFqCAnc4prSPOF/9rbokhu59PSEQdNBXFX/rIrf20qv86Ex
	 KCQrg53zh4ZdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 04/12] dt-bindings: iio: dac: ad5686: rework on power
 supplies
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-ad5686-new-features-v3-4-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-4-f829fb7e9262@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 08:33:10 +0000
Message-Id: <20260616083310.C0BBA1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312368-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,analog.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2F2068D318

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Making new power supply properties strictly required breaks backwa=
rd compatibility for existing devicetrees.
--

commit 37c22112eb8071cacd8ef295c9d3096b1ae584af
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

dt-bindings: iio: dac: ad5686: rework on power supplies

This commit introduces vdd-supply, vlogic-supply, and vref-supply properties
to the ad5686 binding while deprecating the misleading vcc-supply property.=
=20
The new power supply properties are added to the required lists to better
reflect the physical hardware requirements.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml
> index 7567de0ead4a3..bdc6bc425b489 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml

[ ... ]

> @@ -60,9 +74,23 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - vdd-supply
> +  - vlogic-supply

[Severity: High]
Does making these new properties unconditionally required break backward=20
compatibility for existing device trees? Older device trees that were valid=
=20
under the previous schema will now fail dtbs_check because they lack=20
vdd-supply and vlogic-supply.

>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            anyOf:
> +              - const: adi,ad5676
> +              - const: adi,ad5683
> +              - const: adi,ad5684
> +              - const: adi,ad5686
> +    then:
> +      required:
> +        - vref-supply

[Severity: High]
Will this strict requirement cause older device trees that rely on the now=
=20
deprecated vcc-supply to fail validation? Is there a way to allow either=20
vref-supply or the deprecated vcc-supply in an anyOf block so older dtb=20
files still pass validation while enforcing the requirement moving forward?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-ad5686-new=
-features-v3-0-f829fb7e9262@analog.com?part=3D4

