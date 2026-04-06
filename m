Return-Path: <devicetree+bounces-284834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qG3aBQkW02k7eAcAu9opvQ
	(envelope-from <devicetree+bounces-284834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 04:10:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3993A1197
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 04:10:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08F8A300565C
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2026 02:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580B22C08AB;
	Mon,  6 Apr 2026 02:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="dz/01M8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24416.protonmail.ch (mail-24416.protonmail.ch [109.224.244.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948FC26B75B
	for <devicetree@vger.kernel.org>; Mon,  6 Apr 2026 02:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775441413; cv=none; b=gnGp8IxKVcBuDtFpSbKnjKalN3n/3yrM/5yppL1F6WPYFOuYPDm3UQluiMSkecL2ncZtgDNf0J4K9U8klE8Gh5O0wOdsztPQwMHs84LDmslJb6dlWKhM4cVtxP8hW1qPbt7dkzIKnMN/GSWOjb8rn4JKwIkw1sjwBzUMWdmPYe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775441413; c=relaxed/simple;
	bh=c9VHzmVSX3AObCFh92puFfvEMEn1CtIOC2zRnHZfUF8=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=JleU4/AE5yuBPm+shQltdQ34Nz8C0pWxYyz5S/GTGD7r1MB+nfl21VdSOzrkuDU5rZkemYnTfccnjb0XIi4womA+sNfwhfqo+zLdxgKb0hjxjkZHOeTcwezucXkkpFSOCgutLkG9484+K0L4V/m04vckKpcu4++B72L5V/c8LaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=dz/01M8E; arc=none smtp.client-ip=109.224.244.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775441403; x=1775700603;
	bh=B1Jv8NDBwJ7tq4D1+SxXstNTEVauQf7DZfeiRjDzIQc=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=dz/01M8Et8V+ht4mjt6zni1DRFNPLWuNvgG9JxQjGduLBf4/X9EvNygQDs2pclUz4
	 b7Fcf7pW6YijLaiq9Wi77FzStWWAmP0ZDTyiM9qHfKkiaIwo+ShXWOIthiJieiPjOd
	 KgJ3zTbGTcDM401M6pWSBWCDI/l/BRrvi1W5wr0LFq3IElXJ4eZ4546GNIx1LohQBA
	 ExhluPuIAE4Q0UHHq7+OcgJFDKyKyGbrjGsYoo33Au72mF8gLEtGgipG17H2Q3X8J4
	 Hk2FCDlT2ogMbogKug7VdfR/nko3ZUKaw3nmqxTJNKDhF4xkt2mHAN0Exob8YF7jUo
	 5yIzkthMWc4nQ==
Date: Mon, 06 Apr 2026 02:09:59 +0000
To: Thara Gopinath <thara.gopinath@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: linux-crypto@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH 0/2] arm64: dts: qcom: milos: Add QCrypto support
Message-ID: <20260405-milos-qce-v1-0-6996fb0b8a9c@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: ef8bcfc47c5dae631baa5202d5e953705423b8fb
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284834-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,gondor.apana.org.au,davemloft.net,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7B3993A1197
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the dt-bindings and device tree nodes for the Qualcomm Crypto
Engine (QCE) and its associated BAM DMA controller on the Milos
platform.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Alexander Koskovich (2):
      dt-bindings: crypto: qcom-qce: Document the Milos crypto engine
      arm64: dts: qcom: milos: Add QCrypto nodes

 .../devicetree/bindings/crypto/qcom-qce.yaml       |  1 +
 arch/arm64/boot/dts/qcom/milos.dtsi                | 32 ++++++++++++++++++=
++++
 2 files changed, 33 insertions(+)
---
base-commit: 591cd656a1bf5ea94a222af5ef2ee76df029c1d2
change-id: 20260405-milos-qce-a90710570bcf

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



