Return-Path: <devicetree+bounces-264693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GXSIqNQjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:49:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B0D122F1D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D0996306A28B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0762436655B;
	Wed, 11 Feb 2026 09:47:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net (zg8tmja2lje4os4yms4ymjma.icoremail.net [206.189.21.223])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CECB2F6192;
	Wed, 11 Feb 2026 09:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=206.189.21.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803270; cv=none; b=HHNvAcLjQM6HVhjxTgeLj7T9SWcsFR0uP6jBIc1FBLsB8JYdp6VYsKZznuKfXSDjhYwWtUQs4Gh9vmQkwKDCycevnZQoOCkbqTK3q+Slw/+wCQTxkhbl5NNNGkV3MgUbV8TI333MUz+Hz8/Jxw3xB7b3KGsejfomepTQpKLUyoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803270; c=relaxed/simple;
	bh=du4Vj2klYNzF4G9W/aM4Me7dO6BWJCWIM0/OzcJuA/s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KP2Ta9yWHQCz/uP0cakOpkyACOho1DdJrKVofdxlG34h3NCf2nHZFNtcb1MexZ00D+g4VIzI9F8Wr3E25LE7CyiVt1PI3vnTc8nESnV4Vw7u0qAzyhK/6iWHcyluD+4Lpc0GG65t2EBhLSiOo2GMtegRKoJ02BOs0+XLcqsiMgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=206.189.21.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from E0005182LT.eswin.cn (unknown [10.12.96.155])
	by app2 (Coremail) with SMTP id TQJkCgBnYs06UIxpTRoAAA--.526S2;
	Wed, 11 Feb 2026 17:47:40 +0800 (CST)
From: hehuan1@eswincomputing.com
To: ulf.hansson@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jszhang@kernel.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com,
	xuxiang@eswincomputing.com,
	Huan He <hehuan1@eswincomputing.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: [PATCH v1] dt-bindings: mmc: dwcmshc-sdhci: Fix resets array validation
Date: Wed, 11 Feb 2026 17:47:36 +0800
Message-Id: <20260211094736.88-1-hehuan1@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TQJkCgBnYs06UIxpTRoAAA--.526S2
X-Coremail-Antispam: 1UD129KBjvJXoW7uF13urWfuFy3Gw43Xr1UKFg_yoW8Wr1fpF
	Z3Ary7t3s3CFy3Ww4Iy3WkC3W7XwnxKF12gr12qr1xKF4DuF4jgrW3K3Z0qry3GFyxtaya
	gFW29r13Aa4Ivw7anT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBv14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lw4CEc2x0rVAKj4xxMxkF7I0En4kS14v26r4a6rW5MxkIecxEwVCm-wCF04
	k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18
	MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr4
	1lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1l
	IxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4
	A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0pRMCJQUUUUU=
X-CM-SenderInfo: 5khk3tzqr6v25zlqu0xpsx3x1qjou0bp/
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,eswincomputing.com:mid,eswincomputing.com:email,einfochips.com:email];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TAGGED_FROM(0.00)[bounces-264693-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[eswincomputing.com];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hehuan1@eswincomputing.com,devicetree@vger.kernel.org]
X-Rspamd-Queue-Id: 02B0D122F1D
X-Rspamd-Action: no action

From: Huan He <hehuan1@eswincomputing.com>

The binding defines tuple-style reset-names items for some
compatibles, which implicitly enforces a fixed array length
via JSON Schema.

Defining global maxItems for resets and reset-names causes these
constraints to be intersected via allOf, resulting in an effective
minItems equal to the global maxItems. This leads to dtbs_check
failures reporting reset arrays as too short, even when the DTS
provides the correct number of entries.

Remove the global maxItems constraints and let the per-compatible
schema branches define the required reset array sizes explicitly.

Fixes: 30009a21f257 ("dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin EIC7700")
Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
Signed-off-by: Huan He <hehuan1@eswincomputing.com>
---
 .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml         | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index 7e7c55dc2440..8af55a53b569 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -49,12 +49,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  resets:
-    maxItems: 5
-
-  reset-names:
-    maxItems: 5
-
   rockchip,txclk-tapnum:
     description: Specify the number of delay for tx sampling.
     $ref: /schemas/types.yaml#/definitions/uint8
-- 
2.25.1


