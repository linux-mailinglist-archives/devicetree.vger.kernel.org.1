Return-Path: <devicetree+bounces-235097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34175C347F7
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 09:36:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E73C53ABA75
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 08:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C07E299954;
	Wed,  5 Nov 2025 08:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="YL63JHzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay177-hz1.antispameurope.com (mx-relay177-hz1.antispameurope.com [94.100.133.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2DC222575
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 08:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.59
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762331767; cv=pass; b=kl91Z5XPYz+2LMRzFYhIbhaI7goPBjgxTFh+FAxINoGTe874zc5InTM25oT2hUlcTBDgrmW/9Zt2joVJT9jvKldIfnrXLPPN9xDeOYQXBSLdI81WHSP/VbijBZ1dSTXpWDwp2plEiQlM3M5WfVDAeEvPXvnXvJv3SltUS505BTI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762331767; c=relaxed/simple;
	bh=97ZxDtQ0n1JfB9JvPKPCcMdcLdBgllBUufOXYGcroo8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Swfyz24FgnJLnSz32Vj2YTKPHO15IHKPSJIsapU3mnkKpfYjxjKLOCsO5Khlc+I75IVilK8MC3jm0rXBXsGymX4saEWEf6YNUCHVIqOzODrBOn7B8dCyg3XYBG7FKMrAGiQbgyoU2cXYzh/W8tHOQArUR4KcBJhocLzCdLYn9y0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YL63JHzD; arc=pass smtp.client-ip=94.100.133.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate177-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=M69bDo94SwBC5FFrocC4elBa/SG32/tKazGnJ/ycIZk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1762331677;
 b=XXU/6cvqS3cVtiluc92wKGTAiqoJAjkBQW7fFI699VmshoswBl6r9fDDyalTlZF71ReC3c4W
 JaPygAnsZJtpN4rdLNxyFMnuOJofriDO5j2FI8dItQrtmdiIDE4+jn6/llNub4HgfxgW6JjpbYs
 pFdNqfH+2k0mT0m+BIdlC+bcL4oKsx0nCtRvtETk3dpx71sw8UQznbQhJkgDnFwBBu2GUqQEvT4
 eRLOt1Rc1dyXyBgELKZWvqVrhQOc1rkrPTjWkIEkfv/AtDhsziGCq4g/D0DM2UrOT+QLhSwk61f
 bBsJ2uAQqvfhWPrPM1wkpeI+JdVDr2smuKZUrL/yexUtA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1762331677;
 b=gHmZWyPfGnzYa4KTEGlTgNCUOFHKoBF2I/iM7/fZuZOfNOBbV8IQaJylvX+A2Vo4kDsK4Xtr
 /HdjpnJzTGSPuOI+J8iOFDos6DJ170wtCKklxaV3zBhBxCVBr0JzbwbXQZUyUK6muzdM1wuXK9w
 LpsxB5s4RgkvLAEB+VNd2k2GwpYEUUFHMXl3iczsoGVMIagGqw2m+e1IEsgS1TppXsXsf/xVDcv
 JxtMCFoycXNpBxpaF1GbYOtElIuTdBlw1kUc1LaL4DFzlAqokOcOnN/l4FPfLlQjP8EvX1fxpWT
 jaQ3ddj/TD2pvDPv+GZIPU8WdSxQIcf5dtFqXHcwhSpBQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay177-hz1.antispameurope.com;
 Wed, 05 Nov 2025 09:34:37 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 7D195A4118E;
	Wed,  5 Nov 2025 09:34:28 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Kevin Hilman <khilman@baylibre.com>
Cc: linux@ew.tq-group.com,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] ARM: dts: omap: am335x-tqma335x/mba335x: Fix MicIn routing
Date: Wed,  5 Nov 2025 09:34:20 +0100
Message-ID: <20251105083422.1010825-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay177-hz1.antispameurope.com with 4d1dsd0w8hz3kgK6
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ee6cc2dae69e292d8830ae36f3bfe5c5
X-cloud-security:scantime:2.208
DKIM-Signature: a=rsa-sha256;
 bh=M69bDo94SwBC5FFrocC4elBa/SG32/tKazGnJ/ycIZk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1762331677; v=1;
 b=YL63JHzDJ8vlTbots8pC1O89BHM4YzIMjkJZXO1XQpcpcLqEoJDY8hDITv6jxD2XsXkYsq11
 RPc2VlB8URkxNNdss5czqY1lRc1fJqEH8WxwoM1vWGdVXJXRVZZTKvdzXoKrJMZ4mdGcqxzupD5
 fMrK+8fWG8BEsalRhe9dGK9tO79229f3D046eGnW1JYPDOLPw59SG3szaR2AREl5kyvRfLhoUQP
 XbKok6xbCevO5QOkdCfFp+VatQUD4DxErE49s6jaWqxQSgbEwQHIrt8HKfjqTv3or1phxgHIbPZ
 9i5rjGmXhgZ/kKgIAFHM1w7Iwj1mAXjiL5C1l8JsZ/ucA==

'Mic Jack' is connected to IN3_L and 'Mic Bias' is connected to 'Mic Jack'
Adjust routing accordingly.

Fixes: 5267fcd180b1 ("ARM: dts: omap: Add support for TQMa335x/MBa335x")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/ti/omap/am335x-mba335x.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-mba335x.dts b/arch/arm/boot/dts/ti/omap/am335x-mba335x.dts
index e51a8a17e74c9..84dd35aeb1143 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-mba335x.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-mba335x.dts
@@ -81,7 +81,8 @@ sound {
 			"Headphone Jack",	"HPR",
 			"Line Out",		"LOL",
 			"Line Out",		"LOR",
-			"Mic Jack",		"IN3_L",
+			"IN3_L",		"Mic Jack",
+			"Mic Jack",		"Mic Bias",
 			"Line In",		"IN1_L",
 			"Line In",		"IN1_R";
 		simple-audio-card,format = "i2s";
-- 
2.43.0


