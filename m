Return-Path: <devicetree+bounces-48553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F099D8727BF
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A73241F285F6
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 19:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4954E12B168;
	Tue,  5 Mar 2024 19:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="jUyF7ZVN"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-221.mail.qq.com (out203-205-221-221.mail.qq.com [203.205.221.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FAB86655
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 19:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709667562; cv=none; b=KoGhnE9soiA296R2DJuvjDoVpGtFw4oV72wNaSuV7zlgtwN1UbTHF6wo6OSSjEgroiPoVtcUwp1vgMih9XikFWgUOr3MIBsMaZ9Gpj/zvYeWnmWj5MqRzdkkUzrpcqKPEV0sfhQica5DfPsE9RUBUOfveLc1BhuW2OKyELHPIF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709667562; c=relaxed/simple;
	bh=QRLQxeqsECyJ6uun0xKaJizzaw8Pb5i5/HMBcCU6mS0=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=YoGnhvMXB7+I83YiFsn77QBoek1dHj8G3SFU822vBHF1OkrV6bAI28ixDak3rhb/JtHx/ZkfIyrN/OozTkPpLWa3FT/2aYH4OIx2zp6wADEut4ljnAEz2TRAKJacT9vdmIYzbMCp0Dh9yoUlnfetwT/WitcXjteDB2rhEJTyg40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=jUyF7ZVN; arc=none smtp.client-ip=203.205.221.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709667541; bh=kvuS7K0wl30nwl4M5zznAdLvDfFhfeZr9JFWkFZyoG8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=jUyF7ZVN5cOHT7Ywj3qEcddLixQuTHRJrzo9lFkEJxCwYW8k7439qmqKjiwiemxg1
	 u11+9RnBc4uGQLNtOFC3HLqX5Mob3ZRWgZBMBr1WIIvR9jUkxZqAzIF7VtJsiOg7YJ
	 fTCyVOXDR3ZVb4HntwdA2boDQoLQiR4co5s/KeyU=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrszc5-1.qq.com (NewEsmtp) with SMTP
	id 9B6B9246; Wed, 06 Mar 2024 03:38:54 +0800
X-QQ-mid: xmsmtpt1709667538t7sldulm3
Message-ID: <tencent_B68EA2B8703102213B8D437C47820EDA0608@qq.com>
X-QQ-XMAILINFO: OVFdYp27KdlJUb+gPn8mDFZOGW5r7i3+Q9v+18k8KucXeEc9YIuJb4I3WmUHxm
	 ihIZ6cZVFvYl74RBcWeAG3JRyn9PVdZXSoQ2MzQqJOfIdCk2c0jbDEoLDQD1NxDYaf2tHMvB7lmh
	 tz+aorrbtZavPnn8lBWPPhp0xm/3kXOQqG143oUbiHXNfBi86aK608GSWQx3I2BjyA1vizn+da7N
	 9mfM82wP9I5ai89I6PmQfY/K6fw8+p0jnRjxrQamwe5aJw0RPkNnjwHMePCHgRsb0gtH1kCZO9j/
	 z2tOqw5g2mQmKMKZ2oDs3WJByl8I0hk1ot8Lm5UuQcUUbGXajXTWLLIoHlzJqq0U6O/xpxQ7CWuN
	 ltqIed8qHEXB4JFHPvQdSOFeAZy+Rviij/wDLPNt8s3asK+H6jRNSI72mBM+nzgw3JQI1pr1wIiu
	 sJN7uLZf7t50ygrUDDocu4wmwE2ZPSIjT6hgPhEPVneCuvgGMImdFzkEOV1aSgcp/6zs+biuFZsv
	 Gag4oU2UCHUwIiPdjTBceksB6YSz7BoNqaFfWrS1Sze74wBYs1249eylSiBqFaheQGP9sB6Ca9qk
	 RWqa65y7tNcTlrI++Pcd+YMsbP4/u23W54ayQ59MZ6S/V/tAh930LtZtGS33tUaIUu0ed5bSzbrE
	 9Ja5fUU46WGS2yl9UgVQrBzrqBF3kTP5P43qBLtwFp4BoeL9qUDfFvLTxMrkTZq52DJZybhCzTuM
	 6J8C4nkA2NSj0fsgoZj8vs/Y5Y4yrSaN3mo0rWchfso9MKWw/9eT+5rzQ37crmPfF3fCWzj2Hi0a
	 VtbRM3zXiWO+uhKKAn2WeKff/cx4suP5fhgO0VZoJp9FIwsradJrIc0reNwH2utTTgMaog5tmN5T
	 Hq6C5IZAxkmmwm1l4GL60KXDniW9NN2UBRo8dZACfMFAu1yQ5XIAYVS3HstxYQLa8OXG9XYnYnIb
	 Euws5HmKNhRtXJKzG45Rqpk/VoNnFuCZzZTM4bj7pZek0K3gfC5GtvoscGH9W9bV0TJqOG7yMMeV
	 tNWJhuPDOti+sDmSK2Eq3Ug1DG7tA=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/7] dt-bindings: add Canaan K230 boards compatible strings
Date: Wed,  6 Mar 2024 03:38:26 +0800
X-OQ-MSGID: <20240305193831.1084556-2-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_587730262984A011834F42D0563BC6B10405@qq.com>
References: <tencent_587730262984A011834F42D0563BC6B10405@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since K230 was released, K210 is no longer the only SoC in the Kendryte
series, so remove the K210 string from the description. Also, add two
boards based on k230 to compatible strings to allow them to be used in the
dt.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 Documentation/devicetree/bindings/riscv/canaan.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
index 41fd11f70a49..f9854ff43ac6 100644
--- a/Documentation/devicetree/bindings/riscv/canaan.yaml
+++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Damien Le Moal <dlemoal@kernel.org>
 
 description:
-  Canaan Kendryte K210 SoC-based boards
+  Canaan Kendryte SoC-based boards
 
 properties:
   $nodename:
@@ -42,6 +42,12 @@ properties:
       - items:
           - const: canaan,kendryte-k210
 
+      - items:
+          - enum:
+              - canaan,canmv-k230
+              - canaan,k230-usip-lp3-evb
+          - const: canaan,kendryte-k230
+
 additionalProperties: true
 
 ...
-- 
2.43.0


