Return-Path: <devicetree+bounces-244343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D11CA3DD4
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D568B300765A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D845C3431E9;
	Thu,  4 Dec 2025 13:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="HvkTHMxd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1EC33ADB2;
	Thu,  4 Dec 2025 13:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855756; cv=none; b=DCeICznN/FYXaqjB3dBybh9De7SqjW6F98agmfGYONcLk9JpaqJexPdhUlT2IxcMKT59+eZB0gYKbIlUtp/quWXbQ+b3XgUVwKuFFAzenIwsDjHANIT/fMRmvAEUz85zLtA34omLLID4px3R4L0nrdv4wvlt1yQk7DgXy/m1eCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855756; c=relaxed/simple;
	bh=QjeAiID6Y530npa+5WsHZ0Iwnmm8ERb4AzH/LbF8tA8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qMuxPF5g8FKHSODNHi+aj0OxiFxr/SJj0V6pPqh3GRukPFyfVwRTxUe/UgFmMITADvaJdhlnKp2fLp8OLCTRbxHVXgJBxm0Et6R+FMGcOK4GBOgLNTdrM83ngij5Hvplxw7zVRcG/L+s5sE4DHPVUqm5SrkdDB15Gy/mu5i/cjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=HvkTHMxd; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 68A1D1FA5F;
	Thu,  4 Dec 2025 14:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1764855750;
	bh=LA27eETEMeKn2TVb6y+owtRyY3BBlRXR9GEPMauKk30=; h=From:To:Subject;
	b=HvkTHMxd4ioPdsJVVac+RcIbiIPiUjkTj8wYc+DcdOkK3M0WixFNJ4pgeVek1Nufn
	 ZxRx0Z4QOmDiKcXXEdjUaOGAK6rBAKquqXNBXo6HZslUrTK8ZSw6z15aKTsstANvyh
	 3wKIcryi24P3inZLyfPCZtb/inDYH7bMy2udVxod+7/QJqcFjBxOpVjktoMdqaux8u
	 5w46ZHI+QrPYVfURGCdBN8oLu31IW4qmIKlq2fBIg0PH5fasdO85y4buH0AH9oq1Bd
	 HJ32l+ZqSUBgdM3qGT6UZA+SN5QzDHOjCEIhg+8By5XC/9+s86rfWpEwfCzYFfnS8C
	 HG9sZh6vCAV4w==
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: Fix USB-C Sink PDO
Date: Thu,  4 Dec 2025 14:42:17 +0100
Message-ID: <20251204134220.129304-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Change USB-C Sink PDO and the amount of power that the device can sink to
zero to maximize compatibility with other USB peers (the Aquila Clover and
Development Boards are not sinking any current, they are self powered).

Francesco Dolcini (2):
  arm64: dts: ti: k3-am69-aquila-dev: Fix USB-C Sink PDO
  arm64: dts: ti: k3-am69-aquila-clover: Fix USB-C Sink PDO

 arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts | 4 ++--
 arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts    | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.47.3


