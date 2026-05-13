Return-Path: <devicetree+bounces-297100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLVLIgfQBGr0PQIAu9opvQ
	(envelope-from <devicetree+bounces-297100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:24:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A76D539E67
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 996BE3010632
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 455573B0AE4;
	Wed, 13 May 2026 19:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIIjP/rr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226863A75A5
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 19:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778700120; cv=none; b=BbzSp0ToHaKOQlURg3t3Ft96SzYwjKEgVkr1KDZMdLjvxq9AcJufPEwtlmo8SBsN7uBDVf4+9nXq+PnFwAdEvTOhNc6TjueVpQw39AqVg7pJxLabVEO+LL7E1rfPGwjAiO+1IiV/sPMxZgiCkPVZyLZpWPia44mwI4zb1pCUK0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778700120; c=relaxed/simple;
	bh=fYXILq2sHTH4l65dF+0EzDOgcKBS45FOY4SjxnUwUWc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Eip+0IsvY50hMWBu2XLKCevQlvNlt7ZJnWwasDHTqoJfVR96zb8/sIjEENHDruMJtSA1JMHlY7nR2dD5Rj8illdGUcCvZ1VfoPnDInufZIjMx9DD/jQr8Ji6KCH9O2bbyd84AGjDPZgurjfTy9sbmT9qPT+bTMV1hdRCBWqhaeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIIjP/rr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 445CCC19425;
	Wed, 13 May 2026 19:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778700119;
	bh=fYXILq2sHTH4l65dF+0EzDOgcKBS45FOY4SjxnUwUWc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HIIjP/rrrBE+Q6nETwhm5F+AMOyqe5aa6o/U1yHi8GXZl/0+mV438+YoT3abq0G7w
	 5wCNkgvNZrhsA0GESu8oQyC3stWFHyuZNCzRcDmZymAd/A1ckWwYBubTNINNDUnvlg
	 FJyDpY/ALlcbRX97fjn4bmC14l+wDdTcoUxNTJIj/AEQWAybRTbmzUpWzgxNDhh3KC
	 B1Ri4s/4ef6Rj76KBAdpUyh4Bb5iPjRrduxnvzOXsz58wxWsF5QZZsjtqkgHaFdFDJ
	 r+ubCGRkpquCkvoeAjcNNTUHd1FjWHc3G5g2BYVb+XOKifQYKVZv3X/Dpwz1LMvNMf
	 5eL8D+jagcIMw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 13 May 2026 21:21:36 +0200
Subject: [PATCH v2 1/2] dt-bindings: arm64: dts: airoha: Add an7583 entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-airoha-7583-v2-1-ee0d82b37ce7@kernel.org>
References: <20260513-airoha-7583-v2-0-ee0d82b37ce7@kernel.org>
In-Reply-To: <20260513-airoha-7583-v2-0-ee0d82b37ce7@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>, 
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 2A76D539E67
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297100-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nbd.name,phrozen.org,gmail.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Introduce Airoha AN7583 entry in Airoha dts binding.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 Documentation/devicetree/bindings/arm/airoha.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index 7c38c08dbf3f..6506c64af4f3 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -26,6 +26,10 @@ properties:
           - enum:
               - airoha,en7581-evb
           - const: airoha,en7581
+      - items:
+          - enum:
+              - airoha,an7583-evb
+          - const: airoha,an7583
 
 additionalProperties: true
 

-- 
2.54.0


