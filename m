Return-Path: <devicetree+bounces-81574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF2391CCA7
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 14:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8C15B21C2C
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 12:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB68C47F5D;
	Sat, 29 Jun 2024 12:17:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from trabant.uid0.hu (trabant.uid0.hu [81.0.124.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B9D1E487
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 12:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.0.124.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719663441; cv=none; b=t4UpY9075/sAnuZn+7MKXZa/84zjRfKXkRkUmQA2j4WJeress3LNdDHkmku2SrBHeZTJaqZRzOBrLzRulIktBsjGvHPiVIBB3ZT7ruOjnMPFgqpsVEPjqllt3fOX2N+VSTu3i6NBWu+WgFc303V3+K6SERSxiyTFcBe7CNe79z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719663441; c=relaxed/simple;
	bh=n7yxZCO3tYU7pup3SB+ty2S7I3joMKJ0A6/esUsHlhc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hz1qQMxJ3AGx3UoZo1Im2OucKF8SarprOXX7NTVr/5EQSULw18XJhXd865qrhVw4m4hLgeQTAoTpKXgICKi37WBMnvfk7rkxIuTWmPcMKwZHIzodGPJ2c4ygiKMw2XmFziLYDDzMVwO97E93DSG6CEaMsyy2Du4oHN9n1fIH9vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu; spf=none smtp.mailfrom=trabant.uid0.hu; arc=none smtp.client-ip=81.0.124.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=trabant.uid0.hu
Received: from wigyori by trabant.uid0.hu with local (Exim 4.92 #3 (Debian))
	id 1sNWMg-000XYR-Tu
	from <wigyori@trabant.uid0.hu>; Sat, 29 Jun 2024 13:35:34 +0200
From: Zoltan HERPAI <wigyori@uid0.hu>
To: andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	wigyori@uid0.hu
Subject: [PATCH 1/3] dt-bindings: marvell: add D-Link DNS-320L
Date: Sat, 29 Jun 2024 13:34:48 +0200
Message-Id: <20240629113450.127561-1-wigyori@uid0.hu>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: Zoltan HERPAI <wigyori@trabant.uid0.hu>

Add DT-compatible for the D-Link DNS-320L NAS.

Signed-off-by: Zoltan HERPAI <wigyori@uid0.hu>
---
 .../devicetree/bindings/arm/marvell/marvell,kirkwood.txt         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt b/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt
index 7d28fe4bf654..4a70dd1b6b65 100644
--- a/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt
@@ -30,6 +30,7 @@ board. Currently known boards are:
 "cloudengines,pogo02"
 "cloudengines,pogoplugv4"
 "dlink,dns-320"
+"dlink,dns-320l"
 "dlink,dns-320-a1"
 "dlink,dns-325"
 "dlink,dns-325-a1"
-- 
2.30.2


