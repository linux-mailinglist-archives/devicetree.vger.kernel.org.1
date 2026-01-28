Return-Path: <devicetree+bounces-260291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDkWHoLgeWm50gEAu9opvQ
	(envelope-from <devicetree+bounces-260291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:10:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F19A9F444
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3737F300399E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 338CA2DA757;
	Wed, 28 Jan 2026 10:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWI/646Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104BA2D0C92;
	Wed, 28 Jan 2026 10:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595006; cv=none; b=g+1H+zav9w3aoOlpfn3C/L+liBSclX7IMJaBPrm6FUWjSe1+JvnBeG5xQRsOqzq0YepsW5/m8juWQVz6bI6Fp1l/YbfbAhjvDToVegBh0tRzf0bLrs1XyjSHY6bfNRnt/+zwwcvBcpMSfG1jmDwbx8qtcSJmqrWQQFUhCvGJr8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595006; c=relaxed/simple;
	bh=X4SuxCleKrrzGAtIw6zL8YaUitgC/KQKVkQAuw87xNw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kfxuBMT0jzyAVdrfol5e4JnRrpRz0WxHUW2Yv6xrKxfODbDKXbwqo7NzgWimXi+6KpBPmMvr9lCefYQe0+et+07b3VFE3bkkKhUOZ/RHDNhTtLKmG7Gcq/Ad5JGdt4I2LcYTCo2YegJPlb32ukcBMdWlx2omi3nksazQIrB/MpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWI/646Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96013C4CEF1;
	Wed, 28 Jan 2026 10:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769595005;
	bh=X4SuxCleKrrzGAtIw6zL8YaUitgC/KQKVkQAuw87xNw=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=KWI/646ZWVuGRf5tFzDPJ4w9K3A7JCMYnuNMLF0llsEkzOuxNXHldoxH+a9wmKyNu
	 Ndq+MUk86Qhm/AQUJn+zf0T/5u6EtDSfriLeVBPb1Ky2x5R7CszDRXOUuvsfHzEJwm
	 OVVcf3GSmrbeDaJsDO09niZnqPN8zEp9JZLrSlVOlNwgftzUOei7jQd+2w2ugJd2ss
	 ile1Yw4zptEv4pk7crN7rqCOWkHra54zWoKeIhkhuPXK7y5eGO8MPGk+J/NnGOrqKg
	 8/HhN/fvuuJ1TfzX17SYIyLf/Ww+Y8YdYra632FFPYV74f9ybAMj18pbc1o3HY2Nz8
	 Cbx1aJQKM1XGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 835F6D35693;
	Wed, 28 Jan 2026 10:10:05 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Wed, 28 Jan 2026 10:09:54 +0000
Subject: [PATCH] arm64: dts: amlogic: a4: fix pinctrl node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-fix-a4-pinctl-node-v1-1-617a1f539902@amlogic.com>
X-B4-Tracking: v=1; b=H4sIAHHgeWkC/x2MWwqAIBAArxL73UJt0esq0YfpVguhohGBdPekz
 4GZSRA5CEeYigSBb4nibIa6LEAfyu6MYjIDVdRVNQ24yYOqRS9WXydaZxg702+jpnFtSEEOfeB
 s/dN5ed8PqDHy92QAAAA=
X-Change-ID: 20260128-fix-a4-pinctl-node-6d7f9c29b32a
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769595003; l=1293;
 i=xianwei.zhao@amlogic.com; s=20251216; h=from:subject:message-id;
 bh=F6Np6Gg5OfDL8SOtdbBhRnTvyEqILZTAt6VZ6iphZjU=;
 b=klaiKJo6ZXYdkMttvJFCkjmYPGO+ViMwibRH3IvVKYi1pOexAtu5Fpu0DiJT/zW6MPW+LQJC5
 PWuoph2b+74A/QH2bae0AyNkycivBV6dCia29/RQ2iwwzlcxBF2gGuT
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=dWwxtWCxC6FHRurOmxEtr34SuBYU+WJowV/ZmRJ7H+k=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20251216 with
 auth_id=578
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260291-lists,devicetree=lfdr.de,xianwei.zhao.amlogic.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[xianwei.zhao@amlogic.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amlogic.com:replyto,amlogic.com:email,amlogic.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.44:email,0.0.0.4:email]
X-Rspamd-Queue-Id: 0F19A9F444
X-Rspamd-Action: no action

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Fix incorrect pinctrl device reference when adding GPIO to pinctrl device.

Fixes: e9bb91734871 ("arm64: dts: amlogic: a4: add pinctrl node")
Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Fix A4 pinctrl node.
---
 arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
index fce45933fa28..6587e3578f8d 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
@@ -218,7 +218,7 @@ gpioao: gpio@4 {
 			reg-names = "gpio", "mux";
 			gpio-controller;
 			#gpio-cells = <2>;
-			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_AO<<8) 7>;
+			gpio-ranges = <&ao_pinctrl 0 (AMLOGIC_GPIO_AO<<8) 7>;
 		};
 
 		test_n: gpio@44 {
@@ -226,7 +226,7 @@ test_n: gpio@44 {
 			reg-names = "gpio";
 			gpio-controller;
 			#gpio-cells = <2>;
-			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_TEST_N<<8) 1>;
+			gpio-ranges = <&ao_pinctrl 0 (AMLOGIC_GPIO_TEST_N<<8) 1>;
 		};
 	};
 

---
base-commit: e3194dfb772304a1b7ca3bcfccacefec3468b7bf
change-id: 20260128-fix-a4-pinctl-node-6d7f9c29b32a

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>



