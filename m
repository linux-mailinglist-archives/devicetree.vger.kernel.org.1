Return-Path: <devicetree+bounces-210087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5750FB3A1FB
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 16:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C91B97A1F46
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AFB277C85;
	Thu, 28 Aug 2025 14:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="BMplK54R"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA46A1C5F39
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391654; cv=none; b=IWzh9ab2f7kIR4F5u0DIppFNP4y5an2G8nQlqxyUOWYg3bbMMPy9lAbQGlUZ2aB+OyEY+j6+IAsDQ1EAduC/eJzFaMERQEXOvsInlpURX4IV3VumjJAzmh1KqMwl8m8LFwNtfZN/bXoqM9QSLqxTVeASs7l2WKjhAzMBUZQztYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391654; c=relaxed/simple;
	bh=ENtF9dMmAFLBKN2RSrXhoJle/KDo1PSoRLO/+5jvepw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=nnUp8YGyJXqmkJtVbAXHaGfxcMDfaD3YRM4nb7lJlgfDxMg3kxxrPFwpeypYz4dDSFPxhtNMByGyh7/U5faIHvoUbtx5fdPUdoYcK4wFWBSD3EqbCa/6SYw85fHnFG3iW6P1h4rLBACe9AKMCjBEeMP8ciwKV+T/+Jhgw5TVH/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=BMplK54R; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1756391650; x=1756996450;
	i=markus.stockhausen@gmx.de;
	bh=ENtF9dMmAFLBKN2RSrXhoJle/KDo1PSoRLO/+5jvepw=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=BMplK54RjJ068zbVhZRJble6t06dNn5NxTf392MTiQ7S4wG7kiAPmV1yq3vi+BzJ
	 91G/LIN1hhV8QMOpp0g0Bw+ORQ5/rAqUuNTJsD0mTHHaYEUtRGH6lnddoiW89QeFv
	 5Zssou+24Ob2qLcc07VMO5P6onqHy/W0gZCIYPqya8JRq58yEShhdqb15tmHxfsCZ
	 SudZbhhnoPy+wfLPm7GDc9Y98H2y8t5StCzpGITkcHM//yWBabj8visltDZd7QbFM
	 BV6cnesKUhUrTJL9Zy9vCaQnyWSDDINphmhRbb7xXdYU4+QrpoY7fOCnqN45djZtl
	 yDEqVPunMgE7PlHNKQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mn2W5-1uBg2Q3WLf-00l7xa; Thu, 28
 Aug 2025 16:34:09 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] Realtek ECC engine
Date: Thu, 28 Aug 2025 10:34:06 -0400
Message-ID: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:8V3bAinyMxRqJe5iZvnjkl4TBWX7tGMAZ8knI6ACUqzsfkJ5XlO
 qiRiQYVPJjinIBI9Jatt9Pjxu/vcynzj+3CwG+Gx+gNxk+MboXbjqDyQRjlH8XjuMK1Wrdo
 g7ZmmP6+Xf6298PAQ8AhlXu9ZU4UGC1o3RvoObzhAesbYKHophwNCPU1vOt1BJGfncGd+2S
 B8SbbAPy2tYSptGdOkcuw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dgcx+G14/og=;+D0SF74F1u1vCQbCoG2egg92sFb
 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
 ADyvkMA=

This series adds support for the ECC engine on Realtek RTL93xx switch SoCs.



