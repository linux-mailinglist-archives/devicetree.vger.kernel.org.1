Return-Path: <devicetree+bounces-88189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2345393C7FD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 20:04:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BED91F21EFA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 18:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31F819D096;
	Thu, 25 Jul 2024 18:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="UkOhq0Kd"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F75C23D0
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 18:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721930640; cv=none; b=hA4cIDNxdwm1eSl5O6nUFjRoayjGWuQCiUJo47iDJT+A8izu9oGptxfvqiv5LjVp7OpaWt0xW2ODnNnOxJcJoOZd2mKa2ROt1yJtSLXjaFYt6Xdl9luM3kgIrA//eKM7kl106zXsyn4MnB2erUV6DAvnMmOWrz/J7TWW2U3njcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721930640; c=relaxed/simple;
	bh=/vzlTHznZRzefEs/2fMphB8KF+GSXShswe1vCfDZ7b0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V8hme58JTjh9WdHDK5B3AjxsNMweXAbJqJm4kAqZ6DKwx/uGZyuL5DQZRW9ycQdBeew4VuhrwkLYt+v1LJHWgK3uxdDMizqodRZNSoITYqGCShQNx+MlNw+D+ebp7gStU71CQN6TgHOhZSGDS30e4YftLQ/JOxCEFu7PR0W0uq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=UkOhq0Kd; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1BC4787F19;
	Thu, 25 Jul 2024 20:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1721930631;
	bh=w8nfz/4yai5Bji+ltj8tkGjJLCH6SXLd4pLeB/UjSiw=;
	h=From:To:Cc:Subject:Date:From;
	b=UkOhq0KdgeRzxYu+osx6cb+48QVIUBwXmy4DulcmgxzV64OXL3sqX3BF4vLTezFV5
	 G6sNNlpXiavcGSNxzJFoVxubh1mwgd62mA0Yd0zUzKvXV789aIXeFM+eGwMGPyMiV2
	 U+tHlwgrSaRHdadomfknjucwwhP1z8qoeTEolDkc9QZpwMswrYIKl32NU+IZPsEON4
	 jE0Vn/Zpey/Axb/MMoX/Z7FDjPbGGcVaMnFrtbKSAPQBD9wAIHb7oIE9+xcVeoT5fo
	 hwyt3D12LOMGT8JA7Kn+y8IdI6gxdjpUmoRbS6+IEfaWccVTQ+RlureN5oQGEAI+qt
	 1+iWlX2ALCbPQ==
From: Marek Vasut <marex@denx.de>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Noah Wang <noahwang.wang@outlook.com>,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Peter Yin <peteryin.openbmc@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH] dt-bindings: hwmon: Document TI TPS546D24
Date: Thu, 25 Jul 2024 20:03:23 +0200
Message-ID: <20240725180337.64396-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Document TI TPS546D24 TPS546D24A 2.95-V to 16-V, 40-A, Up to 4x Stackable,
PMBus Buck Converter as trivial device. Linux kernel does have an existing
driver using the compatible documented here.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Lukas Wunner <lukas@wunner.de>
Cc: Noah Wang <noahwang.wang@outlook.com>
Cc: Patrick Rudolph <patrick.rudolph@9elements.com>
Cc: Peter Yin <peteryin.openbmc@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 7913ca9b6b540..2a4a0406dbbd8 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -412,6 +412,7 @@ properties:
           - ti,tps544b25
           - ti,tps544c20
           - ti,tps544c25
+          - ti,tps546d24
             # I2C Touch-Screen Controller
           - ti,tsc2003
             # Vicor Corporation Digital Supervisor
-- 
2.43.0


