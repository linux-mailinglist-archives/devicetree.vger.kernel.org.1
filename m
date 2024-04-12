Return-Path: <devicetree+bounces-58756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC518A2F5C
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 749231F21601
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AE796EB4A;
	Fri, 12 Apr 2024 13:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="mbXZ0Fx3"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08065914B
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712928401; cv=none; b=O7fvx+PfKdx1iJLdh43RjIm8CCiapbdOfH/8DQhzcmkccInyMeXT+aYfBZ+X9+7yv6H6+MYx+5DM0/5j495AWoVI8RXLzGpr12F5SuTV8pfV2s82/2/K/95JSwHK+NuXmKckhxnIP93gS7U+CgACnmZ/snVMvuDaj8ps7KRMhso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712928401; c=relaxed/simple;
	bh=PWGu4IDrF81dnm+B7K1DVES1dBipt3fTbNoatINnUZg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mkPjTFQr4DTRPvm6ilxtTWdaIMv+S+ze8pDYy5XVLsOU3jzs0q+sE7+q73YhdlA1Xz0WqnQFpzm+xBTgE3jghyvbUA4fnxtcRpo5Ebh2VIsGzFx+Jz/AfyukfsYnCA5ovvPwZONnsgOChaHK3jVcH9D0gTklzfOTAhcfibOBOLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=mbXZ0Fx3; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=iz1hx/7L8dynupfWEP0T92mcjVsCWFEKtgxf9KmzahQ=; b=mbXZ0Fx3KAMy1mPfFne1Fsa/Hu
	fDG/TD996uRBu7v9UWh2HzQ5So3yFLRfwWnRQiFk8ThTcX/KrjFKYNj6fdqVV81g8oxECk6dkqUrZ
	Tego2i3MBf0McWwZzDBMJs5MIIondjRluhI24lLR0KCyV2nAsBGWTitrKt5GYTQQi7dbBpctW9iPL
	STcwxxyxg2gKIFsqoCzmXURehHUWJmYMWo+cBoQSoBPt/hKGGjGcWfBsCUXX1s1CtO+k90ZmadSH5
	aeoRciGBSHEYo3Jp/JFioN61XSi4Ui+1U4b7rDWy6NAmWXKmoab00U0JAS0zzfKSYyuvyw08Rs4/Y
	9N6Su7TQ==;
Received: from [177.34.169.177] (helo=localhost.localdomain)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1rvGv6-003uCn-TC; Fri, 12 Apr 2024 15:26:21 +0200
From: =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
To: Maxime Ripard <mripard@kernel.org>,
	Melissa Wen <mwen@igalia.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Romain Perier <romain.perier@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org,
	bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel-dev@igalia.com,
	=?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
Subject: [PATCH] ARM: dts: bcm2835: Enable 3D rendering through V3D
Date: Fri, 12 Apr 2024 10:25:52 -0300
Message-ID: <20240412132559.2365947-1-mcanal@igalia.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
the RPi. Currently, the downstream kernel uses an overlay to enable the
GPU and use GPU hardware acceleration. When deploying a mainline kernel
to the RPi 0-3, we end up without any GPU hardware acceleration
(essentially, we can't use the OpenGL driver).

Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---

I decided to add the status property to the `bcm2835-common.dtsi`, but
there are two other options:

1. To add the status property to the `bcm2835-rpi-common.dtsi` file
2. To add the status property to each individual RPi model, e.g.
`bcm2837-rpi-3-b.dts`.

Let me know which option is more suitable, and if `bcm2835-common.dtsi`
is not the best option, I can send a v2.

Best Regards,
- Maíra

 arch/arm/boot/dts/broadcom/bcm2835-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
index 9261b67dbee1..851a6bce1939 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
@@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
 			compatible = "brcm,bcm2835-v3d";
 			reg = <0x7ec00000 0x1000>;
 			interrupts = <1 10>;
+			status = "okay";
 		};
 
 		vc4: gpu {
-- 
2.44.0


