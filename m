Return-Path: <devicetree+bounces-253264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C0AD09050
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54BBD30CE2EA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F62035A921;
	Fri,  9 Jan 2026 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="EGej+a+0"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59351350A12;
	Fri,  9 Jan 2026 11:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959287; cv=none; b=r3uudpxtaBw2xmdRwQhkiHYckwpUk95OVij32qd7vis6yhWQzkO/qEY/JXih25qDoXW4qyOD4VdGDlHlMJy2sRsXVJrsFfTLWTXxoNH7UW9qFFRNEBtI+YBzd0VMRx5iCEwocjX4S5psYbxCli7d5Oy4Lc/01Ck5zgXaHtoEXfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959287; c=relaxed/simple;
	bh=fanj89SC0YIefDFZeAVi0tb2ZW4a6HRUlCfP7iaiAFM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fRwqeieCx0ucoRA4MThzt0Uur3GIDO4pemVXgmrecQnaS/6rYky0swwJVU463M4QPbgatPn30HfD7lq6qs3fD8oOGOPYmn8/+XujoUN9U558zUT9ohxpZYOh/u/r/4uOwzgHvb4CrMIXd3xrS5mamyJfoDttB1HzNpaUZ0zZ7SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=EGej+a+0; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959282;
	bh=fanj89SC0YIefDFZeAVi0tb2ZW4a6HRUlCfP7iaiAFM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EGej+a+00OpeWM2oHpmrVF0onf3PwfoA+aNzCJrrzid5khJoIMxqYW1uK9iVmLxDD
	 slF3L2ODXWi2m88XrfHWnvBLP9vPC2V6dI1oo0oYXNImPUOkLzmrG/VSzq6GKSJIT3
	 lJQpZIEMIbYCKlAAGdlf9ik17qZgvtkhQf+doQsQ5r+ANm7KB5SPlCVh4YQu+E9Gfh
	 85WRnJv4Pl6+2lkcM3pLnNIVvixBeD5P+vIOfy+0nLI8l/bcphXMg85q5d+tio1vpa
	 AlnTw4u9Ara+7d9aKmMpd2NU4atmrIitgC6xUBtVynb/JleYEZbIMTsQcxrAUm+Q/i
	 W1Ragtwg4fmew==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1259F17E0FF0;
	Fri,  9 Jan 2026 12:48:02 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 10/11] arm64: dts: mediatek: mt8192-asurada: Remove unused clock-stretch-ns
Date: Fri,  9 Jan 2026 12:47:46 +0100
Message-ID: <20260109114747.37189-11-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the clock-stretch-ns property from i2c2, as it has always
been (and still is) unused.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 0b4664f044a1..eadf1b2d156f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -344,7 +344,6 @@ &i2c2 {
 	status = "okay";
 
 	clock-frequency = <400000>;
-	clock-stretch-ns = <12600>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2_pins>;
 
-- 
2.52.0


