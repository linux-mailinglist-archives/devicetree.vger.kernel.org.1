Return-Path: <devicetree+bounces-283577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML+SMtg5zWnfawYAu9opvQ
	(envelope-from <devicetree+bounces-283577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 17:29:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D5937D15D
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 17:29:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CAE5B3208643
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 15:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A387425CD7;
	Wed,  1 Apr 2026 15:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="TdppgTH5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0031340F8D0
	for <devicetree@vger.kernel.org>; Wed,  1 Apr 2026 15:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775056741; cv=none; b=tPNr6P1+ftJqcGtV5VsXl+auVlGKmM2StwshOsGMQpvlnpfi5DaiLbJvCRQjCXOitm7BExHkhMepn+TfMsBh9vVxLh9gZsAjyDLjmj7VGS9B2U4goDdnaq4brdXnU1ZHbBqMnixO+ShtuoeWPtMEf0FnxXFkCGL9JtrrkVP8u1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775056741; c=relaxed/simple;
	bh=h4R05REj75DQj2pzpjDMKWBpxQiD7PZwOGASozeb6+Y=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:From:Subject:Cc:
	 References:In-Reply-To; b=S4/c0N6Wb2zaHv9NwwBTHHYryu/q5DLYLDMRiY/kShKIZn1elabL5OdvyCZd+com/Go4Ci023FlISa/PoHcyiKk8HobWU/pUsxuNuTfwdVuR09XioSLC8YGMGsBUb3kI5j6GlwfVGz7ON95bQV/afBAFyrOJauSoH2aMIQt9UKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=TdppgTH5; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 86A3FC5996B;
	Wed,  1 Apr 2026 15:19:29 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 78610602BF;
	Wed,  1 Apr 2026 15:18:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 78E2F10450391;
	Wed,  1 Apr 2026 17:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775056737; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8yoFeMyD/KZn8fyS+ZARrT33a3ODa7g4H5IgKwKqI7w=;
	b=TdppgTH5mhDo0V1vTef5Ily0R8/a+t7zh+KushTkgUc9//FH4muq8MiJTA3heYFoJvyX1R
	Ud2EPBaBUK0Vmmhvl96r3g6M1VC8+LfoUeR+I6egcqh/FkXa14f2/V3ziG5hlP/16c1rxW
	oFi/t7xZ07f8RZrmUrPOikMx8SFgcQa5QC96/q45KSXUWjQYCJHWyHXmBNSqdH+uZBTfj4
	MEB1FPEOoPbdKz5t0/ev93tiHNeBvKXqcZRVRC6a+0Z6AMhntU5FqmH1B7FftaNO9I9jP4
	qZWAOjblPwZd0/vBvFjsDw8876y38So5oGnEdKUETvdxKtZ7jM0lYQ3Jcstcjw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 01 Apr 2026 17:18:54 +0200
Message-Id: <DHHX3IN0BKD7.1CGJV0WXP7P2E@bootlin.com>
To: "Herve Codina" <herve.codina@bootlin.com>, "David Gibson"
 <david@gibson.dropbear.id.au>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [RFC PATCH 14/15] libfdt: Handle unknown tags on dtb
 modifications
Cc: "Ayush Singh" <ayush@beagleboard.org>, "Geert Uytterhoeven"
 <geert@linux-m68k.org>, <devicetree-compiler@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree-spec@vger.kernel.org>, "Hui Pu" <hui.pu@gehealthcare.com>, "Ian
 Ray" <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260210173349.636766-1-herve.codina@bootlin.com>
 <20260210173349.636766-15-herve.codina@bootlin.com>
In-Reply-To: <20260210173349.636766-15-herve.codina@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: 80D5937D15D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Feb 10, 2026 at 6:33 PM CET, Herve Codina wrote:
> The structured tag value definition introduced recently gives the
> ability to ignore unknown tags without any error.
>
> When the dtb is modified those unknown tags have to be taken into
> account.
>
> First, depending on the unknown tag location, the item associated with
> the tag is identified:
>   - An unknown tag located just after a FDT_BEGIN_NODE is related to the
>     node.
>
>   - An unknown tag located just after a FDT_PROP is related to the
>     property.
>
>   - An unknown tag out of any node (i.e located before the first
>     FDT_BEGIN_NODE or after the last FDT_END_NODE is a global tag
                                                   ^
						   missing ')'
>     related to the dtb itself.

Out of curiosity, is there a real use case for global tags after
FDT_END_NODE?

> Then, if we are allowed to write a dtb containing unknown tags, the
> following rules are used:
>   - When a property is modified, tags related to this property are
>     removed and the dtb version is downgraded.
>
>   - When a property is removed, tags related to this property are
>     obviously removed. The dtb version is kept unchanged.
>
>   - When a property or a node is added, obviously no unknown tags are
>     added and the dtb version is kept unchanged.
>
>   - When a node is removed, tags related to this node are obviously
>     removed. The dtb version is kept unchanged.
>
>   - Adding, removing or modifying a property is not considered as a node
>     modification and so, those operations have no impacts on unknown
>     tags related to the node. Those node related tags are kept unchanged.
>
>   - The only modification considered as a node modification is setting
>     its name. We consider that this operation has no impact on tags
>     related to the node. Here also, those node related tags and the
>     dtb version are kept unchanged.
>
>   - Global (dtb related) unknown tags are kept unchanged regardless the
>     modification done.
>
> Implement those rules when a dtb is modified.
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

With the tests updated as per comments in patch 10:
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

