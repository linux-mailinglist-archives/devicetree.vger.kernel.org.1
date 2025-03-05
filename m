Return-Path: <devicetree+bounces-154408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A52DA5007E
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 14:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93AF33A2119
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 13:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17D1230BC6;
	Wed,  5 Mar 2025 13:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ZIvKhAvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49205.qiye.163.com (mail-m49205.qiye.163.com [45.254.49.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5053543166
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 13:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741180917; cv=none; b=F/ghjaV2z4m8dLqkrF6jerLph9kwUK4vr8XYfX3l1l6b2j7sFM30mU5zkKt0DjL3AhoZLoA/YRYl5ev7jpD9Pi+usOdbWkBquPwfpomcYw+tsjETdfnpaP9Kj1Mz0SG7i2FpoAinp2t5IY+bY4xCLYjKQpzC2c7yCmUTvafF8Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741180917; c=relaxed/simple;
	bh=33IukMKPdCD2RrlEpHRN/iwpryAyzFUWDwUD7bh7AZA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=lDqrFUH0DbsME5qsghbfE1yIziNO1Yg7KHRmQgWrybCrvI9NbBZxRlCUwjV6Azd7AAkaBnEbEGZTRbMPfcpjqUqeDQb3dLbNoxAXHNHo0h/+mLa18GNsG2b8M7c5x+cs8HWBWW+4TyzJdGuycL54n9GdtJx9XV2AIY27waRy0Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ZIvKhAvf; arc=none smtp.client-ip=45.254.49.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id d0a29efa;
	Wed, 5 Mar 2025 21:16:39 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] arm64: dts: rockchip: Enable ufshc on rk3576 evb1 board
Date: Wed,  5 Mar 2025 21:16:26 +0800
Message-Id: <1741180586-140422-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUMaSFYfH01CTxkdGBgaTRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9566737be809cckunmd0a29efa
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PhQ6Mww6HjJRKj9OMj06SREP
	DxYaCQ1VSlVKTE9KSkNLTUtLSE9NVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU1ISDcG
DKIM-Signature:a=rsa-sha256;
	b=ZIvKhAvf4wvtML+qOBbA69trrbqNhpcw0+1tGNJzQ+tNmA8/LU6lvBhd+mCltXKANZ0F2HE/hWEBZjL/Od7gTOkFTQAD/Rk7rX2ZY6aU/lwiPrjFt0r2gRztBQzcwpVDdpx43DVgtIk7vBN1roY/e37rPUOiF171WWBCfEXSnqA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3iUidy9GVanTb1yQMnj+P4EXWDv4+JPkslTkTvcE6Q4=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

RK3576 evb1 board supports UFS, so enable it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 782ca00..78efa91 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -715,6 +715,10 @@
 	status = "okay";
 };
 
+&ufshc {
+	status = "okay";
+};
+
 &usbdp_phy {
 	rockchip,dp-lane-mux = <2 3>;
 	status = "okay";
-- 
2.7.4


