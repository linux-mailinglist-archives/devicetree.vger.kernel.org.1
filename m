Return-Path: <devicetree+bounces-270349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLbcNfCXpmltRgAAu9opvQ
	(envelope-from <devicetree+bounces-270349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:12:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B441EA9E6
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:12:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68E9E30A9DFE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9268A388E67;
	Tue,  3 Mar 2026 08:07:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [207.46.229.174])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A5C38837C;
	Tue,  3 Mar 2026 08:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.46.229.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525263; cv=none; b=t7aPDBfe6q0S3CfcHnz71Re5NZIUMgF+3+LYj0goFnHvuAOfFKM9K9NRTrr31mwJ1kmyTRfWCbr0Jj/Ws9f9I4j8beaKdcALwtsv3rk2RhMH9bwS1LrWSQgeaHOPMUI4lZb7klzWrO5Y+kTVofP2VR1fNx+7VGLrmmGsDb6ETK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525263; c=relaxed/simple;
	bh=GwpQTYLKVuKAMLhFTpsHgde2R9idmwHlcvQTAJjixro=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lj1sGg0z02qz6ayom0Bf9jVR1ZY+2isrIOT5MiX7Dtwwt+pwTOdZLWxc6OjwbGEC8KnnEuhLCBb3CHODObvhdm8zd3eftjmCm9Z6bbkhlKUaX7uqrF9FR3FNZgFjjUXBzJ3aFAsYMu1ZylB4oZA0zljp5DT0JvdA6XqJeMbUa5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=207.46.229.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from E0005152DT.eswin.cn (unknown [10.12.96.41])
	by app2 (Coremail) with SMTP id TQJkCgAnPaDDlqZpFz8FAA--.25823S2;
	Tue, 03 Mar 2026 16:07:33 +0800 (CST)
From: dongxuyang@eswincomputing.com
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev,
	bmasney@redhat.com
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com,
	ganboing@gmail.com,
	marcel@ziswiler.com,
	Xuyang Dong <dongxuyang@eswincomputing.com>
Subject: [PATCH v15 4/4] MAINTAINERS: Add entry for ESWIN EIC7700 clock driver
Date: Tue,  3 Mar 2026 16:07:29 +0800
Message-Id: <20260303080729.2265-1-dongxuyang@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260303080513.2042-1-dongxuyang@eswincomputing.com>
References: <20260303080513.2042-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TQJkCgAnPaDDlqZpFz8FAA--.25823S2
X-Coremail-Antispam: 1UD129KBjvdXoWruF48XFW5KryrJFW3ur45KFg_yoWDtFb_Cr
	4xA3y3XFyrXF12k395ZFZ3AFWYkw4xJr4Yg3ZFyw1Yv34Yyr1kKFWqvw1Svw47GF43WryU
	CFyrKFZIgF17ZjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbhkFF20E14v26ryj6rWUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr1j
	6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUAVWUtwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwAKzVCY07xG64k0F24lc7CjxVAaw2AFwI0_GFv_Wrylc2xSY4AK6svPMxAIw2
	8IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4l
	x2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrw
	CI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1l
	IxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4
	A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0pRByxiUUUUU=
X-CM-SenderInfo: pgrqw5xx1d0w46hv4xpqfrz1xxwl0woofrz/
X-Rspamd-Queue-Id: 52B441EA9E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270349-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[eswincomputing.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dongxuyang@eswincomputing.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.820];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,eswincomputing.com:mid,eswincomputing.com:email,ziswiler.com:email]
X-Rspamd-Action: no action

From: Xuyang Dong <dongxuyang@eswincomputing.com>

Add myself as maintainer of ESWIN EIC7700 clock driver

Tested-by: Marcel Ziswiler <marcel@ziswiler.com> # ebc77
Reviewed-by: Brian Masney <bmasney@redhat.com>
Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..841448e7037c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9497,6 +9497,14 @@ T:	git https://github.com/eswincomputing/linux-next.git
 F:	Documentation/devicetree/bindings/riscv/eswin.yaml
 F:	arch/riscv/boot/dts/eswin/
 
+ESWIN EIC7700 CLOCK DRIVER
+M:	Yifeng Huang <huangyifeng@eswincomputing.com>
+M:	Xuyang Dong <dongxuyang@eswincomputing.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/eswin,eic7700-clock.yaml
+F:	drivers/clk/eswin/
+F:	include/dt-bindings/clock/eswin,eic7700-clock.h
+
 ET131X NETWORK DRIVER
 M:	Mark Einon <mark.einon@gmail.com>
 S:	Odd Fixes
-- 
2.34.1


