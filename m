Return-Path: <devicetree+bounces-138157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2864CA0BEBE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 462EE167B76
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 17:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 772CE18FDAF;
	Mon, 13 Jan 2025 17:19:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB02B4D8CE;
	Mon, 13 Jan 2025 17:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.18.0.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736788765; cv=none; b=iUZnZIDSOwRXoIdDNuyhnN8nvMkZDo9xeA84aaAGKS4FZ2mogFuUZVu83vHVaIiSYo0X1+IW597vNgQfDiUlYAalK6svEiDCk2Au3UkWF5wL0Q4WbcIlrb3zJmOFhGe//qeUOEUil9ivM5mPn1MjTkRMZVSE2JT+8WtqXh/YbUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736788765; c=relaxed/simple;
	bh=SSrLKhlE8vC+RFUXjq8ac2aaMrjWgMgdgDkC26UaUUI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FYSczgaFZ6undvY5RteZ03t6MkHtVPeB38Wnl7jPoDezZK+DluTen1+8I5kTKuK+Fo2X0k1IoB1sdS8Li7BWcj23VJvLNF1q+AG+WUhGUg+pwdIbS6eJcddT5GhgA9l4kPVAhv8COsVaWNxM9njaOY6D81rqpALdGuOlpv9OGQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=nefkom.net; arc=none smtp.client-ip=212.18.0.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nefkom.net
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4YWzWg3XF3z1syCW;
	Mon, 13 Jan 2025 18:19:10 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 4YWzWf4fXdz1qqlS;
	Mon, 13 Jan 2025 18:19:10 +0100 (CET)
X-Virus-Scanned: amavis at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavis, port 10024)
 with ESMTP id bKJXdFLjhbnz; Mon, 13 Jan 2025 18:19:09 +0100 (CET)
X-Auth-Info: RJP4YQIDgk2uuS6UlA0k7P2b2CGzg+Atfl66D+TZf71TOBLfLAQ05dRnW2RmzQ+w
Received: from igel.home (aftr-82-135-83-122.dynamic.mnet-online.de [82.135.83.122])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 13 Jan 2025 18:19:09 +0100 (CET)
Received: by igel.home (Postfix, from userid 1000)
	id 6C1FE2C1ADE; Mon, 13 Jan 2025 18:19:09 +0100 (CET)
From: Andreas Schwab <schwab@linux-m68k.org>
To: <linuxppc-dev@lists.ozlabs.org>
Cc: <robh@kernel.org>, saravanak@google.com, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>
Subject: [PATCH] powerpc/prom_init: Fixup missing #size-cells on PowerBook6,7
Date: Mon, 13 Jan 2025 18:19:09 +0100
Message-ID: <875xmizl6a.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Similar to the PowerMac3,1, the PowerBook6,7 is missing the #size-cells
property on the i2s node.

Depends-on: 045b14ca5c36 ("of: WARN on deprecated #address-cells/#size-cells handling")
Signed-off-by: Andreas Schwab <schwab@linux-m68k.org>
---
 arch/powerpc/kernel/prom_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
index 8e776ba39497..24b1523eeea8 100644
--- a/arch/powerpc/kernel/prom_init.c
+++ b/arch/powerpc/kernel/prom_init.c
@@ -2898,11 +2898,11 @@ static void __init fixup_device_tree_pmac(void)
 	char type[8];
 	phandle node;
 
-	// Some pmacs are missing #size-cells on escc nodes
+	// Some pmacs are missing #size-cells on escc or i2s nodes
 	for (node = 0; prom_next_node(&node); ) {
 		type[0] = '\0';
 		prom_getprop(node, "device_type", type, sizeof(type));
-		if (prom_strcmp(type, "escc"))
+		if (prom_strcmp(type, "escc") && prom_strcmp(type, "i2s"))
 			continue;
 
 		if (prom_getproplen(node, "#size-cells") != PROM_ERROR)
-- 
2.48.0


-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

