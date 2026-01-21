Return-Path: <devicetree+bounces-258116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OQxIQw2cWnffQAAu9opvQ
	(envelope-from <devicetree+bounces-258116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:24:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEAB5D23B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 90D4970E362
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16E43EDAC0;
	Wed, 21 Jan 2026 19:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3b/aQth"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561EB3EDAB3;
	Wed, 21 Jan 2026 19:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769025417; cv=none; b=AHHkMhaJyTTiv0sjJYbFA6fd28aTExX0xCu7HDBdrTl6ai71Uo38j0jebMI1U5bBqxnG37hH7vpEHz75lZcttEGEKoFYGpkPpwesr/ggVj9NREcAv+4NlDTh6y4yx0hRItoZeWbXfu9bRkXrKcCE7oOji55kLxS8aMBrS9UnXWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769025417; c=relaxed/simple;
	bh=/ZlnKnKx7utqc5wND/d2GRMNuYYpxYnoMehK3GUY9hQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kJnl/+87e1TyglRuhq31pp+raMc86hvrS4E+ha6QsPmzHGDj17ZGi0pk14J8XCE79GHD58krPhbB8Je0TGOoC8ZP8xIh54zvfVsDXmzmE20sp4JZ9XKrVcWAMexK79drf51zij34gOtFk9PYN0jydKxIVNCWCX8Eu1r8sBtwMxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3b/aQth; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE381C4CEF1;
	Wed, 21 Jan 2026 19:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769025416;
	bh=/ZlnKnKx7utqc5wND/d2GRMNuYYpxYnoMehK3GUY9hQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=B3b/aQthrQzJU9J5LRmk/7/delrvkOOR5vjzUHVjx0YypDVYWHp7m93d8aznCFT2L
	 rtewlrw6IXMuQJSyRLFxOcsFxMn42ruoInR/7VH3qqoeA0enRNNART74n/huMd1574
	 Luhsc8F+hg+EA22YOdzzqVfnQr934geK0fH780D7M/Vi+4+IEMA+7hD+1/fpS4ZdhA
	 5vyIXnDL+B9azBNcnFPTXJi5Iyfmvz3ZbqICjSNNoiSlDpPez7h2ZCj95yHxyDdlJV
	 b5cbTu/RM/KNfMaaXN+CiQz9Ag8iT5HDDjM6pyGvpEKOQbCbPBn5x758Q6t6LJqO6H
	 8Fr6tEI9zn8Rg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Wed, 21 Jan 2026 13:56:34 -0600
Subject: [PATCH v3 01/10] dt-bindings: mtd: brcm,brcmnand: Drop
 "brcm,brcmnand" compatible for iProc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-dt-mtd-partitions-v3-1-ec3af93c8f93@kernel.org>
References: <20260121-dt-mtd-partitions-v3-0-ec3af93c8f93@kernel.org>
In-Reply-To: <20260121-dt-mtd-partitions-v3-0-ec3af93c8f93@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Brian Norris <computersforpeace@gmail.com>, 
 Kamal Dasu <kdasu.kdev@gmail.com>, 
 William Zhang <william.zhang@broadcom.com>, Nick Terrell <terrelln@fb.com>, 
 David Sterba <dsterba@suse.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marcus Folkesson <marcus.folkesson@gmail.com>, 
 Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@kernel.org>, 
 Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258116-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[bootlin.com,nod.at,ti.com,kernel.org,gmail.com,broadcom.com,fb.com,suse.com,milecki.pl,chromium.org,linaro.org,atomide.com,hauke-m.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,broadcom.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 3CEAB5D23B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some users of "brcm,nand-iproc" include "brcm,brcmnand" and some don't.
The "brcm,brcmnand" compatible is not useful for iProc systems as
there's a separate driver for iProc. So drop it as a fallback.

Reviewed-by: William Zhang <william.zhang@broadcom.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
index 064e840aeaa1..3105f8e6cbd6 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
@@ -66,7 +66,6 @@ properties:
         items:
           - const: brcm,nand-iproc
           - const: brcm,brcmnand-v6.1
-          - const: brcm,brcmnand
       - description: BCM63168 SoC-specific NAND controller
         items:
           - const: brcm,nand-bcm63168

-- 
2.51.0


