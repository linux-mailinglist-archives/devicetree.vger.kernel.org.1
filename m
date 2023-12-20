Return-Path: <devicetree+bounces-27228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 678CA819B28
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 10:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99BF61C25840
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 09:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737741D53D;
	Wed, 20 Dec 2023 09:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="DOt9jI3s"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853D01DA2A
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 09:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id A918BFF80F;
	Wed, 20 Dec 2023 09:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703063565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r6z4KODvtzTr61IMxvmajoJCqwn7pJbqrJvZIcULTcQ=;
	b=DOt9jI3sn+v5eF81qoZ4DhcxnCOr/z6YU0EDa8w4iUQXfhnqZy1GRZb1/Qv0ISOx4fyItx
	nGwQeBB03czD4nxHeqsqEa2tDBsSnTHCF9Y04egpWc5t+nFdJsK9b43cCM0YQSA18IN7rN
	z0hQWi8ofPmdmZyeE0nzy1X8Six84IRZTVsFFxTN1J1QE6PgPpLKaqmbKKt/V8cOg/NTSv
	yOnmuebvYlzml+FZZ4n07LIcTx2pqDcU0QIoXeqiXwkoCpvGFvkINf9WM4GxJd7XDdrVvV
	xKh7gmOukLLJ15BKj9AxTXJT2EsVvUGd/UOeX/zAuhA7TLvwHwwdRzKslb4FLw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Stefan Wahren <wahrenst@gmx.net>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Han Xu <han.xu@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marek Vasut <marex@denx.de>,
	=?utf-8?q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-imx@nxp.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: mtd: partitions: u-boot: Fix typo
Date: Wed, 20 Dec 2023 10:12:44 +0100
Message-Id: <20231220091244.655381-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218130656.9020-1-wahrenst@gmx.net>
References: 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'72da6edd3281650818ee9094cc40a7157b0ae6dc'
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com

On Mon, 2023-12-18 at 13:06:55 UTC, Stefan Wahren wrote:
> The initial description contained a typo.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

