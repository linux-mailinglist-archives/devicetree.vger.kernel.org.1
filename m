Return-Path: <devicetree+bounces-64579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 006938B9DB2
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 17:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 957501F2235A
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 15:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B35C15B54F;
	Thu,  2 May 2024 15:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BwXV3xiN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B761553A8
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 15:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714664706; cv=none; b=e9eZHe/T85+LQrrMOEgEz1uMdMNmcv1ho+ulkthfEQRFQ1swNvOV31RvpXIkBGHkLYOe0vyWhhJfCTxehgUrxVMgjjq0wMyPw/Vb8QP+6gnD+68EBng5cVBx+6d7V6m/w/Ae/2Kh+6QPriUt5yDxbeRFbLvJXUZDwrOZ3SEcb18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714664706; c=relaxed/simple;
	bh=Gpu0Hivw2WMkBjrWlt3F4okzBlo59nzVUjsQpo/rA8s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=YUFF0WjaqIR7veW2RnBsHmfAhynIc1F5T1xmzyzE/GsbazG5V/+jBzypgp3Q6eLSfDEXrYRTinVTtVtUoL1AkayMSBSUlc+jX8MyaQn7zPgJ0tSdHcLfoeON3u3eHTquMm7d0ypCzeY2FjDk84fYYvfpOpqejxWnnuTkOazmsmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BwXV3xiN; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6ed627829e6so9464207b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 08:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714664704; x=1715269504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MOqLq0lZ0i7PXhp3YLh0UdxAncxBGq3YXZCOMwkygc4=;
        b=BwXV3xiN2lH6vpFw4linXe/2giOmlkrz9B/K0316slX0wNhlajDFX7X2x1bdJuFZ1D
         diSQSoDVrctCou7cNjL/X58/a1kZzpb8IIPCGHec2A5AWMdsqH+sMWkCw4DrUapjuU2a
         vVo1pRnLvgBwJC0IIFNhNOHabhV0bDDHEx5E4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714664704; x=1715269504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MOqLq0lZ0i7PXhp3YLh0UdxAncxBGq3YXZCOMwkygc4=;
        b=AL2H6e5bs9Y6c/z20bMIcGjkBfdBWUkAPe875iK6KwrNM4dkdEObW4yZ0Qtd/gYBQj
         flGpz98E75mQcbacYVhPuTCj/cQ0SDbZVn1eckXR81Ooy5OGVE5QJ4Dbf/bJPnL27aI8
         Ghz/2ltqEZtblBiYaYuEf/5GO0ehiItu20Mcczzw5sh8tKNtk26dl84Ed51Bplw3imLT
         eaYr0U+JXiuVgsErqGpb8xGZkvxO6F84LjEP5NBixsy3i1KDPdBwtAwiYTf6dMzW5eQb
         r+RTKdOuSBKveZDSDlr9qK+blNq40ohkmqxKcVB9S60MFcO0q52HVtfHqBNvKpk1HH8o
         q5Ng==
X-Forwarded-Encrypted: i=1; AJvYcCX+CAlGvcNQKJSCdL4IEMumi9W1hm4r0lkykWlNziYtWXnRDr5rOV2qCQjxNz8tqUzKZvmsbxh1/2azvKy0AhjKHQJrGOyPAH3mcA==
X-Gm-Message-State: AOJu0YyKnvpOjtcx0gWcRWycj0alzePl8bn75KpCQrLwRk6PqNe+w8yM
	ENFvZTFmPBUzSkm1apRm18Tp6/HqYXiB0DRVJ3kx+cjsZIr5QccN+mjdDhHpXQ==
X-Google-Smtp-Source: AGHT+IH+DKW/P1R56uRTZhYtqEUAHiBxc+2IZYShyGS2YIDsx+eMU2ct2kjiiYu7bnTgUSejCrtSrw==
X-Received: by 2002:a05:6a00:2ea6:b0:6ed:1c7:8c65 with SMTP id fd38-20020a056a002ea600b006ed01c78c65mr7064701pfb.10.1714664704045;
        Thu, 02 May 2024 08:45:04 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:8191:2b1f:c04b:51ab])
        by smtp.gmail.com with ESMTPSA id h4-20020a056a00218400b006f3e3d928fesm1387660pfi.220.2024.05.02.08.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 08:45:03 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	linux-mediatek@lists.infradead.org,
	Hsin-Te Yuan <yuanhsinte@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2] arm64: dts: mediatek: mt8192-asurada: Add off-on-delay-us for pp3300_mipibrdg
Date: Thu,  2 May 2024 23:39:51 +0800
Message-ID: <20240502154455.3427793-1-treapking@chromium.org>
X-Mailer: git-send-email 2.45.0.rc0.197.gbae5840b3b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Set off-on-delay-us to 500000 us for pp3300_mipibrdg to make sure it
complies with the panel's unprepare delay (the time to power down
completely) of the power sequence. Explicit configuration on the
regulator node is required because mt8192-asurada uses the same power
supply for the panel and the anx7625 DP bridge.

For example, the power sequence could be violated in this sequence:
1. Bridge on: panel goes off, but regulator doesn't turn off (refcount=1).
2. Bridge off: regulator turns off (refcount=0).
3. Bridge resume -> regulator turns on but the bridge driver doesn't
   check the delay.

Or in this sequence:
1. Bridge on: panel goes off. The regulator doesn't turn off (refcount=1),
   but the .unprepared_time in panel_edp is still updated.
2. Bridge off, regulator goes off (refcount=0).
3. Panel on, but the panel driver uses the wrong .unprepared_time to check
   the unprepare delay.

Fixes: f9f00b1f6b9b ("arm64: dts: mediatek: asurada: Add display regulators")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

---

Changes in v2:
- Update the commit message
- Collect review tag

 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 7a704246678f..08d71ddf3668 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -147,6 +147,7 @@ pp3300_mipibrdg: regulator-3v3-mipibrdg {
 		regulator-boot-on;
 		gpio = <&pio 127 GPIO_ACTIVE_HIGH>;
 		vin-supply = <&pp3300_g>;
+		off-on-delay-us = <500000>;
 	};
 
 	/* separately switched 3.3V power rail */
-- 
2.45.0.rc0.197.gbae5840b3b-goog


