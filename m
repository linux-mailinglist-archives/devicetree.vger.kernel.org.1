Return-Path: <devicetree+bounces-48551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8FE8727B9
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1FA61F2866F
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 19:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52EBC128831;
	Tue,  5 Mar 2024 19:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="xj49IoD5"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-242.mail.qq.com (out203-205-221-242.mail.qq.com [203.205.221.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A36686644
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 19:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709667554; cv=none; b=qQwOWDJXmYpPuRBgomStOm5z45zLI/MNkM4caMc9IAFhXTPB6Sm0MA77/UiIL7eghFNQFdwEmvAXyMgNLSejG0Xavewu+2x+8gE6YmZDmuCdWQra8WsRU5Fra7+w6F8xrbXFBotMthlWpsgIEOUGEsDzT4VVCl6kJkC4TV3M6vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709667554; c=relaxed/simple;
	bh=D/KMwLq4BOc9cv9HxUIGRIwn6T0bHiF1kX7s21tFYrc=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=HNQpGK/A48xOROo2AbBBBC98kE4KDuIuLYq9lpZEsa1/g9B9rCMU/TH+eciNx2DgAtxcsW8Pl2K96xKGb3i9h1KcR7Zwo6YyYz+PzX/TugRv7Ezfm7TAx38+CJQXLyTtQVYDGK/xm/VUw31Hkvo826ia9KQCasxB04kYGcl/2rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=xj49IoD5; arc=none smtp.client-ip=203.205.221.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709667545; bh=PAM4j2ksJa+2g8XGyPt5ykutgrheVO90IJO4uiwNs24=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=xj49IoD5EHf8EiJhLA6jeYq6w+pLhWDVgupIXcQzgi7auxI0RDrv/dkiQqMrzYYIm
	 GaU5r+SpFx6cIkwse5YCef3Yh2zbcC/gjmikju4oHfoG/k2epNotRXdPVCbe4obZK8
	 U6eCLFWdlmjt68i4f6gvHzDZcjBjFqoKxa/mPlM0=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrszc5-1.qq.com (NewEsmtp) with SMTP
	id 9B6B9246; Wed, 06 Mar 2024 03:38:54 +0800
X-QQ-mid: xmsmtpt1709667542tdlx0bm03
Message-ID: <tencent_368E67B8BA315F21068DEE7C158262DAA308@qq.com>
X-QQ-XMAILINFO: MDbayGdXPuoeWhkyCDBo0/3zD5Ub1Ne4uOLQ8UAN0XaOzrIQjCnd/2+jO8gaUj
	 kQWqoS8J6kwy4Hv8Xmt91kNYu15e1sL0u7oE5AKG6d+u5tXGEU7HiFgYX6o7gChuxFg7wfoR1zjc
	 GcWp6DT0qm4xe5Kw6HRLdegmyNZFTMXnT8jVUf/qQcEnpmoYpMSHHgaHocYk/MnVWW8PZhrNkt+n
	 FMVGI64vBZxfDHbsGj2LDKzXDApGxNWWYjZF12D6gDbzHOihs+FrDbEnXNwPxvyToSExOATSFW5f
	 S1M29IooTA92kParbUnYY+rxhrDets3tMcGlmWUh1Xv8HT5D+G1nKhmeFgo0SMc4etE1w6CL3/Qe
	 495mdI0eF9gj3yKRnVB2bKyIfRcC3355GhVLTMKTuv4+6qAhd3qHMtsp/yPa7QnBXZmpB2Sh61oB
	 ov7TsJQTCudUryDAgLycz0S2XLk4lNwIx8sCs+2mS5sR2GgyGgGa8eA1IGL4clxoBgcjYJWY2EqO
	 R3K3165G4v5r4bKDyMSu5xgOp3T5O3k+0mI5DUzanRCLjwAJCMqE32iQOqMj7wcvq1iV2xUgnrqE
	 JDcO8iNL3imaaaxBjYf4gMRZ01G/INOuM8+ZsoqL5w4ejFsiDbi0/AFUTnot/1cl4oZOad0XioOa
	 QojwgNZZIzvRjTdMsTRersfpl5Mrej7q/BzPGS/5UNY7Phu0ZjS/ymgMMc6uqB+ReunT6IMzCaOn
	 lbVRr+VWc+8I2kPyRYIEMndzvZquMW7z4s1sFyooDcznnIt9zFt9yvLfMuIL+hVw5CVL+Z06NacO
	 61wSmnIYES16J/dk+/M5u+WOXOqaxXwYuzvMeT1Mp1yh1A7sitDdztx1cnKH4aZ82wGr+BZFWMK1
	 qwQZJ5pXTBEb46lyD/f6JguZyCKdTK8rL25s73tvf37SnDF8hbaDkusL5SgX/2lHoNL8Ds4CsDpD
	 n6Ar9qZxYr6ORr2mnX4UKmYax33j3KIqURHUgFM1jSEQurcPxEexeQIgs1UoVRApowjbg/JEIFZb
	 buDEI5k3wpu8hhb/Wj
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
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
Subject: [PATCH v4 4/7] dt-bindings: interrupt-controller: Add Canaan K230 PLIC
Date: Wed,  6 Mar 2024 03:38:28 +0800
X-OQ-MSGID: <20240305193831.1084556-4-cyy@cyyself.name>
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


