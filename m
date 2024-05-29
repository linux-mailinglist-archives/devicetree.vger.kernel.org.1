Return-Path: <devicetree+bounces-70409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 882728D3437
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:14:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFB951C20CB2
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE30217B400;
	Wed, 29 May 2024 10:11:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [195.130.132.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99A717F370
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 10:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716977511; cv=none; b=lCBa8rG2K/AQ8govozZ5FlxYIezWcCn6i6f5nWnN09hmc+1IC28MpIUV3C9H7SCWRiuTPwlC4/2B0CM+cRQxjz0xT3rBl5Q/V2qIGv83SujL8wQ3nNvqYhZqN4pY61hOW19MwgVf9DaGf4J50toT+7dtDmw/UdZg18Ps9zCgn8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716977511; c=relaxed/simple;
	bh=sVB+9TMFCEcDim7/Yb1MlDJ9tlcLczHpvt8pmfreGFA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=h2e+UBBhKXqR2Jd1nRPif38Y+/4wePuHfgDkyki8xvs9BM0HGpeC1rXKVug/9PvmJBhN5HFZGD094YEB+Zl6PpKCJt5yvOSm7cinCm7aLX9J+OL7wche3k5OUZhLJKUM+8dLVsmCcaYjgYGCMNRC3ROYiOCQIOnc7MEnjqUmAF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:1b01:1838:131c:4de4])
	by xavier.telenet-ops.be with bizsmtp
	id UyBn2C00c3VPV9V01yBnlg; Wed, 29 May 2024 12:11:48 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCGGf-00GMjF-9F;
	Wed, 29 May 2024 12:11:47 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCGHb-0091fz-LJ;
	Wed, 29 May 2024 12:11:47 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2] fdtoverlay: Remove bogus type info from help text
Date: Wed, 29 May 2024 12:11:38 +0200
Message-Id: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"fdtoverlay -h" shows a.o.:

    <type>	s=string, i=int, u=unsigned, x=hex
	    Optional modifier prefix:
		    hh or b=byte, h=2 byte, l=4 byte (default)

However, unlike fdtget and fdtput, fdtoverlay does not support the
"-t"/"--type" option.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Upstream dtc has Uwe's commit 2cdf93a6d402a161 ("fdtoverlay: Fix usage
string to not mention "<type>"").

v2:
  - Drop Fixes: tag referring to dtc repo.
---
 scripts/dtc/fdtoverlay.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/scripts/dtc/fdtoverlay.c b/scripts/dtc/fdtoverlay.c
index 5350af65679f7fbd..cac6b6576c289c18 100644
--- a/scripts/dtc/fdtoverlay.c
+++ b/scripts/dtc/fdtoverlay.c
@@ -23,9 +23,7 @@
 /* Usage related data. */
 static const char usage_synopsis[] =
 	"apply a number of overlays to a base blob\n"
-	"	fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]\n"
-	"\n"
-	USAGE_TYPE_MSG;
+	"	fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]";
 static const char usage_short_opts[] = "i:o:v" USAGE_COMMON_SHORT_OPTS;
 static struct option const usage_long_opts[] = {
 	{"input",            required_argument, NULL, 'i'},
-- 
2.34.1


