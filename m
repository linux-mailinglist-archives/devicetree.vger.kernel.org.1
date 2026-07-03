Return-Path: <devicetree+bounces-319731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q1fGDCkgR2ogTgAAu9opvQ
	(envelope-from <devicetree+bounces-319731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:36:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BB36FDF70
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:36:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qq.com header.s=s201512 header.b=GSIGmCO8;
	dmarc=pass (policy=quarantine) header.from=qq.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319731-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319731-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EBEA03027353
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 02:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415BE26CE2C;
	Fri,  3 Jul 2026 02:36:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xmbghk7.mail.qq.com (xmbghk7.mail.qq.com [43.163.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF2A2367D9
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 02:36:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783046179; cv=none; b=azejJCmCd/mj73TqJeWRpDTpCKY5jDwsXFOXFLyvIsZ09Yh1rYJyOvBCqYlImqMZf3SyagCrmjgZOtZex7ZT/sh9rtzrJ8+4jS0lkxxUJHsuRpnJir2S+ZBUB4FA+9BnbvvwCCyC/g7RB791eunQDYMRL/HIpv9p2Q01VJXMkBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783046179; c=relaxed/simple;
	bh=DX+szNrz7DTLcMXoXNU6DNJcfUI4KfQcHuk1pG+QKxw=;
	h=Message-ID:From:Date:Subject:MIME-Version:Content-Type:References:
	 In-Reply-To:To:Cc; b=vDld4+HOsRea9YRbisfBbaogRh7F5+h+NNtSfxSbEfJzH3vnabq4VAiUksuyLJzBFtKEZ8t0+pdR2QwrckaWH7cI13edoTjS6w+ga76z8zfFSgwgd4CJn0ShoDApb8RUZiomkyJOd69pzf8H8F+yPZPc95A1TH19hY42/N9BVHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=GSIGmCO8; arc=none smtp.client-ip=43.163.128.44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783046169; bh=L3LDk1ob8lSeDF4p3l0ihZVgutygUEgJnbVoCOXhudc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=GSIGmCO8NrFD01myEZK7Vo3+ONYV7j1M37+dBwVrKuHytVvyQonhwgGK1pgjUX9uv
	 HNYqj2xOgOfrHAkpORV4PAwcIGbewqLkKZHbEl4tKAiUMd7XzlRhiFLerqxYuEPBQT
	 D0UXkCc2ImU5mrhRzCKdPZkg9SXOUCT4/S6jyxt8=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 8F90EEF9; Fri, 03 Jul 2026 10:35:57 +0800
X-QQ-mid: xmsmtpt1783046165tfo4bxydx
Message-ID: <tencent_3FF37E324D5F34D332BF096C2341017F8808@qq.com>
X-QQ-XMAILINFO: N/WmRbclY25GcbFfHdsLffU7Siw2ZiY/P2ORHWlQiVIR1pAkU8CRL1iOj6uwkh
	 w7256vShoYbcC/jg8Srd4eppUn+BEeKw49YWU5j0aYBGCBqYYNsmIoayh8MK4RRNu61PT5eHzQPf
	 5aADoAhNlP8Cwf85aDvGhj209TL/mVmn6LOK4kWDROncpYUXojFwQRBcUWgvgmGngyQkVzj3oiFK
	 EIylRzFQGQRbmn3IJajE0cL+mmWq4Zyjcg3a9xPjwtTHrBg81Uy3BKYKpLRgJqJZoku0H5q0o6IO
	 fxhe50xZJ3kzga0+V4i0JfeEytZK4q/0U5DjTVkMmvYBhD+43wzNJzCWjghRGKOz+muMZfZ6K5JT
	 +50Tfkob7N5MDQ+x1DhvxS4Y2+r8XtUsyUMC9jOyD2t3WJgrVkrHtS6eRFYGHm5vFrgKGkg42f/m
	 qYpVK7rcZSh74HvJa1Cp0hlm3SSnghe2U0saeIGQAsLUjnovzT7beHkKqgagi5/ESKPFm7ZU5O5h
	 xHGwEgF6coPM2H1nla03ilBHMMlMO9jrPU7kfUHXNul3P5X+dA0tiWX2YIpq3sTfNkWWiZcqb5Ko
	 6hKzWWkYaXpL7lP2fR0CLzsq+lYg1QfSDth4uhuuWfNbSGnbrG5ZDqiQG94013Wbh6NNf6hPHiYg
	 lucrSf+zfxOC0eJPgxHPE6yxOjOGGyi1oOLLH/QSCOPnuQJrF1XErNNUwFSNuKbZ6PQ85434zK0z
	 7skNl2slV8BSlrX3cPQJgThLEVKMv4BkB6xo2016ug1iwTDQH8oepk2yC4ReEX3t5MwUbm56W70E
	 TJjrA8eTdO22zy8dtffehF1oSHBkqVaEa7rpceaUkwbE3c62X2DL1m/EuPPkraZ289OEZeS8MtKo
	 E5U/E9xbhAQrjHxAe4qS5mrXbL3OwSobTGtQ+xaIUQ3IACRwedBTv25cOvkj0Xay3IUvuKhg1UJW
	 kLhVRA+pGRf4j9rPDUbm2Yl48ZvF5c/3zOUIcVb0oSSXtw13/d0ZE+9yuwhDhdRStoam9AT0eJNt
	 UvBiKjdpbABAzIy3dRx9LpnXCAfOkZtvnwmFNrncFQaoab+W74VAE1m9X0ScOSABdrGBQVoNySPs
	 Y2tDzBa0GeJFbKx2oxrKybZBbIpQK6VBF7AfxT
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: Cunhao Lu <1579567540@qq.com>
Date: Fri, 03 Jul 2026 10:35:43 +0800
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Enable CAN controller on
 RK3588-Tiger-Haikou
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-OQ-MSGID: <20260703-master-v3-4-6d56de6fd2f3@qq.com>
References: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
In-Reply-To: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mkl@pengutronix.de,m:kernel@pengutronix.de,m:mailhol@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:linux-can@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:1579567540@qq.com,m:heiko.stuebner@cherry.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[1579567540@qq.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[qq.com];
	TAGGED_FROM(0.00)[bounces-319731-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[1579567540@qq.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,qq.com,cherry.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qq.com:from_mime,qq.com:email,qq.com:mid,qq.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7BB36FDF70

From: Heiko Stuebner <heiko.stuebner@cherry.de>

CAN0 is piped through the Q7-connector to the CAN-Header on the Haikou
base-board, so enable support for it there.

At least on RK3588-Tiger, the CAN clocks default to 99MHz, limiting
usable CAN bitrates without skew. Errata documentation mentions
300MHz as the default frequency on RK3568, so replicate this here
to allow more bitrates.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 873fbeb8daa1..6273e695b039 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -155,6 +155,12 @@ vddd_audio_1v6: regulator-vddd-audio-1v6 {
 	};
 };
 
+&can0 {
+	assigned-clocks = <&cru CLK_CAN0>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };

-- 
2.34.1


