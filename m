Return-Path: <devicetree+bounces-249566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E876CDCE74
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F19963020208
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4847332572A;
	Wed, 24 Dec 2025 16:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="TnEmii2p";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="TnEmii2p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AAC1419A9
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595531; cv=none; b=lkyekZegL6Wfa94SU70DoasMrt9FruRJNmyZ5fIkuZKAHYqQKYCAeuQLXKWMpnjua+XJSQIR2IQ78tXN/Q876g+jGpcaaAvuAIR71bUmwkNwmqWFOhAMwb7YqSzs1Xu3kZuh8UWvCuaWjEK1Fg/Uyr7GRUwFUPzE/ZAi0xx6IGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595531; c=relaxed/simple;
	bh=ye+C5uRddAqNX5xzzwVvISOeNHQJNiRYm+Gb5ec+iL0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RQdpK+czhkuJP9yNGTWF9LxKhPwQBxnTbP3pCeGv2QdxBRdGdxF1OC0ILBtigSb8J7224IWQ0HCjYFlSnpdGmS+8E8neIEUt4S55bUBNh70TEZdK6LoSKEKgxvZaOVHQqC8r8l9leen/+qSoA/uprRwCqxBund/R5fdz1p6dMV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=TnEmii2p; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=TnEmii2p; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766595527; bh=ye+C5uRddAqNX5xzzwVvISOeNHQJNiRYm+Gb5ec+iL0=;
	h=From:To:Cc:Subject:Date:From;
	b=TnEmii2pRmJiCzVgsCXlv1ufwc52f7BrI3VTZHT3+QWI+kbSHX+Bi+A4+TC0zMB5H
	 9bbP+833IPPXYkQfFqT4S1L80UOPY28sI8In9csJ5RgNG5bo/Qrf5+5OqXuZbZk1sa
	 bOZYIoZ6wOMP5gg6ktgPYrd6nv+AeU6qYjTlX1F16hvV0pjqaCAvs0ajKuQT8HFqa6
	 pvHdqDJTGwUfaNB8JzyeQOeNxJBNyzoglkC4s6lF2nycuhBc/oofkCrPykKA9/hFsT
	 bF7ETEPxxWq93EA6Ad6h/tVbMCWU3x2+cKaujdK02jHGWxDKon3KNcLKgQ/wSNc6tF
	 TRHITWmRGhqsw==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id D37E13E8A84;
	Wed, 24 Dec 2025 16:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766595527; bh=ye+C5uRddAqNX5xzzwVvISOeNHQJNiRYm+Gb5ec+iL0=;
	h=From:To:Cc:Subject:Date:From;
	b=TnEmii2pRmJiCzVgsCXlv1ufwc52f7BrI3VTZHT3+QWI+kbSHX+Bi+A4+TC0zMB5H
	 9bbP+833IPPXYkQfFqT4S1L80UOPY28sI8In9csJ5RgNG5bo/Qrf5+5OqXuZbZk1sa
	 bOZYIoZ6wOMP5gg6ktgPYrd6nv+AeU6qYjTlX1F16hvV0pjqaCAvs0ajKuQT8HFqa6
	 pvHdqDJTGwUfaNB8JzyeQOeNxJBNyzoglkC4s6lF2nycuhBc/oofkCrPykKA9/hFsT
	 bF7ETEPxxWq93EA6Ad6h/tVbMCWU3x2+cKaujdK02jHGWxDKon3KNcLKgQ/wSNc6tF
	 TRHITWmRGhqsw==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 4DF5F3E837D;
	Wed, 24 Dec 2025 16:58:47 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] ARM: dts: lpc32xx: minor updates to NAND controller nodes
Date: Wed, 24 Dec 2025 18:58:43 +0200
Message-ID: <20251224165845.1261926-1-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251224_165847_885325_B1F015E5 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message. 

The changeset contains two minor updates to NXP LPC32xx NAND controller device
tree nodes.

Vladimir Zapolskiy (2):
  ARM: dts: lpc32xx: change NAND controllers node names
  ARM: dts: lpc32xx: describe FLASH_INT of SLC NAND controller

 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.43.0


