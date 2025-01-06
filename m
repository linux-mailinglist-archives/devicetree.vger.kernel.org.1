Return-Path: <devicetree+bounces-135761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B92E0A02145
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 09:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4600A188485E
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 08:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8471C4A1C;
	Mon,  6 Jan 2025 08:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TJgx4xSz"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB431BF58;
	Mon,  6 Jan 2025 08:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736153868; cv=none; b=Qw/r4NCEwmgnJ/s/UQ+xHdYqrVrNguj7SdugoFDDHm9UfYVu7k8a6o0Tz2dF8w9VBHH+FtVqYgnTkSCXn2HScF6bGlvL9jIaFPUalXvKhsE2RpM6JeUhOBOIwpYwFv6TPKfAEhavoSZqQuayB86X1/Ui34v5TGRUDjxwzC4hmvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736153868; c=relaxed/simple;
	bh=LqO93PKZFzajhO0Q5bvrw7jf6gFJfNjdg6AaXE7AJoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oZP1Odqjy4RnuHQ87ewV794QBtzDxsNC1DwYEbneSsiKRbk2kd5IVfyAGbcRL81y47ph2pPni6n5v/fQlVaFoJWhPUvA1dp2HDd1ycBsBWgSqP1Oyzi97cTcyQvHjIbuiZHTHio30Rtz4YcbG10DJ5ls7hah67k7PboqbhEB7OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=TJgx4xSz; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736153859;
	bh=LqO93PKZFzajhO0Q5bvrw7jf6gFJfNjdg6AaXE7AJoQ=;
	h=From:To:Cc:Subject:Date:From;
	b=TJgx4xSzwvwUD5scxZT27VfTMcSeR7TjO3x6u0jHgvGATyKB2oYj8kDuRoxsYdaPi
	 s6iZf/YVW7wHyzFM/ttp0+yuJFEOYX2MWgcb42+yrSNYkM3qH41OSeneaGuNhzU7XT
	 50rk6TlplXymLwgrM5oyHlD7yezotol3Ume7ZNUQRy9hCHmfZ2+/vr/VfJJaM9+bHL
	 fzOzl1vGoeQqcy1Q5pE6b3RVT3iw1WnusEMPKgyO+kiReiavjHu0legHOPiejcMRX7
	 NNn26hcGmfl5MyRTNaiqL52PWRjxQUde8kS1NG2JCH0VadOwSQqDCK8P3JWTo55NJT
	 BFnooA5GYDaQQ==
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531::8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5CCDB17E1534;
	Mon,  6 Jan 2025 09:57:39 +0100 (CET)
Received: by beast.luon.net (Postfix, from userid 1000)
	id 084D4D979399; Mon, 06 Jan 2025 09:57:38 +0100 (CET)
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
Subject: [PATCH v2] arm64: dts: mediatek: mt8365-evk: Set ethernet alias
Date: Mon,  6 Jan 2025 09:57:31 +0100
Message-ID: <20250106085737.227622-1-sjoerd@collabora.com>
X-Mailer: git-send-email 2.47.1
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---

Changes in v2:
- Update commit subject

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
2.47.1


