Return-Path: <devicetree+bounces-239896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2D4C6A70D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 972F84F63A9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D07236A00A;
	Tue, 18 Nov 2025 15:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Y0WSxYq2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay84-hz1.antispameurope.com (mx-relay84-hz1.antispameurope.com [94.100.133.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAA2369977
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.252
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481009; cv=pass; b=VG2Si87DHKkYGP4N6C0XuZU6zjPErF8ub0VaN8+vbIWmkw213461K2l6xSMJ7qKTpld3IW1OXLRT96LuUeQZIY4iGH22NpSjoz4yUpTu3sQ7BZk5ipZoDJcu16iZV+iwvZuQiay2Shm5rvuNlLGoBQr6ZUmWWPUQUUjOrA+OwVc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481009; c=relaxed/simple;
	bh=NCgOxXeaqSvkKMo9PdehRkjYVUxEsYk+B4MjN7gs+zE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=G2jDWu7Aqh+4zExhLVZGkBPSjob+8+5d0gHeL95f/2ebt7iSm0bdEsHVOlRBTwG8LmBF0VL0JfiBoltSfjZ8mHmCE8vxuJ3GT5aR/CyrjEvDdZqWPQ44oxqARESvqveyYcTkGUAleAhYNVHHi07bbknJSKABq6X0zxZQnb3H3/Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Y0WSxYq2; arc=pass smtp.client-ip=94.100.133.252
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate84-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=OShmrYnXHG4AXV+3bUtrYLXK0OQmV7Q4Y7V3jIT8co8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763480947;
 b=rOM6cb3WMPsSLcQjzkZhBknFxf9QWYRYNKYV4WCuEnEhPAe9YWCEaJnC5C7NHUysWWtK9U5X
 fFuvVzhKgzZqEKVtFAmCgsu0Nrwq3rEpgiBAkEGjoZXBURM/nza6HTH/nlrP70xkVV6wlavRqQ+
 73RqIdo0SYkySrMUlYjZo9+MdiP7bpagYeCcAbDVhezuDGsjDhv3BOZ04MzVRTVFNXvH9QPq4Yo
 xbqsA1SPpDGahqBs45d7DOqS1Se2v/ClKtACyTC2xquD95QuVuHqnAfVcAUX0slMGhgTgAIJwST
 6wmvR/ptGCuKqi5j3xTpHv9T2CpxN+5XoUpk5s2ddCAvQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763480947;
 b=iV/5US4eFtzgnlIJFlSEJi+/93RQDJzXmVRthOHtBVETZc+EveAUi9zYyl4D5CEihP+oW8ry
 J6Mc+9QBZYxQWmv9yhwz90h7S+6vgfayCM3aPRIh76QoZ/UlwxIUwrItNEmq2r2SvvlcxNXON4s
 pvCujdmwW8Eisw66t4uodkFG/02h5nahwJM2qeGq8+MrKJb09LMTn07P+Un6UdIF/YyKHjiCZmp
 uvV0W1AsUbyrBYpfA8xSwoOqL/8gW0dld5qaMqmgn+X93xVF4O7FFiIQAtSPMLhB4MLG1CCAZ+d
 Y9NlGiGdAzSANwGFqZcxzhJySgHdKeqOCdmX6hiB5XawQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay84-hz1.antispameurope.com;
 Tue, 18 Nov 2025 16:49:07 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 41238CC0E89;
	Tue, 18 Nov 2025 16:49:00 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v2 1/1] ARM: dts: tps65910: Add gpio & interrupt properties
Date: Tue, 18 Nov 2025 16:48:55 +0100
Message-ID: <20251118154856.2015184-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay84-hz1.antispameurope.com with 4d9pv04njnz3Yptg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:828a65d2f40b52c2195059fddb127b0a
X-cloud-security:scantime:1.895
DKIM-Signature: a=rsa-sha256;
 bh=OShmrYnXHG4AXV+3bUtrYLXK0OQmV7Q4Y7V3jIT8co8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763480947; v=1;
 b=Y0WSxYq2FMGBypYofgBbRBBqcMEAJtzfq3U9+dqVq/naq5xTPnuF4arJV0pT0TDP4oTnF8QE
 dC84cuWxnZo0WOBcRY5ElfOXSjLHpHipxdoMb2px71Q+HI8IL8oSpaojiHJA4Kisw/rEowmdJeI
 cNI4l26ulnygBzdQ0H1QHdUvigyKR0XTO32uUZXp7E/STm3qib8ZJmN3nKJuzqOL+Q5O2+hw+nt
 PKNeFttAxCtkNZzZMHHcgxVtnm82twy6NQ9c9VI4sNI0f5ot5MtNlfnv4/eD+ZVM1ARXNg7KORK
 DlOSxfgsq+UrYwTidQfm9hwD7fZXMb9/e1kBh302iOKRA==

The binding document ti,tps65910.yaml requires the controller and
cells properties for both gpio and interrupts. As they have const and
fixed values a default can be provided for all users.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Set #interrupts-cells to 2
* Drop patch 2. Similar patch has been applied

 arch/arm/boot/dts/tps65910.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/tps65910.dtsi b/arch/arm/boot/dts/tps65910.dtsi
index a941d1e623280..f5a776229023c 100644
--- a/arch/arm/boot/dts/tps65910.dtsi
+++ b/arch/arm/boot/dts/tps65910.dtsi
@@ -10,6 +10,10 @@
 
 &tps {
 	compatible = "ti,tps65910";
+	interrupt-controller;
+	#interrupt-cells = <2>;
+	gpio-controller;
+	#gpio-cells = <2>;
 
 	regulators {
 		#address-cells = <1>;
-- 
2.43.0


