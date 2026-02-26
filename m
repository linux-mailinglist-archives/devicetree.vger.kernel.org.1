Return-Path: <devicetree+bounces-268657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJD1H+UBoGlrfQQAu9opvQ
	(envelope-from <devicetree+bounces-268657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:18:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4F11A26AF
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2609330417A3
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DC1E38F92B;
	Thu, 26 Feb 2026 08:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdrD0Mou"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BC338F229;
	Thu, 26 Feb 2026 08:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772093900; cv=none; b=t86iTHFbrukCsQN1f8uDxbuKBHSaSaocrEdeuJyl6cvVQVwLskwlf7UH75tZfunKqU8CyDBQJ4B1ROaLYn0aitjazxj3fHSCIM8SQMzb+TIJVT2sEO2vavkOCBdCwoyS0bDzdJxLNxxN1qxeVfJzC88o6O3vNvPNu7iCDekgzIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772093900; c=relaxed/simple;
	bh=MEIK9bAonaqTMisJPkjUMTcLudbo3u5sZqZBpvbIB+0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Iv9oUzy3vcctIxC7vx2K6kBH/zKy4+ycZnueWThMtEimWmKyGh7EwH9eTlw4P2e+I4QDob8fF7GctbCS6GqmdUXdpeu72cFWYGumF81drUKSS9xcbg6XYcFr6QG9CkT5wZ+LSL8rTbFp2hpVyCJO78YZ9Zo3qD9ZZzLIBFNvmNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdrD0Mou; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 308EDC19422;
	Thu, 26 Feb 2026 08:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772093899;
	bh=MEIK9bAonaqTMisJPkjUMTcLudbo3u5sZqZBpvbIB+0=;
	h=From:Date:Subject:To:Cc:From;
	b=mdrD0MoulcE3hvsq+DbnqJn2wHesZBge4nDY/7hXL4B3kOIcJBacjzAaRX09/CSKm
	 2vf13Of9r2e6+yInQosbgdDfDcPnV8b65rWVF3KpiDqmwvUEK1H++9U2tX9J34ySHa
	 WHoapQzMVIUO3qwhdXzfSapuTKkPXO3kz9KbSnO8oIUewfq+9gWyHimsXV+0MwtXs7
	 UQHVbhxwF6pjQ7EQt4/zICK+JStVu5FhMRMHzzkOOP9LFpZrDI98gg2r7ekdeWi2gw
	 xLLflivY0+5svHa7VWDndGmvR6YZJoNYBeTMQRSlzN6D7EZyl1yY0donOsYyTIw5z3
	 esn2t9/0J2e9w==
From: Yixun Lan <dlan@kernel.org>
Date: Thu, 26 Feb 2026 08:17:55 +0000
Subject: [PATCH] riscv: dts: spacemit: pcie: fix missing power regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-k1-pcie-fix-pwr-v1-1-94b493cd27e5@kernel.org>
X-B4-Tracking: v=1; b=H4sIALIBoGkC/x2MQQqAMAzAviI9W7A9TPEr4kFmp0XQ0YEKY393e
 AwhyZDEVBKMTQaTW5NeZwVqG/D7cm6CulYG7th1zA4PwuhVMOiL8THsAzuigZgWD7WKJlX9x2k
 u5QNLtrPHYQAAAA==
X-Change-ID: 20260226-k1-pcie-fix-pwr-7f26118121ac
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Alex Elder <elder@riscstar.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1949; i=dlan@kernel.org;
 h=from:subject:message-id; bh=MEIK9bAonaqTMisJPkjUMTcLudbo3u5sZqZBpvbIB+0=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpoAHDFweVSpXqP1GdH2N3rzRsEFkwSU6zAJFJj
 GFXCeWkutuJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaaABwxsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+13WxAAgYPAolKHGdv6bCQUFjtMpZGrsG90LspaVZap1XKgJ9x2ed9s1nKFH
 IBunzIGn9g796xq3ly0CK5SfputpNpYW0ZNjQLaCjy6DXvOSXbD1AxDviEvTBO1nslXc09IqfXi
 ZHGQWr/Bh2YzNByCSJiK4Ej41UQS7engrmTU2FZ94JGDarDQuuQ4d8TvJK6xr7zL3YHDKypQBdD
 D0O+J13Cm6xvQ+azNZk+zDZZxyqLWvjsPMUi1zwlQgrwFpgJgaOjrNp1SQajqbN/fXfrm3XW8qe
 7DELIq6sOIB17DFfYrNgflW7Z/cS9gMKwmZH0FVu6jnfvy4WOm/rDMQuN/uJbgKsb3kqyP6ihs+
 zufIAJGJQ8dkLffmrW8Z1hwisK0O9UXkkx7XcrcdO+dmCe/1J1IoC7k+kwGG+NipGLyGMbafE77
 Yc+gdYVer6GeG1/VwVy1vIYIuBm76CMIYD8U2flA1GrOKLK+9m2WDcoEenvW91vqIGRhwrMM+v1
 q4FVjLpLYpzYaFbv+BR1F33xZytlm+5vSY/EovGbdCV+MGXLEI2pMoXxEmIOvOuetlYfuSCbyUj
 aaT3BK4/2xrMr5qLJPpM5yRWZT0xdmSJkIjGfyxB1ohhGnARqHdXgeMxk76Xo9Oeibo+54RjhBW
 wHwBYjo3Bv+j3coR+k/4Eqw8JdFKjw=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268657-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,ca400000:email]
X-Rspamd-Queue-Id: DE4F11A26AF
X-Rspamd-Action: no action

The PCIe port require 3.3v power regulator for device to work properly, So
explicitly add it to fix the DT warning:

arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: pcie@ca400000 (spacemit,k1-pcie): pcie@0: 'vpcie3v3-supply' is a required property
        from schema $id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml

Fixes: 0be016a4b5d1 ("riscv: dts: spacemit: PCIe and PHY-related updates")
Reported-by: Conor Dooley <conor@kernel.org>
Signed-off-by: Yixun Lan <dlan@kernel.org>
---
This patch try to add power regulator to PCIe port node, thus will also
fix the dts warning when doing DT schema check.

Please also note driver of spacemit PCIe request 3.3v power regulator, see
drivers/pci/controller/dwc/pcie-spacemit-k1.c:312, it's not necessary
because the controller itself doesn't need it to work. But I do see other
drivers that request the regulator in host controller driver, for example,
to power it up early before PHY initilization. I'd intentionally leave
this problem out of this fix, and will do further check & address it
later.

Problem reported by Conor Dooley, so I added a R-Y tag for him here.
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 5971605754b3..51f6c6a774b0 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -305,6 +305,7 @@ &pcie1_phy {
 
 &pcie1_port {
 	phys = <&pcie1_phy>;
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
 };
 
 &pcie1 {
@@ -320,6 +321,7 @@ &pcie2_phy {
 
 &pcie2_port {
 	phys = <&pcie2_phy>;
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
 };
 
 &pcie2 {

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260226-k1-pcie-fix-pwr-7f26118121ac

Best regards,
-- 
Yixun Lan <dlan@kernel.org>


