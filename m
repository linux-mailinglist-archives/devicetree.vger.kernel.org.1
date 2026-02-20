Return-Path: <devicetree+bounces-267056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id T2g/FIi5mGkdLgMAu9opvQ
	(envelope-from <devicetree+bounces-267056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:44:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1847816A66D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94A0F30398A2
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F410366575;
	Fri, 20 Feb 2026 19:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="WlIlj2IP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB30366055
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 19:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771616644; cv=none; b=l0rOm3MNxyxcLYCmFpDuzpxuSidld7+HvaM3ZEFVyHyiwI177aG/6VHJiUfMShCHXrUSijUvQVG3o5cQMEQ25B7g6sJ0eEQyQf039GPMZeEW3bFy88pyXvyckK/0W3jYipgH9hqA1Vh34Q2PlVLNFr/VfaMqRyQpTyTauLRby1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771616644; c=relaxed/simple;
	bh=Ly4iEjx6uZ+rJ9+G/vlKsJCinNauJ5e6oyNiW9ulKl8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FyIFQRjXWuce/Uxxe8imI7hdO9PK9szNeuum0ae1S5GfXaWJLPINycDXPiy0C9l1Br2FYGBHEljFrlXacHeJ+MeEFZDb1aoxdlJXNe7Hs+cKs30u9g+KDRYLZznHi66i840U+qt0T3BL62fcjPnAj64hkiRw/W7YTZK5kz+3RK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=WlIlj2IP; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48371119eacso23669465e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771616642; x=1772221442; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QfuC8wYvmgXv6e0lpDTw84mMEMfi1vaHFSvb7DY2Jxo=;
        b=WlIlj2IP6whDkow6qSzCbUwFzy2AOFnPl5lr37msHGgkWKIqb0FjPF3dwaLCQaTCf2
         nFBaYskmr1dB/hQiVbUlGcWE27C+pTQC+h9bhN1LbpAdLki1FsgDSuadVoFNdKnmX7jp
         7QBIwpdTnOc9i5ILiPXNUSKOJ1gzr0oU/FBjiCbvM3tTTyRapwHn1jX/9gSuMj12c/AF
         kuGyvXkEclbcV+GKcT75H7vXocdSiA0cl+mmZDdidE1cpY13jm+uZ+oLQpQ+zfBVUPCc
         93gHHoRzIX+kwwobQJW5G9udXAcy8N9dfWF/6aOVw/yejkQT9H+DjSxoFcrWlthi4cfR
         Q4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771616642; x=1772221442;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QfuC8wYvmgXv6e0lpDTw84mMEMfi1vaHFSvb7DY2Jxo=;
        b=xKygVQiZK9LxvvGEMR4CB3zXrH7ZgRwtSd8TG/T92M14lXQ8hD3/iVvsFsCQeu3vMw
         h0G4yL4fNL0feiX2etUCgV32650+mncASHM1ZrnHqBbs/RTW2hv7x6naTEzzHlshvV8t
         V9gt7wJLIfIdZPDUrUw37yX+mXfQmSlzF5nq3zGmUjuW9/+2aTfMUNXMIMPAeV/w678A
         nDLmls2Xy96MFjkR7zGCtZGQzAuFvropNAbNga4g0oOtGlNaAWi88iCzHkolh4iKodT/
         8JOUTGVnZAokGb76pKM6Yv1ScvAwllRZK/EWWn48skef3C6GxbDl4iSP27UYux9nRTD/
         m0hA==
X-Forwarded-Encrypted: i=1; AJvYcCWLFNnpJlhgGIDvyTMbsSAWGNVNNwWbPFqBntCrAbkF2IFhTdnoHEPyzon1sOhyRwQ+0ca3EGNdYV98@vger.kernel.org
X-Gm-Message-State: AOJu0YwjfDiJ0yFykdOos6aWKFelqJcuJuRXPxwfBwp6BwXesSuH7nIg
	2A4zCZLljwk8Al0mEdp8qAVvwnuPT2SwKF6Zzs4GTs0Y4FzG9A+DIvg/QqdevbNRg/WdEVeW2vr
	t/IrT
X-Gm-Gg: AZuq6aKjbH+BFaX/bicgxdd1f5tfWRcGRDYCm4Sx/b9dx26nRlAFlCrrECECnFML+Gq
	8IYUy0gYqkBm8GbOKTZsIFSa69HqvDDUIS1g9PjrWsaAPsIF5tp3C2+lpCiYRpq+U220bIy0GOZ
	yFQlQozzDB8o216nLaMSvFQ6Ljrm2S0naUcdXp5r9O1SlpUplgA2x7E5LqOYlI1ebu1RbTbBibD
	RYJ1OeeDIj8qJCob8e4lPxuE9TeQOa0c+3sVRm3BLqLyNQuZtPtz9KAUfwz023XQ1/rklPamqX5
	qj2q0OoptyZKxXN2KGC1eSOr5RcxoAg5V+HcL/2dIgGJgsoIKAa56NlkvEO2UPkHO4VwtuW4+K4
	snhu/k0Sf3cHh8YF3Fxd0xGdArLYI5/P2UO/pr/VZkI9W5Ro9fg7lRSiUjA5YFNOclDOpArI/Ej
	5GGNYVmJ4GS8VgzaL1Gblz
X-Received: by 2002:a05:600c:6298:b0:477:5c58:3d42 with SMTP id 5b1f17b1804b1-483a95fb23amr11365705e9.10.1771616641935;
        Fri, 20 Feb 2026 11:44:01 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a3e1b7ccsm24460755e9.11.2026.02.20.11.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 11:44:01 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Subject: [PATCH 0/5] dmaengine: sf-pdma: critical fixes and FU740 support
Date: Sat, 21 Feb 2026 03:43:52 +0800
Message-Id: <20260221-pdma-v1-0-838d929c2326@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHi5mGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0ND3YKU3ERdAxMjwySDVBOLREMDJaDSgqLUtMwKsDHRsbW1AEiI36l
 WAAAA
X-Change-ID: 20260111-pdma-0421b0e48a10
To: Paul Walmsley <pjw@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Green Wan <green.wan@sifive.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Palmer Debbelt <palmer@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, dmaengine@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 devicetree@vger.kernel.org, Max Hsu <max.hsu@sifive.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2537; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=Ly4iEjx6uZ+rJ9+G/vlKsJCinNauJ5e6oyNiW9ulKl8=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBpmLl7l/9teiwq1b0uEqS6AzBQvvq9KwMuuyxvo
 Hllat95F1qJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCaZi5ewAKCRDSA/2dB3lA
 vfitC/wNrgFNBVPVRVSl1TVKWOE7GbVcK8IJOazLaHl6+IC6NBJKUSQaBtYSLNPntLIfd4Zq/3S
 A3IqmGTSo+JJPcTGgaMfNEBazujzQ3UPslRRGOyMXg/spiAJs7IqnD03WYZZ0Pajntzc1cpz7XV
 OK9BEc/q6wn/GKslOuz5cWvUhEd5IXo+7OvSWvYrOhDF0bNmPKOZzJh2xuVfQaViupGywWxwgbb
 hgB5nkavL5jSOu0/mR00PAjr9NF+Ug+enB2Ap8eW7Mw6hWogEAXih7V7kbvdQ6S9Ll7PERBnoPQ
 EufsAIGwP91QJRlQt9+XvgWoIRm1QfmVEfC3ObbQ0LZyvpxExqVUSnDSvW8CN5+prB4bekwXe3/
 ZFAAhitkqABVNl0lBx/MVrG6xcyQ1NwsMHoWFOLdHIcRAXQs1bgNQ2hergH5V3U3KeVVVZojJmL
 mVoqRcz5BDnQY1LuDAzEwDa6xyvSQPxs0+wyofj20dWS3DuGRCzM1FQy+OXssQtibHM4A=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267056-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sifive.com:mid,sifive.com:dkim,sifive.com:email]
X-Rspamd-Queue-Id: 1847816A66D
X-Rspamd-Action: no action

This series addresses critical bugs in the SiFive Platform DMA (PDMA)
driver and adds support for the FU740 SoC.

The first three patches fix serious issues in the existing sf-pdma driver:

1. Missing PDMA base offset (0x80000) in register calculations. While
   the hardware provides an alias at offset 0x0, the driver should use
   the canonical offset 0x80000 as documented in the specification to
   ensure consistency and maintainability.

2. Race condition between done and error interrupts on SMP systems. Per
   the FU540-C000 and FU740-C000 specs, both DONE and ERROR interrupt
   bits are set simultaneously when a DMA error occurs, which can cause
   concurrent execution of done_isr and err_isr on different CPUs,
   leading to undefined behavior.

3. NULL pointer dereferences in both error and done tasklets due to race
   conditions during channel termination. Both tasklets unconditionally
   dereference chan->desc, which can be NULL during legitimate scenarios
   like sf_pdma_terminate_all() or when interrupts fire after channel
   cleanup. The fix adds NULL checks in both tasklets, protected by
   vchan.lock to ensure atomicity.

These three fixes are tagged for stable as they address bugs present
since the driver's introduction in commit 6973886ad58e ("dmaengine:
sf-pdma: add platform DMA support for HiFive Unleashed A00").

The last two patches add FU740 support:

4. Add "sifive,fu740-c000-pdma" compatible string to the dt-bindings.

5. Add PDMA device node to the FU740 device tree to enable DMA support.

All patches have been tested on HiFive Unmatched (FU740-C000) hardware.

Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
Max Hsu (5):
      dmaengine: sf-pdma: add missing PDMA base offset to register calculations
      dmaengine: sf-pdma: fix race between done and error interrupts
      dmaengine: sf-pdma: fix NULL pointer dereference in error and done handlers
      dt-bindings: dma: sifive,fu540-c000-pdma: add fu740 support
      riscv: dts: sifive: fu740: add PDMA device node

 .../bindings/dma/sifive,fu540-c000-pdma.yaml       |  1 +
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi         |  9 ++++
 drivers/dma/sf-pdma/sf-pdma.c                      | 63 +++++++++++++++++-----
 drivers/dma/sf-pdma/sf-pdma.h                      |  4 +-
 4 files changed, 63 insertions(+), 14 deletions(-)
---
base-commit: 8bf22c33e7a172fbc72464f4cc484d23a6b412ba
change-id: 20260111-pdma-0421b0e48a10

Best regards,
-- 
Max Hsu <max.hsu@sifive.com>


