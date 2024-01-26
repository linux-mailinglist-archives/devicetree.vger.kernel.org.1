Return-Path: <devicetree+bounces-35638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6D683E260
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 20:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D6751C217F8
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 19:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA35224D6;
	Fri, 26 Jan 2024 19:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="JSDjQkFE"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C766224CC;
	Fri, 26 Jan 2024 19:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706296906; cv=none; b=VmegwvEA/fyNQbmJqZsz3CZ7GijCbVLXKo/0bSZA0FS4Z8/+jbvRFKEmiNW6sX5DotxgMlmK9scan4yXPXM/VUvfY9pUMKMwnHdD+m+RiOTN29kOsvtiSwlgSEtQ794S94pzJfCsgTbZxY7PQwzg47dYpOV/7d0QSyxkACbpK7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706296906; c=relaxed/simple;
	bh=7mhZb9ygDhp+lMS6hHQyI5VsLJG0EHa6YD7w0sZalvQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WJ1Qw0JFjOWHkWlLR5jPPdz49XWM0sjhGZoDYqkc4RlLLRsGA1V8fL2ucWNOzhocF/fD94dJCWxp5U427/IfJlqJoskHbFOwg1Mvmz5XnQVkX/i0VlT6eiMK/PrY+812D00tz1uBiJVZg6GUOUrOMJg+H0F6F1oWVsB4bWpzER4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=JSDjQkFE; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706296902;
	bh=7mhZb9ygDhp+lMS6hHQyI5VsLJG0EHa6YD7w0sZalvQ=;
	h=From:To:Cc:Subject:Date:From;
	b=JSDjQkFEorkj0X7MovCc69VTRxUVTLipp8ZQ5q3/F9LdC4wnu9pTKnOOyxVvaMfiJ
	 afIb6JAeT9JejAjy0wYdKPc2eAJQAAIOe7OImaa0oWxdFXPaKadl+2i+xzs8kXGnuF
	 j0eeChNMiKHCZcQ0slCgaCqaMw4weHpCT6198egLV01r/PvwArCenBXakgyYbOEtJj
	 Ii5O+8ZH+H79d1DKp7lityrXR1PWy6DcGnnGEeIBCHA1xCl2DAExuca3K8sQKFgeRQ
	 T2NzcFas/csoJ9LqOmKbNb7bJNMlvp1TVZyf/xel61spqiX83sBaBmSfRNj5abDkmg
	 HVgm03/CdX1vQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id EC9363780022;
	Fri, 26 Jan 2024 19:21:41 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Samin Guo <samin.guo@starfivetech.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [RESEND PATCH v4 0/2] StarFive DWMAC support for JH7100
Date: Fri, 26 Jan 2024 21:21:24 +0200
Message-ID: <20240126192128.1210579-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is just a subset of the initial patch series [1] adding networking
support for StarFive JH7100 SoC.

[1]: https://lore.kernel.org/lkml/20231218214451.2345691-1-cristian.ciocaltea@collabora.com/

Changes in v4:
 - Rebased series onto next-20240125
 - Added R-b tag from Rob in PATCH 1
 - v3:
   https://lore.kernel.org/lkml/20231222101001.2541758-1-cristian.ciocaltea@collabora.com/

Changes in v3:
 - Optimized jh7110 resets & reset-names properties (Rob)
 - Added R-b tag from Jacob in PATCH 1
 - v2:
   https://lore.kernel.org/lkml/20231220002824.2462655-1-cristian.ciocaltea@collabora.com/

Changes in v2:
 - Add the missing binding patch (Conor)
 - v1:
   https://lore.kernel.org/lkml/20231219231040.2459358-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (2):
  dt-bindings: net: starfive,jh7110-dwmac: Add JH7100 SoC compatible
  net: stmmac: dwmac-starfive: Add support for JH7100 SoC

 .../devicetree/bindings/net/snps,dwmac.yaml   | 11 +--
 .../bindings/net/starfive,jh7110-dwmac.yaml   | 72 +++++++++++++------
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  6 +-
 .../ethernet/stmicro/stmmac/dwmac-starfive.c  | 32 +++++++--
 4 files changed, 88 insertions(+), 33 deletions(-)

-- 
2.43.0


