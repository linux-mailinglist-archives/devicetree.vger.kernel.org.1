Return-Path: <devicetree+bounces-261011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH7IMB2xe2mSHwIAu9opvQ
	(envelope-from <devicetree+bounces-261011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 545EDB3D4A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B97E30154BE
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A3E311C21;
	Thu, 29 Jan 2026 19:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="JSAw79XF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED6A231836
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 19:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769713947; cv=none; b=DPx8MJuU1exWj4wnzImMd9kV0fKGubtZcH3iGZihgP9hGldoPa6Z/8eeRmG9VqfJL5yD4uSK85hPByUybmKn2viGsizkqHfHT1d3dkCwMPxmZDI2xeihB7Tvm5pGbMF/f/Ii51LiGWXBxWexUDON1xhLuklILmBdgcyNI7wO8ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769713947; c=relaxed/simple;
	bh=nIGdNdDyRODf+4Q59D4egZ28uqIn6X6y0LZ6BfXXbqw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GImT+xUht4Fuaju9aB7FPehwgmO+t/tVuyCBYvObZimBftfw852f/rS+dFbJi1yOoLEcTkC0jppxzcXId2yWwaOXSpAHMyRCsjqHvjwmkW19PKqwa3ejSLARwil61rnWjN0V8he7quR6JlIn/YXoNtNXAck9tLRVqVGS3gijh+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=JSAw79XF; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id EC86A4E42325;
	Thu, 29 Jan 2026 19:12:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BA36D60746;
	Thu, 29 Jan 2026 19:12:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0FEF8119A880F;
	Thu, 29 Jan 2026 20:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769713943; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=3mpQKBFRFLzNacmfMrYHGjkHw2gm2/qzE8sNqQd2e1I=;
	b=JSAw79XFO5e74UeEi+y7bZirRgDGMcE6qXfzElHMR5ViIFQB1wfI9K0tPJHD2pe5LfeT4U
	SKWeHhCOBPVMDXbHf0BKiCJYon8vMBn5zHPFGgkNbOSamsHJIsIIPTWXmIjVaJSKHTAx7K
	oSPnO8fiE24deZyaVMGq//Jfx7FeUyqkr/H7d0GdtnyGvYLj/qw0gPCikq8XliMq/8G4oU
	ch0SgelZOU01hykwwugudT9AVMWlGvSKCl63kzyaYIwGy0xt62nzS/oPRt6MNNFXAsB2+J
	7eZob7XgZcEy9oGhAM6C8HKcrCJo5YdJMriZxN+Vsrbp3WRPJuQGP3zntWEiQA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akhila YS <akhilayalmati@gmail.com>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT
 schema
Message-Id: <176971393997.256159.1399345504326383205.b4-ty@bootlin.com>
Date: Thu, 29 Jan 2026 20:12:19 +0100
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261011-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 545EDB3D4A
X-Rspamd-Action: no action

On Thu, 22 Jan 2026 16:23:04 +0000, Akhila YS wrote:
> Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
> Controller binding to YAML format.
> 
> 

Applied to mtd/next, thanks!

[1/1] dt-bindings: mtd: st,spear600-smi: convert to DT schema
      commit: 68cd8ef484521a01826735518f173c4ae3900eff

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


