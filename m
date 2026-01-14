Return-Path: <devicetree+bounces-255271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A43D3D21BD3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 06DA6301315F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28C138F256;
	Wed, 14 Jan 2026 23:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="06E9X8Db"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E988E38A9DF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768432771; cv=none; b=EwNXiMcaYok+9DTFsy+/w3OLVIbfBZfGAOi5DgQ2iCRdrRDv9iJ7+zdjK2QHZSFLGlffKAxH2JxM304BrmeaAa2j++Ad6VOGMhqm+fnnCTnBPfOmlxEvnvKEiz213SBr9o8O4pfdssq0rhHXT9ovFWZy+QDHBzyU8z/5jakNLiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768432771; c=relaxed/simple;
	bh=g9R/DgoDWl6EF5D3q8DzkV6XBEbhurMxaGpLqhJaO2g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PhrbVFTyljRHhYA7jtRF/7pJ9wcX7jF9HONmn/FBXNX8YHjCg6zTdZjloIDGHibCMHO5X8gZPOZAhHPXQzJZETOYvuFWe9otz5gRbT4E++6CE+iSTRHIEnlZ5Aw22YwSuaNrOU+TtOZzTU7eANff0drVh8DlolZK2ARTt0vxcIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=06E9X8Db; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a0d5c365ceso2542585ad.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768432763; x=1769037563; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaSWKwxLaghni7N9hjcOEG+LzgsthN0XWKW1He+SYHg=;
        b=06E9X8DbDizq7HZjDrz3eH+WNaCfytp50w6SeXd5h1DnyTv24T1pO39A5//oEqud53
         Q77qvAX7eFz1dxddDuvHqkpSZdQCePXx6padmaWdPABpG1EAD4ILzGWby3wjK+ZtNWXX
         VwQml3srcYfu9h6RX4iKcMLJPhweBkhtwnD2gXb6gRzFT8aukOOzFp49eWwzcjLkQEns
         3HdsZuMQw1idiWZI/qKI9lZ19ixCH/4PdxK0GW8d1ch/CssAVJcPb/y3dN0Z1F1vAfie
         duWJADyVv3RI+8kwy0eaXgALEYM6GbIz+fW8rNv0Ye2QlotYyDGm2OuBZuCW+b3zbFV+
         h9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768432763; x=1769037563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kaSWKwxLaghni7N9hjcOEG+LzgsthN0XWKW1He+SYHg=;
        b=h3Ze1ip31HXs6l2LEke9odGiSVeMZ5JcYT2AYhRWs8102Z1Hkw+Qtzt84yl8mwJrbD
         IlngJPRIn0aZfXVrBIPk8ISLgrPGYheVHFF6mo4eJs09oOx+0D/+HMbCcek7TkOHAdve
         zdUhN76qkJwL7Z+r9KxIh6nKLxUsEceBYg313QDVBmHK/fH6bpEmP7p2UfwjXOzg4aBI
         4jBza4CmZ8Gr73wJGw5/ixvl5roWtYW1W6HFiDlydPCKa1VyIsIGuFhTkVvo86a9PkxF
         MtYPJxaV6qesY6ojB5OyocutCNRgGKW6zhAeEHmMci6iZXzJtQ6OYb6wEu+92EJsPgt2
         s+Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXrYS20FzngLesQhF/mFPGg6JsUF7EiE6lKc9l3F64T1IcefDIhgceTz9x/6zYI09cLCvUfDfma4Pn1@vger.kernel.org
X-Gm-Message-State: AOJu0YxP4Kh47c20y0+ilaN+zipqjMxEWYfGC+TbRMWlotQwk4xrMuSo
	5XnSIc8EJyC4JkymJm85vPtFawZBdaFmnnqMRLfVRgnJgrXcJVr0VeiiINQg0sdhDVQ=
X-Gm-Gg: AY/fxX5t2mN0p6b6aXFKjWkATtvSQxOk74oRpW5fTixx0835fsBGNEmYGn3wl98nxBl
	srtCiQtrEzacHpEbsEAtQnv2Sd2j2G4QlZv3jFzvL1bs9WY1TDOlY0PURg6OpnxxxHIaoR0TXYl
	grFu8afkvcostFRpCT3HcC19ZYnkLcPLY4u7rDgguwHTNc7XNoY4+rrRIjhhtDvMKuC12KyIVd3
	1vjvUDstU28ZB5tbHOuu190CKm2R8Ckx7z1FqQJcH7fndlpp8EdHG/RQOm9wA2f/6BNVx2wBSGg
	oWSB99XdUWzocURuQVE6K1xHh1z8Q27rBDsud+VBrVlJSMfCdpPG/CnfV13BSJdceHdtIg6Dklw
	eRmUHVKG8cN+B5q07M00IYKMrlCe7/v/hKEUQ0Z6gF/Nq6iLGcP0jpTHQh1xxP2yWo2Etfxq4Ga
	UZwSJi2dL4rGqVMXdhx7r3Ql1m4AJkZKaEws2XaVG1jKZmjiwHyVxtFg==
X-Received: by 2002:a17:902:fc8e:b0:297:f09a:51cd with SMTP id d9443c01a7336-2a599daf6afmr44260145ad.14.1768432762876;
        Wed, 14 Jan 2026 15:19:22 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d6csm238591755ad.64.2026.01.14.15.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 15:19:22 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 07:18:58 +0800
Subject: [PATCH v2 2/4] riscv: dts: anlogic: dr1v90: Add "b" ISA extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-adding-b-dtsi-v2-2-254dd61cf947@riscstar.com>
References: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
In-Reply-To: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
To: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Yixun Lan <dlan@gentoo.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Junhui Liu <junhui.liu@pigmoral.tech>, linux-doc@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

"b" is ratified (Apr/2024) much later than its components zba/zbb/zbs
(Jun/2021). With "b" added into riscv/extensions.yaml, a dependency
checking rule is now enforced, which requires that when zba, zbb, and zbs
are all specified, "b" must be added as well. Failing to do this will
cause dtbs_check schema check warnings.

According to uabi.rst, as a single-letter extension, "b" should be added
after "c" in canonical order.

Update dr1v90.dtsi to conform to this rule. Line balancing is performed
to improve readability.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: New patch, a split from the Patch 2 in v1. This patch is for
    Anlogic dr1v90.
---
 arch/riscv/boot/dts/anlogic/dr1v90.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/anlogic/dr1v90.dtsi b/arch/riscv/boot/dts/anlogic/dr1v90.dtsi
index a5d0765ade32..9fe183f5f5c8 100644
--- a/arch/riscv/boot/dts/anlogic/dr1v90.dtsi
+++ b/arch/riscv/boot/dts/anlogic/dr1v90.dtsi
@@ -27,8 +27,9 @@ cpu@0 {
 			mmu-type = "riscv,sv39";
 			reg = <0>;
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zbc",
-					       "zbkc", "zbs", "zicntr", "zicsr", "zifencei",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b",
+					       "zba", "zbb", "zbc", "zbkc", "zbs",
+					       "zicntr", "zicsr", "zifencei",
 					       "zihintpause", "zihpm";
 
 			cpu0_intc: interrupt-controller {

-- 
2.43.0


