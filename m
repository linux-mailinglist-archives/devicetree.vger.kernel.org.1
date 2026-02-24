Return-Path: <devicetree+bounces-267735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC0cNaFNnWkBOgQAu9opvQ
	(envelope-from <devicetree+bounces-267735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:05:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C013182B8B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8DB93047BD0
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB8D2D0C8F;
	Tue, 24 Feb 2026 07:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aLgqvsT9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38352DCF74
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771916599; cv=none; b=KmKKR6tb9ABT1scK1xlbhSjPTbKGpQfJprpydj61bJVTTij+N0xOhusT9yQOHWVn3y7GrLIaj/PXUg0GbYjNisjawXNRzz7q21ot+v8nwA14sYKXmg5KLRfiAwNw/KJD5MPHynCGM+OPAFoiXKX4TUtMXu5oGveOUOqYie1HZ3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771916599; c=relaxed/simple;
	bh=yyiGLvGdIZ81VOXnKJd+n3rTIi5eTR7223JsrAPF5XY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GU3sd47EG0nFi8sieZcXuTqxBz9H3EyuZfXljd2CkRdiHlqtdasoFE4sdc1MdUfdCqnwuOr8xKSKZNHmNsu4B6l7NodYX4MB46IjCyK3CbHgKueHku1AqZAde49BbrEH9Vq3Lug1356a0ys9DDGZd6r5QMi4fJqmvplb3P6Bg0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aLgqvsT9; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-824c9da9928so2575890b3a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 23:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1771916597; x=1772521397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G/Mt3Ra+5yhEMXBUYKmVnriP9LLAY3r66sMCycefNDI=;
        b=aLgqvsT9PE01Szcxm73zfEcime89s1llAwmB+VIdeIWCdvuvpTTUQFlGnJQPs4SBKR
         oYYeqhr2sKQJN1O230VXy2bXoODgVNtluU2GASMO2ip8cD4qM6X/cGiui43gYTq8bgEC
         74Kq9RPSCRICuC/lDiMMTpGvzaJ6LA6yfMmw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771916597; x=1772521397;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/Mt3Ra+5yhEMXBUYKmVnriP9LLAY3r66sMCycefNDI=;
        b=T4yskDguRnTZWK9IQwKwohtYgiTVwCzcTP+izLlOC2iLXcILxOPHGZ/Eh+5uKNRG17
         uIiyGeQ73Cqgt3diApF8tv9RbRVcX5KlWf8+BxjAZES9QBua25Oe6r0/UBx2aQb6rGTp
         ivX22nHJS8cWd2EaBCEpDVSaSHLnZ6tiDC8LiViig5lSQ/tMSD6+qR4rfYW5frTIVgqw
         XKXBvMdqEYNXgKf2aWNRF1kWv0c1VgcCEpxtjKFvSKuAKq+61H2Q/qoe3BTbUOEp2Aqo
         Rd/1sdcLhPrO7X1uMtsueRB0IfsGGqI5tT2UMi9jDNMCmQVh5HdEy732yjsX+2T1hWmn
         su6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXMU4vVQ0KR3aMMWdiNWm0QeUeXZxYU16q0g/6lmaeC0Vhn+NNH8F1AaJmDohD+ikV6KGG4uO7+Xb0o@vger.kernel.org
X-Gm-Message-State: AOJu0YyjxBA2s/tGy2grQ9fuTqRGlpkx2UkF+voHyNQEXJZJp63SxPwC
	4PNA7vr8uh53dBmF9hzDtR9NUSKPMOmD3qpZ5KLiVHRociQruObuCNS+gXFT7DIZ0A==
X-Gm-Gg: ATEYQzxULGfdXnqUxwNBbl+cReLfsFMMtlIKeZ9irHBjflGzwtCNVWyBhRkRVUWs6Io
	wVfd0enOec8FS6vmgXLg37aj4thcK1cZye2BILm8mlUFwjFe419MtR0N753EUpcG1ee/kUOpjnK
	Uaa0RFZQqbXPTLwwCabKD9qrytWJVQ/Gh6rvW/0Cc/uCddPS07gMwcmz0RtmyOmh3wc1ccUbwKj
	aQNig2ncEbnricZysEdiaLDylQ/0vxaQYrsSxNdFpwJuE+9c7RTH33kh9wZesRljxDFEJFGXeeE
	3UeI7nGOUUp4TeihbwQdX9XYY3AHjFRWpx4B6avmkl4Dwt+HYbigGPbKsY/Fyb12UJXzKDldTov
	AFHwkTtLxFop0cfUyTJujyE1AQW+O06tpygJISVK8HOFASNbZeRb7HgtExZtQBQosgXjZ2N40Fa
	q/wRtu+sMvVfvTwhkRI+fK9+3VTaCV4pI6QFd8GAj7X3u3LufXHnIRQm7YEdCLDCDjCBzQHVOqb
	t/2nNWc
X-Received: by 2002:a05:6a00:330a:b0:81f:9986:9205 with SMTP id d2e1a72fcca58-826daab0281mr12440056b3a.57.1771916597314;
        Mon, 23 Feb 2026 23:03:17 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:752d:3fd0:786d:ab57])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd873263sm10007748b3a.33.2026.02.23.23.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 23:03:16 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8195-cherry: Disable xhci1 completely
Date: Tue, 24 Feb 2026 15:03:05 +0800
Message-ID: <20260224070306.2650182-1-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.371.g1d285c8824-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267735-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3C013182B8B
X-Rspamd-Action: no action

There is nothing connected to xhci1 in this design, nor in the actual
end devices.

Disable xhci1. Keep the USB PHY enabled, as it is a shared PHY and used
for pcie1.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index b3761b80cac7..6e99122c65ac 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1495,6 +1495,7 @@ &u3phy0 {
 };
 
 &u3phy1 {
+	/* shared between xhci1 and pcie1. */
 	status = "okay";
 };
 
@@ -1563,16 +1564,6 @@ &xhci0 {
 	vbus-supply = <&usb_vbus>;
 };
 
-&xhci1 {
-	status = "okay";
-
-	phys = <&u2port1 PHY_TYPE_USB2>;
-	rx-fifo-depth = <3072>;
-	vusb33-supply = <&mt6359_vusb_ldo_reg>;
-	vbus-supply = <&usb_vbus>;
-	mediatek,u3p-dis-msk = <1>;
-};
-
 &xhci2 {
 	status = "okay";
 	vbus-supply = <&usb_vbus>;
-- 
2.53.0.371.g1d285c8824-goog


