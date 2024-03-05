Return-Path: <devicetree+bounces-48434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 143BF87217E
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 15:32:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 460C11C212DA
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 14:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF695C604;
	Tue,  5 Mar 2024 14:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LMaAW0ps"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AD46127
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 14:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709649156; cv=none; b=EdiEabs0ryouV6dYl549ntJc6NN207HvxH8OCWZzbgKycNnTQY7ydtag0iZuj2f+FHNnjOfS5lKl1j9W+yEfmXmWYjD6u76sl+NY69QqgMTa+yvw9TtVmuxjV2nudAzqYcWqA18neHc5r7v2kYpAfj5zhu6/wda60+2U9TRAWHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709649156; c=relaxed/simple;
	bh=YKmGAMLdVeRSE3ciGzXs5gkjDxxcjstVUVnX5eWBf9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZU4zl4jvV4GsC7HiW7ajj1p3dGRN1/WkOTUbr83M5zOr8L9j+7/26J4Xr6tXckIEv8pezo+GgIg4s825+U5a0zwu1WTYVOLdx26+aGxyQ6zS7U8asXOPGaqZGKqU79YAFVTMbcQLhuq8fyuxCLqu6z2Ph6Go5KEFEfiqQxej9NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LMaAW0ps; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709649153;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JBzs20izmKSa/w0xJo132WZv3DDpsSKC3qmblEUsN0Q=;
	b=LMaAW0psGhzNG/fp8AcwnxktRN7SdvEa2cOboEzjfUclfgqwqKQOeSM9AIIgGG92LxOTMT
	e80giBNkjoeJ1R5gf4r9v9iZFyKTXCVGQT61zEt14YugtQ2DesQORcq9WF1Yuw+cCPg9iY
	C6VriIaurZ/hXQtHyHMT21BXn2veuRY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-37-QgkDEyOIP6iJvdrHKJfo7w-1; Tue, 05 Mar 2024 09:32:29 -0500
X-MC-Unique: QgkDEyOIP6iJvdrHKJfo7w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CDD01800442;
	Tue,  5 Mar 2024 14:32:28 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.39.192.113])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A4EB817A8E;
	Tue,  5 Mar 2024 14:32:25 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	david@ixit.cz,
	cristian.ciocaltea@collabora.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Subject: [PATCH] arm64: dts: rockchip: regulator for sd needs to be always on for BPI-R2Pro
Date: Tue,  5 Mar 2024 15:32:18 +0100
Message-ID: <20240305143222.189413-1-jtornosm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5

With default dts configuration for BPI-R2Pro, the regulator for sd card is
powered off when reboot is commanded, and the only solution to detect the
sd card again, and therefore, allow rebooting from there, is to do a
hardware reset.

Configure the regulator for sd to be always on for BPI-R2Pro in order to
avoid this issue.

Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index f9127ddfbb7d..b3ea54b6ba37 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -416,6 +416,8 @@ regulator-state-mem {
 
 			vccio_sd: LDO_REG5 {
 				regulator-name = "vccio_sd";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 
-- 
2.43.2


