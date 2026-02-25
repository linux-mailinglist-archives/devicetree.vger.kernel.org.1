Return-Path: <devicetree+bounces-268469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MphHHEnn2nmZAQAu9opvQ
	(envelope-from <devicetree+bounces-268469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:46:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA88719AE71
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A128531FE7B3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E87B3EDAD4;
	Wed, 25 Feb 2026 16:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="16GVgG8J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5594E399016
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772037315; cv=none; b=g9zuPgLTopxwuuCLeJ5Iwk4paCUuxJ5rmpi1LwOIJyoTJ5uly/T7u71Z3p7kVm+0MXqYQGi2+KtKqO3DGcd5ynPFD9aZeXUspDaE8lSkko/vjYB9Z2Wj3+8nq2H+rXG6Dxo+lRXnO+/O0HWtcmdDi8oiebBnehMTPhiIeiy9Pdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772037315; c=relaxed/simple;
	bh=kvgEI9azpAC/Hwwqpob+AfzzM0UbG2F9JDp5tZ2Y6vI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aUEF9uE6+oE7/E1ep6rGohGGXs1go91UU6aopm4/UYh7dLQijzlnV4EBiJZksgk+sBtGWZFoBvDuFl/0k6D+LZ7wHUpYknZRwE2zt56xZ9uqk4i/vdLlWCzXo/EDEl6Alk5TcpQ0bJywmfoWhhw7kkjSGSW72I+huhhw3uem54k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=16GVgG8J; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D5E4C4E4111B;
	Wed, 25 Feb 2026 16:35:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A59685FDE6;
	Wed, 25 Feb 2026 16:35:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B13FF10369259;
	Wed, 25 Feb 2026 17:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772037310; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=UFaqZFkjXpX4ZOHgto3MapJdgoeyP0YFfcrJ09z0Qx0=;
	b=16GVgG8J+F4HJkAnnxIyNsvAxz2gLcwzzP9Uhl+Mw+K774s+TitaYGGWFB3il/spaDCSrZ
	afVzgFDZXEvqchCdINBAWdNu6vCC7vWUk8wY2XnPIIYLV0Gg1eM4YSqzjgq/kz4hXRGQxu
	3IdJ0oGjZiMbfxGESNIHtunOnjuO2J6V8qsQT8gIkdJR6NESz7iSOXpNg3aLsqE8HyiwfS
	nB10xWlqhE3lf3yGjT3b/vfHg/xIgltY+J7tHzaWiv/tR1qxqC/WIUb0I4seQ0ph+qusG3
	nCCvaUsAwKNrZRVzEI3HZMCWkNE/rhPA5ktT8rRn1wBXIUAij0/tCRapDnCsuQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>,
	Michal Simek <monstr@monstr.eu>,
	Bernhard Frauendienst <kernel@nospam.obeliks.de>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v17 0/3] mtd: Add support for stacked memories
Date: Wed, 25 Feb 2026 17:35:02 +0100
Message-ID: <177203729096.1970868.11555968857767278151.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260204-mtd-virt-concat-v17-0-5e98239bb55b@bootlin.com>
References: <20260204-mtd-virt-concat-v17-0-5e98239bb55b@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268469-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: CA88719AE71
X-Rspamd-Action: no action

On Wed, 04 Feb 2026 09:32:15 +0100, Luca Ceresoli wrote:
> [TL;DR for v15: as agreed with Amit I'm sending a new iteration of his
> patches to fix the build-time failure due to a module dependency
> loop. Original cover follows.]
> 
> This patch series adds stacked support by enhancing the existing mtd-concat
> driver to be more generic.
> 
> [...]

Applied to mtd/next, thanks!

[1/3] dt-bindings: mtd: Describe MTD partitions concatenation
      commit: 5c543de856c463235cef0808c2b100e475fc8438
[2/3] mtd: Move struct mtd_concat definition to header file
      commit: 59509da0cb51dc48e4edc57d7d3ef1d424c58fc9
[3/3] mtd: Add driver for concatenating devices
      commit: 43db6366fc2de02050e66389f5628d3fdc9af10a

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl

