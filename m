Return-Path: <devicetree+bounces-48563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B6760872843
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 722BA28E983
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371DD12B17E;
	Tue,  5 Mar 2024 20:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="NSbYWgwP"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-242.mail.qq.com (out203-205-221-242.mail.qq.com [203.205.221.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4083D12AAC2
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 20:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709669007; cv=none; b=Fsogdcll//f90g1u4fHx0UJ1Xs5czmAzRAbUzGaYkekgmN5mHEPuKY2NudSvsIwabS1OgGJiJ4SscgJYjUN9ehdXDl2D5QUWVbFssAME66Bj7fYD9RCm51kzX3HHp7R1ux4C+3QhRY8YyZ66QZZ6vymOnmtfVwOIV0EtE6SrdwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709669007; c=relaxed/simple;
	bh=D/KMwLq4BOc9cv9HxUIGRIwn6T0bHiF1kX7s21tFYrc=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=q3UEMCjPEnKPAvNIx7qEa/yfqdwq3NVGRbpQOeL93zQUzCYKxPtUI+IY1GdOGNWCIuGc/HFs7OyqBtMfuLxoMzv4Y6r3z75sHfpzG7XR6fxhu4u7ZUKFLoHSvsTRkY3X5xEZEcsJFaiNPQh8tV0Y6c+Msc6CboUvgTNfienTXDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=NSbYWgwP; arc=none smtp.client-ip=203.205.221.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709668998; bh=PAM4j2ksJa+2g8XGyPt5ykutgrheVO90IJO4uiwNs24=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=NSbYWgwPEEn6zFfih7tipewtKDT7JAbkIpElBFiy0vFUa58bRQ+XMKTMMEC90XhTI
	 vrcTMEdu2nA16PlsaO2QM/YQ8lFH2oOIYczbAuEg3Sxkk4FNeedbPukX7mwMYOSZDQ
	 TB4skwJ8lUy/Rz0zU7L6/xYVfC8/RmZrpfV7h6hk=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrsza1-0.qq.com (NewEsmtp) with SMTP
	id C898283; Wed, 06 Mar 2024 04:03:08 +0800
X-QQ-mid: xmsmtpt1709668995t8n0r1578
Message-ID: <tencent_93C7B4F91D79712162D243201AF9F8520409@qq.com>
X-QQ-XMAILINFO: MFWpArBVhhGTvYuSpRDZ+TORo4nQRbtLDg1dg4g4vTl3tn60Xtzo3eLAv//l0f
	 T43CjN387Ua2xf+kGVmRZB+Scq4zxw4gazgNVSvPKr741UihKi7FqVfvGGBhHFm02q52ku98GV/A
	 dzAdcrmSkLHhFjAdm8gnpUXiy9YGFLnApglcl9eSHpUSjYDURm0tv7a1b+ZLlyKpZeCLjJ4viCVN
	 FsqirxOluloz7leaJNEySO5n2iePRQZkgmGkLFwVzVSdN8o4E4c/WjPGfbH1lGpkfuIIy5H/Ud8v
	 irlHh1UFY4uIDZp1w3MIt3toE2WLdDT7XVQkqs1P3ebtCnWG1ZyzjNM1vdB4GYTw3FXsrrEgQU+1
	 k2nCiawtT9+S3gDcAGnwGNLFVucPLgxBZKFwiDrQdWSeI2UXK2YX4DHFyFOh2EcR+U4fJ7JdFt4e
	 81cysn8zdxdGa2g3HVcp+rGqV2zlNPNJuDUiUd5FdTlxRgyBXrHgsO15Nll/QEoLdmhR703fAF2D
	 64YxWZTPxbHRiixBV8h7BRMuMkyWDfXgp9OFRBgQKL2DVwjVaOOitLIZPwhT8HgT71+O7h78/J4m
	 6dHWo3ls7YTCHggg6W/q80J/e3R3IhBCDNy/D7p5LIJ93J0MlDwyp6Spa9+2M3r+A6gJMdNqpbxh
	 I9Mbg1Dhsty4blG/UG4qXij03BWsL9cKkSP9oQnY3NIFWnR/FtiNrYAN2f/MXUmBmEfHZTFhsc7N
	 s8HDdns81OXsNXsSblCN/1uS29aLJJUe5q0HMBeMdzdJjCxk43kCBMtkvalXb2FEn5gwLjZ2anKz
	 Obj+tqjP+A3SWyg5Kt4A3/0VxuXX5RQ+wjQpUScb+wseRcYVurtSzKq+B1DX/0YWra7CKPlDPgMv
	 dC1nFSb9wX2iF6UNt7+O+OlviABteaij3KkQs7K48gO2tyDK/GCCE/fj4UOgaDM/mxXlcaBAd8lE
	 RgFYam7ynEkaS+mAopMypPkp6ANFN/rDC4eEwIvNB8Raqapph1Nc1CDjQrAyLXTV8uJBUslJdXZK
	 JXRQ4g25PtaTf8lPIE4k06KUvDm7Mb1vD/tF8A6Eizmwqc6a6n5d+AV5FS+8UuLZvom8d0Vg==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
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
Subject: [PATCH v5 4/7] dt-bindings: interrupt-controller: Add Canaan K230 PLIC
Date: Wed,  6 Mar 2024 04:02:59 +0800
X-OQ-MSGID: <20240305200302.1093082-4-cyy@cyyself.name>
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

Add compatible string for Canaan K230 PLIC.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 709b2211276b..122f9b7b3f52 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -65,6 +65,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-plic
+              - canaan,k230-plic
               - sophgo,cv1800b-plic
               - sophgo,cv1812h-plic
               - sophgo,sg2042-plic
-- 
2.43.0


