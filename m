Return-Path: <devicetree+bounces-269446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDB9B2Iiomm4zwQAu9opvQ
	(envelope-from <devicetree+bounces-269446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:01:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 096791BED97
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 286893003ECC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBB23D1CC5;
	Fri, 27 Feb 2026 23:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5uCpJED"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408263A4F48;
	Fri, 27 Feb 2026 23:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772233300; cv=none; b=BCEGjlvs8OvWnj5gWPOvM8/QYQykHOdnUq6Nd1KvKxMjgvJUdQwlupv27HsVBZ61McC/Y8AnqIp04YR7uy0KsAEB+bcMt6otZafggMl16QftJv3oJI3i43PS4HnYSvlJ5BH6qzP9G/aQx412YrDyzVhjay6qkqZ7pv7UaFCmaNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772233300; c=relaxed/simple;
	bh=BBIvSXYQfhf68vmVEDvIkDYtypJyo+cLCcL0YQtfWSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o+CBV53Nr52hcclEOuoIIeXaj9CcOTrDgdS11F8dG6dcGxjmjOiZUpoPQzgF6Y6KFkr+VXUYIS8UrPrKSNr+F42umlGvPaNekGp2WWLdc+RNxJI3+9daB516V9YNK/ebLeTlVp9lC/ZXu4Ie32lM6ofCKVK+yB04uW5vQO+Ac5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5uCpJED; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0F63C116C6;
	Fri, 27 Feb 2026 23:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772233299;
	bh=BBIvSXYQfhf68vmVEDvIkDYtypJyo+cLCcL0YQtfWSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h5uCpJED6HfvjmypFUtAOpPg/qZfAFC3LLJ/cRVOEAl8WEkmQyWPsIYgyPGBhpqQE
	 2jXojza1H1G1xGbGPwHdqb9S/lia41EO6t8iBBpwowZ+rMY/sBI9UyFHZM2jJoVh9W
	 14JQ/40ovOFckBuj+DR0WGUxjygQG1JSgx6XhpMYXpbiMm8UkDe3rPIaKESvUKTojJ
	 R3CwCkrjgwAmmLZBm7G3jxD3x+7uA1Ryb2RlHrBNMo9hquUDiiYJ0wTieGZCq9ntRq
	 P9J4AyAeDr9nuEsof+CQHVjwRS7rDvM7s4nKDnnh2xIyciRRZ0NYuG8YKTkOAIQgoP
	 VPLAWr9yY6Rdg==
Date: Fri, 27 Feb 2026 17:01:38 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: mtd: st,spear600-smi: Fix description
Message-ID: <177223329836.922128.17532965792785409405.robh@kernel.org>
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
 <20260225-perso-fix-spear600-smi-yaml-v1-1-8ef3d205ab3a@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-1-8ef3d205ab3a@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[bootlin.com,nod.at,lists.infradead.org,ti.com,microchip.com,vger.kernel.org,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269446-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 096791BED97
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 17:24:43 +0100, Miquel Raynal wrote:
> The description mixes two nodes. There is the controller, and there is
> the flash. Describe the flash (which itself can be considered an mtd
> device, unlike the top level controller), and move the st,smi-fast-mode
> property inside, as this property is flash specific and should not live
> in the parent controller node.
> 
> Fixes: 68cd8ef48452 ("dt-bindings: mtd: st,spear600-smi: convert to DT schema")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


