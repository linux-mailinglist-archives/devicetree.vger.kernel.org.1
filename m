Return-Path: <devicetree+bounces-278190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOceFrsivWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:34:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 582A32D8BD5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6F4BB3007210
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B2338F258;
	Fri, 20 Mar 2026 10:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b="RpGwKmMk"
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17592D3EF2;
	Fri, 20 Mar 2026 10:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.42.104.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774002870; cv=none; b=FvQz6evaUUKzyO1gwSbaD7jaJ18fbSW+lH/kwNWSMoSLCilsPYlQ4KxAf16E5Fw6yvTJeC9SXgMPjlOJ5s3V17sbmbkQsD4IaZ1NUHf4HTXdF1083K1qqugJHM1Czk2ZAF/ngw1Kx47Kr6ceGMThBhuyMo4ZCrQHeQAF7+oM5Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774002870; c=relaxed/simple;
	bh=5JMQi3Lx1keozzyCzZeW3fPQ3kU7jxXfjXJ4iYsKOI0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FtLF1B2Q06UaHTLWGBGWdngH8ql984oVgT3FrHrRZSqevVmhu+CWGnvAeY0j78iXIArYLxx+8H3g1EI05zz6PxlA0H9+1dMfiw6Lrqtvgjg413TYU8fZIZAwBy/w2ZUa6s3BJkenKsQhBnxpEKnS3NVZNe5wPOx45WY3G9vN8iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=fail smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=RpGwKmMk; arc=none smtp.client-ip=92.42.104.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=superkali.me
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tmhqVAw1SequYpgo9JNsSALFszo5CegfJjcyU0KkUec=; b=RpGwKmMkFnNRolhTVnMlRyUg92
	Dp3YSVuY15IcItW/tFRB0tDXwbM5Q2PcqkMmj0WZUaZnJnojGZfY1qsvHoVpHiJ2wnVwlvSmDoIXy
	cuDKNL/cyTec+TDTQpI0TQyUantcqoKllthAThRu2BlpLvHIyGkaoO8wi3ym0uFVppFaF3rAnIq/l
	vZXrfK8rboxyus9orcLR+Nr7AtCftBQl2HEQvvFPT1l2XnPSPK56qVzyHIhBNZ9T8HrkUiTSpfaOr
	UUNBr5NRSl8PJJeonqjq2Dma1GjZ1NAu3VvH202TxbeUTO5gf4LdgEQWhK8v+JdXnkw9mnIxEzrPV
	Y6VAuLrg==;
Received: from [2a0d:52c0:500f:0:89f2:a47:418d:affd] (port=53820 helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1w3XBO-00000005JXw-0yui;
	Fri, 20 Mar 2026 11:34:19 +0100
From: Daniele Briguglio <hello@superkali.me>
Subject: [PATCH v3 0/4] clk: rockchip: rk3588: add I2S MCLK output gate
 clocks
Date: Fri, 20 Mar 2026 11:34:12 +0100
Message-Id: <20260320-rk3588-mclk-gate-grf-v3-0-980338eacd2c@superkali.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4XNywrCMBCF4VcpWTuSm2l05XuIizSdtqFXkhqU0
 nc37UoEcfkfmG8WEtA7DOSSLcRjdMGNQwpxyIhtzFAjuDI14ZQrKpgC34qT1tDbroXazAi1r8D
 Kgmkqha4sJel08li5587e7qkbF+bRv/YvkW3rHzAyoKBUVZwNlypn+hoeE/rWdO7YI9nMyD+d8
 w+HJ8dKq0tjCpor/uWs6/oGNEi1dwMBAAA=
X-Change-ID: 20260316-rk3588-mclk-gate-grf-c4b180438fc0
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Daniele Briguglio <hello@superkali.me>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774002854; l=2850;
 i=hello@superkali.me; s=20260316; h=from:subject:message-id;
 bh=5JMQi3Lx1keozzyCzZeW3fPQ3kU7jxXfjXJ4iYsKOI0=;
 b=uw0YNLgWoLe9+6+ItxFlyyHTRg7XBq+a9yDKChJct3OW/9z/rrSVHb4cOCfab0HuJGXFcNqdm
 Ftdw9P9IeoiDl6cnavwxNhOckTRjarf+VNUy+zaWKXam9Sxe6j1Obrl
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278190-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[hello@superkali.me];
	HAS_X_AS(0.00)[hello@superkali.me];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[superkali.me:-];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	HAS_X_SOURCE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.107];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,superkali.me:email,superkali.me:mid]
X-Rspamd-Queue-Id: 582A32D8BD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On RK3588, the four I2S master clock (MCLK) outputs to external IO
pins are gated by bits in SYS_GRF SOC_CON6 (offset 0x0318). These
are set-to-disable gates with hiword mask semantics.

The TRM documents the reset value of these bits as 0 (gate open),
but in practice the Rockchip firmware (BL31) may set them during
early boot, preventing the MCLK signal from reaching external audio
codecs. The kernel should manage these gates explicitly so that
audio functionality does not depend on bootloader register state.

This series adds GATE_GRF clock entries for all four I2S MCLK output
gates, following the same approach used for the RK3576 SAI MCLK
output gates [1]. Board DTS files that need MCLK on an IO pin can
reference these clocks (e.g. clocks = <&cru I2S0_8CH_MCLKOUT_TO_IO>),
ensuring the output gate is opened when the clock is enabled.

Patch 1 adds the four clock ID bindings.
Patch 2 removes the grf_type_sys exclusion from the aux_grf_table
        lookup, which prevented SYS_GRF-based GATE_GRF entries from
        being resolved on RK3588 (where ctx->grf points to PHP_GRF).
Patch 3 adds the RK3588_SYSGRF_SOC_CON6 register define.
Patch 4 registers the SYS_GRF as an auxiliary GRF and adds the four
        GATE_GRF clock entries, each placed after its parent MCLKOUT.

Tested on a Youyeetoo YY3588 (RK3588) board with an ES8388 audio
codec connected to I2S0, and independently on a Mekotronics R58X-Pro
(ES8388) by Ricardo Pardini.

[1] https://lore.kernel.org/r/20250305-rk3576-sai-v1-2-64e6cf863e9a@collabora.com/

Changes in v3:
- Added separate patch for RK3588_SYSGRF_SOC_CON6 register define
  in rk3588_grf.h, replacing magic 0x0318 (Nicolas)
- Dropped Reported-by/Closes tags from patch 4 (Nicolas)
- Added Tested-by from Ricardo Pardini (Mekotronics R58X-Pro)

Changes in v2:
- Patch 1: shortened commit message (Krzysztof)
- Patch 4: added missing #include <linux/slab.h> for kzalloc_obj
  (kernel test robot)

Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
Daniele Briguglio (4):
      dt-bindings: clock: rockchip,rk3588-cru: add I2S MCLK output to IO clock IDs
      clk: rockchip: allow grf_type_sys lookup in aux_grf_table
      soc: rockchip: rk3588: add SYS_GRF SOC_CON6 register offset
      clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK output to IO

 drivers/clk/rockchip/clk-rk3588.c               | 24 ++++++++++++++++++++++++
 drivers/clk/rockchip/clk.c                      |  7 +++----
 include/dt-bindings/clock/rockchip,rk3588-cru.h |  4 ++++
 include/soc/rockchip/rk3588_grf.h               |  2 ++
 4 files changed, 33 insertions(+), 4 deletions(-)
---
base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
change-id: 20260316-rk3588-mclk-gate-grf-c4b180438fc0

Best regards,
-- 
Daniele Briguglio <hello@superkali.me>


