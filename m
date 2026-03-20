Return-Path: <devicetree+bounces-278126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPfMK3sKvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:51:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DDB2D77BD
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C153313110C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8408E379994;
	Fri, 20 Mar 2026 08:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nfokTCEw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B773793C9
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996259; cv=none; b=aRbOlHOnASaKpVU8WmYzL09N3DMHeIv9QqJXWp17zBgObyuRPtklmHf7dpkyO32ScDPSMce7ryje25b6XkSy2uKNahuFV4SxzgIZdI8pXdWdTd+B+tLJ60tlPHrwnVdLs5P3YulUnyhHU8oeCDDxQZvSKPasVy+TLVMawyAc6gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996259; c=relaxed/simple;
	bh=+0tpRGcFepH3ZJ13pmTOi+eM89Gf5EMZy3aQ23lC1dg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uxg1waB1aRoy1QLBptIDNQ9QQDzqz8VDg2HOikUEQWVjiBt2g5vGVxJpQgPShiRuqEOdyYBGR7H0F4dHi9FCdrL8rPBM3JABRqIN/R2Z0uAjLXS5Dn4AiTXB25UyFMJVW/sQoU9SWRq+b6b0VAZLKPshLJVG5l66C/NorUF7bQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nfokTCEw; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2aaf43014d0so10473465ad.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996258; x=1774601058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=myGmC4KfVEEyrFlKjuV9yVJRZVZMuANRDdrcusd4yYw=;
        b=nfokTCEwysHObtYNINvKqDH3qdTvVlmFSLK9tQEBWgIVQH57IIpaN/9nvBc7RwL3oh
         l1KLjG7OTcylhyq1IT3DInT25SwSMURxw7w3UBXHyK1myI8Mve0cP7HGu9tHHpjfrsDJ
         z0Ypp6rJpRzEgRxUZoXwSJXOwTQ75IGdCgcp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996258; x=1774601058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=myGmC4KfVEEyrFlKjuV9yVJRZVZMuANRDdrcusd4yYw=;
        b=agnTACpKl85eRJ61SpPlIfOLEws+XC9an58WE5//BKosbb9ZOvNtxoYTWSqVrQpYWd
         88rRiOhVC5o8cU2iG8mFBI9ce5GXdKASaBTgxbAsBF3N8HVyj6z4tj/Mvs9z39nikVlN
         7v4nH2qKBCiB7ZRNwz6JjJxwztaH0YVDQT2f4f22057GwRHz/G0HpG4rGjuU7x4b8yxQ
         5/m6arXrgyQrz/0X29iSRLksJ31iQM45JiIqWAjwoyk3lkUDovOaxm+nso/8J+E5POki
         Ad+ERSp4GC20+MBzdgzSIwV78D+1wNdDHLka3qfdqRuu4Rc+FxZ7rJghqifB6RHyL2xk
         nAWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvX+2X51PThTA3kwoTycTdBmI/MlWUZgdY2v80zCoQxPUYkfvr+2X5temKAd5c/yoFTqam+9ZAYCXF@vger.kernel.org
X-Gm-Message-State: AOJu0YxeSNIUco2oupwDGSQj0APT2re8XV5Ffe1Aea7SBxsiYPzsU0Cj
	E5WBK7DB4WrT2J6SertMbtN2twpKMdvlPe8M/U5rySkA0LNBltosep6oSW5iFILWHA==
X-Gm-Gg: ATEYQzyTYKE1FjH4Z0rrGfXqb0ATCWOQeUcQnyee3ef1jZcg1D2G3kRiYmaQrMDUpgv
	C/Qy+i3FkjZGYbU2g2hOIPUs03J0fPKIl6YE1t3nbdCgRLDgkESSU5jLWZV+Fxy8RH6NMi0dp+m
	VvNs18RkXoOAO6bHaocW6IX6N64fM1aCFs4ww4I2UxnjnE9hJNt7gFPEt7hiQT0FKHEjGnaxm52
	TmHOMIx0cXeQelGcej057YSbsWHkNw7XoYTE/FoHBkpPOUEeiuvYrUyCmTG40Vl04EH7nbUq1Bb
	T3djmUeVDDtRtgMGh1usdX2IImp3JsHoFOoh5A8tVt877wcb34BoDng+V2jEbxeZDHa+3o419Us
	R1vuZvbQcVbZw0bk6vlgNkqL9aE782IGLbwbHdbFv/EduQNRpTQyUiL/hXA5X+IhflNY+V9Lsss
	SGdTE5c/vO5kiTdAUq88TEpUkCT9imtXWdt5QIRfOfBBZ4hd5Xy+hP/W1WN20c44mQEGhoJm3/k
	KZT+IFEQ+oDkd0Agzo=
X-Received: by 2002:a17:903:3c27:b0:2b0:615a:53d0 with SMTP id d9443c01a7336-2b0827d5f01mr26569135ad.47.1773996257756;
        Fri, 20 Mar 2026 01:44:17 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:17 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] arm64: dts: mediatek: mt8192-asurada: Fix WiFi regulator description
Date: Fri, 20 Mar 2026 16:43:40 +0800
Message-ID: <20260320084351.2461060-9-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320084351.2461060-1-wenst@chromium.org>
References: <20260320084351.2461060-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278126-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 11DDB2D77BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The WiFi supply regulator is a current-limiting switch. It does not have
voltage regulation capabilities. The description is also missing a power
input.

Drop the voltage constraints, and add a supply input.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index b71c4c87730b..e2f722d19683 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -167,12 +167,11 @@ pp3300_wlan: regulator-3v3-wlan {
 		regulator-name = "pp3300_wlan";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pp3300_wlan_pins>;
 		enable-active-high;
 		gpio = <&pio 143 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&pp3300_g>;
 	};
 
 	/* system wide switching 4.2V power rail */
-- 
2.53.0.959.g497ff81fa9-goog


