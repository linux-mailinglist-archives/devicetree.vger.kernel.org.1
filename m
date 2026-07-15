Return-Path: <devicetree+bounces-327072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kS+9H92SV2pGXQAAu9opvQ
	(envelope-from <devicetree+bounces-327072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:02:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1882C75F1B6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:02:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TOuoMKTi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327072-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327072-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D44AC31FF48C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B740033F5A8;
	Wed, 15 Jul 2026 13:54:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA202AE8D;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123648; cv=none; b=tY6loeVbV5LHG+XDwJoyn2weBSf1z3353/SFp4AOX5QHZpcEqME/6ZidXlZlotY4ggTaoBlrmYxR+6mexq7j0g5Q+ZeVna0iqmN/C0nbZJZR+mrZX9rRIJMHlrbaUBiAwhVzNs/2Ub7Sf3nOvuM8wi8+g62VxNKS2y6vmmQCFVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123648; c=relaxed/simple;
	bh=jyj+UbPksfGgBUnQgBauuaK2etX6isx+ML2+Wbpbx/A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MhHfuaKRYYWiXwD8F6DDZy0jWHjRb1bDiclhFQ71V2S346kxpBcaZqhNsKx9lA8LUUgJ7V7PTL+uUmMQZKqRbILZ2cG6Y4YsulKwGIc70uuJTZbVJ1AAg/tr5Fn5I9nIlAM+FR3bcH/37zh58GXsHn+9MRiJUn6vmpfTuClcY6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOuoMKTi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 260871F000E9;
	Wed, 15 Jul 2026 13:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784123647;
	bh=PZ8WB5K9zOpz8B7RVsBRvJMu8rjP/XfcLsCdxGxT4Qg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=TOuoMKTi69l7MXLyrzm6JPIkVSMBxS6BsLzPWHT2TLhANOTbMtnK4Qca+EMMywJ7Q
	 FCg254trVDbgZcbjWDu3T/DsC0Zt+UI46tTiF1t84hbod+lagjJ+w8N6W4vC46Lhw6
	 aFB6D6YTTU3Rz/+m/wLjWUqimbwTms99C03NAQatt2jMmMz6m9raFbp2ZWSiB0DRZz
	 RuYbGpj1FbJCOQ8syk0o/es650gids9Iqklb7I0+GFBIr7/qpP7h2RZyWVxB5C4nnO
	 JAGWG6sZi5X1ENvxRAd5o6/Lij2TBldZRdtbMcFHBPBJSwFgT8+NgdQc7Ov8ad32jH
	 krE70R6dCBxQw==
From: Manivannan Sadhasivam <mani@kernel.org>
To: linux-pci@vger.kernel.org, Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-mips@vger.kernel.org, naseefkm@gmail.com, ryder.lee@mediatek.com, 
 helgaas@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
 ansuelsmth@gmail.com, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260702150704.265282-1-cjd@cjdns.fr>
References: <20260702150704.265282-1-cjd@cjdns.fr>
Subject: Re: [PATCH v11] PCI: mediatek: Add support for EcoNet EN7528 SoC
Message-Id: <178412364176.146277.15805522323299213700.b4-ty@b4>
Date: Wed, 15 Jul 2026 15:54:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-pci@vger.kernel.org,m:cjd@cjdns.fr,m:linux-mips@vger.kernel.org,m:naseefkm@gmail.com,m:ryder.lee@mediatek.com,m:helgaas@kernel.org,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:ansuelsmth@gmail.com,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-327072-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,mediatek.com,kernel.org,collabora.com,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RSPAMD_EMAILBL_FAIL(0.00)[mani@kernel.org:query timed out];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1882C75F1B6
X-Rspamd-Action: no action


On Thu, 02 Jul 2026 15:07:04 +0000, Caleb James DeLisle wrote:
> Add support for the PCIe present on the EcoNet EN7528 (and EN751221) SoCs.
> 
> These SoCs have a mix of Gen1 and Gen2 capable ports, but the Gen2 ports
> require re-training after startup.

Applied, thanks!

[1/1] PCI: mediatek: Add support for EcoNet EN7528 SoC
      commit: 2077ccb9baa2cbbbccf5f0d8c2196dd9d5e43399

Best regards,
-- 
மணிவண்ணன் சதாசிவம்



