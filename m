Return-Path: <devicetree+bounces-48549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 553F68727B6
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8E2D1F28599
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 19:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3860086659;
	Tue,  5 Mar 2024 19:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="SqSU8QFI"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-235.mail.qq.com (out203-205-221-235.mail.qq.com [203.205.221.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568875813B
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 19:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709667552; cv=none; b=RBKjLnebO8+l/SGkVgzeDm8cdTn6rptTLGoJbvFLRbCV3p47mL4gKN+V+CXkAyVXBNaUmcnCJkuQbOIakCNZJDuAieyAFa0ogr4lOc+L7BcCE9T0t/pea+N/y0MdTPRXaKoqdET4d56x0nj+0pEhblOzUVnf7Z7JgUR4Y1cNuDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709667552; c=relaxed/simple;
	bh=O7BvSwlYz5q/4vtoLO0hK6uwpygGTir//zkJjVtpwBM=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=hrPQJv8qw49TWZNbiqMhp+J864ljOK/9EW6SEKvsXx/TelhDL92BTOUXlWRJRotjo5Taf2dBSKHi320e9bZ9x1p+AksXKYMOV4PdCUnwY+XsDOl0JOVQ8wMcO+FbtR3WWiT7NR7Ufa79FVZVrakE6fP2MESxbHxES74+/GbHlYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=SqSU8QFI; arc=none smtp.client-ip=203.205.221.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709667543; bh=RRjix0llQAKkZ0Th8vUk4UX/Alg4KPw3+Xw8qybrfN8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=SqSU8QFIL9W7ZW+iDmSVSq13xgn3Mx/aGpkNNYeAQ/yhnUKbM1zdkj+8z7SJ2TxD3
	 b12ACg22BKhSpDiuJ2mDGLUCNLWSat4LazP5gAEKVP2gcsrGs0UFKrjOQRW7nNUrV3
	 OvXu+p9w/rnhwT35O+o7dkUaGBI04yjpyj+roaWE=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrszc5-1.qq.com (NewEsmtp) with SMTP
	id 9B6B9246; Wed, 06 Mar 2024 03:38:54 +0800
X-QQ-mid: xmsmtpt1709667540thoirjwv6
Message-ID: <tencent_7DA0F188AF4130573BCD9106F738862DA405@qq.com>
X-QQ-XMAILINFO: MR/iVh5QLeie4OtLKJmFhfdwewlzjSHecvDggKwqR1CfOGM21ebqXl8dHq598K
	 +8fI4AjWA+pCGw3tuPpci7DcYAzcBtoxedHsBr+DAx/GBAcD4mJCBhoA99iwOu+uORe77yzvgpfe
	 QOU9OoF72SBofkwgdaVwTc1RImnsNGVP9tgygPwDF1k7+rzUXbaowOAV7QfBk95wfqzQ1AwvheSg
	 dQ2hRxrQUpW0iQSNclgAFPRghQe5shn3UNkPUoeJGuU6ErJ6L4xJEx8bXg4IsYpCECs7hEAgFmHw
	 geoX1jRom6ywkD5R6QyR+QmNRhxuwVha44JUvn7CQ/le7yJGBG1WwG8jj8qZg9v0BAcBi8DtTQuB
	 bQ1WyJBjDOkBh6mSFI9PbRRTTBnZg8m8n9UA4jPECDTKLB3tNAQCDwJgleQEEqHjYMFiUCKFPW+H
	 Fzb0406vYpJx3c4OshEpjIQhrxjyxF2U6G23f+KI1GtJoKmLJhF/tUH6bBToPWLHcDLRK9LjAFjG
	 hIrayCUzrcm3jceeJmbaFu+bE65Wa51x/X1JDdTwO7pswdPDqqhFmhYCdD3mUAI1iKIrkIB0OFVY
	 XX8oGRaBZLyWOt5f4Y7cDxZoSNbRfW9D6l/wINvZ0MG9z4E/zRYU7T9bYUBT4bifz3Z/X00WPwAM
	 VVjEJjDUkJuwHXbEH7+2Jp7VS+RO+Uu/7kKLt9aVbjO/2T8rkSyhLEsJh5RydH6Upl/si9m1T7U2
	 5gYpeCVYu7a+yNEqHOOOKiF30JonidkEhCmywIRPxufqz4SlUfPXvDIdrh2ohiPNV1BGF5ZWGnEn
	 nOZoFyMovB6/g3Qcrqm1MBHhGYrh9kEZtFvZZv8KiAYb67UugXPK7B6o/3yyWoe9pC47BCOd/kxN
	 e44PuSt+82MVM4fNXhaCYF74kHE51ItAuG7YyA4Nf/rJLbaOHAshBJBfe3QvZqFUn6Vz5GGRxiXd
	 Mveg1s7Q4dXFLfJVqiF11F9hFGYrPhVGEpD7CAr/zeLfquRvYAJsJNU1THA+8uCyvoZP9tszbZs3
	 WeD0BrlbkOl+D4YPkQXkx2h+tjF9Vlh3CU+3tGHTx2Ay7zhzdj
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
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 3/7] dt-bindings: timer: Add Canaan K230 CLINT
Date: Wed,  6 Mar 2024 03:38:27 +0800
X-OQ-MSGID: <20240305193831.1084556-3-cyy@cyyself.name>
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

Add compatible string for Canaan K230 CLINT.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index fced6f2d8ecb..06c67f20ad3c 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -38,6 +38,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
+              - canaan,k230-clint
               - sophgo,cv1800b-clint
               - sophgo,cv1812h-clint
               - thead,th1520-clint
-- 
2.43.0


