Return-Path: <devicetree+bounces-48227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC588870C33
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 22:08:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4CF11C23292
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 21:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB71479F2;
	Mon,  4 Mar 2024 21:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="TGr5K9G6"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-155.mail.qq.com (out203-205-221-155.mail.qq.com [203.205.221.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA14411198
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 21:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709586474; cv=none; b=O/cHMpp9/TH+9q6pLwBjcWWO1Bwat4axFDgxuntmkXbMp5dBkHBoO5sHQiEyuJwF6QlboxPpQsMS8OedrrN17Sln7CbzuLQxJm18kC0TGleEx5o73zpstrY2FBWeCTNFVFWfeJUQxYSaHDuetqTJH0uGicJTdwq73oHP3x/VVwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709586474; c=relaxed/simple;
	bh=weW5//40oIeSOmT3+nNyK1hV5Tfvi+28xWQO5yyRa2g=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=bayXwt8fJDPvhtlu0QG6JYCR02eB3qx9iWNsfxr8pWwlWRebTqmV/8+UvZpu5wc6jTYU2z2SFScOVXielCULI0PxoPd+5DdxtOGLuJ7xrlHbor2SktDA0vK/G8hO9raYQby52tzb+MG2DkgSkOes2Ol7HQEWXFdY6ML/vcD5t7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=TGr5K9G6; arc=none smtp.client-ip=203.205.221.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709586463; bh=pMaLts8PXA5REiyGeypCyU36YZO+RzJa569u2oVazis=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TGr5K9G6kzQ2UV7n7VEbff5NWnFMMsm22S3R31b/buJCNSwvTmBFVXuhexBw7Co23
	 DeGFgD/srxsokcNSFRfYVBeKkCkEoZ7mvOLiiWbNP+y6DvHEhrVFEhoWzpflv/YIRQ
	 lDBYNe4861ayvxUR4FyqLRN5BJpFujuoevmufrmg=
Received: from cyy-pc.lan ([240e:379:2240:e500:994d:62ab:74a6:932b])
	by newxmesmtplogicsvrszc5-0.qq.com (NewEsmtp) with SMTP
	id 1953A8D2; Tue, 05 Mar 2024 05:06:21 +0800
X-QQ-mid: xmsmtpt1709586389tfhvjy0km
Message-ID: <tencent_CC6884F036B6F3D50A6269733BEAE226C40A@qq.com>
X-QQ-XMAILINFO: N7h1OCCDntujUM20gunPaMedHkDBepcC8+uwF0oYczOXSdekrAihPwKwaTG3s3
	 WmSohxDN6+V0rQGtpzybTDviWfbbJqiJqLjvmYxKpSP8dWGRDhGwmZKFpeY+UcsR3S5k2HY1bu/v
	 rwsxzQuLj7RjbBSD/bVBnOZriqSFsse/K/2IlVILbvVr9OQjwcfrilAY3CQk2G8eZnlDVjwK3eeK
	 eaz7cy1Uw0lyDu7I/gQramQlatjcshUnERa9W1Inbx8kB6eEhEQvhzlBzCALzfu1eaIlFti83/hX
	 chC1CscEVeWmvEtmFK/kYHkg9RcOQyZb7Oo7P2FIFtEECJ06cQ3jr7PalIkv94y7cTRJeEcdqXDK
	 zrOmtn0ZuvORy3xN9w9OqLXRXzQx9TxHkgAvt08fNrFGqb+UkbVxTqly9IYWoocj5sVa05eCqbkN
	 Ubh1dKEHqF2u8gFSx6xOXCiwo47mPIlnMvcNawoAc7xq6P/xydXespiO+ObcvvwjO4TWAqwSREGA
	 Lrxi/UOB9Jh3NV73emoTB0WlRVDc5LpeCZlyVGnhzMqc4TtR9Tgzozgxjw/bDMb0CaFQYF7UOO9v
	 lCA7jOySVlyIbgH5uRcg1IzZ5WMV2vMiWmPuTwlCIpy/HFY/s97W1AFPUOrfBkP6JkFqg66B4TqZ
	 kEPaQnP7yax7ps3zT0jdrlrFg7yhW2ydpWmWhk5zKUDnnfBVEWk17Khm4a1S37kawK60X9toWLU/
	 Q8MyHUMLtYn894lwUDhv7u049CbXtpITq4sgv7osPfi4y4fxHLpek3Skoxaau9g7FfpKVFsUUGp8
	 faUaYou4e8pC/D8C+ZmbAyMgYsok6P/2xkgklWWUMnjz2ARBP8C2iEc/TWaI9ILAIeJWgtNFgr4f
	 jISb10vTSuqGK57GRy7jZVOSltJ/uNRrw7tZf1OQ8SpHTYLhnKYKqk4sPCEYIcHrvHKDKw5fk9mk
	 wseMuPwo4JF9CwU4Rnjj3LdIxv4F31IvExtgH3wqeucztDHo9sQt3V10YZZC8CXbbzsj0fzPNYH3
	 qa3Bn1UyH5oTJt38VUa2GSgv0KVVvgUPdW3jrnoXHB7HXaIFhZ
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
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
	Yangyu Chen <cyy@cyyself.name>
Subject: [PATCH v3 3/7] dt-bindings: timer: Add Canaan K230 CLINT
Date: Tue,  5 Mar 2024 05:05:57 +0800
X-OQ-MSGID: <20240304210601.777883-3-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_BB2364BBF1812F4E304F7BDDD11E57356605@qq.com>
References: <tencent_BB2364BBF1812F4E304F7BDDD11E57356605@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for Canaan K230 CLINT.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
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



