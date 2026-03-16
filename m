Return-Path: <devicetree+bounces-276173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEGIK+oFuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:30:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B36DE29A662
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2311F300F7BF
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3EC9396573;
	Mon, 16 Mar 2026 13:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b="H7NwRCY6"
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C73393DC8;
	Mon, 16 Mar 2026 13:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.42.104.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773667810; cv=none; b=hBIHDm5TM4tC1OaaeXE61TTzz5/PawcvAuGdNEN+43qBsRLPM4GW1mINql/yCLP7xg9Ktmzg9z5X3hJ6VdMa88TbFehOO7ij0kj1RSp/YVTOuSPNkWuoQ/c1JNLojS33ZjRcyzgkPD9rErCjTLXFype/bX8lStnZoY+IdYXDRzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773667810; c=relaxed/simple;
	bh=m6I+53NOmP/FBOxIqYA7/Pg65sLmXjAEQcj2H89XEVs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hUGh0lw7PWTM3OZYhFI8jxuAkj9WAPrd4jN77wa0xeEa1OkWDcGDMEA/n3q8cfd7ydNRDc2W8sADcy0ly9x1l7dYCx2vcpbSCIMqsbd43mSSBkdLiUV8lmen3hjG9xDAaGvbtqZVBIbRCmRcfxs3ndQ/bdQ9xu7lyJmfztDop2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=fail smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=H7NwRCY6; arc=none smtp.client-ip=92.42.104.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=superkali.me
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=55aVh5zzvysKO2K9tzF58PzklumqwmTYgr4KvXL1AMU=; b=H7NwRCY6gSaF/hEX5xAa1uMOQA
	GB57iDFAq2szDdlfPonj3pBkpV5FjyhtB7pnRN2NPMOB3OI6P/KBa5WAUbnxQO1PXQDY+J9xh2TmM
	986G1OZKxHIiSr+7GoJqPx1f9aDlBmBULvqacNCTyE3XhDJrw6t2W0+qk3smDbmTA8sMRpnuNAkCE
	YfQAtFlWE82qSozckVuiDQggb+RyDIQzAOYJkGvkwEKcPdpHZ8n+SQ8RTMa9AFZd7yMUfk3eUYEdf
	cwGFMWFIoFzyUew4YMzL+HUXTcuU59w5ggnsnd6cqq3B1rcyldSz7b5r1jfueaASZXw5I9QIyuI18
	/ha5rJpg==;
Received: from [185.94.132.237] (port=54871 helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1w27eX-0000000BDZB-3ZPN;
	Mon, 16 Mar 2026 14:06:37 +0100
From: Daniele Briguglio <hello@superkali.me>
Date: Mon, 16 Mar 2026 14:06:31 +0100
Subject: [PATCH 1/3] dt-bindings: clock: rockchip,rk3588-cru: add I2S MCLK
 output to IO clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-rk3588-mclk-gate-grf-v1-1-66fb9a246718@superkali.me>
References: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
In-Reply-To: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Daniele Briguglio <hello@superkali.me>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773666394; l=1283;
 i=hello@superkali.me; s=20260316; h=from:subject:message-id;
 bh=m6I+53NOmP/FBOxIqYA7/Pg65sLmXjAEQcj2H89XEVs=;
 b=xAes7lPb1gny0pILU/9Erd3+j4Q5USwAbUm9jmw8vsUJyLgpuRAnWHKMxnvBSHKyK3DQ6Xx1n
 tf9FDQsp2Y7AE8JiWH5tBF71qV134hxJEhMK0GHVYVyIDmukk6tmu8O
X-Developer-Key: i=hello@superkali.me; a=ed25519;
 pk=5tynRWQdL93CDcapJ73FkcCRY2PeBOJOIAoIhRig53U=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spamd-Result: default: False [3.04 / 15.00];
	DMARC_POLICY_REJECT(2.00)[superkali.me : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[superkali.me:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276173-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_GMSV(0.00)[hello@superkali.me];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_AS(0.00)[hello@superkali.me];
	DKIM_TRACE(0.00)[superkali.me:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	HAS_X_SOURCE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_X_ANTIABUSE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: B36DE29A662
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add clock identifiers for the I2S MCLK output to IO gate clocks on
RK3588. These clocks control whether the internal I2S MCLK signals
reach the external IO pins through gates in the SYS_GRF register
(SOC_CON6, offset 0x318).

The following gate clocks are defined:
  - I2S0_8CH_MCLKOUT_TO_IO (bit 0)
  - I2S1_8CH_MCLKOUT_TO_IO (bit 1)
  - I2S2_2CH_MCLKOUT_TO_IO (bit 2)
  - I2S3_2CH_MCLKOUT_TO_IO (bit 7)

These are needed by board DTS files that connect external audio codecs
to I2S interfaces, where the codec requires MCLK from the SoC.

Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 0c7d3ca2d5bc..7528034cff56 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -734,6 +734,10 @@
 #define PCLK_AV1_PRE			719
 #define HCLK_SDIO_PRE			720
 #define PCLK_VO1GRF			721
+#define I2S0_8CH_MCLKOUT_TO_IO		722
+#define I2S1_8CH_MCLKOUT_TO_IO		723
+#define I2S2_2CH_MCLKOUT_TO_IO		724
+#define I2S3_2CH_MCLKOUT_TO_IO		725
 
 /* scmi-clocks indices */
 

-- 
2.53.0


