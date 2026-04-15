Return-Path: <devicetree+bounces-287482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKxbDvU932mUQwAAu9opvQ
	(envelope-from <devicetree+bounces-287482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 09:27:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB1440164D
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 09:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A78B30CF12D
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 07:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559C23CB2F2;
	Wed, 15 Apr 2026 07:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kxwvc+cI"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05773AE6EE;
	Wed, 15 Apr 2026 07:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776237841; cv=none; b=F/SIOQwABKexYoiHLnkxWCk0aGM26xjX/ETNg36a469+FmNSY3ltlEOWzFhZGGnE0emnO9ee07I8i0rtgpjvMpi8bEFogMEQaJe4BAZapUHgqepIPJTH2/G4NferXK52M487qERyrbSAIccQurLnRWtf4Shx3d3FPFipRCpSEZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776237841; c=relaxed/simple;
	bh=xq0NdgL1l0loSI+nYSoGevbj/g7OgzAQZIHb15BgSgw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u9b9awb2Z1TkaBOMiS4GvkMegdo6iJzWQHu9ji7kGQ3RJIpciT2bzHTQP1O+CXOZZhRj6fXSkjOgdWKwfLinQDd/JNC8Ru/6uUbfK9ljRvbZEWixYCc6u43I4V+W8uasn0aX1kMZMT+iYXGVCqRMu9nSnKqJqBv4ozz7i2IOaI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=kxwvc+cI; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776237837;
	bh=xq0NdgL1l0loSI+nYSoGevbj/g7OgzAQZIHb15BgSgw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kxwvc+cIAiSunnmoPcL8rhk101yoZ2cnPxwWQqYtanKdl6pfGjrgBV7Hm+0WuHlK/
	 TmG7pckOBUtrXLTrYtwNnbUgBdE9bSIFxoFPqo8yXOyy1ahFApLpEKYDWlEScrj4Mw
	 +9vxA2OmPvPfnFPiXvwbsJu3iEIAUjrmLhJruKmANGjYztd3kVL+LiS+5dKhtHttbV
	 OFoDpCW6OdkS4gA1wE1WmCUhI1j9wcPiKpXbsc8lk89k4Tn55npJ8niaHEiaNJnf1n
	 vhAxqiVHDjyHCRup9jKsFYJNdYQupFiM+JwtuXcww1jNcsJ0ipWZ1OlTQ3N9rNRSle
	 UJBycQWFA38yQ==
Received: from benjamin-XPS-13-9310.. (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 62A0717E144F;
	Wed, 15 Apr 2026 09:23:57 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v14 5/5] arm64: defconfig: enable Verisilicon IOMMU for Rockchip RK3588
Date: Wed, 15 Apr 2026 09:23:41 +0200
Message-ID: <20260415072349.44237-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-287482-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.gaignard@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,collabora.com:dkim,collabora.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 8BB1440164D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable Verisilicon IOMMU used by Rockchip RK3588 AV1 hardware codec.
This hardware block could be found in Radxa ROCK 5B board.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b67d5b1fc45b..b97f5008f6be 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1592,6 +1592,7 @@ CONFIG_ARM_SMMU_V3=y
 CONFIG_MTK_IOMMU=y
 CONFIG_QCOM_IOMMU=y
 CONFIG_APPLE_DART=m
+CONFIG_VSI_IOMMU=m
 CONFIG_REMOTEPROC=y
 CONFIG_IMX_REMOTEPROC=y
 CONFIG_MTK_SCP=m
-- 
2.43.0


