Return-Path: <devicetree+bounces-133766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA659FBB93
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:53:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDA267A0591
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C23A1BE251;
	Tue, 24 Dec 2024 09:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Tjix2ixa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127100.qiye.163.com (mail-m127100.qiye.163.com [115.236.127.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5F61B218E;
	Tue, 24 Dec 2024 09:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735033775; cv=none; b=nYYHqbqnpWQLPf+Mpd4/eQfX93OP4WQvmZYQFW0fjWTz8moof3GCFdwajev6Nfp8y82nfobfNcWmrZI6soBsm94nrqAgnEIn297B2bjIsdASAygbwr72Pzi1g72LykTxo7uGhhoUAnzVBjWA2jCnBL+mguUIiM1b9FJCtkQja2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735033775; c=relaxed/simple;
	bh=WZcTx6gA0r45LEdA6rQJC5BGENRKsVGLhIq1MmnZii8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TOuF64lldCsmtatuPL6i5g3TQrBqRBTqir+fGTV2NDJH9xip+vvKkVjcowql1Q9KBLKs919DXaFeoTOlVv+EqZXAIQYbkL8XrjO0J2WzKVKf796gud+GN3s09R1l2HzwbPzXHhTX8tooFUPwR5cvgZ9gUQe0HkhyGPvhn7cYwXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Tjix2ixa; arc=none smtp.client-ip=115.236.127.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4ef6;
	Tue, 24 Dec 2024 17:49:29 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v2 04/17] dt-bindings: power: rockchip: Add bindings for rk3562
Date: Tue, 24 Dec 2024 17:49:07 +0800
Message-Id: <20241224094920.3821861-5-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQklJTVZKGkNKHU8aSB5CSE1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f8124d8e03afkunm6aad4ef6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgw6FQw6IzIOIkpWLFExLDwZ
	TjQaCS5VSlVKTEhOS0hITExLTU1NVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCT0s3Bg++
DKIM-Signature:a=rsa-sha256;
	b=Tjix2ixaScAPFTECUNb9KcHWczqWyKfBPWs6d0bTxJnBq+N36/L1PlMTm8uamAwU0vAOClamBW3BXjka4Pu+Lq4nMS4dMgl8Ba4zp+ShKnF9gCY/pWkXlZ9UNags+oiv5Nbjupp2yk0BbbxlSNbao+STi7m/tBX/pxpBmQ4fcdY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=9UI8ZWSnef9pE/uO9n5qBniu7nZ0lTpAreivjCmgTYc=;
	h=date:mime-version:subject:message-id:from;

Add the compatible string for rk3562 SoC.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 .../devicetree/bindings/power/rockchip,power-controller.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 650dc0aae6f5..79b948518f0c 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -40,6 +40,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3562-power-controller
       - rockchip,rk3568-power-controller
       - rockchip,rk3576-power-controller
       - rockchip,rk3588-power-controller
-- 
2.25.1


