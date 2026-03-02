Return-Path: <devicetree+bounces-270109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JBfF12wpWkiEgAAu9opvQ
	(envelope-from <devicetree+bounces-270109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:44:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6E31DC13D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 82ED33012528
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D478411639;
	Mon,  2 Mar 2026 15:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gHKEgrGf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C182411623
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772466251; cv=none; b=VJ9b8lUHip6WAUjiWcWqKgNoRnMsXH8bSDcAVhokpO1j3br7nOnCMwlN8zi3KOKRhQphqik57DXi9z1RUKU4IQjHDbxLBaTIRMl2ADSwYYHExFAhLSCQqsYl1H5j0T+SN1xeG9pnJ8nxy4iigbscVJAP5lTmxuefjSodG5TUg1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772466251; c=relaxed/simple;
	bh=XCJBoz0V0rROm1IjEjfMWPy3a7Ftpl9omP9rEJQ8J2M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=gPomdCYq4MrF3CqThQ5sDuG7TJoSt6hO2umUCWgbJFG4VkYt9n+/CSGTmv23NZDajWb3tCkUlK/xT/xLhvF1BwITdWqkY8WFXv1ywIZB77Iv+5kho19LMoYpqUKpIZJlOOAbfKGzcENvKK8Fv9VpzMEdzWA0QTUuy+J+L+rELV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gHKEgrGf; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 788384E410F8;
	Mon,  2 Mar 2026 15:44:06 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 433085FE89;
	Mon,  2 Mar 2026 15:44:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5CA2210369568;
	Mon,  2 Mar 2026 16:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772466245; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=W5xwiPDxpnLRrto5XuQ9eP4pT2QR6waC8wrl3JKLmpQ=;
	b=gHKEgrGf+6vb22Bi0/bGEo3oh/7e81dAYsSkyWRz7gT0Yis7830W/0KoOfxUPtV75ORiOt
	gpsPjc8ye/Za2Dk3o3uROoZ6Ulw7HdGXbYhY/wwqdXfdzkS96lLcw1vx0kxq9jiTV96TrQ
	/qrijjvK8vD/sg0MQq2FcmsgAjgji4JasOu3eh+u/n2XV7PLvaFXHDOvdFBeDX4UUGOmrD
	zULR79Jq1uR/Yt+riL2JPPXPB+WeMvrbqk57eYd8K8/qHH5yTUeD5uIF69DnxJo1rxRhJF
	6jDkbSCsmcr6exQCfRaYlHUnG2g5Kw4iQE9S5JsJadTvL9uiSqd6bi/do2HkSw==
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
Date: Mon, 02 Mar 2026 16:43:58 +0100
Message-ID: <87ms0qfd8h.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 0C6E31DC13D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270109-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,BLaptop.bootlin.com:mid,bootlin.com:dkim,bootlin.com:url]
X-Rspamd-Action: no action

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

Applied on mvebu/dt64

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

