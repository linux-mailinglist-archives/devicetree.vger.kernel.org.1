Return-Path: <devicetree+bounces-276719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHMVL9VquWmvEQIAu9opvQ
	(envelope-from <devicetree+bounces-276719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:53:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 378912AC65A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 714563181FDE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7EC3E51C3;
	Tue, 17 Mar 2026 14:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oLBSxm5z"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F22A3A9DB6;
	Tue, 17 Mar 2026 14:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758377; cv=none; b=oKT3j7yFCBMokZozDPVLiNkdODOalklPakHXC7Az+1JQJstlZDUKN5B1t1Nidl38GJaJSyaRJwrr3kUdqR+gwQaFugRA1qaFUqB632KWOiL+eKeFwWE+kle3D9HQLGO9izQJrfPpyWJ7kjHdeKRGsJOOQWnRYhYxLgBikRb2s48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758377; c=relaxed/simple;
	bh=Af4KFyu9G462PBzFPcUbHdbzV8CZObDoeMRMMguLwig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LzDcc5G5y9EoNhdGhxBLnD7QlvH5xIlIhrpAxb4yJEr6tSzfYCm8d5ZmpCfQuoPxP4EJBm84S0L4F93x49ukOdYq53grGM6unp+tSH72i/3a231nRg8hnv41tj3xp8KByaBcvDPWds1AuWYKJRPUTx+uhUSqyK7FxCkCaE/S+dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oLBSxm5z; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773758375;
	bh=Af4KFyu9G462PBzFPcUbHdbzV8CZObDoeMRMMguLwig=;
	h=From:Date:Subject:To:Cc:From;
	b=oLBSxm5zgGhreREyqEyUzYn869Xp060RkmQkC7FaFgd6fIGSuqiYIrCUc/HVHQLS5
	 iXS3FsB8jBciScQaaR3SM6COLva3lEnWOxVbHm7y9xbcOtqlry2Ks6AbZoUs8O87eP
	 u+BZQCCqTcdFkl6EjCTKY3tNg1Wl4kKiRENFim4LKanN2Xs1WRs5TxOO050jBSLO/f
	 35j7MAfRF1EMJ+p14juEBxfDKTjbPesxUfmqYFfujmHKlFfMBb0gslxf1U2oJftQXt
	 10n5G5OWfJoGhzEN9/zQI0ijVV8BYSuZL1FoO7AahiL+2ywvXK0T/LJ8q5FMR2Icsx
	 jikZnVLB586EA==
Received: from jupiter.universe (dyndsl-091-248-085-025.ewe-ip-backbone.de [91.248.85.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F21E917E026C;
	Tue, 17 Mar 2026 15:39:34 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A2DAF48002A; Tue, 17 Mar 2026 15:39:34 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 17 Mar 2026 15:39:30 +0100
Subject: [PATCH] arm64: dts: rockchip: add SD/eMMC aliases for ArmSom Sige5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-sige5-mmc-aliases-v1-1-ee93a1571802@collabora.com>
X-B4-Tracking: v=1; b=H4sIAKFnuWkC/x3MSwqAMAwA0atI1gZq1SpeRVzUJmrAHw2IIN7d4
 vItZh5QjsIKXfZA5EtUjj2hyDMIi99nRqFksMY6UxYNqsxc47YF9Kt4ZcWKnR2JbGOohdSdkSe
 5/2c/vO8HAyd6uGMAAAA=
X-Change-ID: 20260317-sige5-mmc-aliases-4e62bdd270d8
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1193;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Af4KFyu9G462PBzFPcUbHdbzV8CZObDoeMRMMguLwig=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm5Z6alpHKfAvXq7zL1PZ3iPAInwi3LN0/S+
 /t2vGkmeNpyfIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpuWemAAoJENju1/PI
 O/qao/cP/15PNIpmb6DW8m3mBXgyxNr8Ess3FS1i7Py89+4nu/uLkj8NXNyRwF9M8eTfwsIjTq+
 2jCxyd+BUxGIhwrwevqziRtfitG/SuIlm8f8ZsK6CnfQqUYy0TnzrunV/sKdaULU77XHrMRHCyj
 svLtcwVfOrStoAf9RBtqK90gUrwlWIKMZsCjtTwqy0xtg7ICMhCEX9qbDoUYxzDSidIg1Q4rbfj
 L6uJ6JBN3sr+Nx8GUqeFg6tyhSYBnhUHt9boeg1rWmpAZg7PEo4/fZmHeLV2d5A8dBdn2hlg4rY
 ZMg2+4vPdCPOv0Q9X3GfOqiEWaz9TKofEnm1x7Oe2nVOeEDxXBwStongX828QHEGz7t/T/mOT6S
 p3hfg1a6blEIMFgIoyVF0F7hfIztIbDxj4wIfFspiE3J3FB64QYYrToj1nP6wZGaZ2NElzSJzRT
 KP/kdZRANLbcBKO/aJr5TOpzrCT7x2grx/xt/bqWzwfEU+O9kPF1Qc3sO0d9shQ6iNS4k/Yu3IW
 Y3RBEM6Xme1i/isQGjeieIKzJbb0MRhgqfkJA/tMsneuDNR+dtBGWf8ljdj80E5NFhn70xR6qoZ
 isv1jIuX5EM2vmRwTLll62Cr5oykz6y+4xxiWqGJOHZfndRimQ7RYArg5ggT3rDGA1cMbh0MbX8
 ka+llNC8HMM01jYItr6E0qA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276719-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 378912AC65A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Provide aliases for the SD and eMMC interfaces, so that the operating
system can assign stable interface names.

On Linux this is only relevant when booting without partition UUID
based root device identification, e.g. when booting without an
initramfs. In that case booting with e.g. root=/dev/mmcblk0p2 is
unreliable without this patch as the device numbers changed based
on device probe order.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index d372ba252af8..1c100ffd1518 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -21,6 +21,8 @@ / {
 	aliases {
 		ethernet0 = &gmac0;
 		ethernet1 = &gmac1;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {

---
base-commit: 74b04802e23d970099c522b711b0d94e9a29dd74
change-id: 20260317-sige5-mmc-aliases-4e62bdd270d8

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


