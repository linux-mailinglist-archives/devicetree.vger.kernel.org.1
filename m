Return-Path: <devicetree+bounces-132135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2401A9F5F7D
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:42:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F269716664D
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 07:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD35C15D5C5;
	Wed, 18 Dec 2024 07:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="If3LkKEs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC29C158D8B
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 07:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734507710; cv=none; b=WCBKsirn45HOczIHrh3bYnFUskT9nBMaVsM2/e845oaUpRelH+bn5EE+N4LSE0EXzLq5IyhvQb5bbEmQwMhgzmDGp0PCVN6rPrmEzQk+U+EeVx/YqV3zcIW2IVh/I44jqqDxJG4C2DyTCra07CN2lw6cKDLSrwRSjVL/aCXTLMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734507710; c=relaxed/simple;
	bh=FrZgWB2yWo4bERxGxTtSd9dtQyUEytmgA/wGVCi5Dqc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jDvF4hBH2JGXrPhR6DzkNcCuD13ycWCwzhANlras194Gtow++MzL+kYpaxEV5bH4dDBs94DkxZDmLcMqt9F3XZhmSq0k7MssDKM3vtwBkxLZk172yBrrpylB9rr1zoqbnoEYZrHJQHQcq3zQJGxCL6zGRNmxGG4wzWj/Sy+aaYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=If3LkKEs; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=a98PHnlZySAGXXFpfVOSs4b90C2ExeIXDfLvrYzmPcM=; b=If3LkK
	Es7MnoBnAgkVe1qEPfroyWCkdFAjg0GUbL/QdxUyQ2e5TaFhnZQjRm4lxnf7SE2I
	bozSlwOvcAphsXroxS+CtfwESIJA0zrOJ8Z8ZrCnPqqt+gjsIrvMISZyEZpvF9FO
	ZFeXnUnTR7cvu0SpvZg2nxMq8XeIUWf8GexrDREOhwb0O8gNpe/aHT2yk+rvIf8j
	isv+8F0aMdHn6q82hWXsWDBkGZHiCi5y8AT3NPo4MKAqEdDF6Oyvj8MBZa2n8X0W
	FsV6c1EuZS1SKeiCXB6guvOGz2lA5mCqlJCC9jL0fNc7N5K+DArAFBtt5RNe8aPM
	3bC89HDKsBLvddLw==
Received: (qmail 204808 invoked from network); 18 Dec 2024 08:41:46 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 18 Dec 2024 08:41:46 +0100
X-UD-Smtp-Session: l3s3148p1@aS23i4YpSpwujnsY
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: hwmon: lm75: Add NXP P3T1755
Date: Wed, 18 Dec 2024 08:41:32 +0100
Message-ID: <20241218074131.4351-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241218074131.4351-5-wsa+renesas@sang-engineering.com>
References: <20241218074131.4351-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add this LM75 compatible sensor which needs a separate entry because of
its default sampling time and SMBusAlert handling.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Change since v1: added patch description

 Documentation/devicetree/bindings/hwmon/lm75.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/lm75.yaml b/Documentation/devicetree/bindings/hwmon/lm75.yaml
index 29bd7460cc26..c38255243f57 100644
--- a/Documentation/devicetree/bindings/hwmon/lm75.yaml
+++ b/Documentation/devicetree/bindings/hwmon/lm75.yaml
@@ -28,6 +28,7 @@ properties:
       - maxim,max31725
       - maxim,max31726
       - maxim,mcp980x
+      - nxp,p3t1755
       - nxp,pct2075
       - st,stds75
       - st,stlm75
-- 
2.45.2


