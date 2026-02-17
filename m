Return-Path: <devicetree+bounces-266297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MzOIQv/lGlOJwIAu9opvQ
	(envelope-from <devicetree+bounces-266297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C17152067
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E14DE30244C6
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A0537AA8E;
	Tue, 17 Feb 2026 23:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="FDKLvtE1";
	dkim=permerror (0-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="crvSIIrf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mainlining.org (mail.mainlining.org [5.75.144.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054837AA7D;
	Tue, 17 Feb 2026 23:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.75.144.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771372276; cv=none; b=LrcXFZsHUbLZ37GMNctXfiwAhHgbdls5eWXMouw8hi6AxzdAS/W6p7rvsCjL4RO8NtEiYl1dew1W8htfk9ravrg9UfK1KvVguMUgkTpZlQ2qfJtbyIAr+hsY++RwJa7Mu6rLQo1vYGEQ/8wFVWR8r4U5scUXGrtCMrMCrZLCpN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771372276; c=relaxed/simple;
	bh=m8ul2C55+KKmA9o6HcxSqObQQMLz3kIWacHNqG2d3bI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CcEIgN52qvngUJdlNLmAolNCzvl2MSqbSiaJBWDSGel2cgqK3ueSrQDbp8AUxyof6rbc+x1MvV659S+pYn14S5O0Z5Jas87BmFUzpCIyCfLmAlLXvLsI+agDYzyOVq8YUK50ePKV0pXz3J6rHT6ktTH4H584XTC693H3QsjX9RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mainlining.org; spf=pass smtp.mailfrom=mainlining.org; dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=FDKLvtE1; dkim=permerror (0-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=crvSIIrf; arc=none smtp.client-ip=5.75.144.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mainlining.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mainlining.org
DKIM-Signature: v=1; a=rsa-sha256; s=202507r; d=mainlining.org; c=relaxed/relaxed;
	h=To:Message-Id:Subject:Date:From; t=1771372265; bh=p+gPL1PjMDtfMBBPlQKq2Xl
	IPWpgpumvv3vlS1lYThM=; b=FDKLvtE1oHfxHJC5eangRvzV1dVUeSro/E3S53GB+i2jN8PGUP
	f1CyWFYm58LehmAHslzAbq3fcDfRLr95wA3s+F2Mm8sALWgmYQBEj1mP5bec+BpfFuO8EJRhfBs
	GlI6m9i+KTtodwuZgnm5ZBEdIDhK/L0+SB0NGnUj+F4DnlAuiq4uZyDmtWw5W2+DPdgzcZf65mj
	LPLhE3fRJgGa3rbJ5hN3FqWuVRI1VgCmJ2slITlwsl7isjismihVWre4x2NKN2yTRwCCApJLJ99
	vQw3A7xtgIMGWxs0iUdG365cn7k0zMiVRoZJBItNegXULj/0yrCQLoPladY5Or+ETGQ==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202507e; d=mainlining.org; c=relaxed/relaxed;
	h=To:Message-Id:Subject:Date:From; t=1771372265; bh=p+gPL1PjMDtfMBBPlQKq2Xl
	IPWpgpumvv3vlS1lYThM=; b=crvSIIrfX+b7+UuhyRa4FSbkR536U3/xoW4uwH7uWfN10y0+kx
	Dno/mx3g2TqFZcYKXIGsebMQ6PsSRL0IROAg==;
From: Aelin Reidel <aelin@mainlining.org>
Date: Wed, 18 Feb 2026 00:50:49 +0100
Subject: [PATCH 3/3] MAINTAINERS: add an entry for Goodix GTX8 Touchscreen
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-gtx8-v1-3-0d575b3dedc5@mainlining.org>
References: <20260218-gtx8-v1-0-0d575b3dedc5@mainlining.org>
In-Reply-To: <20260218-gtx8-v1-0-0d575b3dedc5@mainlining.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Henrik Rydberg <rydberg@bitmath.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux@mainlining.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Aelin Reidel <aelin@mainlining.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mainlining.org,reject];
	R_DKIM_ALLOW(-0.20)[mainlining.org:s=202507r,mainlining.org:s=202507e];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,bitmath.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-266297-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[mainlining.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aelin@mainlining.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,gocontroll.com:email]
X-Rspamd-Queue-Id: 36C17152067
X-Rspamd-Action: no action

Add MAINTAINERS entry for the Goodix GTX8 Touchscreen IC driver.

Signed-off-by: Aelin Reidel <aelin@mainlining.org>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index afbba2fdc0f49abb6d0d1877a5e161266715f275..cb0f19d622e25cd9a5ceb8fc1e781a1f2232c64a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10831,6 +10831,13 @@ M:	Maud Spierings <maudspierings@gocontroll.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/connector/gocontroll,moduline-module-slot.yaml
 
+GOODIX GTX8 TOUCHSCREEN
+M:	Aelin Reidel <aelin@mainlining.org>
+L:	linux-input@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/input/touchscreen/goodix,gt9886.yaml
+F:	drivers/input/touchscreen/goodix_gtx8*
+
 GOODIX TOUCHSCREEN
 M:	Hans de Goede <hansg@kernel.org>
 L:	linux-input@vger.kernel.org

-- 
2.53.0


