Return-Path: <devicetree+bounces-263166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GM2pIIEJhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C6CF78D7
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61DA330131FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D88933065B;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EYyfYt4w"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C372032BF23;
	Thu,  5 Feb 2026 21:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326397; cv=none; b=kyPitbgrkcCcs33eYdmcri68iSy4oLsdP6coNpMCXvqGsIV1mG1DAL3hEdIRym8nlys3CINVafQZawah4HqV7dbs4jVmL16ZjobKuiHNxtGGRz3fMno2G0qKnBEaOFP9HKGTil1ABxBKv7MR8+WMDgfwF34dv+LmZWDZDdQsSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326397; c=relaxed/simple;
	bh=LxtDRo9j2d9jEPzrf9el54kc9kssnfvVqksCnraeOL8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZL2M44UMdGniBSsYynZlepGndgmlGJMR7ZKhLs3hP5pDYmeTQ1uO8Ryifi04JT6MI5ki2cPhD+RwCN4weupiV5NbP05CKHGQkpGrZr2BR36no+mrJV/NUmtoFYfIjnK8bwRo/J9MMnURyCKc2yZu8n52yY6mflZKjtmXkdFuF1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EYyfYt4w; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=1hNV9IUB5w5au3NsTLYYRa1ygl6b7jhZ/NpWWlTkpJI=; b=EYyfYt4wodonT7h7+8rY+/oC0I
	gBJ8FScAIPK9+39RLp1mRgx34ddagBLoY5NHqkI+JGgFD+HF4boH3ltEQgPNRWeNlibc9URsr1QUz
	d6fYCQC77CoCXGgAG8szMJT/GCaHtT6zUnH7PPib21HcIIr6gVA525F43T1947jF3kQ+7/VOlCBlh
	C1kqmuXG+1+OUfUdvGTEYBgjvm0mj3uw7bYchs4+rS1Zp5mwkxeISUEYYPugaY15/qjfOp7NCwOns
	2nrW5xlWik4Fu622bSBcM4CIgVw3JmVQF8ccp4FMireukQSZIb3YUVo3Y9VVPblh28FZ8+NQOQiNc
	PV8RZtbQ==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6lQ-007GGK-Aq; Thu, 05 Feb 2026 22:19:48 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kever.yang@rock-chips.com,
	finley.xiao@rock-chips.com,
	w@1wt.eu,
	jonas@kwiboo.se
Subject: [PATCH v4 6/6] nvmem: rockchip-otp: Add support for RK3528
Date: Thu,  5 Feb 2026 22:19:01 +0100
Message-ID: <20260205211901.490181-7-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260205211901.490181-1-heiko@sntech.de>
References: <20260205211901.490181-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-263166-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sntech.de:dkim,sntech.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E7C6CF78D7
X-Rspamd-Action: no action

From: Jonas Karlman <jonas@kwiboo.se>

Add support for the OTP controller in RK3528. The OTPC is similar to the
OTPC in RK3562 and RK3568, exept for a missing phy clock and reset.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/rockchip-otp.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 62ce22d72586..0ec78b5e19e7 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -333,6 +333,18 @@ static const struct rockchip_data px30_data = {
 	.reg_read = px30_otp_read,
 };
 
+static const char * const rk3528_otp_clocks[] = {
+	"otp", "apb_pclk", "sbpi",
+};
+
+static const struct rockchip_data rk3528_data = {
+	.size = 0x80,
+	.word_size = sizeof(u16),
+	.clks = rk3528_otp_clocks,
+	.num_clks = ARRAY_SIZE(rk3528_otp_clocks),
+	.reg_read = rk3568_otp_read,
+};
+
 static const char * const rk3568_otp_clocks[] = {
 	"otp", "apb_pclk", "phy", "sbpi",
 };
@@ -376,6 +388,10 @@ static const struct of_device_id rockchip_otp_match[] = {
 		.compatible = "rockchip,rk3308-otp",
 		.data = &px30_data,
 	},
+	{
+		.compatible = "rockchip,rk3528-otp",
+		.data = &rk3528_data,
+	},
 	{
 		.compatible = "rockchip,rk3562-otp",
 		.data = &rk3568_data,
-- 
2.47.2


