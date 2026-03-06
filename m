Return-Path: <devicetree+bounces-272315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LlRALYkq2n6aAEAu9opvQ
	(envelope-from <devicetree+bounces-272315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:02:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 972F7226E42
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:02:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B8AF3046F24
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A043A4219F4;
	Fri,  6 Mar 2026 19:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cfis297d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9257A285C91
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772823731; cv=none; b=m58U+4axLa+ixtTK4ekiq5AoooP98qrD0GBdj6kn4e0QxIMTTJR7pUT6EyXKK5h3/432VN/f5+dU0s83DKX5lc8fk5l8GnoWa7KEOeOgFbgAjIHg0cpwwCgAuSwrxQp0vmbHrVMiIaoa0GIg+760e/wKqSU/Qn/dZW/c15CcP34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772823731; c=relaxed/simple;
	bh=kqEpoeU6uwUw7UJCVSou/auM1cXuat3qxhal/UfK2Xg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=koWaolJhJC+qyEQc5Y+wTm1ExO2+rZAtmrca+tM0sj1dShSCIU54XLR0bfYuT45U6YuQ58eWgis1lagMLvvA+Oq8lCfmm6HeRgtd1WJRt1RGeVKn6Wl6yygEa8WOvSuQu+Zms6nersBKZEt1/2lnd39YebHFWZaZIZ71i1fWelY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cfis297d; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b8a3f2bcso4646850f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772823725; x=1773428525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=Cfis297dbnUr80yteHF1WECRpD5yghqQmiEz8kCWtFCVmUTOCWWJQEZC6dCZNvnsrl
         td1jg9YKQbn97nmI5FgqvKXSPrI/NhMvBy9pzdmwHgSeS9bGKkBeBBjrYuCgGTsDyd5l
         N3hq7J+J5EeQrZUqHlhHygw8xyOw3TbXD1LceXPgvz0k7nqphL1VDc6827dv17+Qa+sC
         GbHy6VilqhD2TAq8Zvtevz6wzLsbxmFG+40NMIZsaiXqOOW1aAMlQmTMY/pmT6I4iuNV
         SYmgsrJK6OIJqS9+dNvdQ7XDufGposy9BPLLoDqh8zQdfjfhi7je0HhbuIVmLuIDkFBK
         CVWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772823725; x=1773428525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=czONE2uVzYsPfsnMkOzFBQdEZyInDCusmfQOiYDPUoUf6QIY70eVDYNUci/Nk/IEto
         dZ+HWSuT4UAT2iQT9VOJ0cy0mEtg27c+jFZ2cB/gFAY3QYFMDFgMsu0O+tfnUujXk5RS
         e2eY3CLNXRfB5MHulavCXUXkh6wdvPYfDpqr8bFfrSzD6Jjb6BtbHzfYZk/Q+dR8+t0j
         1ipXRaxcBhGHzbImLWfAPqrUhFvWL3JNysBZXUFdpTHnOl0F/uquKV9b+ec8mRzWqVcc
         kYrIX6mohSHnJHt8Mu4PnQh4TDzsq4mVYJkpiuM/Xs442bofvGQEXzr3uIxCUBT4q1X1
         C1kA==
X-Forwarded-Encrypted: i=1; AJvYcCVsMThXUJEvmySodVYxTbdBOWMobTiKG6xZGMvAdX3LPAZRndk6XqCpTvMjQxs7Gz50EXvwbIm2bNNy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt3bQn+1rIVmP0hYlQl9pOIsbGZcKnb88oytqMurdfXwoNuE7/
	druQRQST2MR3AHIhkGqrCilMjKoJZh4Zk4TnmrFFU+Vla6hC6ZrOZNyY
X-Gm-Gg: ATEYQzxAdmdkxryG/9TOET6Uap0ZSYIv0FgzvwQt1QWEU0lKf6vVrYcWinr1IsgeqZB
	bMApShgio+iZXlnxvufijKdM9TDQ637yCBwaJOCAw4w5Z1iYb860YT17j0TtGDl7fu3U7jGQwOT
	bUu/PlzeO22NjQJMi7zsGZeOZ9G4K5mKJhrRKzB5jfiFWQuyYGRn+fp3GparXr61cfRBY/DIOYG
	tVGDrZsCTbnWPiYPVkUPHfzn5T15+mLEUJlxDrYkcNEmP+kBzTFFFMDYXj7nCNaKZL0Sun7o622
	kD/U0BLVZGLXEEtEPq+zEV7ucIKUwB0WAEK0I7ms45DDxkxNgZresw94+BYW16Stjn+O/uBZGWB
	szEm9JMWCNAMPtDC1q6+SC3g1ZsfClHibWbyRmBSjqgMQxGw1CeJjPw+UsC15YqdcEm6I/gXW+n
	apCIo2oGAgKxU3j6oYtPjYdpdw2vhmafMsV+E9kCxHoYl7pkCMlNHzIkI=
X-Received: by 2002:a05:6000:4313:b0:439:a95b:3c43 with SMTP id ffacd0b85a97d-439da65e31amr5770839f8f.21.1772823724684;
        Fri, 06 Mar 2026 11:02:04 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dae2ba66sm4743436f8f.20.2026.03.06.11.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:02:04 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Fri,  6 Mar 2026 20:01:50 +0100
Message-ID: <20260306190156.22297-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306190156.22297-1-ansuelsmth@gmail.com>
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 972F7226E42
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272315-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.981];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
purpose. For example the Serdes for the USB1 port can be both
used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
used for USB 3.0 operation or for PCIe.

The PCIe Serdes can be both used for PCIe operation or for Ethernet.

Add bindings to permit correct reference of the different ports in DT,
mostly to differentiate the different supported modes internally to the
drivers.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..a14cef465dad
--- /dev/null
+++ b/include/dt-bindings/soc/airoha,scu-ssr.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
+#define __DT_BINDINGS_AIROHA_SCU_SSR_H
+
+#define AIROHA_SCU_SERDES_PCIE1		0
+#define AIROHA_SCU_SERDES_PCIE2		1
+#define AIROHA_SCU_SERDES_USB1		0
+#define AIROHA_SCU_SERDES_USB2		1
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.51.0


