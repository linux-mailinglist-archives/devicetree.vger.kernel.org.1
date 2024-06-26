Return-Path: <devicetree+bounces-80022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 200B7917A3F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7DC91F24985
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F058015D5CF;
	Wed, 26 Jun 2024 07:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZocE3/NJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DE01FBB
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719388574; cv=none; b=CtcgMAQO2eD56uHI/QGCK7ZaiJTkUQW8hbrpftLqBbMxqRsSMUqzI/OZZBfqCJPCKnyc06ffIbMsRkn2RikkNJV39h8z+7W3Tdrx7byT3Kwf0O26DH9ObZxquoe4q0NydOprNseqnZV59DTySrGv39DzP49b+1edCsvdrSPx0Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719388574; c=relaxed/simple;
	bh=pJB3eIs/1Ehv1iB2oXxlbyJtz6SfKIWm1EQlAxeVHgs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=s9UJSESqZEzPu9oC6gqb4R/A1sn/K68qm/xJ6WtLfHpntsTYjt9dxADnQD0GZ0nNOsuxy7Y8vuIhij1O1Ga2Fx7ApE4+isUynDpuczs9WWXkYDW91tNcJbwQTbv+YpiX4+d/D/uh5upjKfTuhtMwpc67M1p0UuMNcYpbNfVIf2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZocE3/NJ; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57d044aa5beso7406320a12.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 00:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719388568; x=1719993368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=deBUlUmH83r74GGtUWtNA3I5zHjNGAvZ6Ce0ERGouGs=;
        b=ZocE3/NJ34j4kfIJmSIfKQmtSW913RxjCBE0AuitkLlTkCda3PwTvwRcYkY0Y5Uhzo
         BhdbJ3B2of6mEiNGbBNMoC5PzcLNXLucQh7trXTTc/c4/WBW5B9acYUZzWEv88KbVQvB
         6zWizcPPWdeMQrr/xFDLYcSU/VSXiCmVju/TyvZquARwvBt7X4IpMnnIkAPNVjFqFpns
         jR8dqKY52ihdmhuiujZZWINnXCdlYyOncqeFjg9wOwZdkUaLKPHPvIy+k0mYtwYkNEqG
         sntI5XHLmFPimygWwHI+OkTaAeXkkFkgZo0lyIEwyL+JD2AyAmy4RLCcD5sqwke5mpoy
         XckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719388568; x=1719993368;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=deBUlUmH83r74GGtUWtNA3I5zHjNGAvZ6Ce0ERGouGs=;
        b=DSRaEWjU5NZNlL3TnVpDs9wfsRAROitSIzIVE5ydFD8P7OkFFFYPjov/4EQ2cNu5xS
         taQVcGYtO0LUuED2Z8WllrjpwHlF7LYR4FuBFHDVuQj5g5dM/UIXtTq55iKwE38B9k+v
         qoTDy/5Fj+gY0Z5s77c0JGqVkMFz82dk6TRjHr1yFQbSHZ1Sj346V2geWgXJ3zbIMuC/
         n0DPpSGgOiyM+SfMdMFwlNi9XjoDOGYGzdNEBa/MOAXcY5dnS4y9NrA5yK5cgY1gXiqG
         ILVZVLBqroPBK7whgsALK+btDKRrNU+cX1l+qNhkASPq+Tn6n3o0GhA2E1/0BixUjb18
         QK8w==
X-Forwarded-Encrypted: i=1; AJvYcCW6W2M+Xk+S9QdJ6OjpFluTqFIsIuKdDnIKWHYmpT0UzkjkLngb4cZc1ROlBOC8/txS1C8C5djLnD18XJ5k2YJng6nkAEQQZ7dbtg==
X-Gm-Message-State: AOJu0Yxu+juALpdBFHWhEY1edYgbgbOeXatcJwVEtNcRHIM/DDimEOcY
	SLcLcpK7uG6oMfJU7wefhtL7YBgmSno7ql/NlYHJ06A3sI7/DHqSRrFjuQqTYqU=
X-Google-Smtp-Source: AGHT+IGJAr7HZMyq4bbgf24V7CsYbL9bnjoWvP1wf+7EhFiCSO+fQBK77B0qwmLwnzOlaMxqFlk3EA==
X-Received: by 2002:a50:c04f:0:b0:57d:3791:e8e4 with SMTP id 4fb4d7f45d1cf-57d4bdcad8dmr6524709a12.32.1719388567855;
        Wed, 26 Jun 2024 00:56:07 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d303da25fsm6905235a12.5.2024.06.26.00.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 00:56:07 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: devicetree-compiler@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	"Saravana Kannan" <saravanak@google.com>,
	devicetree@vger.kernel.org
Subject: [PATCH] libfdt: overlay: Fix phandle overwrite check for new subtrees
Date: Wed, 26 Jun 2024 09:55:52 +0200
Message-ID: <20240626075551.2493048-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2511; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=pJB3eIs/1Ehv1iB2oXxlbyJtz6SfKIWm1EQlAxeVHgs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBme8mHS8+t3/VP91dfX2+MkgyZdMGPWQanRmK63 /d7MVt5ZkSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZnvJhwAKCRCPgPtYfRL+ Tuf5B/4+S60h0S4OkJF8XdvPDsMzIBv5kyP2gVVe4Q1khndbxw1Kp9iS6fM7YSbzpdfp8YF1zei tam8BpZ9CpAdrjOfyuOD2Ar8zvedcQxg+EE2Abgl0jVj6/k4xL+pY66zcTSyjbP0cAVcLCJ9K7K ByWXu2vxfqDMbPTELk89RPTzRZiWPJbfLvpQWDuua8+q4ucyM/Qocwsl6PVKHLnQ7vdhDGkdOPZ OEm50S8KNK1MybB83D4z8EXZxAxAlRFAc4ayP9pYdGdVSB56RZZrzk8KmMq2hVxiF2ZWkuu61vL Ow0EDGbIMZft+rEh6XI6dqXFPa/FS8+ZIyMnLaKUb+JpcsH8
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

If the overlay's target is only created in a previous fragment, it
doesn't exist in the unmodified base device tree. For the phandle
overwrite check this can be ignored because in this case the base tree
doesn't contain a phandle that could be overwritten.

Adapt the corresponding check to not error out if that happens but just
continue with the next fragment.

This is currently triggered by
arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtso in the kernel
repository which creates /panel in its first fragment and modifies it in
its second.

Reported-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/all/CAL_JsqL9MPycDjqQfPNAuGfC6EMrdzUivr+fuOS7YgU3biGd4A@mail.gmail.com/
Fixes: 1fad065080e6 ("libfdt: overlay: ensure that existing phandles are not overwritten")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 libfdt/fdt_overlay.c                | 8 +++++++-
 tests/overlay_overlay_bypath.dts    | 4 ++++
 tests/overlay_overlay_no_fixups.dts | 8 ++++++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/libfdt/fdt_overlay.c b/libfdt/fdt_overlay.c
index e19506fb56a5..28b667ffc490 100644
--- a/libfdt/fdt_overlay.c
+++ b/libfdt/fdt_overlay.c
@@ -729,7 +729,13 @@ static int overlay_prevent_phandle_overwrite(void *fdt, void *fdto)
 			return overlay;
 
 		target = fdt_overlay_target_offset(fdt, fdto, fragment, NULL);
-		if (target < 0)
+		if (target == -FDT_ERR_NOTFOUND)
+			/*
+			 * The subtree doesn't exist in the base, so nothing
+			 * will be overwritten.
+			 */
+			continue;
+		else if (target < 0)
 			return target;
 
 		ret = overlay_prevent_phandle_overwrite_node(fdt, target,
diff --git a/tests/overlay_overlay_bypath.dts b/tests/overlay_overlay_bypath.dts
index f23e7b6035e2..dfcb7cdb25a4 100644
--- a/tests/overlay_overlay_bypath.dts
+++ b/tests/overlay_overlay_bypath.dts
@@ -46,3 +46,7 @@
 		new-sub-test-property;
 	};
 };
+
+&{/new-local-node} {
+	another-new-property;
+};
diff --git a/tests/overlay_overlay_no_fixups.dts b/tests/overlay_overlay_no_fixups.dts
index e8d0f96d889c..1dbdcdc2b40f 100644
--- a/tests/overlay_overlay_no_fixups.dts
+++ b/tests/overlay_overlay_no_fixups.dts
@@ -72,6 +72,14 @@
 		};
 	};
 
+	fragment@7 {
+		target-path = "/new-local-node";
+
+		__overlay__ {
+			another-new-property;
+		};
+	};
+
 	__local_fixups__ {
 		fragment@5 {
 			__overlay__ {

base-commit: ff4f17eb58650784ffb2e8a8fbefebce1038f80b
-- 
2.43.0


