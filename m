Return-Path: <devicetree+bounces-259193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qC0SNoomdWlLBQEAu9opvQ
	(envelope-from <devicetree+bounces-259193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 21:07:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 061967ECFE
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 21:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A076300C034
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 20:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF8327467F;
	Sat, 24 Jan 2026 20:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="grI4do/g"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4185123BD17;
	Sat, 24 Jan 2026 20:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769285255; cv=none; b=bknEjOu/tgjpjp4LQORjxk9xKcZbrgxOeNe0DokAErEyqk5sVrY+ERJmVJolY/EXh86OR5Nkxc0SHbUDfI41HlOYZVaaGrUQBUX1sKqW8KW9IpsndQ41NPe/QYy3EdnLQ1tve4tHyo1BiiVK+EmcQx9zcDOtXqy4NH24Jj3WSD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769285255; c=relaxed/simple;
	bh=Yr5xNK0ZgmkOiDQM7wC1rXrKDc/tR8QPckZsm1KNIno=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=q+OPA2n7aIIvcrlgv1Jw4FJ1dY6YrQHesJFnBqhVWSqx7zWykaAXHfzJuGdxC9kKo8OOGVSEvTgQD81AzVg4ffdAIk/UihTJm+7W6/JnCDAoeHJLNZuf95eox+HTM/LHgbsxJzVREWUmbkIx7D8zsAH2kq6ZD5oBq1J16fsHets=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=grI4do/g; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4822227D14;
	Sat, 24 Jan 2026 21:07:30 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id opSmFgaHfVSO; Sat, 24 Jan 2026 21:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1769285249; bh=Yr5xNK0ZgmkOiDQM7wC1rXrKDc/tR8QPckZsm1KNIno=;
	h=From:Subject:Date:To:Cc;
	b=grI4do/g79jcoEyadKxUXYWIPkMn0jDuLNmq+XQfV08kb1LEdHwAbUBngQFNI7l/l
	 hY912b3B7gROSWPYz8Xqnx3K7hCtyl3B1ee6RemBSvXsqnyj3juy4XwDiO/hcuDvG7
	 DCiNaEcQtbz7G9DvSBFM9T0sBRP3dop5UP+d8zzd4vqHZxXmiifvUTjzaSoUzjJHsz
	 limPVoN9BiXPsCB9E1opQ82XZ/GCoXmZ5GUnGpPOjOpNtxxpWDTrr3CUHCUQ3Nhoyi
	 quXg1w/o9DXgf2qUGntxFQRNjhET1k4Vj7lU+rLs8RQL/Golm5pIZ797793+YadhcP
	 hz81iSioyfRTw==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Subject: [PATCH 0/2] Add device tree for Samsung Galaxy J7 (2016)
Date: Sun, 25 Jan 2026 01:35:25 +0530
Message-Id: <20260125-exynos7870-j7xelte-v1-0-5cacc3042c42@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAUmdWkC/x3MQQqAIBBA0avErBOmAdO6SrSQmmoiLDTCiO6et
 HyL/x+IHIQjtMUDgS+JsvuMqixgWJyfWcmYDYRUY0Vacbr9Ho01qFaTeDtZ1a5BGrW1iA3k8Ag
 8SfqnXf++HzvCNBtkAAAA
X-Change-ID: 20260125-exynos7870-j7xelte-6a902d588009
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Rayan Marzouk <rayanmarzouk743@gmail.com>, 
 bluebunny <kalorin.bok084@passinbox.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259193-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,disroot.org,gmail.com,passinbox.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[disroot.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 061967ECFE
X-Rspamd-Action: no action

This series introduces the device tree for a new Samsung Exynos 7870
device – Samsung Galaxy J7 (2016).

I have acquired permission from the authors of this patch to upstream
this on their behalf.

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
Kaustabh Chakraborty (1):
      dt-bindings: arm: samsung: add compatible for samsung-j7xelte

Rayan Marzouk (1):
      arm64: dts: exynos: add initial support for Samsung Galaxy J7 (2016)

 .../bindings/arm/samsung/samsung-boards.yaml       |   1 +
 arch/arm64/boot/dts/exynos/Makefile                |   1 +
 arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts  | 497 +++++++++++++++++++++
 3 files changed, 499 insertions(+)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260125-exynos7870-j7xelte-6a902d588009

Best regards,
-- 
Kaustabh Chakraborty <kauschluss@disroot.org>


