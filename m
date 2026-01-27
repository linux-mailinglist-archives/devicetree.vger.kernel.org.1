Return-Path: <devicetree+bounces-259885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MS7IoeweGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:33:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 056AD945CC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 423723018759
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A05354AEB;
	Tue, 27 Jan 2026 12:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="ZkbCNMrk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7AB353EEF
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769517185; cv=none; b=C+SCZ5WFbY6hBIUxHXpJNevds54cQ0yVpp9236ANFhTkcbBPe5iOen7e/lpTdSbKVuy+OV4y98NxGLHV+v5s//ODA0eEa3P64uVD6X2dICkJ+VPKwI30qO5DiRBh4MRyRkfgw1YaUmajBOXv1jfZGgKBgbpOOIuGzKzOGnFl6Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769517185; c=relaxed/simple;
	bh=1kELvF6YHfbWfSz1BW6P/8J7B7FaDxaxd3KqMgqOPWU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ixEg7kbn4uKtNlhE/3CRwhQCEaITavQ7clnstNZDOrP9oTu98b4ZrCazsTrxM6nTcNRN/I6Bhw+rW8RK8Y2BcapH0HAGzKa47OyXocJF91IxI/XeRBcJhsuoXtNwaJWQP2uUBWzjfyI3uZ2adCMnslAR3T/W0sRRRYAcpFtN4ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=ZkbCNMrk; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso7871637e87.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1769517182; x=1770121982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DPB+DFTfjkKjhu4BtKlRuvVUNmzJlqVK+VXEKwMXFYw=;
        b=ZkbCNMrkce5XDSE0wyAJh64aLJeeYCPa+EEysc5Yvwplg2wepawmF5qZH6WDbSM1V8
         zdVeUZEqECgUy2K1AqQGYrEwswKtOE0vTuIPWcbcS4bVnKZ2wbtNdUgn17mwEmKxdhMs
         gFSNINFDekYNXj16FrOkvD6FauiojpY+k8ef2KhxI9RysJ3p0YVYldb9QdRJaLIX6dHd
         7EX3sZbGge3FcI9jkT/aBbpqAkle9ZkBiIFLzDkrsBEBoTtd9iGqxeK+Fl9slIMm6FBZ
         1RtzpF8s3+kK6vEWyhuRmd71OSDWIJHQn1zFDxW0h+Pkixd9URLPJIJYGt5wOrDxm/fP
         RnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769517182; x=1770121982;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DPB+DFTfjkKjhu4BtKlRuvVUNmzJlqVK+VXEKwMXFYw=;
        b=onl3qKiP6I/5NQmk8CgxivZ4KELsaWX00OO7PeaDXKt3NzunxTWG0PX6gWpdGPG+xo
         GMZl56pztuCN5grXHVGKoAfARk8K93TVrFa60JdNrIHnO6Qvc6KWQOvsn69Dck5egpVL
         lp5wiaUh2Gv/0lI/zibebuE+XO7VjC1qqiWSP+WnxJx++umK/iPHQa6oKe6xV84PIObe
         Pi7sL7sEGuB2LetKWoqsdhCYRepWNo6JQV/XY2x2nEWay137lmeRNBVhwDuiphnE9Chx
         eibjJ/+hDG6XaKCrOF24hrKk5YytZewlp1Up090WfUnd0zmhNyksdjur9gYCYsGLtsll
         +0dQ==
X-Forwarded-Encrypted: i=1; AJvYcCV14FiyjCJPOjv0ZpYBGRBEI55P8T7HYQbXZHdTBtT3bRJ7yM2/jHJoy/gIROX6x6kfmgtoukcXLQjw@vger.kernel.org
X-Gm-Message-State: AOJu0YyWmakaxYHkN3fKBdNO8fM5R5mIXVtCL1x5GOBNqOI4yPP/GUQa
	WitvAQjrba4ixkmmM6WIP0SY+i3iDPDyBV4lTfIxdr5VzTs7Ihg68CHnRrnNPBVmNgM=
X-Gm-Gg: AZuq6aJWxZXlR7Fq4P2Xq+e5Ty/JoranppEHIYW8aC7N6hvD7cdcJgKYPW9iNmyjIpY
	qdUX79koBAH/5oeh7A3+DV7urCX95yOpRrerlkGx1VwtoyBEesEyADpJbNosvbWHKiAie9ZJJCh
	lTA6ufKCYSK6mpeFbj0XpM5U1Bx2RtkC5MmrOZByyZChaZmHVwG5e7vGCpv4p8YapzMREX50iqz
	4bcobtap82MiD1SMEc1cTDELOF1u8Kj3ZqbZT0jqUIuvR0QoIyA1SWt9AwbI/3quEauxaGS/jn2
	SfK47uMYyj1s4dFq2RojlHFHxUaKb74S63nB2te7b7/KZXYWGIN4x8N/ijAA+WQ30dHcu/ruZ5u
	mr/+yN0+cAvE56ANhLbljOMCue3jz49KXDlOvTtT1zFiz6DeIk2k/yHrAtVde9aZeEerSnde7XD
	wN3EgR9u0RXfukgBnrV/DQCFmCq2gWqS5tqI44ppgZred6JWvd4UipcFsf+ZQsmQTb3liOcGydF
	d1n1AgUNg4=
X-Received: by 2002:ac2:4e08:0:b0:59d:cb56:d2c7 with SMTP id 2adb3069b0e04-59e04017290mr701225e87.13.1769517181789;
        Tue, 27 Jan 2026 04:33:01 -0800 (PST)
Received: from fedora (dh207-15-237.xnet.hr. [88.207.15.237])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-59de491fd7esm3554811e87.75.2026.01.27.04.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:33:01 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Robert Marko <robert.marko@sartura.hr>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: uDPU: add ethernet aliases
Date: Tue, 27 Jan 2026 13:32:15 +0100
Message-ID: <20260127123250.527714-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259885-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sartura.hr:email,sartura.hr:dkim,sartura.hr:mid]
X-Rspamd-Queue-Id: 056AD945CC
X-Rspamd-Action: no action

On eDPU plus, which is an updated revision of eDPU which uses an external
MV88E6361 switch we are relying on U-Boot to detect the board, and then
enable and disable the required nodes for that revision.

However, it seems that I missed adding the required aliases for ethernet
controllers, and this worked as in OpenWrt we had added those locally.

Cc: stable@vger.kernel.org
Fixes: 660b8b2f3944 ("arm64: dts: marvell: eDPU: add support for version with external switch")
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
index 242820845707..cd856c0aba71 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
@@ -15,6 +15,11 @@
 #include "armada-372x.dtsi"
 
 / {
+	aliases {
+		ethernet0 = &eth0;
+		ethernet1 = &eth1;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
-- 
2.52.0


