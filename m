Return-Path: <devicetree+bounces-271181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MreKppqqGnouQAAu9opvQ
	(envelope-from <devicetree+bounces-271181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:23:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A68592051BC
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6492430209A7
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C7937D10E;
	Wed,  4 Mar 2026 17:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC439FCAA;
	Wed,  4 Mar 2026 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772644944; cv=none; b=Ko/zTQm5w8gNKiUWllksjdJFzUlggMPAhK4O3PhtB10PJmmvDFu5oGxvFqVRkId+7H04vx3xqQ5OqeWE+VOHbY3M9rrjBWUuRHOI6oC/AboFfAlQcKFqyPjpKqsI/0e3vKPYxrWptg11WvHBQysPhDgV90Ke4X2D5dqUhY3ld+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772644944; c=relaxed/simple;
	bh=mTf0c1yDl/PtDZuyJW74yl1ZG5P8hx9OOpsZEh1FWwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uA1KSi6ROvEwVMMYN9aa9Wu3aDlD21A8LAgwB193qRCq1f3TZ8jjmM10z8zVqWZmvjixPWHtiRiz0ItDao8VcNdpRRoydffB1O8YPWSOOfXNOAqoSfn1GJc3VwChHvMuIfDI6tvX9EuZNq30XA2ipgQECzPmWWGgRy2dNDiRQ1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1F7FC2BC9E;
	Wed,  4 Mar 2026 17:22:16 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marc Zyngier <maz@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Antoine Tenart <atenart@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Mark-PK Tsai <mark-pk.tsai@mediatek.com>,
	Daniel Palmer <daniel@thingy.jp>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/4] genirq: Document interaction between <linux/irq.h> and DT binding defs
Date: Wed,  4 Mar 2026 18:21:57 +0100
Message-ID: <fbcc65dcee6c5437fab5ef18d21766bb4effb7cb.1772644406.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1772644406.git.geert+renesas@glider.be>
References: <cover.1772644406.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A68592051BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[glider.be];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271181-lists,devicetree=lfdr.de,renesas];
	FREEMAIL_TO(0.00)[kernel.org,broadcom.com,nxp.com,pengutronix.de,gmail.com,linaro.org,baylibre.com,googlemail.com,mediatek.com,thingy.jp,collabora.com,nvidia.com,ti.com,socionext.com];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[geert@glider.be,devicetree@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.852];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,glider.be:mid,glider.be:email]
X-Rspamd-Action: no action

Document that the DT binding definitions in
<dt-bindings/interrupt-controller/irq.h> shadow the first six IRQ_TYPE_*
definitions in <linux/irq.h>.  The values must be the same anyway, so
this is harmless (as long as the latter is included first when both are
included), but it is good to document this explicitly.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 include/linux/irq.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/irq.h b/include/linux/irq.h
index 951acbdb9f8457de..efa514ee562fcf91 100644
--- a/include/linux/irq.h
+++ b/include/linux/irq.h
@@ -35,6 +35,10 @@ enum irqchip_irq_state;
  *
  * Bits 0-7 are the same as the IRQF_* bits in linux/interrupt.h
  *
+ * Note that the first 6 definitions are shadowed by C preprocessor definitions
+ * in include/dt-bindings/interrupt-controller/irq.h.  This is not an issue, as
+ * the actual values must be the same, due to being part of the stable DT ABI.
+ *
  * IRQ_TYPE_NONE		- default, unspecified type
  * IRQ_TYPE_EDGE_RISING		- rising edge triggered
  * IRQ_TYPE_EDGE_FALLING	- falling edge triggered
-- 
2.43.0


