Return-Path: <devicetree+bounces-246968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A44AFCC2105
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B50B13062917
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4638133C524;
	Tue, 16 Dec 2025 11:01:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3977D33BBBC;
	Tue, 16 Dec 2025 11:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.248.49.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882884; cv=none; b=MLEON1t4ExHlvi1LGEiFrsTLau5iuDp0/Q4EA2ejON0DSiaw6J64FHfAzbx+0PvDWOkjrVFbkhYZ1PEumPCvFgnN2T6ycPlPwPnelp4kGbNypOfYWfLSwEQCdAmHyKsvoXpxmax/wV9LzIjadp/4Lj5OOBqUJoQZQwUxPBCSMzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882884; c=relaxed/simple;
	bh=iRkSZMInOPsatzxQeheqFyeCnY6Q75/YRJhtZYvV0/M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Vv1XXS/iCZy0Lfh8dEU128nFkFrI43elTI3GKiEeMdtZml6y4itNurj6jNDKuRc2sleUyl0HK39SJkY+zO/Yw0rkfyVxwEzBJ47YpUyZ7QsNGDc92U9WcAHZG3gwKm5pdVynUggyJ+BU5Q7bEEgsjvuNRl7wetdbLu+dnU4s3g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com; spf=pass smtp.mailfrom=socionext.com; arc=none smtp.client-ip=202.248.49.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=socionext.com
Received: from unknown (HELO iyokan3-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 16 Dec 2025 20:01:19 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by iyokan3-ex.css.socionext.com (Postfix) with ESMTP id A4C982091499;
	Tue, 16 Dec 2025 20:01:19 +0900 (JST)
Received: from kinkan3.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Tue, 16 Dec 2025 20:01:19 +0900
Received: from plum.e01.socionext.com (unknown [10.212.245.39])
	by kinkan3.css.socionext.com (Postfix) with ESMTP id 0EB291C52;
	Tue, 16 Dec 2025 20:01:19 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 0/5] Update UniPhier devicetree
Date: Tue, 16 Dec 2025 20:01:08 +0900
Message-Id: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add missing nodes for devices implemented in each SoC, and fix warnings
from dtbs_check.

Kunihiko Hayashi (5):
  ARM: dts: uniphier: Add missing watchdog nodes
  ARM: dts: uniphier: Add missing thermal-sensor node for Pro5
  ARM: dts: uniphier: Drop unit-address from port node of wm8960
  ARM: dts: uniphier: Remove "smpctrl" nodes
  arm64: dts: uniphier: Remove smpctrl nodes

 arch/arm/boot/dts/socionext/uniphier-ld4.dtsi    |  5 -----
 arch/arm/boot/dts/socionext/uniphier-pro4.dtsi   |  9 ++++-----
 arch/arm/boot/dts/socionext/uniphier-pro5.dtsi   | 16 +++++++++++-----
 .../boot/dts/socionext/uniphier-pxs2-gentil.dts  |  2 +-
 arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi   |  9 ++++-----
 arch/arm/boot/dts/socionext/uniphier-sld8.dtsi   |  9 ++++-----
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi |  5 -----
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi |  5 -----
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi |  5 -----
 9 files changed, 24 insertions(+), 41 deletions(-)

-- 
2.34.1


