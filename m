Return-Path: <devicetree+bounces-297099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJwoFVzPBGr0PQIAu9opvQ
	(envelope-from <devicetree+bounces-297099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:22:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E46539DBB
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:22:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F22D0302734C
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D52B3B4EBF;
	Wed, 13 May 2026 19:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufwjBWDH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395933B4EA7
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 19:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778700117; cv=none; b=oXL7vMp1uhM2jCDYrILG6wnMHHZFSwWcYXh+yzcGURTuY1ras9Kx2+yNvB3iHcqt014yvOto909WMWwR9QpnjZ6cRyqeRTV1c00Xo92W70y8meA3iKinzItTgCLP8+9ZDTtQl8EcPpvcpedIJPqIb04pc8UH3xc/9Au3MVUIP04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778700117; c=relaxed/simple;
	bh=dsUv5jcnn03CHn9iwYpTRt6zRlnYVPtybAagqBvQ0Ys=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rylpfulJyG7u0Baw0YXdHo3epM+qq0jDMQ+L6YvMSNPWn/rWle9adPADEMiZArF9QDh6N7wXVfz45rXfU1WBSvf9gMe4tigNgS+Jac1VKfyui8rCUAJK6B0ivP6XDz+h2rPQwdFBbo4uRX5B7Ff5Y5Sk8qo+aQ1FYAVizwEM1Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufwjBWDH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66682C19425;
	Wed, 13 May 2026 19:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778700116;
	bh=dsUv5jcnn03CHn9iwYpTRt6zRlnYVPtybAagqBvQ0Ys=;
	h=From:Subject:Date:To:Cc:From;
	b=ufwjBWDHUqIb0PMGbCUI+wjrX7xkaspwscotkC8pxFwUejRCfj53/adt88kl3U0CF
	 5LNl9Qk5uFDTa6xGi12JpZBZJqKHGVNn/PCQjv6UcbcGrO7+pBaoqbHgv3xLwq+6Qs
	 N39szS+ydDPswexX3PmdHPeslM8qycEtp4NfcTAM2A6EyaOetOa5ycXr8JIF11Hqut
	 Xm3wSdioT3YcrHMiqMIZNw5/CYus+fqQF2dc/cVh9R8rEkwK+dineZSZIn/bxx1wDM
	 sB4aslbx0hdOinkWyomyBS8Vj06f6fH6878flYruXmMXSi3zHOsNuUcaUdYbTuI3XI
	 Uonj7rHyH5XjA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: [PATCH v2 0/2] Introduce Airoha AN7583 SoC and AN7583 Evaluation
 Board
Date: Wed, 13 May 2026 21:21:35 +0200
Message-Id: <20260513-airoha-7583-v2-0-ee0d82b37ce7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23MQQrCMBCF4auUWRuZxEyNrryHdBHt2A5KIxMpS
 sndjV27/B+8b4HMKpzh2CygPEuWNNVwmwauY5wGNtLXBoeuRcKDiaJpjGZPYWesJ+dbDB5tC/X
 xVL7Je9XOXe1R8ivpZ8Vn+1v/O7M1aJhij4EujgKf7qwTP7ZJB+hKKV/b0+xJpwAAAA==
X-Change-ID: 20260509-airoha-7583-145246084016
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>, 
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: C9E46539DBB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297099-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Introduce the Airoha AN7583 SoC's dtsi and the Airoha AN7583 Evaluation
Board's dts file.

---
Changes in v2:
- Fix RAM size for AN7583 evb
- Remove unused properties in an7583.dtsi
- Use ns16550a as compatible string for an7583 uart
- Add airoha,an7583-wdt compatible string for an7583 watchdog
- Link to v1: https://lore.kernel.org/r/20260509-airoha-7583-v1-0-e5ad085b258e@kernel.org

---
Lorenzo Bianconi (2):
      dt-bindings: arm64: dts: airoha: Add an7583 entry
      arm64: dts: Add Airoha AN7583 SoC and AN7583 Evaluation Board

 Documentation/devicetree/bindings/arm/airoha.yaml |   4 +
 arch/arm64/boot/dts/airoha/Makefile               |   2 +-
 arch/arm64/boot/dts/airoha/an7583-evb.dts         |  23 ++++
 arch/arm64/boot/dts/airoha/an7583.dtsi            | 133 ++++++++++++++++++++++
 4 files changed, 161 insertions(+), 1 deletion(-)
---
base-commit: e6490a169f6d5f5bdea7a2e8a673890d43afadc0
change-id: 20260509-airoha-7583-145246084016

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


