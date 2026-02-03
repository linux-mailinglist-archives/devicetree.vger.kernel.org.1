Return-Path: <devicetree+bounces-262321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOwmLxgfgmmhPQMAu9opvQ
	(envelope-from <devicetree+bounces-262321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:15:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DCADBC12
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:15:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8117C30074CC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87C133AE71A;
	Tue,  3 Feb 2026 16:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RHcW5yq/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D8B2FBDFD
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 16:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135314; cv=none; b=GGQBDtAuPEyEN7N4SNeACN/cm7Vpz+Prid7bPfL0ppAx2TY6wuH95sDGr+/im71pZYBUkoxDkaavDlb16avSvfPF+iWk+YoJbcncPVpO3W19zINpCCJw526U+wkID8bP52tLs1kwgakwc84hZ61LdSBXZMxlhXM/LDgl6ThSdDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135314; c=relaxed/simple;
	bh=rdtAraLJh+AvSoWKC5ixR3c44G3fOvtpCwdl1VtEdqM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jeMrt8gP8StTgWcvIsaxxc6tDR9w4t7MK1j3P0Td11LNy18iiYGx9C5g6EQyEXpLkrx/n19TN1KrEeO269kFliGTL5njGMAUCWOZIl1jTa+c5VaPQM0LDZIlMkSHBDOU1h2Kza0qWZbQPKv/la6ET0f5Z9/fkY29+8oOskeClB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RHcW5yq/; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0E201C24380;
	Tue,  3 Feb 2026 16:15:15 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A29B560728;
	Tue,  3 Feb 2026 16:15:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 307C0119A8888;
	Tue,  3 Feb 2026 17:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770135309; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=m/+OTKkzM8qqSZ4LnKIGGDtESh50ZRkUFfHOdLUb1kg=;
	b=RHcW5yq/dfOH3mChtsQZaXyyYKAGdcL8aiaL5AXODKqN1uBa7eyqHmCr5393mdHSQhMTPo
	EPRuoMe9C6cbt2VBOTRHn3qdKhYmPsHH+cCiXGpPMI1+mi4eIBKTPA3kAx3uAQupVIPB6q
	Kp04b06YNuZhcu1PzUrTMRTDoMbYHUg9Eh23dpSx+DO2xgGeRrVJB4hkQwko8tMEVIq4Q2
	6UONk8OFiCQdpqNn4s/KSntOCqZomDX5GqIecmAlFmVExSuyykDC5DFjrsLEseWqDTW5Me
	omsjFQ3jr4t5E92f+T7p2H2imAgXuPqF06QG4qrsLe/nJfdcMvWLY+a8magT3A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: richard@nod.at, vigneshr@ti.com, Dinh Nguyen <dinguyen@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Khairul Anuar Romli <khairul.anuar.romli@altera.com>, 
 Rob Herring <robh@kernel.org>
In-Reply-To: <20260131172611.28807-1-dinguyen@kernel.org>
References: <20260131172611.28807-1-dinguyen@kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd: cdns,hp-nfc: Add dma-coherent
 property
Message-Id: <177013530538.557987.17955083991724868603.b4-ty@bootlin.com>
Date: Tue, 03 Feb 2026 17:15:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TAGGED_FROM(0.00)[bounces-262321-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: E3DCADBC12
X-Rspamd-Action: no action

On Sat, 31 Jan 2026 11:26:11 -0600, Dinh Nguyen wrote:
> The Cadence HP NAND Flash Controller on supports DMA transactions through
> a coherent interconnect. In previous generations SoC (Stratix10 and Agilex)
> the interconnect was non-coherent, hence there is no need for dma-coherent
> property to be presence. In Agilex 5, the architecture has changed. It
> introduced a coherent interconnect that supports cache-coherent DMA.
> 
> 
> [...]

Applied to mtd/next, thanks!

[1/1] dt-bindings: mtd: cdns,hp-nfc: Add dma-coherent property
      commit: 875382759298650c96192bf2c12e2d1e4575de92

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


