Return-Path: <devicetree+bounces-274149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBqDEzd9sWmACAAAu9opvQ
	(envelope-from <devicetree+bounces-274149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:33:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A9D2656E1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61A79303D30A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991EB3B637F;
	Wed, 11 Mar 2026 14:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="OCbYZYhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE7D1EE7C6;
	Wed, 11 Mar 2026 14:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239571; cv=none; b=PO3XGpRFkvQPSsY2wo43QZqVjAiATG1hJrM7xw0TypdQVaBZZvHcDv5c5wPAAb94uJwdRUCPu7yQkNOEnr8rPHVWCHWm3xvt7K911+KGUpbKIW2/u0fwZgNDaFD50Ts9CiK95eoxLswe1MNf685yymraWBRpeekaRl5HV3LVZ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239571; c=relaxed/simple;
	bh=wCEZMFEIe9N1fRThoO8UVaTOZnxRpccdK7arnQBKo6c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CzIo94FE5xC1Q26PX/oYRMumaoq0BdR/jhdDulvGIh8/49bIZV49RASn+LjAQOEGmyG9veu8rWWNpL/ZHgiRtJyW/v6zLaASgT3f6I+ijxo8BAA8+sVa2WZUATyXOIoxoBXcIr4snLt2mHzZVKwcm5X5Jv6JrpzEt8zwGC/8h5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=OCbYZYhZ; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=Kkt3A1e6l/KLgh24uOCTImlNQ3maInjpGSRh0bHez1U=; b=OCbYZYhZQZHRhApD9dltpqMqGE
	exnAuIcBSkHoBUv8XAPktsZGgy+TznUd2rbhWKCmRQyAfyzF1GSV9gTahWyfEPFgDSl07LG/lSxgf
	HuR2ZKlys9vb/3zv0T2FgDun2nTOWbllECxBs83qQNnQoyEHqQULl3r4Uf+gck3NzmtCZclWL1Wjt
	OKimXou+JaXkpAvx46qICQKiJvtmU8JE29+b9r2vEvxOrrSO/51/quZtmVimgEIQdQ/0U1uRaE91u
	FmZNY6I9cl68khuX2aXXDb9hWmwjZ0rj3cXv3CYvJ0RBQnCFucXRTg5BbZlWvPE6PsG9INRChP8ho
	Qka1h+xA==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0Kc5-000Or3-1z;
	Wed, 11 Mar 2026 15:32:41 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy03.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0Kc4-000GoI-39;
	Wed, 11 Mar 2026 15:32:41 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	linux-clk@vger.kernel.org
Subject: [PATCH 0/6] TQMa91/TQMa93: display support on MBa91xxCA
Date: Wed, 11 Mar 2026 15:32:03 +0100
Message-ID: <20260311143217.1700704-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27937/Wed Mar 11 07:24:53 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274149-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A8A9D2656E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

this series adds support for parallel and LVDS displays on MBa91xxCA, both for
TQMa91 and TQMa93. The parallel display is attached directly, while the LVDS
uses an LVDS-Encoder. To actually work it needs the pdfc driver from [1].

The first two patches add required (Video) PLL configurations to achieve the
necessary pixel clocks for both displays.
The last 4 patches add the overlays for TQMa91 and TQMa93, although the
overlays for TQMa91 use the same overlay for TQMa93.

Best regards,
Alexander

[1] https://lore.kernel.org/all/20260303-v6-18-topic-imx93-parallel-display-v11-2-1b03733c8461@pengutronix.de/

Alexander Stein (6):
  clk: imx: fracn-gppll: Add 333.333333 MHz support
  clk: imx: fracn-gppll: Add 477.4MHz support
  arm64: dts: imx93-tqma9352-mba91xxca: Add parallel display overlay
  arm64: dts: imx93-tqma9352-mba91xxca: Add LVDS display overlay
  arm64: dts: imx91-tqma9131-mba91xxca: Add parallel display overlay
  arm64: dts: imx91-tqma9131-mba91xxca: Add LVDS display overlay

 arch/arm64/boot/dts/freescale/Makefile        | 12 ++++
 ...3-tqma9352-mba91xxca-lvds-tm070jvhg33.dtso | 56 ++++++++++++++++
 ...93-tqma9352-mba91xxca-rgb-cdtech-dc44.dtso | 66 +++++++++++++++++++
 drivers/clk/imx/clk-fracn-gppll.c             |  2 +
 4 files changed, 136 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca-lvds-tm070jvhg33.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca-rgb-cdtech-dc44.dtso

-- 
2.43.0


