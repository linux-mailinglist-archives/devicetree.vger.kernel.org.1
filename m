Return-Path: <devicetree+bounces-168581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9F1A938BB
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46D5D1897765
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9568B18F2FC;
	Fri, 18 Apr 2025 14:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="k3oB2Nim"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F7F2C1A2
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744986797; cv=none; b=WNnAf+PCIkG9KE2vg0vc8pPaqvcC/BMmMM/Oj/tvjntr8iDs2ZFvum9xQcevcZ5vFy3Cx3x8dadGX7Mp0D4wTxCe6aTz8Ghmn+8I8/vlIorJWUzKy8M+Vnc5p40gr+J5SK/KiWJbNuIkfc1CGktdxuf72HKg9IHi6nluzwhIo1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744986797; c=relaxed/simple;
	bh=TZr4EE+FR8wRjrGVovCs5WfFgKtQwlV06Nhzt0TEyhU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZMeW86lcc3jCX6AHXjL5fTrbhGBVZS1iVGtInSW1RF+u2ajeL26sY7GZ9CSBPk/MBTWs4jg5yxm7VZXPO3v0/t4bx/kz3hl2IRoVGFvIwUjcs/e1bksE1LEu21yqacUIdX3n1krslvD46N8XpUwVkp7JRHI0jFQayNwPpaCO+CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=k3oB2Nim; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1744986792; x=1745591592; i=wahrenst@gmx.net;
	bh=5uFngoUCG3XAir1EPtcl6+IZoVnaLlu4FAagFZB/Fro=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=k3oB2NimC/dPFRqwNP2LKu+ERMf7gI7GcBDn7i7CX5x01IO4mB7yH4J7/NI7c3rG
	 oVYMxffCIoqkrRwA7C2RTYMNbOHD9IrJBotOhaEkBWt6v5Af1Ib8BY32VIM5IuM6A
	 BvuqysswRnMOia1Y/Maj3TYBJx91WIjV17LoPWEQytalX9OCo/NhW9NFUUsQBWIhS
	 7fT6b0ibSACRG1uJ6UG7Ojbh5lGBdwTNT+s/+DvoTmEdM6BmCmKCSKUw23n7c/oAP
	 0Ni5wTxaSyjttDIbdV1HwT+v6cUyFiiaCWRkIXbqwOPwTUpoGsNDYrqotuXyzUWdO
	 eQsjfpVaYXQZOcQxow==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MRCK6-1uSpye2jZs-00TvdT; Fri, 18
 Apr 2025 16:33:12 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 1/3] dt-bindings: arm: bcm2835: Add Raspberry Pi 2 (2nd rev)
Date: Fri, 18 Apr 2025 16:33:05 +0200
Message-Id: <20250418143307.59235-2-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250418143307.59235-1-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:gpUw5xEoDWjUMHUOrFn60ujslafi+gh1KI+HgHhDszE5BjakI9J
 RD921Z8Har11q85KCmu2xSjO9GeDZ1ypuaIhROUscWhCbUz6JIDNbWcHhjQlA51fOVNsJry
 Yb6ZpK2Gs3XnW1IBtvZBfNZse3P44t3rKGqoIbgvraqWG2bjG8lPSLmGP4l2di6DsocOm33
 UsLopmOjjpOIxMcD+Fp/A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Hf/Xq4uBt/M=;Rxi5gBTXo7tWBkPJTyaaGFQtpJF
 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

Add the Raspberry Pi 2 (2nd rev) based on BCM2837 to DT schema.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Docu=
mentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index e4ff71f006b8..2729a542c4f3 100644
=2D-- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -52,6 +52,7 @@ properties:
       - description: BCM2837 based Boards
         items:
           - enum:
+              - raspberrypi,2-model-b-rev2
               - raspberrypi,3-model-a-plus
               - raspberrypi,3-model-b
               - raspberrypi,3-model-b-plus
=2D-=20
2.34.1


