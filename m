Return-Path: <devicetree+bounces-275392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KND3FB4ztGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:54:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5FF286651
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:54:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 10D5E3015A6D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA9F35F5F8;
	Fri, 13 Mar 2026 15:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="x3/jANCx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E6A35E926
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416974; cv=none; b=G+aaT6CDXnlqWOIKHr0Oe5XS60Yk4vg1gm7847VSbAlmZ5VLx/doL5CznD2J/Cc8LN5LLQKTw1ZoATsCCvHzJO6EDacmknfnsCMrz4SbCTe1U5jiyueI3ejGMkEcc96I/UMdPTLyYNeKv2yc+2zBdIRojVwnZJYrBng/bBO/jgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416974; c=relaxed/simple;
	bh=Mvb87s5Fno5anGHTDgUc+Zof2913Yrqp0SADwAipLZ0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Km5C2Lj8AQVtk4TuOm5Q0pSJKwsAMeKCUnh2b7x0b7GGAfg1P98dO9iLDKA6qgFckunIq26GwdbMrS9P8vidoMW+nrykOS+jJY3toUtXhY18/WNSvAjH4z13UgqseMB0WmRjRgogU7/GNUXVoErkpcatF6fO7wU6Yfk4GfxVsTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=x3/jANCx; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id CAC6C4E42680;
	Fri, 13 Mar 2026 15:49:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9A76060027;
	Fri, 13 Mar 2026 15:49:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 014C010369F3C;
	Fri, 13 Mar 2026 16:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773416969; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2YhADhX7Sz9BQ7Wqa8aMFwEFW+N2GWWEEHSgVax6KyQ=;
	b=x3/jANCx3hppF1BDxPaPmihwGUWLq+jTGH/W/iroy0KMO/k5x5C6fcFPhyDjlaFBEThUwc
	93kFLp4neJsUg/LlYoiPph1x8mApbyHOozwLT29w41ZrNFhuFHTaDOcVsFoWsMC9q/rW4D
	smxK0zQWhgdOCCbzyKpR6An0dpbns3qYxVxxGBhT64kyNjIQndk8EHXllhn6IObOubCfux
	uZ60cAwP0eXxtBQsmRWkLwoOySlqAWt7khjLDrZcUpo8WIODnahgujm2zGV+caejq0YN8Z
	btleRVHhkABfign4jGrnvXT5qZ0y4eS1VXqEaCGiymDFZKecpsAVlsNP3sdhHw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, pali@kernel.org, mrkiko.rs@gmail.com,
 chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: enachman@marvell.com
Subject: Re: [PATCH 1/3] dt-bindings: arm64: add Marvell 7k COMe boards
In-Reply-To: <20260122165923.2316510-2-enachman@marvell.com>
References: <20260122165923.2316510-1-enachman@marvell.com>
 <20260122165923.2316510-2-enachman@marvell.com>
Date: Fri, 13 Mar 2026 16:49:28 +0100
Message-ID: <87v7ez686v.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275392-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[marvell.com,kernel.org,linaro.org,lunn.ch,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,marvell.com:email,BLaptop.bootlin.com:mid]
X-Rspamd-Queue-Id: BC5FF286651
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Elad Nachman <enachman@marvell.com> writes:

> From: Elad Nachman <enachman@marvell.com>
>
> Add dt bindings for:
> Armada 7020 COM Express CPU module
> Falcon DB-98CX85x0 COM Express type 7 Carrier board
> Falcon DB-98CX85x0 COM Express type 7 Carrier board
> with an Armada 7020 COM Express CPU module
>
> Signed-off-by: Elad Nachman <enachman@marvell.com>

Applied on mvebu/fixes

Thanks,

Gregory
> ---
>  .../devicetree/bindings/arm/marvell/armada-7k-8k.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.y=
aml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> index 4bc7454a5d3a..7e77310da626 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> @@ -21,6 +21,17 @@ properties:
>            - const: marvell,armada-ap806-dual
>            - const: marvell,armada-ap806
>=20=20
> +      - description:
> +          Falcon (DB-98CX85x0) Development board COM Express Carrier plus
> +          Armada 7020 SoC COM Express CPU module
> +        items:
> +          - const: marvell,armada7020-falcon-carrier
> +          - const: marvell,db-falcon-carrier
> +          - const: marvell,armada7020-cpu-module
> +          - const: marvell,armada7020
> +          - const: marvell,armada-ap806-dual
> +          - const: marvell,armada-ap806
> +
>        - description: Armada 7040 SoC
>          items:
>            - enum:
> --=20
> 2.25.1
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

