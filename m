Return-Path: <devicetree+bounces-288989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFzfCO0y52k65QEAu9opvQ
	(envelope-from <devicetree+bounces-288989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 10:18:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCC943804B
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 10:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 60310300C03C
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 08:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2BE39B96A;
	Tue, 21 Apr 2026 08:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbDfS2sz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C963859C2;
	Tue, 21 Apr 2026 08:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776759520; cv=none; b=q2FmPTgpOQ+Wf3DYX4a4tmYOxkaQGAxrmcKasQaBrslyYp0xgJgthbVxliqZN6hwA9Y34jbjdkXmxb07FXMMMv3oDmGhn7VsqALf0VayPoAyy74Ww81GUTA7Y3ADYORjvl436gjWseze9In/NJdQj5DKu2LmWK3aBNRSugPWt/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776759520; c=relaxed/simple;
	bh=Kz+3pMMySerYI/J54KnH+TrQYs1a5xtXn+eQ4dPN+Sc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CBpZ3v9hekZnyDKqYsLvotxLfLaRrSvDvwwhJdmqEqugqmVM6MDZd5c/AGVpPNhqpLZYCJyi6k6kqxGjwFlOrde1xxrQV5cyF50toVvGv1Mks+59L5aZVCECN11zlquwJXHIF55vF+V8jwqZ++kmgJ5FchMoACyi/qsMIN8mG4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbDfS2sz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F6CC2BCB0;
	Tue, 21 Apr 2026 08:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776759520;
	bh=Kz+3pMMySerYI/J54KnH+TrQYs1a5xtXn+eQ4dPN+Sc=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=HbDfS2sz/GEqyOWvWu0tVs4//pfHUfkVGOhRjoB8dyL0Vu8cSEypyhK6EOLNaVos4
	 b44YbFhG78K2fFInuoVLv43Ny1LVOdrdX5hLkn0kmHnqvg2Z30x3Jxpp8ugog0hWer
	 wb2+n0Dt4J/DuiYzWKhO7kSromRIOksl8JI0OUDAXklpNcbH08aO5c17G8foGScP94
	 O4b+qAVsHrrnyI0lnnPk7CZbn+D4n0PkXloNMPFcEXeFEIjvWOwPXmI+o0kHf7KTvf
	 lXN0gaUosglh0CE3QvNLp2Mj0gIMgQ5Lt/vywR3uGVx0qnX1anHSNGFYynVpTtx283
	 0SHJRpAGVqRVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6EBEF327B0;
	Tue, 21 Apr 2026 08:18:39 +0000 (UTC)
From: Jian Hu via B4 Relay <devnull+jian.hu.amlogic.com@kernel.org>
Subject: [PATCH v3 0/4] soc: amlogic: clk-measure: add A1 and T7 support
Date: Tue, 21 Apr 2026 16:17:40 +0800
Message-Id: <20260421-clkmsr_a1_t7-v3-0-efc00b0f9e6b@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKUy52kC/3XMQQ6DIBCF4auYWZcGRoraVe/RGEMRdVKRBoxpY
 7h7qfsu/5e8b4doA9kI12KHYDeK5Jcc5akAM+lltIz63IAcFZfiwsz8dDF0WnRrxZoaeVPLnut
 BQL68gh3ofXD3NvdEcfXhc+gb/tY/0IaMM44PVQopsbLqpt3sRzJn4x20KaUvP46grqoAAAA=
X-Change-ID: 20260415-clkmsr_a1_t7-9820984d0af1
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jian Hu <jian.hu@amlogic.com>, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776759517; l=1276;
 i=jian.hu@amlogic.com; s=20260415; h=from:subject:message-id;
 bh=Kz+3pMMySerYI/J54KnH+TrQYs1a5xtXn+eQ4dPN+Sc=;
 b=87Uj5tJYBxyT81mPVwhTw3g+vaPd1voTESeTuQlrUEWiUyQumNsXr74S/xP5tUaFeLczeJt/x
 FMyEr/5af2bDMGm7SXh++dvdWb7sGxhSTIGZ2t+KJ6syTecpUqhbSjH
X-Developer-Key: i=jian.hu@amlogic.com; a=ed25519;
 pk=zHUE+rNtH9z+Sb8au1/elWknjFQmy5QDVkBoxleuOIA=
X-Endpoint-Received: by B4 Relay for jian.hu@amlogic.com/20260415 with
 auth_id=735
X-Original-From: Jian Hu <jian.hu@amlogic.com>
Reply-To: jian.hu@amlogic.com
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288989-lists,devicetree=lfdr.de,jian.hu.amlogic.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[jian.hu@amlogic.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ADCC943804B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds Amlogic clock measurement support for A1 and T7 SoCs,
including binding updates, driver additions, and device tree enablement.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
Changes in v3:
- Place the clock-measure node after pwm_ao_gh node for t7.
- Link to v2: https://lore.kernel.org/r/20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com

Changes in v2:
- Add const for a1 and t7 clock measure table.
- Use b4 to send this series.
- Link to v1: https://lore.kernel.org/all/20260410100329.3167482-1-jian.hu@amlogic.com

---
Jian Hu (4):
      dt-bindings: soc: amlogic: clk-measure: Add A1 and T7 compatible
      soc: amlogic: clk-measure: Add A1 and T7 support
      arm64: dts: meson: a1: Add clk measure support
      arm64: dts: amlogic: t7: Add clk measure support

 .../soc/amlogic/amlogic,meson-gx-clk-measure.yaml  |   2 +
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi        |   5 +
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |   5 +
 drivers/soc/amlogic/meson-clk-measure.c            | 272 +++++++++++++++++++++
 4 files changed, 284 insertions(+)
---
base-commit: 401e5c73eedde8225e87bd11c794b8409248ff41
change-id: 20260415-clkmsr_a1_t7-9820984d0af1

Best regards,
-- 
Jian Hu <jian.hu@amlogic.com>



