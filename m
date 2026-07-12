Return-Path: <devicetree+bounces-325138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /TJDDcsQVGp+hgMAu9opvQ
	(envelope-from <devicetree+bounces-325138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 00:10:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB797461BB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 00:10:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=reactivated.net header.s=default header.b=aoKcojZR;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325138-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325138-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24CDC30063B5
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CAA378D9B;
	Sun, 12 Jul 2026 22:10:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out13-173.antispamcloud.com (out13-173.antispamcloud.com [185.201.17.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0473522D792
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 22:10:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783894216; cv=none; b=kRs0e1dM0syk2twNDYWDMvRoz0Sc1YYeciqF7qLpm1MO/nHAdCaqhaXzY3udjZ02P/TIlp1by40hYgNNyMo1qCyISLKOwoEfdCWPPFpp4pmBPIeYMWVaUpPtOgD7HT0yRIiUz1VWTBytQCR6twKjyXSB4P4KMxJhMCEKCA9EUaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783894216; c=relaxed/simple;
	bh=C0N49oshx87g0IoRZILja8XZbKFzwzuAxoXJeIhvICo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FvR07ZO/0ACULxYI0UpZCjeGzwlEijLKXOsXfCHMPwSPU+A+DuWNm7QjB0mWKvNKUkq7FAb4FJScLM0sL+T1EkOUIYThILyyq053f29Q/dJBTzGS/pqQWBPvzPw6l4q6NPfbHUyZzY1qKVHLPF2OnJ6HaX0sNaqRH8BI//hZuak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reactivated.net; spf=pass smtp.mailfrom=reactivated.net; dkim=pass (2048-bit key) header.d=reactivated.net header.i=@reactivated.net header.b=aoKcojZR; arc=none smtp.client-ip=185.201.17.173
Received: from s1041.use1.mysecurecloudhost.com ([192.250.231.249])
	by mx195.antispamcloud.com with esmtps  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dan@reactivated.net>)
	id 1wj1aB-00GoYA-RE; Sun, 12 Jul 2026 23:19:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reactivated.net; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=U67P9sBZlm1TqULX82yliNZyk22cqhSD+9K5qcqcVzs=; b=aoKcojZRMHjYSWcWF3g2pBV4ck
	iCRmjNOyAHKLrIfHDC2QkNH8Upd09B+PPuv+rzwrIDWzBpVRJ/1SjfgDArkqnHi7atxH1PeWGqI32
	RB89Oj8XnXCTuch36L7GPKIAeSg4N/G6wuN+fO8ePf+DKnTiwDDxviPBb+ZS4l2Xl1N2TV/DiGHyi
	lf6XcVuFWAJgDy5WgKN4mpfq2PhcD8Lto/C9/zdyk3lsVtZbjLMcf7Hw1e/l2CsILGK8bQFVwE7vI
	F5zCpg1L1haJuA+oWpCCQwqps8L9D6FSF0n+9fXz9UCvGRuic2MkYPYR6vO5bOl6Rv6J0W4U+ai4x
	LSGBIjkw==;
Received: from [188.251.249.2] (port=43526 helo=[192.168.1.123])
	by s1041.use1.mysecurecloudhost.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <dan@reactivated.net>)
	id 1wj1a9-0000000D6jk-0Cl5;
	Sun, 12 Jul 2026 21:19:25 +0000
From: Daniel Drake <dan@reactivated.net>
Date: Sun, 12 Jul 2026 22:18:56 +0100
Subject: [PATCH 6/6] arm64: dts: broadcom: bcm2712: Add GPU IOMMU and IOMMU
 cache nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260712-bcm2712-iommu-submit-v1-6-80e10cdde2ea@reactivated.net>
References: <20260712-bcm2712-iommu-submit-v1-0-80e10cdde2ea@reactivated.net>
In-Reply-To: <20260712-bcm2712-iommu-submit-v1-0-80e10cdde2ea@reactivated.net>
To: "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Daniel Drake <dan@reactivated.net>
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, nick.hollinghurst@raspberrypi.com, 
 Jason Gunthorpe <jgg@ziepe.ca>
X-Mailer: b4 0.14.3
X-Get-Message-Sender-Via: s1041.use1.mysecurecloudhost.com: authenticated_id: dan@reactivated.net
X-Authenticated-Sender: s1041.use1.mysecurecloudhost.com: dan@reactivated.net
X-Spampanel-Domain: s1041.use1.mysecurecloudhost.com
X-Spampanel-Username: 192.250.231.249
X-Spampanel-Outgoing-Class: ham
X-Spampanel-Outgoing-Evidence: SB/global_tokens (0.00641948596857)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuWWEV0H0VbEBODIAEhSA0udvbRtahqg13i7
 QMqll20EHiu2SmbhJN1U9FKs8X3+Nt06bFpPrNOlRAlE9AVLwR4uGVjKNnzF3nQoDoQtBifM84JL
 M0i5ZAms0EHrvcCaVIOrsK9eXVzfCzGPGPoMTsaCGnT3EFAinyrilm9zau/FuzkQt9Nb4Ml7QXdk
 EetczWCulNo0fvnzmZPW3MC2/ZtQeB7itP8hgjDRserKv4bhb3RyZlCL9i3kc+ehInPHgYZWBb39
 uS1TjWG2Inx+Ts2QrtVmombMJ4e2pn5C0yBMHZ0fE47nEjvubMSTLAkKCKefuLbx+lGq0svfyhth
 j0R6Iny++hg9dJLqN5zmWqF/oHgMZXS6X/fIHYslsKU0yPHM4JpSMI47HiFQBsGlm5AygJMVWPun
 1fB37VxVhASG8u+8DUiUO0BRfqxBojlKdxvQMvgrc1wie1AEvvcTmPTyXHf33UIZCAvni7mq+8YD
 f/ci2htloVR93L1bEU+C8xTxJtcVJProrT987X1VDPOqsTEJQ3xb4EkisAQaGZWETxKpCwD+gvjq
 +Q7Wu6n87Y4MiQvIq8yaIH0NAY0jdAFlJGgHOL37bgI/Ye2LcH+K95UvkJc1KT8DOaInKwXx0sdH
 KvLDzn+sBlvbv5VnduIaPR3/go1dqCkoGvLjLeADawo9dvH5wp0vjpaZ/24Ettv0enVxkZCWZZos
 zd8URU/+6gTEGu/XK6Vc8KHdrhOgCII0Dp+U5wepL0lELB73ipSCX8p9JtlqF62roO5JiUZgqswn
 FU+jNZMmXc3nfiJ1alJRK6f8TBthmwt0M3h5WX2oEmyuRHoHPkE1+Gh9C7bskVWClPVvbW5lVyQa
 nRxw5iVtN5vpnmvYZxjapDr5MMFO+3DFFwGQuwP4V68B1nbUsN3BaZE/M3vqEARlo6jh54IQgFgl
 8tJcBEI2oXRkv4Iq0TbZY5Mm+5NMqdAvsw5HrZmlTUVqJrMrRLBBPtFloQeYUOp7A73HI6oJg7w/
 Vocp0WgjUq2yqBKYrhCRRStKrAx+Bg3qYIuMjbgPkQEaCetx7/KNryWPVf2yZ8u9fIwWpUkRCVjr
 Nj2/S44UBGxi1cOBGfNGA0CkKkDTg1FNU79hrLNHG9rNMgmamto3lONnlRzBE3R5i4uebX/RTSir
 gQBo28VIgg+9sqTaGzvsONXl1Kc2a+wlKs+ogYIxcMmuAU5uo7azNF03eV6f4TPl2dZQgUDiy7ci
 lnWekKC8VmKaHtj/paE3bCmsCJBpqx690UKzG0uTc7QOvVpVcWtqyseL5vwFpocRzFu6jUSO++En
 3CbgQ6oseMzSFVJnnE7wBTL1+6vDOMemz/4I88NDD/MfU27nhrax/VmrMyT0HqhWaY+lwFo/KdWd
 3HxTsq690UKzG0uTc7QOvVpVcWtqAHg7h2md1+NSEL2kBRKSQw==
X-Report-Abuse-To: spam@quarantine16.antispamcloud.com
X-Complaints-To: abuse@master.antispamcloud.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[reactivated.net:s=default];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[reactivated.net];
	TAGGED_FROM(0.00)[bounces-325138-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dan@reactivated.net,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:nick.hollinghurst@raspberrypi.com,m:jgg@ziepe.ca,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_X_GMSV(0.00)[dan@reactivated.net];
	FORGED_SENDER(0.00)[dan@reactivated.net,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	HAS_X_AS(0.00)[dan@reactivated.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan@reactivated.net,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[reactivated.net:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,reactivated.net:from_mime,reactivated.net:email,reactivated.net:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7DB797461BB

Define the IOMMU and IOMMUC nodes for the Broadcom BCM2712 SoC found in
the Raspberry Pi 5. Enable use of the IOMMU for the graphics/display
block.

Signed-off-by: Daniel Drake <dan@reactivated.net>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 761c59d90ffc..ed3178db8acb 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -626,6 +626,20 @@ pcie2: pcie@1000120000 {
 			status = "disabled";
 		};
 
+		iommu4: iommu@5200 {
+			/* IOMMU for VC4 (HVS & MPL/TXP), Unicam, PISP-FE, MiniBVN */
+			compatible = "brcm,bcm2712-iommu";
+			reg = <0x10 0x5200 0x0 0x80>;
+			#iommu-cells = <0>;
+			brcm,iommu-cache = <&iommuc>;
+			brcm,iova-window = /bits/ 64 <0xa00000000 0x100000000>;
+		};
+
+		iommuc: iommuc@5b00 {
+			compatible = "brcm,bcm2712-iommuc";
+			reg = <0x10 0x5b00 0x0 0x80>;
+		};
+
 		mip0: msi-controller@1000130000 {
 			compatible = "brcm,bcm2712-mip";
 			reg = <0x10 0x00130000 0x00 0xc0>,
@@ -667,6 +681,7 @@ v3d: gpu@1002000000 {
 
 	vc4: gpu {
 		compatible = "brcm,bcm2712-vc6";
+		iommus = <&iommu4>;
 	};
 
 	timer {

-- 
2.55.0


