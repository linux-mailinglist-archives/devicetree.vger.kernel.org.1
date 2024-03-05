Return-Path: <devicetree+bounces-48559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D287283A
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A11EB27C78
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C08D86644;
	Tue,  5 Mar 2024 20:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="IizAeKiJ"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-190.mail.qq.com (out203-205-221-190.mail.qq.com [203.205.221.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9296660EF8
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 20:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.190
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709668998; cv=none; b=igxfMniStnCEulzMJuy8lOb2xUBtaFK8PoJ8NIaN/6Zo8RmLTj+hn8CN4Im15ThDT3G0dMAenP4endEyyq2K56lZSamH60H/ab/owuLJRPKmFprXmGd+2jinLB5viyHsq8yOwBXwnC8SEU0CsadDVlj+ptHhtXljnVwdr3ReHCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709668998; c=relaxed/simple;
	bh=QRLQxeqsECyJ6uun0xKaJizzaw8Pb5i5/HMBcCU6mS0=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=l3z3DoYbz7I2J/kl06AFE87OOaljy5LL229qPHz+C2BmFwdiYC2n1Nuwm6UBRKGomi2wSkYemQi29oLWM9nsIBP8kZlaaDgSsr/To79uw+Mf9qVwiUDOuPBoYL9NW0BFWkoq7wn2XpDQ+d2VDiC/0coN1npSdFV0SNyP3V8qZxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=IizAeKiJ; arc=none smtp.client-ip=203.205.221.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709668994; bh=kvuS7K0wl30nwl4M5zznAdLvDfFhfeZr9JFWkFZyoG8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=IizAeKiJZElcZvRpGUkgHE+zJ7hYWr5C4HA2xC1OY0DtfFv5G5e/M6BQI/3zUU43a
	 RPC28T7QU9iP5Yd8HnYur9Yei2nD3lDRemeHJWsmyUJ8moQcNDjAr5DXP48KIxwos6
	 5oCIHtI7WITFZR/YEfOm/t5ZHFkvD8tyqzMw2qeI=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrsza1-0.qq.com (NewEsmtp) with SMTP
	id C898283; Wed, 06 Mar 2024 04:03:08 +0800
X-QQ-mid: xmsmtpt1709668991t51dbf17e
Message-ID: <tencent_71D182BEDAFB8E18B8A731AD21528D647C08@qq.com>
X-QQ-XMAILINFO: MB5+LsFw85Nocr6fbMh4xTQw3mSzIOZrRGAfu421uLuIFWnEw2MuWI/sjuKaT+
	 eVaLjbMXc0z6hy7cZlDvhhVhMmj7KynZ1YO3uFRRFdGTNQW35W9NoCBf5wx08YqeqFGm+dgt/pgY
	 r7dq+N6ClD9OXPdqNxYDDKYk5anIuyjokGIIt0F0SEkamumhT+lXvvDDjfFFpU3nGlskEivrniZz
	 eOWtxJ8d7sJYOGnzbdTHa/qehRnLh3UutnFPRUMMutzhsw8PkWEWioFI7LEeYLU7Lmr6CBMHblVk
	 Ga03nyjpoVSn2PJc+xFrLSw4wh1KSwXNL+e6Ou9sdVV+inMS1vUby0W9hMIRO6nyZNOKLv9vhbNy
	 HD4IkXgp8P7/bPwCutZ4APOSsGktn9yPMgTs4zWgIBWpRofaWGyIazs3LYVgpjJsatwKNxYh0jGk
	 mJi0tXoJRXmnvS5wsXeu+l1c7inKY4yXHJ38D699t1n9/bu/rk7I67ssYAtfAurRAwJslyuQxyjC
	 /DNyCK0Y3cqmxIt+/5p7102oeIY2I6NpDNcOtoJJoqxjAGspZ0RgcQnseH/rfe9n5Svh/Wg7HSQ5
	 g1z/yzD6ZV2z6pAB4WrAn6il0StW34dfREtdOaTfNilCGy0AwVAULmgydvFtj2/kw1Jtcke9VEYF
	 EsNGytVlV5rVFY4/WYnMWEDJEQB57DpZo56/S+Z7gjVqU7fMIv8v5kvz8eJr+YAy51f4Gw4A9cyv
	 I5vWCGX1aIhOFmr7x0AbQeMZFPfNTv4FFJqkVt7hMOqOswTi5rbpom41c2T5/vQd2nnmK8fTgWdR
	 LfY9nuH+Lao0K4pMpBTJYNn5p4W0dmvMOmKZjI76r3On828EuXrfeonX4LWO7A5JzL35P+7MerJt
	 lfP8wwMkxm0pUtIwl2UanU28lzCIewXzavi2jEAyZkecktmenCTE0g/gkwupbglfoSH1ISmRUZKc
	 QZnhhOhxmRmoAk7YujxEDUCc5fCPTjbObM+yDRE7wYMVQJlMkRUA1NQ73VtcSMakbNiQrCKXvKyq
	 4U7dbtIee4BnaieJvLEFIQA8mC75CynB9lpKBBSvggCS/npp+BQt31T6BoZrFo3ME42iyjZw==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
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
Subject: [PATCH v5 2/7] dt-bindings: add Canaan K230 boards compatible strings
Date: Wed,  6 Mar 2024 04:02:57 +0800
X-OQ-MSGID: <20240305200302.1093082-2-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
References: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
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


