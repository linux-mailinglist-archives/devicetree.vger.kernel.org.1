Return-Path: <devicetree+bounces-278338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCSCDiRovWnL9gIAu9opvQ
	(envelope-from <devicetree+bounces-278338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:30:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AD02DCAE3
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:30:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40CDD307F00D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6E73C8718;
	Fri, 20 Mar 2026 15:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/U/68pz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294783B6C1E;
	Fri, 20 Mar 2026 15:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774020031; cv=none; b=EmDXfnmtT2o7Ypoo4Qy9u7raOjfkOVVr84lG4XTQPkm+1TcuGG75T+UjSAwo70+VlApkN82YCE0fpU8OaE/rFgwgW4x5QnxRzDvO98rZWWJmM6TPxFYMf9ht1x/3rwMHlO0KsKYr9mRI1Wxw34r1kKaufrY0MYjkcTFgxoYJHnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774020031; c=relaxed/simple;
	bh=vXaAW1fyWcmmS9WVP6WjZrb2DqMl4KjlqcJvvJObNgg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jPGF/zR17ENMn4s6p9Iqa3SNACOPS+AoefV5BorjvxpSzPXvRFr142/hC32z13rvR5ZaiLpGYs0Kmm5ByXR3PBHfb4TLCBUJTTmD71DO0z4LPgn087TreN5GAG80dL5Udu8lLoqlt3PJp9LpmxItRExWoEI0T79e7yPZgHPZX6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/U/68pz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4621C4CEF7;
	Fri, 20 Mar 2026 15:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774020030;
	bh=vXaAW1fyWcmmS9WVP6WjZrb2DqMl4KjlqcJvvJObNgg=;
	h=From:To:Cc:Subject:Date:From;
	b=H/U/68pz8bEM4dKGRPoLvjksgIORU1tb6seRof9WeFwrE2qSx4A2SVgurKHVNg5b+
	 bLAqnA60e1CfJOXf8LrFtX5Bfv+tpL+AewrHaHI3o1mlDAxrvBjQ1ESqyQL4dIU2qd
	 ZAPTM+sjXxne4RvjhpZaw2HfFGFWST2rrnF5Nf7FQiL0+HTyFXofPGzvRClkO/fGsM
	 fRUJCbe1MlQswkC49cMRmSSdvt5u5hT8h3CFnRBj8tZYA5DglgEdDo7wnq5OqtitAn
	 hW6Mwg77//vta1dZDh/j/a1+6kQyVs1Z/V2Y9kIPJs7A5THpGKNdLlBdttW0jtIA4g
	 t6/WzAF8iNA2w==
From: Arnd Bergmann <arnd@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Stefan Wahren <wahrenst@gmx.net>,
	=?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: broadcom: bcm2712-rpi: mark /soc/firmware node as 32-bit
Date: Fri, 20 Mar 2026 16:20:19 +0100
Message-Id: <20260320152025.3501473-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[arndb.de,broadcom.com,suse.com,suse.de,gmx.net,igalia.com,vger.kernel.org,lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-278338-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.955];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arndb.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,107c000000:email]
X-Rspamd-Queue-Id: A4AD02DCAE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Arnd Bergmann <arnd@arndb.de>

Moving /soc/firmware to /soc/firmware/rpi-firmware resulted in a build
time warning:

arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi:200.4-15: Warning (dma_ranges_format): /soc@107c000000/firmware/rpi-firmware:dma-ranges: empty "dma-ranges" property but its #address-cells (1) differs from /soc@107c000000/firmware (2)

The problem is that while both /soc and /soc/firmware/rpi-firmware are
limited to 32-bit DMA and MMIO addressing, the intermediate /soc/firmware
now gets the default 64-bit addressing, which requires an explicit
translation of the DMA addresses of its 32-bit children.

Mark this one as 32-bit as well for simplicity. Note that this does limit
any other kind of firmware to 32-bit address translation as well, which
might not be ideal in case any of it runs in 64-bit mode. A better solution
may be to move it out of /soc altogether.

Fixes: e3b22edda733 ("arm64: dts: broadcom: bcm2712-rpi: Move the firmware node down 1 level")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I'm a bit confused by the changelog test of the e3b22edda733 commit,
which does not appear to match what it actually does. Maybe the intention
was to move /soc/firmware to /firmware/rpi-firmware instead of
/soc/firmware/rpi-firmware? This would also require an explict
dma address translation though.
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
index eddaf72c4e73..c3e71e6aaff6 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
@@ -191,6 +191,10 @@ wifi: wifi@1 {
 
 &soc {
 	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		dma-ranges;
+
 		firmware: rpi-firmware {
 			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
 			#address-cells = <1>;
-- 
2.39.5


