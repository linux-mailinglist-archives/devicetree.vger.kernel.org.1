Return-Path: <devicetree+bounces-294936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEfnCUFx/2lJ6gAAu9opvQ
	(envelope-from <devicetree+bounces-294936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 19:39:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A5500CFC
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 19:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2F5B3007E1E
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 17:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E285439C00A;
	Sat,  9 May 2026 17:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZetomav"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBF82DEA8F
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 17:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778348349; cv=none; b=g8yOpir2+GGWjNuifHRxOANfnC7gGlgVCNR1T7m6kr0a+5yKS3kSO4w8HjG91DcuTCHXjUvsKEg8MxSTf+BwOjg8Ed+jndh9Ow2XtL4C3tldq+yMdpqK8xcEpnJ9yjyoiLKBopGVdDjjg56UmP7+RX5sOk65CwlaF8IkZ5sscwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778348349; c=relaxed/simple;
	bh=k1wubvKawOKjkBHiGqFKqZ+JeyvmKczkhcAkSXnDDhE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=A8lGPD4Z43MyXgrxg9uW9lFLYqsewMZAvZ/5mDslSD0Lo1pxkLBkghPIFsUMqXLYNAjhdtv8Z2ZWGdktgRBwfEc6XSNAnl0sEHCViH29vzc6MKINLjZXdpkwPmUmC6zijEdzGjt2is6AkL4vO0/PVooKUpTKvtzDsUbvJlqPmHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZetomav; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AA5CC2BCB2;
	Sat,  9 May 2026 17:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778348349;
	bh=k1wubvKawOKjkBHiGqFKqZ+JeyvmKczkhcAkSXnDDhE=;
	h=From:Subject:Date:To:Cc:From;
	b=gZetomavLvXNTNp2DSmcZ/mgvzjIdYJJx86n9OjYI6MicgIms7krOg9e2AsLNYEyI
	 ZSDsqpj63zbrDjrSfx5SZU+ttuLMsa7GSpg/Y6vWQ/iKS0mu64FrLmwUKFceIqIU66
	 fT7oxpE5e3n6935egAVv13gpWoQwp0jZuvxt0I1eYkxTxNXvTIIyBvelGh17kv/vmZ
	 lzwBJEmuPBgsD0K7/VexIDvODN/PfMO66e/zQhc34gxfebJsI/Qq1qOGtQDtuEh0yI
	 JtsvL18Imn6+Mm0khbCMYwR3G3WvNF3ipdw8JMBc56Uqaz/l72jvFaAzJby1LuB09e
	 ti+HyRnnZpdnw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: [PATCH 0/2] Introduce Airoha AN7583 SoC and AN7583 Evaluation
 Board
Date: Sat, 09 May 2026 19:38:45 +0200
Message-Id: <20260509-airoha-7583-v1-0-e5ad085b258e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDUwNL3cTMovyMRF1zUwtjXUMTUyMTMwMLEwNDMyWgjoKi1LTMCrBp0bG
 1tQD7NBcuXQAAAA==
X-Change-ID: 20260509-airoha-7583-145246084016
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>, 
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 737A5500CFC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294936-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,nbd.name,phrozen.org,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Introduce the Airoha AN7583 SoC's dtsi and the Airoha AN7583 Evaluation
Board's dts file.

---
Lorenzo Bianconi (2):
      dt-bindings: arm64: dts: airoha: Add an7583 entry
      arm64: dts: Add Airoha AN7583 SoC and AN7583 Evaluation Board

 Documentation/devicetree/bindings/arm/airoha.yaml |   4 +
 arch/arm64/boot/dts/airoha/Makefile               |   2 +-
 arch/arm64/boot/dts/airoha/an7583-evb.dts         |  23 ++++
 arch/arm64/boot/dts/airoha/an7583.dtsi            | 137 ++++++++++++++++++++++
 4 files changed, 165 insertions(+), 1 deletion(-)
---
base-commit: e6490a169f6d5f5bdea7a2e8a673890d43afadc0
change-id: 20260509-airoha-7583-145246084016

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


