Return-Path: <devicetree+bounces-53539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0036988C9E2
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4F01B26913
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87BC1CAAE;
	Tue, 26 Mar 2024 16:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="zzmJxQuu"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415441BC41;
	Tue, 26 Mar 2024 16:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711471958; cv=none; b=gGQD9la2iQsD9MPo8IqDDK+t9gxBrmx8ocBHiw9oY9mLhus1E+vWdAaDvdSSnIu/rveMhsMK5n9V5t+PQ9KJGy+OdT+/UxHlICrBAyBEZ86V+x9X8JDBcmxw7W8t+TmNZPdySXoKZ7SXbpQOGNvVjQtTd6hsuGunvmaVJIwimDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711471958; c=relaxed/simple;
	bh=B0qyQLnvXzhUX1ZeTAh3U7zE2LqnONvAtFoHzqPBnHk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cFdENNLPpqn7ZYufu91BFbhth/T1QBcTOxkvXiUS/HDMI7Jqc2MtVJ5nmHWtZTh3ss4m+f39cDwDiVOVLIMN33kQa56Pbu84KmCeGHcIk6dwmjucjzkssB/TrkI3dn5BK6NKcrN1wyhwdZLR0GmQ53d0b0nXGMRsnddDDI4LSrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=zzmJxQuu; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711471953;
	bh=B0qyQLnvXzhUX1ZeTAh3U7zE2LqnONvAtFoHzqPBnHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zzmJxQuu58TxSZkdeVEA5dHzgMvmjb0GtEHM1P+HeFGRLQLBU4VzJ9Lc8E/8RPhoM
	 EQ1v6sRYHlWotkLciGcQgJDaPC6ZQ1dfwyzydI0CjOS/RGMp6UzDx7HCZSCyTAIcRX
	 swfstla0X0Wbs79odgeiCQg/JPVj01309iLdnQVqAW1jehmX12HalAh34wlsR5XajX
	 gUturQIPgzLYh3wdG95EICIOHkz0rQ0NQ73UwIBkAsmD+86FSrkkCWkZAhJ3hE0sep
	 Kg+U8XXJkytc2rZ7BVdy0KM6dxcKA8rs1EH7zDoB6nJSOdRdD6bP3bOMidtUGV/P7n
	 wEtVp5GrBP50g==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 754B737820E2;
	Tue, 26 Mar 2024 16:52:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 154774800D0; Tue, 26 Mar 2024 17:52:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: rk3588-rock5b: Enable GPU
Date: Tue, 26 Mar 2024 17:52:07 +0100
Message-ID: <20240326165232.73585-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240326165232.73585-1-sebastian.reichel@collabora.com>
References: <20240326165232.73585-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Boris Brezillon <boris.brezillon@collabora.com>

Enable the Mali GPU in the Rock 5B.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 1fe8b2a0ed75..d6bf2ee07e87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -180,6 +180,11 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.43.0


