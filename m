Return-Path: <devicetree+bounces-7366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C654F7C02E1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29B69281AFD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA999CA68;
	Tue, 10 Oct 2023 17:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="ux4LS4VP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74454171C1
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:41:48 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3D65A4;
	Tue, 10 Oct 2023 10:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696959705; bh=jEPRk8p22dHs3R+tD5x4PoGcivbip9gJYJMu4a7SCYM=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ux4LS4VPu6rxA2juVcsCS5XMo3r5/KiQEu0lskpToOwkpxxUwW/5u4lYGQOTXTICv
	 jGOlAgtxsktSimDxlkTkW1VZzoXvTjY/r9s/E8EbQpcIg+FuUzO6C1cB7B79RvpHGS
	 JoT8zbHEc7OwY+71RrIF1/HmI2iqRbCDD8+f5d6s=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] mfd: rk8xx: Add support for RK806 power off
Date: Tue, 10 Oct 2023 19:41:19 +0200
Message-ID: <20231010174138.1888396-5-megi@xff.cz>
In-Reply-To: <20231010174138.1888396-1-megi@xff.cz>
References: <20231010174138.1888396-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

Use DEV_OFF bit to power off the RK806 PMIC, when system-power-controller
is used in DTS.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/mfd/rk8xx-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index a50a181b18e9..c47164a3ec1d 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -525,6 +525,10 @@ static int rk808_power_off(struct sys_off_data *data)
 		reg = RK805_DEV_CTRL_REG;
 		bit = DEV_OFF;
 		break;
+	case RK806_ID:
+		reg = RK806_SYS_CFG3;
+		bit = DEV_OFF;
+		break;
 	case RK808_ID:
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF_RST;
-- 
2.42.0


