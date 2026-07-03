Return-Path: <devicetree+bounces-319732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0ggJD5QgR2oxTgAAu9opvQ
	(envelope-from <devicetree+bounces-319732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:38:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 657C46FDF9E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:38:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qq.com header.s=s201512 header.b=jhiO5ige;
	dmarc=pass (policy=quarantine) header.from=qq.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319732-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319732-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEF553022A9B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 02:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B71E238C36;
	Fri,  3 Jul 2026 02:37:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xmbghk7.mail.qq.com (xmbghk7.mail.qq.com [43.163.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882822BD02
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 02:37:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783046234; cv=none; b=Sr1L0JB8TJApg+IVr97KM2ODC61SJmB9Xzw6nqzUWcKq1vOU0ayexrpiV0UOvo83QGP5VJqz/b5/RZ5qrFBtys8+DVLvEFcYhsE2sp2X2xC9tAJyfcKVscUcGhFOSBxFafeCKbv3IBGh+ESnuii85va/AjoTdnO1NKulITtHyEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783046234; c=relaxed/simple;
	bh=E0M8Zf8BjnbN2//z3slW+93fP1EpgOgdjFGBRi5s2XQ=;
	h=Message-ID:From:Date:Subject:MIME-Version:Content-Type:References:
	 In-Reply-To:To:Cc; b=ONQSZHH0vBtzNkN5Bm/1kuTkYKA9/0psXn2pK41Qgkw4jyDn60Ctpk+5aB5ArrnASs2slbsK8QLUlfNXeeMh8ssOqSqdkrOUGeGTZkcUpL762wc4zkLK6fLkHpRTkzRn86lfjgZry4nGQgMxtvWPXNLH+oiGLhwOqcOx21ozS9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=jhiO5ige; arc=none smtp.client-ip=43.163.128.47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783046230; bh=W1WNmyXfiKAM36ME7UbhR9USc1y3foO9e6ZaB6KYxC4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=jhiO5ige0Y0dPttALCcGloOcA1/Nam/5gsFQWWXSpj/GJkiXwWUswbZC9pgEodZT/
	 Loz6BQkObPgIsy8Yb8rTfN3+6O+2LjG+Ppn/qX3V0KY5/veMCx2brgFTYO5wqp63Pr
	 nwqFVv6cy2gCpgnjA5Ob5X7JacMWaLvvtWU83cTU=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 8F90EEF9; Fri, 03 Jul 2026 10:35:57 +0800
X-QQ-mid: xmsmtpt1783046159thgca6hq9
Message-ID: <tencent_3E31CBEFAE0986665A26322171642BC00B05@qq.com>
X-QQ-XMAILINFO: M2dBUVw0X9hna0qxGzNtZpQZdHEzG6U8CofjXX/U6lyToJIjryaiK8k2rQLlek
	 KTe4kLB0BuX+ZgeiYyTw0voeRkCHy5LNabXYJRSawig4Z31o+wypQpNg+JnH5ot6jGtkcCsf03zH
	 ggLB3+KYKSBIP8QBOwp3tKp5N+BnPedPX9/yqDDNYN+aGrTyFju/H2lCw5Ugl1Nyy+s7YcJYst3w
	 wCdvQ0LdG7TpepiCEmtwVcFL3+Tg0gNwrdzHRunibQYJcG8zmN90ifuhmKPTH4kao7CRlstlriA3
	 DKukeOhEe3UwB/Gp5C/FqR+6oazYA2WNbR8AipLlqkI0mjmhssilswpbWprpV5a7hoCNQni0o8YM
	 isWuEtgZh0EBDHj7wFtoVP8qlp9zthz4+DqrOHGuUxYdPcb6QexjWoxll+FUUTLtBumKmxTt/DhQ
	 Jam2227Ke/QgtRd2CjCG7c6cxTPLWTro2BKx1HTAfrfjHVTPGXWSsqV9HEdFxyk3pmnHH8oQE55s
	 7zFT5qh2ai+4Js6Z+3eESabiT9v41RQEDI0IKh/ql9Me4aOsEFEJ4P9UOymxIpR104nB0jsCwHcW
	 GfwkFTBCsGxSctTPkRSzzwo5Klc63i04GiI+DeLWx9uKS+WY8lJMop3VslYN7jbD0xd/bgQtd1FE
	 mXfDeHhr7/Dv32/0r6z4FuTPutsJ2y6VZ02z3XD1Lrh2+O3rpKB5QifElcyDnirFQajq82qVA1fo
	 7eYlfS2yARaEY0UsfXLL4TOP4jbYFqekfF0k7MtI1ZE9zUe7RdsPzuHTiPSM7XdiRoJTyMnOpaWx
	 cZvxZc6TnXZHtKqBv5qjw82589CdiZO7mlIz/eLrkFTRzDhUfINt+f1j3Ry23rKMdwgd4A2QX13q
	 tsANUn0bsFnxQN8Bgj0afD3J9CunjU5SpgWDNKDgSJNzD6WRUVWSUbn/u4DrO0m8BJdg5BG8Tozs
	 X79kjk9ajtAKxyLXifoYDtUB5KFhsncr0nvosIXT7w9HnXTvetQo0J2NjA7Dz7pxyWH9eCtKRo60
	 nLaExEfOmkEWibiYmqpJTEyIE2itRmIR+3Iw/ViAtQeSW2e9VQmlgqv/Jd/3RpmGpoi3mVz9dG5d
	 AQ/77++x4WoSy0fkbx8atTMFiIyZ49/jNWVtjVgkHwufiMvzc=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
From: Cunhao Lu <1579567540@qq.com>
Date: Fri, 03 Jul 2026 10:35:40 +0800
Subject: [PATCH v3 1/4] dt-bindings: can: rockchip: add rk3588 CAN-FD
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-OQ-MSGID: <20260703-master-v3-1-6d56de6fd2f3@qq.com>
References: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
In-Reply-To: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mkl@pengutronix.de,m:kernel@pengutronix.de,m:mailhol@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:linux-can@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:1579567540@qq.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[1579567540@qq.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[qq.com];
	TAGGED_FROM(0.00)[bounces-319732-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[1579567540@qq.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,qq.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sntech.de:email,qq.com:from_mime,qq.com:email,qq.com:mid,qq.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 657C46FDF9E

RK3588 integrates a Rockchip CAN-FD controller variant that is not
fully compatible with RK3568v2. The RX FIFO count register field is
encoded in bits 7:5 on RK3588, while RK3568v2 uses bits 6:4.

Add a dedicated rockchip,rk3588-canfd compatible to describe this
variant. Do not use rockchip,rk3568v2-canfd as a fallback, because that
would describe a register layout that does not match the hardware.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
v2 -> v3:
- Move the Changelog below ---
- Collect Heiko's Reviewed-by tag
v1 -> v2:
- Use enum for the single-compatible entries, as suggested by Krzysztof.
- Reword the commit message to explain the hardware difference instead
  of referring to Linux driver match data.
---
 .../devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
index a077c0330013..81e2b6dfeb02 100644
--- a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
@@ -16,7 +16,9 @@ allOf:
 properties:
   compatible:
     oneOf:
-      - const: rockchip,rk3568v2-canfd
+      - enum:
+          - rockchip,rk3568v2-canfd
+          - rockchip,rk3588-canfd
       - items:
           - const: rockchip,rk3568v3-canfd
           - const: rockchip,rk3568v2-canfd

-- 
2.34.1


