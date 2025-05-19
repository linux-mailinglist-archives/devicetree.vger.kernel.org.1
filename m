Return-Path: <devicetree+bounces-178423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 999A9ABBC3F
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:21:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC7007A2B86
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FFB7274674;
	Mon, 19 May 2025 11:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="EXJsw4Xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723841DFFC
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653675; cv=none; b=fwwt0PjnUcSxMJif0/8mG52OvFRN9ID35A/TKu9XuVWbX4fmqFZYzi3ny05IShudDLBp2N0LSf4kQyJkhASFw8xMneX9H+jSyyLuiJctsEuRyJG7ihtTUa/hCv2dy9GFwg5PzepVWnf7yNwqO6RklAmASXKyf44HaG4HKpKDsqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653675; c=relaxed/simple;
	bh=HlRt5tPbZVxfTnGV73TDX1aUMA3EGECj7c41yGliJH8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H5+RD49USNHFiLRHyRYOhB6cqBQ+vpk2U2EBs2E/ALEJBVqW0yuhav14nZjKR1Nus5lHU2u6qDBh08uuuL65j7yJHN5B9UOXe9wnklRprtC7HKm2zK63wmYzT7lq2QsrqNrHwdvrHALI1ewnryoS44DlOB8IRln528GTGbxaGNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=EXJsw4Xk; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=Kb2EaVu+tw3z9feWzOl0s5q/HEzQlpZTiYkpCG3fyT8=; b=EXJsw4
	Xktl9gbZfKjcILnAX70a3EDODknb1RKPY/1RyzoPys38UqPV2fmDwQb4REgSDjZ6
	0HMPmdJd51SJK4DnDdEzyvrbi7RVF7CSTW0vS6sze3nC2EGF8xXXfDok1ktPiQ5R
	lceVqjhlJMqXppqSdScw9WSEBBefN5oJWesz6QNF49JkK9Luh/h4Q0sGR9zatX2Q
	MjMiIxGLdTobtYLPDCCJG0gRILhCVs5fdVlzOKBbLixzhKCnUe2YyMuuTgIy8tGX
	USsyJMH3Paj2RX62tXjkmUfdUgwcb+iWDW9FMxM9qQgBHgzRWktpfCJ5uz9vB/uE
	HzpnBmdaQGQ8aNFg==
Received: (qmail 2456830 invoked from network); 19 May 2025 13:21:11 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2025 13:21:11 +0200
X-UD-Smtp-Session: l3s3148p1@EK85VHs1WMJZz6+V
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/4] ARM: dts: cirrus: ep7211: use recent scl/sda gpio bindings
Date: Mon, 19 May 2025 13:21:03 +0200
Message-ID: <20250519112107.2980-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have dedictaded bindings for scl/sda nowadays. Switch away from the
deprecated plain 'gpios' property.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
index adc74243ed19..0b15ccaa762e 100644
--- a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
+++ b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
@@ -46,8 +46,8 @@ timing0: timing-320x240 {
 
 	i2c: i2c {
 		compatible = "i2c-gpio";
-		gpios = <&portd 4 GPIO_ACTIVE_HIGH>,
-			<&portd 5 GPIO_ACTIVE_HIGH>;
+		sda-gpios = <&portd 4 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&portd 5 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,delay-us = <2>;
 		i2c-gpio,scl-output-only;
 		#address-cells = <1>;
-- 
2.47.2


