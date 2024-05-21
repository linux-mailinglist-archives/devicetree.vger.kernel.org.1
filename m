Return-Path: <devicetree+bounces-68256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 915A88CB55C
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2E2FB20A6B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF95149E11;
	Tue, 21 May 2024 21:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="tqqoAWob"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FBF149E0E
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716326591; cv=none; b=LT1Mr+tTzAaFIJv6BRZUFP2oIXemsKPz42ELkxpRKYflJAhuR2+TBKnkEnq89fCd22+kcXmajAYEIyp8PFz/F/f7IsurjcQtvqC5+gMSkluSZ8id9wO/pai/PLG4tSD/CNk9g3U+UnwGYutruJX5bRXSNWxsUHe9Hu1embAvU08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716326591; c=relaxed/simple;
	bh=vdnxgbNWMRmyyiOXub/U8xA2a2lGUmNEyOZiMq5Q6Rs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eeSaoV4Ws8/zTvic9Zz10Wm1p46mRrKgTeiVUlNhC2mBhP9QFA3lsJ+qKkg3R+pP5ecUhySxsuA1fR9XII32NAwUZ91dD246sqv2v52VvKkigUCTd1MyJwOniaN6muUXhtA2mdW/KqDMX5hLeG04qibSKJ0S3QfXxxEYrvRK99Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=tqqoAWob; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716326583; bh=OoiAXuzNmsgIuRUNSx8gF6sy2Z92yBxfUE4RrLaG18M=;
 b=tqqoAWobB9Xg9Ug6geKeqmXRc2Nl7xasg6SYAsgEaedBfWNwdRKyfjmeJWcfzU6QiIzZVbrxf
 gRSOvpNbw7HdEv7mRZtlrt3+anGAdZGk1dbOF2aSO4qNapTAt7POhUDp7OOHuklUmuhwlR6qzSG
 OXWPyXhvySloRxxohsjUDcePkYB/Ql3m04U2zotbWC/0+m2ACTh1+GZPdhSHgLnH6sGMCXQKWaj
 d5oPfgIjCbWphrflIpTOR5sAD3ltmbX8mfWqNHhpRIaHto4+m93nj1Uhtx3usPaQPWjIk3qBZ6i
 dShs1pG4O8Au9IGvQSzl15RgTP4Nr+0yiEQagzjAkMwg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK S0
Date: Tue, 21 May 2024 21:22:42 +0000
Message-ID: <20240521212247.1240226-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521212247.1240226-1-jonas@kwiboo.se>
References: <20240521212247.1240226-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d10b18b6b0c828344b0fe

Add devicetree binding for the Radxa ROCK S0 board.

Radxa ROCK S0 is a single-board computer based on the Rockchip RK3308B
SoC in an ultra-compact form factor.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51cdaabaf0d9..77469270b271 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -814,6 +814,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK S0
+        items:
+          - const: radxa,rock-s0
+          - const: rockchip,rk3308
+
       - description: Radxa ZERO 3W/3E
         items:
           - enum:
-- 
2.43.2


