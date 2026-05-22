Return-Path: <devicetree+bounces-301929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCVuHrp6EGrdXwYAu9opvQ
	(envelope-from <devicetree+bounces-301929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 17:48:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD15B71FE
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 17:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 270003012BEB
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3014477E58;
	Fri, 22 May 2026 15:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="N3RN5lZL";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VGIyAPTw"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2006314B6E;
	Fri, 22 May 2026 15:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779464418; cv=none; b=JaPLaQNI0xi41wIcPipjfXw5BhxFnySZqt9y00B5XR3UJ2tolH6h4W6eJ2ecgAbcPaACVKVmPD2eWf1Y8Qsckz7L0GMS8fX9wz5/kE4mL7LJG+iq8shaPokjmn+MIGkJKDnmlomKyZKl3B6HIQ3sSQe8rFmZie0F4DoJEj5wqbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779464418; c=relaxed/simple;
	bh=nkY5azp+A+UWoeeL2t0qgGKBeLRleS7Kpqh3++oUvvk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y2Hyj2+/PfDaMC0LpJ1vRcBCAP78bzrEHgXD9mbWeMPNDoAWXKrLetUyRtCW6h95rklVOZvgBfwudIYVo9j2ulz5nwrnjkCahifwPCXTeOBPng2ZKPMtiSYAEQQkLwjr1BEnsjvSllOvM/fRR5V5E2hiGiEG3POnmeE3yj+DiDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=N3RN5lZL; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=VGIyAPTw; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1779464408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fjBziMqP+PJLTJDATutLEWUFDXldiskQHavpB7dOOeQ=;
	b=N3RN5lZL4aOD6r+AFVYsY8Y3zHjc/I3HSKZNqV2+9ib4Mm8RrffjnCLwB3KccUzHyDGuEO
	kIUcpo6hY9H2+pkI0pjw0pQG47MHWmoJJeVseiXdbDaOFouZbVJ/uzqHB1ArUqwClpjkWD
	rwBupJH4iImSJmRkVi/2MRf99Yr59cfwCa3nrzH1E7di6cjNL5uoWDZcIw4b351fthZ3K0
	5VHorA7cX4jMFq/7FOxthPxFuUUBQZ4HvfEd0fJxShh//q7tMxuXmGNE9jWWpvBaHBKGOz
	E41HP1Re26Zn7lWyUsp9OCUOhonZR2z3P4TBBEYCm+oH9B38l0P8xbIC50t2ew==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1779464408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fjBziMqP+PJLTJDATutLEWUFDXldiskQHavpB7dOOeQ=;
	b=VGIyAPTwMD+z+zuGsqkqk7L9GAVBvmOdg3uEu0IvwB57uRBaNe9T8P0zri+YAec7bRvBvU
	r3XgrIE0utb302Aw==
Date: Fri, 22 May 2026 17:40:02 +0200
Subject: [PATCH v6 02/10] nvmem: core: Enforce stride and alignment checks
 for nvmem_device functions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260522-rpi-otp-driver-v6-2-b0eac97d1428@linutronix.de>
References: <20260522-rpi-otp-driver-v6-0-b0eac97d1428@linutronix.de>
In-Reply-To: <20260522-rpi-otp-driver-v6-0-b0eac97d1428@linutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
 Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>, 
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-hardening@vger.kernel.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779464406; l=1407;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=nkY5azp+A+UWoeeL2t0qgGKBeLRleS7Kpqh3++oUvvk=;
 b=zkG55RPzfHGtmzKdBRW2aruMJWmpMYQRk47PUpceDJC9Tttp25pqOXFnTWLO+5hhrWm9OJiD5
 ipba3TZfLHIDy4v14VDjidG+qdHikHZ7FpB6KigcQ5AccrT6CSVezhU
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301929-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,linutronix.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,linutronix.de:mid,linutronix.de:dkim]
X-Rspamd-Queue-Id: 1FAD15B71FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The stride and word_size attributes in the nvmem_config struct are
currently only used when reading/writing through sysfs functions
bin_attr_nvmem_read/bin_attr_nvmem_write and in the nvmem_cell api.
Reads and writes with nvmem_device_write/nvmem_device_read still allow
unaligned access.

Add a check to these functions to enforce word_size and stride_length
aligned reads and writes.

Reviewed-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 drivers/nvmem/core.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 311cb2e5a5c02..6b313f63d07ef 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -2068,6 +2068,12 @@ int nvmem_device_read(struct nvmem_device *nvmem,
 	if (!nvmem)
 		return -EINVAL;
 
+	if (!IS_ALIGNED(offset, nvmem->stride))
+		return -EINVAL;
+
+	if (!IS_ALIGNED(bytes, nvmem->word_size))
+		return -EINVAL;
+
 	rc = nvmem_reg_read(nvmem, offset, buf, bytes);
 
 	if (rc)
@@ -2096,6 +2102,12 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 	if (!nvmem)
 		return -EINVAL;
 
+	if (!IS_ALIGNED(offset, nvmem->stride))
+		return -EINVAL;
+
+	if (!IS_ALIGNED(bytes, nvmem->word_size))
+		return -EINVAL;
+
 	rc = nvmem_reg_write(nvmem, offset, buf, bytes);
 
 	if (rc)

-- 
2.47.3


