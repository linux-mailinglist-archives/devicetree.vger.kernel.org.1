Return-Path: <devicetree+bounces-222522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4510BA9E22
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 17:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0450A3B00A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1ADB30BF58;
	Mon, 29 Sep 2025 15:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="reO91RoA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD080302774
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 15:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759161286; cv=none; b=Q7hj2zHRIot648xAwZisEiWWJEmxvSsvvAfYbF6EkT1oA7g4s5vx4BF3S8+kNnASZgfzpVXbSz9KB5Uv7Wi/6bbzxL7kMvagcDm+z0aGDrltTbUg4tCqdCn8/DUrLaGNWtZu0R3bMX8iHVW4o4Kd5ylHkJa1uGdWcH56kC4ZIIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759161286; c=relaxed/simple;
	bh=eq+AQgvA9sxV/iQE9XAagE2/yUtnNw6q2aqm6/TFD2Y=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p1bWA2zMwv9JK+sEcA3amfsfA9g0rZw4J0OLQb55JKCsaGWkw7h/wU5MSe5Yc2AVEhJYQOIPAC8ok+U0FvtlqZEAJknlCLNExEn23IysZUk+Kniymaa5KOMaVlkB7W85ra30HgTyJnTFXo55Tx8TjhnVkl8EJpXX8YUo7kS/GoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=reO91RoA; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 0928B4E40D3E;
	Mon, 29 Sep 2025 15:54:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D433E606AE;
	Mon, 29 Sep 2025 15:54:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6510A102F198F;
	Mon, 29 Sep 2025 17:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1759161281; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Spm8yVAgaGCfSlHJQfFy0r1pg/IkNIzB0XaZz5q975c=;
	b=reO91RoAuHVRsuxfoZLuZHViU4cHSpuhOFU2QzBxRmNetmG7MT2SboCpjN6Hn2aF+VsOtp
	g749P5UOkCxiSjK9QIrdj2PUpr57XQSfkcYi/7Tvc1FD3ttCe+VeNtfFJ8PffIVJYD8Tia
	bMfj0q81TYd6nYpV8PPhSvw6TuS9anIrXNFXXg62XFesyiuGls5ewFO6RdcIyehjNmfeQS
	o78PcMBGyM2giYp29pEhdSXqnVgeq/5LZFvMU9eBnootXBGHYPzj/LnQ6kQv16chjLEcRK
	N0tnxmfWSCGxxl82sH0qmoKqRY6ONwVt+W/o4KP+JouHYmXL5lvG6VjBAhllIg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, Markus Stockhausen <markus.stockhausen@gmx.de>
In-Reply-To: <20250919075201.4177901-1-markus.stockhausen@gmx.de>
References: <20250919075201.4177901-1-markus.stockhausen@gmx.de>
Subject: Re: [PATCH v3 0/2] Realtek ECC engine
Message-Id: <175916127540.50127.8496050695970083925.b4-ty@bootlin.com>
Date: Mon, 29 Sep 2025 17:54:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3

On Fri, 19 Sep 2025 03:51:59 -0400, Markus Stockhausen wrote:
> This series adds support for the ECC engine on Realtek RTL93xx switch SoCs.
> 

Applied to nand/next, thanks!

[1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc
      commit: 12bfcb84dc0852c97baff9ac1c0292a9db90c367
[2/2] mtd: nand: realtek-ecc: Add Realtek external ECC engine support
      commit: 3148d0e5b1c5733d69ec51b70c8280e46488750a

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


