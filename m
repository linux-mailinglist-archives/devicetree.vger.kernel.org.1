Return-Path: <devicetree+bounces-132996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F829F8F67
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:55:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A89971895872
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0CE41B041E;
	Fri, 20 Dec 2024 09:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="F60g8FrS"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EE4143744;
	Fri, 20 Dec 2024 09:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734688527; cv=none; b=g55zUJxtUnKrvcVytDdTDKkQcTfk/TeeTTfDn2gEy2CKE84yvUibfnJbDp/H03/JagvU2m0wyNE6UJBGG3cdzDzH8w9oJlZgIZ8mAx085rw6utPSBPKoexQf5ctJAP8BIahVomTcEE81xTEiarGh8opYqoKLLbsH0oWGaKSAMW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734688527; c=relaxed/simple;
	bh=WHChlDaqD1NI//1QWqx55kv+LHwkC4ZSA3jnQaPpveg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gZfjXuiJ55KAiN2Fn+eKYDIC4D3UPPK1IwQTfvjfmaT9WRRMV1ubPHJwL9rkjz3a04t9yz7bOqzJAOUxS+eMl0aNiFqP7FpaoR9XO2c+07/DueeDzkq5HaRBhr5NEoiv4khGOh3Rm5FLPmgNNNfZm8dpWBh+nrnuh45CqWqmF9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=F60g8FrS; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734688523;
	bh=WHChlDaqD1NI//1QWqx55kv+LHwkC4ZSA3jnQaPpveg=;
	h=From:To:Cc:Subject:Date:From;
	b=F60g8FrSwNGHo93KDtU2Wv8kJQTXl0IAw0LrR21/41ra8CZ88pfZ/XMFLt1ySfbHn
	 Dlnm6qVZNslF8Tce3qrXbyvrCJG11WAFjYanwPIDQSIVXSQWCbmolqoLqysr3vUhbl
	 +pEd62Wksz+i9pXbmQep7NDFs8lul5UQ5EplhzisQnDFKwgsvWm9cWlmR2Y4nyQNQ7
	 N0G1WDSU/p1MrkG4j2Qn/fzAiXGNXkXHNT7FnVCIR7ttqtaHLsoMR5/yJ6EPX90PvA
	 BhwwKbnD9nmkyc4hPZS91wyFn2gN3J9zjlRfDBrLgrAEhhXC9A38P3uWau9ZRiay0x
	 btt5JrhhdSMPQ==
Received: from beast.luon.net (simons.connected.by.freedominter.net [45.83.240.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2500A17E120F;
	Fri, 20 Dec 2024 10:55:23 +0100 (CET)
Received: by beast.luon.net (Postfix, from userid 1000)
	id CF3F7D8F3932; Fri, 20 Dec 2024 10:55:22 +0100 (CET)
From: Sjoerd Simons <sjoerd@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: kernel@collabora.com,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: Set ethernet alias for mt8365-evk
Date: Fri, 20 Dec 2024 10:55:06 +0100
Message-ID: <20241220095522.2026002-1-sjoerd@collabora.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Configure an the ethernet alias to match the ethernet controller (even
if it's off by default). This allows e.g. u-boot to configure the mac
address on boot properly

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
---

 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 7d90112a7e27..44c61094c4d5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -21,6 +21,7 @@ / {
 
 	aliases {
 		serial0 = &uart0;
+		ethernet = &ethernet;
 	};
 
 	chosen {
-- 
2.45.2


