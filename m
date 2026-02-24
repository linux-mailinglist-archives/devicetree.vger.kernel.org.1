Return-Path: <devicetree+bounces-267993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO2SAMLanWk0SQQAu9opvQ
	(envelope-from <devicetree+bounces-267993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:07:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D918A4C5
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0697030F0F14
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D83A3A9618;
	Tue, 24 Feb 2026 16:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbiZooh1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF093A9605;
	Tue, 24 Feb 2026 16:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771952344; cv=none; b=t/iEJtskFcMLp9jr9x6sPH+qqvBzcQSTgKoADHOgDVxkp+UAWeqGWqcOhnN3P1Ta7se4r4CK8fmTagm+2NygouUAnar356OqcBbBUX+V+jPwflx2PmPmAA0OlGBFl2D+iM5Eh73P3fj56Rr+iSSrpidXjEirRjWGl0ibRWJZgjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771952344; c=relaxed/simple;
	bh=Hez4a6ZsLmJ2R8GrP7plPDfk6dAJSevBjLWGIHh7duY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=bn0ZBoWIlzPKD1yJItG39OXZqPlzHHHzb3+sILPfHyeXKqZJUeAWLVXkvz7kgWSea9g8M9J7TwUuxzes+/TGxPR7ppBpe66g0AocfwMZlI88/SyQQWGWT4sjq6s8fykl50BiXJ+A70GfQPezSY9CKT2W3kxFhuHqfkQyUwFLWIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbiZooh1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7778C116D0;
	Tue, 24 Feb 2026 16:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771952343;
	bh=Hez4a6ZsLmJ2R8GrP7plPDfk6dAJSevBjLWGIHh7duY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=JbiZooh16J1Z0IvVJBbKcJWAsxRgRR0x2fV2mBV6Rqc3/JXd1rVnDxqp0JK5yeNqA
	 jXVyQwx3JILpWKj299aCwx6ZcIEHg2dIB3doYJC1EW+it73gpI6WSNLSSgOp6+PLdr
	 o2+JNMY4iS3JGOpIc95N+bMEe6QWBItJSUDnrcFtvr/vN/2qk89kURbJWsthFQapVC
	 /Zey5SUdW8v+GukQkgKwwEDcaW3zWfivTD6fxzGWgRh4imWSs/oUuUKw48MU5OdJ1Z
	 ClRxrH1CFtUDOc0HubpZY71yu1Q758ShOJGTyWBTaM5Z4TY5cCsikiwvlCYmFYCsZs
	 4f3LAKAL0AAyA==
Date: Tue, 24 Feb 2026 10:59:02 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Claudiu Beznea <claudiu@tuxon.dev>, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
 <20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com>
Message-Id: <177195234272.3091471.2975392920179397433.robh@kernel.org>
Subject: Re: [PATCH v2 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert
 to DT schema
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267993-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 6B8D918A4C5
X-Rspamd-Action: no action


On Tue, 24 Feb 2026 14:46:49 +0000, Akhila YS wrote:
> Convert System Timer binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.example.dtb: watchdog (atmel,at91rm9200-wdt): 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


