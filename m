Return-Path: <devicetree+bounces-68249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 469498CB544
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA298B21A87
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62DC614A4F0;
	Tue, 21 May 2024 21:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="IdmECser"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5D814A4EB
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325899; cv=none; b=QZFbBvDOhCKQ3Q/iiMemGQmlUVVKCouu7i6ITT4//44tNY1k3izFRFagLWGd2P4tffk3tTuvkrm0n1/6FTqbiG9B6jQ256ZZ0wZ+9qeh/dJzEWQXm3oeqMhZSnIR0nWBGvsY30a90EsAmNEJZco/cwjx0v0DK9J1tjCUA2Dgl/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325899; c=relaxed/simple;
	bh=FvTzPL9pP2brqrGxHJjCJnx1XicI/3cWrkHV+Q2Dlfg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RktgFAUWp/BLxUjt6IThuI4PpB/ak8JFuQNchxUoJbJiioQxWQ6arTXMmOJzk8IuVu1ZOFh+HV4BPDtCZ6IaJ/M5kdSvYbJnNz8AL0sCsxuar3vZA2QVf4pdfXMM9FOsRTZ+tsUHUTGZI0gVdGo0IaCu3UuaH1BGfhC0na/K6/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=IdmECser; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325887; bh=TbuWClfxS444Bp9GH5+7Y6TEZ8t3Nu88jxI+lE7Avhc=;
 b=IdmECserqUEUeoVnl4SgRw4sSCMfuVLBW6y8wI7OySZP8wRzPljqEg6LbfvcvoilVqGDAF1Cg
 pRfiIDPs/j2zyAjhEwOxcY1GFxL1sw9eSN+CCrFzcov1pwSee2V90IOHKBvQIgc+fhdvrI/BvlE
 vGb/0/86rT54ZOyIN3X+aYCNx7v1BP9gE9bBMlncS3L5wyxfkom5MIqwzogshH5OlrR5Zt26cAj
 Dx+PwFXxZUek1Xb96U8KSq1hGjtNrxDrEfpTKdbXBuNOVjYKWlPXfnMbazjmD7jLSUWiLjyvaIM
 guuqiPtkd1W+VPnwoffUcDA+RLalKB/Cn9AKVT8CyXww==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 12/13] arm64: dts: rockchip: rk3308-rock-pi-s: Enable the io-domains node
Date: Tue, 21 May 2024 21:10:15 +0000
Message-ID: <20240521211029.1236094-13-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 664d0dfd8b6b0c828344af78

The VCCIO4 io-domain used for WiFi/BT is using 1v8 IO signal voltage.

Add io-domains node with the VCCIO supplies connected on the board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index f6fb90e13ad0..5c702f00b27f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -231,6 +231,16 @@ &i2c1 {
 	status = "okay";
 };
 
+&io_domains {
+	vccio0-supply = <&vcc_io>;
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc_io>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_io>;
+	status = "okay";
+};
+
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
-- 
2.43.2


