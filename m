Return-Path: <devicetree+bounces-238799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE4DC5E15A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B25B04F8F29
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE6D2D5A0C;
	Fri, 14 Nov 2025 15:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="ClkccDxD"
X-Original-To: devicetree@vger.kernel.org
Received: from seahorse.cherry.relay.mailchannels.net (seahorse.cherry.relay.mailchannels.net [23.83.223.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637C7280330;
	Fri, 14 Nov 2025 15:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.223.161
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135219; cv=pass; b=N7VUq12Xu5QkIhQ8q+ynq8pS9/mJxWd4zmcc3MN/xY3TJoXP0QrSh5LyGGT7Fnll5eoA2ibe4HDrP0LGBbx6Jaid2OD3DXoevJ2Xpo4d8xJXZ5cQjOUP5PQ12u1ZewUz0sjcR35iucY4C4bYRQII+unxdcvvUtNbpXcLPsr/RmY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135219; c=relaxed/simple;
	bh=H3k6TfLP47Lv7xYete6FvgHpydOCT7C/sH6Pi3gdxT4=;
	h=From:To:Cc:Subject:Message-ID:In-Reply-To:References:MIME-Version:
	 Date; b=otSVFGq0giOV+L0D9RQ2H89mL00eWDGJZI+tJsLDrNuQk+iPC5rnYP2PIv9FAGF+vj1kerxa+UsyeGyiFGKehpB8aJkuLKWEgSbYS69XKZAKbjA0+PHmhKSa1oW4kFxG9vHvLMcgjE6AkuCrfbO6lDF0bypRhtPC4aVZh5Ujn4E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=ClkccDxD; arc=pass smtp.client-ip=23.83.223.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id DF6C77211A1;
	Fri, 14 Nov 2025 15:46:50 +0000 (UTC)
Received: from de-fra-smtpout10.hostinger.io (trex-green-2.trex.outbound.svc.cluster.local [100.98.40.135])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id DACF572175F;
	Fri, 14 Nov 2025 15:46:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763135210;
	b=95ZSSUTFl1HHAuuvSfr3804NNqLM5dm+toNylV0hhOJok86pH6Af8VhBqzZnoiCf+C6J6w
	EyNMCi0+Ogrwq0wyFlceUMqA9QOm8/tcK8hg5Iw1D/3/7kLkiTd8pZlpqFVLjd3y9/FAa4
	KcOwDWFGfWHQdWl6obWg8m0gV+I0QU1P/TqfHJo5rC4h8JdqLzG1nJl+/GgPYvUSGQ+xdp
	T70cgtEttLSX8zcYSsyxF3EHqHZjdZ8gssj5j3nLVVtqW2W9+zyuqRvVX09xUGhGdjeXD2
	t0EBAxJ+LYZWbg+s7hzIFZsjMihyigaZRsDO+nd8zOypzu868KaY0Fx2YwXWxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763135210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xUnAch7ahn0XdLMBa77XE5dbI/7gL7z6PUFVrXkOJaw=;
	b=72VvslHys9tbKHvf0Z/sVy0x5aiBjjUdzjnerAqBKJV+BMJzpQg3tR1E3G5ixsvedDJdb5
	unIf7xzDG/t5afSfEZ+ZWiL3KR/p2V7KZ4MnFeVr8MAceBuMxoQgVebINbfGhSm8n/jnUZ
	E+/V5buAU5ihUCWoDm5uWdW9hKxP8AdVPc4kG8/aSMUsnnbHDnYD6SevXfnsX4AvG9fyng
	Bro1qmtuVgrC0+1ORVwsFfwJUx8fJ5GsqwCEuireX4DJ1Gubb89NPPGlzYIuIS6TH3yqeS
	Z6Nubv5jdNlNo/vaFQYNqu+YXFqnb2IQ2g97Amk/U5jlqg+1sGbWiWFBcM3pIQ==
ARC-Authentication-Results: i=1;
	rspamd-dd986fb9b-24qc5;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Supply-Thread: 2724351457dff246_1763135210770_2829193326
X-MC-Loop-Signature: 1763135210770:1828996372
X-MC-Ingress-Time: 1763135210769
Received: from de-fra-smtpout10.hostinger.io (de-fra-smtpout10.hostinger.io
 [148.222.55.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.40.135 (trex/7.1.3);
	Fri, 14 Nov 2025 15:46:50 +0000
Received: from dell2016.. (unknown [IPv6:2a04:cec0:122b:2b8b:6420:6800:bae7:cb5a])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d7M2B2nLGz3wpH;
	Fri, 14 Nov 2025 15:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763135207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xUnAch7ahn0XdLMBa77XE5dbI/7gL7z6PUFVrXkOJaw=;
	b=ClkccDxDUUiVrStw80MnQROHq37Tpa1WI2p3gyk5iOjBESkQueqV0aDiYJn7hp4VHkWNa2
	UTZTyCUbbGPYg08thy959QbkzvXT2nGw0iz+TeD/SzfgcR8rToNmJ7UsOARvd+8eMf4P5O
	2rN/pb6aGB4AyGJ+o9u+TLtW9v8vBcvEcB9Xbmt50+vl+2sMt+Bri0L/uw/sRZ1ZJnZBIj
	eLl7rxriRPIWO/XzZSwOPECiSp2aI9yaa0DnSMYW6Ae6tKynV83QEUlNTMI5xv87gNjl3v
	7ExaCDiTdftdqCBQikimaFRKn+sKSeFIwlFS1p9Z6jKpAOf0KyFrgusRQoQFEA==
From: michael.opdenacker@rootcommit.com
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dsimic@manjaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board 3 and 3S
Message-ID: <20251114154617.69950-2-michael.opdenacker@rootcommit.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114154617.69950-1-michael.opdenacker@rootcommit.com>
References: <20251114154617.69950-1-michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Date: Fri, 14 Nov 2025 15:46:42 +0000 (UTC)
X-CM-Envelope: MS4xfMvocJ+nhBybcd3By4mor4/LL+Ui+HaHwc9SgtrBjJ38xxqOuIHVkJGm3HaVcO2KjTV1VUxDilGCNApK77qe1OJCdc9/cF1VdcKF/4bBc+FUfp7Bx45K H0OGYFNDEMmZ+gGl+gHQOzSZak3dvPk9bAeCakX7/Y0OAViwweR7h4vjTkeSZodqbNA/G5/QQf1YaefX3ak1Zdr0pw5vbE2VUKx2os9pZPmZPpHJX0D9aWfB 8reZRyUUsQamnbM2wcP0ng9AQd4Lm6IuDh+bTxCUNqvFadz02Kb7ZteDLBdMrAK34efNSKjHiO5nES8S/668ZfpHj//Zc05Egm/iheFLjuJTHNBliszErNSO n7ZDtOgz7EA7MXZtKHXzqdXIB4/ssagAbo5fts8/o+fZb3VIqyede9wW+6USI0S0LqVD21yEeGGXG6BjQKJ2pcrmw72Pqo7b4ZZF8P/WcHEB5TJ/R53SD9xQ a2LGrllI0+fP/cN1OR0sQWzy4ACliOhwmp++MTpfzcYwNMO9v7zsAnMQyvuAxKcbQUJIBMj59NNPGueRQqGYgnJXcxL8J5xQ9LJhie3opFto1IhB1PmowVJt wri80mmsY6L1foAj0iKuQ6Dg
X-CM-Analysis: v=2.4 cv=ALriHGRn c=1 sm=1 tr=0 ts=69174ee7 a=xg8E7M7z/s+QKb9omSVFuA==:617 a=xqWC_Br6kY4A:10 a=-Yt9tNsTAAAA:8 a=d70CFdQeAAAA:8 a=3JIPYtb0mk-80_rjy1QA:9 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2],
which are SBCs based on the Rockchip 3566 SoC.

The "3S" version ("S" for "storage") just adds a 16 GB eMMC
and a "mask ROM" DIP switch to the "3" version.

[1] https://tinker-board.asus.com/series/tinker-board-3.html
[2] https://tinker-board.asus.com/series/tinker-board-3s.html

Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..cd249325a4d9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -86,6 +86,17 @@ properties:
           - const: asus,rk3288-tinker-s
           - const: rockchip,rk3288
 
+      - description: Asus Tinker Board 3
+        items:
+          - const: asus,rk3566-tinker-board-3
+          - const: rockchip,rk3566
+
+      - description: Asus Tinker Board 3S
+        items:
+          - const: asus,rk3566-tinker-board-3s
+          - const: asus,rk3566-tinker-board-3
+          - const: rockchip,rk3566
+
       - description: Beelink A1
         items:
           - const: azw,beelink-a1

