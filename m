Return-Path: <devicetree+bounces-277802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aM9bId8AvGmurAIAu9opvQ
	(envelope-from <devicetree+bounces-277802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:57:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E315A2CC484
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C2D2304C090
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC27329AAF7;
	Thu, 19 Mar 2026 13:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="OZIuQDm3"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-190.mail.qq.com (out203-205-221-190.mail.qq.com [203.205.221.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1FE1F4CA9;
	Thu, 19 Mar 2026 13:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.190
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773928604; cv=none; b=qMO0M9p9PW+PZfPqzYzt6LGQ0cQpAYMGoGhxh7JDb2iZbYEPUDNVUASrjLOWtYGMwlv7Ys6MmkphJC9GFuLGzM1QEFGwfwuJX/kzanyRKJjpJ3lz50nQNBg1fputX+I2ijEMWZzGPDrWVGqOYGN0tZ7KMJ7aTkAuVCct2Ap97AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773928604; c=relaxed/simple;
	bh=avfmAziUgd+Ov6BKrmAwLEeKjAqKUlid21+dN0pNK20=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version:Content-Type; b=DkImdgJxd89bJThP/EUoqkP3z5zoBn2tKcpY9OsDD15GBN5lLKzV6Lk0U7JYVkVJp4LKqwQX/3+Hj+S+6GuAosL1SLdOXsSyfTI+2iDW400pEBkSc0khOxCZ1zfjx8l/8HL564yK+iBX1SCyqAjKWcmjIxIXIH33BqFXWe0O+uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=Red54.com; spf=pass smtp.mailfrom=red54.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=OZIuQDm3; arc=none smtp.client-ip=203.205.221.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=Red54.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=red54.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1773928592; bh=QB0PAHjXJtrNdDodBFe2YFA8Ial1S7MV3yYq3bW3Z6w=;
	h=From:To:Cc:Subject:Date;
	b=OZIuQDm3gsJ6HK/EUYVIO3wMK0ytRSedyWKrnCtPb5CkNhT/8KFr3ylTT5tWlUkXl
	 qv00O8rDSK5qCU5bFxew0+J2cFXVSLGdUfV7LERaH28xB8ocyDriFP/Ylg7DW9+3Gx
	 jwpExommlITWr96++S3IYVuTMjiDPa+MN7wICA98=
Received: from mail.red54.com ([139.99.8.57])
	by newxmesmtplogicsvrszb51-1.qq.com (NewEsmtp) with SMTP
	id E0D89E56; Thu, 19 Mar 2026 21:56:13 +0800
X-QQ-mid: xmsmtpt1773928573t778m5lcy
Message-ID: <tencent_78E7E3F6991FB4403D5ADC9E6A6BC3BF8307@qq.com>
X-QQ-XMAILINFO: MMwjR1C73eIsPYIJmh7X440ZtM80sQDjF5nMcIXzGUvGMjBhReA1DB52+T3lWR
	 QhpCcXdclI30GKKwQJYCZkIwo8dfwpB6L/QUmeYluB8iqtYfSXmy5XkrTAZOO5c5W8vYovS8++jB
	 h6bTkvZtZ2DRpX+jMd2ShguYw60HjMWVTNT+15ZKfuMd9IYwx/iB0Eeu07ijZqCHRKRhlS9WB8M5
	 CZypwXnrr28c0pHMeVSjHb6GRR9JnrCq6GxCP5lQ4icIouxeFfH0aqLzQdhuz5W3WoWGSM51FwSP
	 WwcduP74YJbH1IvUVHwoVAaQVteqItobujcROXy7j2FYQSB4ZuClaGLd56UYrZrtnRsoZ8ufu70x
	 c9zUoufIFbzfavZHZwwjJwyHW/3/r0vb+TJ1u1WsK3Jn8vhWZtI4dZe6U04n2+5uQYC/3h0c3tzb
	 9+sasxJdw658XllPyTPuYhRah0Dhsjwx01Ot4LOmvXhW4IwwOl7v0XUCG4hbdREOIie9Ju2pQYJd
	 XV35BUVCjfVFG+T7gwPyTjY3R7RLMeThYLLGb1C/5HVCua+50dj/2y5yUDgbpk6OePKGe1ccDtJx
	 zoU0CkUdWsEwN6T0QSe5DAasSRFn2RiORcYWIVhNFg3P10vKHvYT711441sMuF0PLSb/hhmMDg5X
	 1C+BWFJ4laxINeG2uujy4GiddwXv5p+AXeXpWSMQf/BMBulG4/aVVg/n6tv5IOxUr3zDoqXgAASw
	 8JKz/nLfH2yrbaNyvPPmOhgdUJ1Onabcq4/MEZN5gdwfvjMcxI4UhqukGn8Ji3jt9IHXYaeGgTGf
	 3NFa5xlrCxUjq9B/mtyBZAcnNFjmCH1gSkglRCL8RbnEkijTxRaE1XIwGptZ5bWL8ZT9ZqrigWnx
	 DVSluNe16zQrIzf1zRN1vqFmaflAX5Qn6oxcwpNTw/ugjl+69SKyEwagfNn4wB6OGdGq54R9Y33q
	 WuKUzotjj6mvYgbNstp1lfvTnKyetNJtt96t/wfgZQUHbozKEcziyWB7xAaLdrarA8zFHL/Lhbz4
	 ruqyz3Q5O0WmvmoRNSQIe9hkpUBWcinIxIOmO9Q3mnxFyKul1LlpDrX1txwJXKoOaDf8wD8I+QH/
	 +oekJ6I3/x1mxXq8/UXZ3XX1nN1iA5o7rvz9GOLZAo0lkPDLxcPJ+/5wCWMX5JLivRCi6X
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
Sender: yeking@red54.com
From: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix RK3562 EVB2 model name
Date: Thu, 19 Mar 2026 13:55:00 +0000
X-OQ-MSGID: <20260319135500.69993-1-Yeking@Red54.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[red54.com : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Yeking@Red54.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qq.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qq.com:dkim,qq.com:mid]
X-Rspamd-Queue-Id: E315A2CC484
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The model name should be "Rockchip RK3562 EVB2 V10 Board".

Fixes: ceb6ef1ea900 ("arm64: dts: rockchip: Add RK3562 evb2 devicetree")
Signed-off-by: 谢致邦 (XIE Zhibang) <Yeking@Red54.com>
---
Reference:
https://github.com/rockchip-linux/kernel/blob/develop-6.6/arch/arm64/boot/dts/rockchip/rk3562-evb2-ddr4-v10.dtsi#L16

 arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts
index 6a84db154a7d..387062eea520 100644
--- a/arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts
@@ -13,7 +13,7 @@
 #include "rk3562.dtsi"
 
 / {
-	model = "Rockchip RK3562 EVB V20 Board";
+	model = "Rockchip RK3562 EVB2 V10 Board";
 	compatible = "rockchip,rk3562-evb2-v10", "rockchip,rk3562";
 
 	chosen: chosen {
-- 
2.43.0


