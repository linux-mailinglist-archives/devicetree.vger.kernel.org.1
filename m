Return-Path: <devicetree+bounces-278485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDFTBLjavWlyCwMAu9opvQ
	(envelope-from <devicetree+bounces-278485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 00:39:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 741EF2E2501
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 00:39:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A35DC304F086
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 23:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5573D667B;
	Fri, 20 Mar 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJY56epN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479FE3D410D;
	Fri, 20 Mar 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774049913; cv=none; b=OiyIvp135OoBfmtn1ikuTojqNYALfO+hEiWNRd9ifMhWwxQ53sA1378QXksnuLRDrsSQl/ZvxaOjD4pFPdVlzQOEXL/Lc3LieUs7Gem4hWJnBm1fk7Mjs6K0L36CMAqWjKtxwjtABUHQux2erCmueNx2DBE5D9WGC0mthipDQeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774049913; c=relaxed/simple;
	bh=6z/5iW3DDFKVaCfX37ORzpSWLPIYAUgVqmAvTxZcUJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kxMKh/d8rJrmnVw0oMKtrFu5+9Q9iI+bbTvBm3JTJD+wGPYYzOdDVnBpLvrq/KNb7GymGJbtKS/daBIwXC8/UvLNGASpU52gQ4WOokmXOyQBDUL/aJ3AM7LTSBGJqufhL1SkGOGOWwHenNLKWXW9BuIQoKHhd7QvxsWe+lHB+4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJY56epN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E0C9C4CEF7;
	Fri, 20 Mar 2026 23:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774049913;
	bh=6z/5iW3DDFKVaCfX37ORzpSWLPIYAUgVqmAvTxZcUJs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZJY56epNX5IWkpirUVgTtWNYLe0gq1CWDSRz8WhT1BXU6j2ToMWwSDJ6L+e+Na0qw
	 jjW0TbKMxgfBIZKS8HZqCH1pY2KFef4FN4Sbq4vLYerCrAzShSHpMPNK8lH+egpMrW
	 Xav44I8QDCMheTp4YnnkUNlnUym9S+ZNMqKNLnIO9YbcpPXZaWEkw6i7R8rGKDOOGZ
	 /nGrwiP4IfIHm6+Et/DrasxMDnGiFuWI1qW+ovpyLz5FhAkT8v6Kj64hO0yqv+/JiT
	 8a3WGQjqCkFHlCHDncAzliS8bbLEQdUwYsWL6+oUECV8jSHvwd5M2cIeKgyes2IBo/
	 XBTi/PI8qF+RQ==
From: Thierry Reding <thierry.reding@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH 2/2] arm64: tegra: Add FUSE block on Tegra264
Date: Sat, 21 Mar 2026 00:38:22 +0100
Message-ID: <20260320233822.2578569-2-thierry.reding@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260320233822.2578569-1-thierry.reding@kernel.org>
References: <20260320233822.2578569-1-thierry.reding@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-278485-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.15.66.64:email];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,0.1.134.160:email,0.122.18.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 741EF2E2501
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Thierry Reding <treding@nvidia.com>

The FUSE block contains a number of registers exposing information that
is useful for certain drivers and/or userspace to read at runtime.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra264.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra264.dtsi b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
index 8dbce25dfa3a..efb4d21aa4e3 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
@@ -41,6 +41,13 @@ misc@100000 {
 			      <0x0 0x0c140000 0x0 0x10000>;
 		};
 
+		fuse@1000000 {
+			compatible = "nvidia,tegra264-efuse";
+			reg = <0x0 0x1000000 0x0 0x10000>;
+			clocks = <&bpmp TEGRA264_CLK_FUSE>;
+			clock-names = "fuse";
+		};
+
 		timer@8000000 {
 			compatible = "nvidia,tegra234-timer";
 			reg = <0x0 0x08000000 0x0 0x140000>;
-- 
2.52.0


