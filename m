Return-Path: <devicetree+bounces-151112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00962A4475A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BB94178BD7
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C88D3197558;
	Tue, 25 Feb 2025 17:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tidylabs.net header.i=@tidylabs.net header.b="My/Ik8yQ";
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="v2j+qGVg"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D77918DB10
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740503097; cv=none; b=s2Toy3qtgGjzN7F+nUm07gEn1FEw5OryKuIIbLez252dd+OQL1Oei+3SQl23CxoSatf8oGx106VfNZ6Jlwi6NJZ7MIH5m6rdVSxgj4MTRjDTTUK4U3iVJwS7ALv0QO/MCcPV3czi1xSOjdFpDMs2R7qX6XugJDVmE6el9K0SLBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740503097; c=relaxed/simple;
	bh=DNXWRytIBbFeyPrIFkAaBq4o0JbNSGPn9DG6QfsZ6tE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MqaAd0f4c0XfqX94QM2MvYGDGUmL+VAtEqoQsxRC/0emxZ8E3kbeFE/KsK27pzzBzfqvhycO1rySY3ajmqqbXc2G+94aiLb8hWozdMQuxCWbdD4vpKKpweLCe41SYZPFDyBaQldGkfA1sRz+nKZz/8/YMhZjGL+NJ8oYnng1Sy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=tidylabs.net; spf=pass smtp.mailfrom=tidylabs.net; dkim=pass (2048-bit key) header.d=tidylabs.net header.i=@tidylabs.net header.b=My/Ik8yQ; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=v2j+qGVg; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=tidylabs.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tidylabs.net
DKIM-Signature: a=rsa-sha256; b=My/Ik8yQXNApV1SCoUvMv/++qdBQ8pG74OekpLZgHMUC2V6KGYr7n+RXw8f9YulbQoIer0bWzY3zdFfJoGYplwqTPwzY4AStkYxHa1jLoy8NBOPpPLg+WV2EhqhRUYE5R+im1U7PK7W9QrTZyxlt8OXrv+Jht1n4IlGt65cCazMxgfZdnDLJmm0cMboMztI89zXmf5VW2ItrnnJC0pblrCWWUuCA1GOWTd/Bd4Wlyf0o1Hqe34ROXaFejQdDjTCFzdaft/MP7DURmLJqBMd6iy49F7knj1RO7K/Z4Pi5qDDoZSApJfIXLR5y7UUT3zKP5p9ycmv2wxawE9/VwrqNqw==; s=purelymail2; d=tidylabs.net; v=1; bh=DNXWRytIBbFeyPrIFkAaBq4o0JbNSGPn9DG6QfsZ6tE=; h=Received:From:To:Subject:Date;
DKIM-Signature: a=rsa-sha256; b=v2j+qGVgbCn4uxsEoPb+dkK1Eg89ymYijpb+93nCXlovjwyJ4TUQFDZOIxS4m9cmpSXKLKqeYGKglZSJwyf7nasa+QHw2ojpNbgRDfGCld3dLsQYcKIpOibih4K8lKIMVhIFAFYYaI2c51scKP5WJOKy51O6zgbzsnHSekWBvFC/wecleZF/I1pT+Z8SiB3T5pUOjtRQ2oKzvAXPLIRh84aUVvCyWL0dyZvMNsvNqXA3Kp0HO6pNGWflDt076pUAO8B9MQNkPSOI6wXDcc3S7VFA2mpIIF+QDHh40VnMyG64lxBPuQXsH7Iy1Tdjeg4057gy979ZmAl81bL8flGY2A==; s=purelymail2; d=purelymail.com; v=1; bh=DNXWRytIBbFeyPrIFkAaBq4o0JbNSGPn9DG6QfsZ6tE=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 81901:11097:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 594455725;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Tue, 25 Feb 2025 17:04:31 +0000 (UTC)
From: Justin Klaassen <justin@tidylabs.net>
To: Tianling Shen <cnsztl@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Justin Klaassen <justin@tidylabs.net>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix u2phy1_host status for NanoPi R4S
Date: Tue, 25 Feb 2025 17:03:58 +0000
Message-ID: <20250225170420.3898-1-justin@tidylabs.net>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <48c705e65cc8e8d4716b41a4a87170e3@manjaro.org>
References: <48c705e65cc8e8d4716b41a4a87170e3@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8

The u2phy1_host should always have the same status as usb_host1_ehci
and usb_host1_ohci, otherwise the EHCI and OHCI drivers may be
initialized for a disabled usb port.

Per the NanoPi R4S schematic, the phy-supply for u2phy1_host is set to
the vdd_5v regulator.

Fixes: db792e9adbf8 ("rockchip: rk3399: Add support for FriendlyARM NanoPi =
R4S")
Cc: stable@vger.kernel.org
Signed-off-by: Justin Klaassen <justin@tidylabs.net>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
v1 -> v2: Updated commit message, added Fixes: and Cc: stable tags

 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm=
64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index b1c9bd0e63ef..8d94d9f91a5c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -115,7 +115,7 @@ &u2phy0_host {
 };
=20
 &u2phy1_host {
-=09status =3D "disabled";
+=09phy-supply =3D <&vdd_5v>;
 };
=20
 &uart0 {
--=20
2.47.1


