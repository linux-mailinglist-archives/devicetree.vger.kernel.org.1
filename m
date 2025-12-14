Return-Path: <devicetree+bounces-246352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CC39ACBC16C
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 23:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA9553008563
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E96E2BDC05;
	Sun, 14 Dec 2025 22:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YencAFIs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B45A314A64
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 22:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765752430; cv=none; b=HX3MS87FwbGqcvxt9sKlAV3EC00lxAnq68OLeBHQK0VUKRDuhp5g7SLDgUoYqlwl8Vg9VRhZ6bbeMc/1OocRyQt0WJDvhj1ldvL4pILa3rbbrn94ckuascz3mlEdbT0NM6yFJae/jYe+CCb5q6X8/S+3Sbv/nqPGoV9UgyDzi8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765752430; c=relaxed/simple;
	bh=6foIMWkM39YpRsrHkcMuBplG96nIcvxZ8pyBc0baPBc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q5wFNFNrCXgZQRr2jCoYaqLh7F18Ye2ecKWv7vWvAcfk0uT4M6fE5zqqcE+LwMV+6rbCML4gEVFt/5xbWFkaVwY+zf0g8x8AwClUiL0Joab9afq64TB5l4RdqjrJxDW0A8VDwCNZU73lrkDtJyrHzvxmaP5UZo6VFGDNKP8MBGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YencAFIs; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-bc274b8b15bso2867672a12.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 14:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765752428; x=1766357228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c2L35WsEaTxvf/DBI91MAjfu5hKJ1Z5i6X+ns/IiMxg=;
        b=YencAFIsGnGS5zTtewy16p5DuhGFIFERDNX3DurmGGBoBvSLCTQFDgTZ5W7VY0kvEU
         BUrxb/8brYXDDbdXwnfO8fYOy8ssnSc7Pkj12OAxlsyGOTpBVKfJ0mT+VXKpy42xZbG7
         DZfa8NU6kZLfcMLGmno54LsQL2abIYhRWPS6MxQBY7eoxA6vrEqPMsQdLaMHwOdhAWiA
         9njZj3EgzdZOt3OszOiuz+OJkPWlvGYIsxVK7JOZgWrzR0P7A8K2kx9F5z03YsPUsNxK
         4CEubxL4Yjo0rHMLrFp6A9xNJFL6NzoI2/eQSHNOGNI8RZX9tB1E5peA43OoBhes3cwM
         V52Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765752428; x=1766357228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c2L35WsEaTxvf/DBI91MAjfu5hKJ1Z5i6X+ns/IiMxg=;
        b=QEmZveUfWoUXzsifT0IJLEmLEsGWSkLaEh5BcCz2y4Q946/1IidhTN4AJxnpY/EkZD
         5I9I+wrvXxM/Tt8iAsIHWEJItJRSmRDZZ5d1feP7rIVqLi/ytQsammUqeP5zhefETDso
         sFifvsWynqd7y/qz0oxNUko951RgW0IDpesaLBx+pFt2ucNmDNf2xq0tlK3fK5K/UFw0
         15NNw1aEjPNl7YEqLS+mEhnBm4rRYr94iagrsZYms2JNGoGGTFMn0OzsY0nQsjByVKMk
         XDMsWm2Ik81ieD8Pin1uzF+dVZVeVf7ze2XZNamlrLGOUf7+zw2yqg1+TyAzl5CmcJ8Q
         oOJg==
X-Forwarded-Encrypted: i=1; AJvYcCW+pMqfbiXEKdstVC6vXkM2jxOa1mhmUrBGysyYVkFA+61THoaVBxhfhR/KMPekMqzpyzBmDa34QvxI@vger.kernel.org
X-Gm-Message-State: AOJu0YxQpbI0/qKqtRnWx41nDLHEGNKbqc78xGyZXUle8vz1EgL6XNwO
	UpIlRk17tKNPXmjAIBF2ewYq1Ttj11Kwk3oi/nzIlWMifrR8v1bSZ9wD
X-Gm-Gg: AY/fxX46auCUftEq05ulqS3HCA3iOvQjfgRWLUIgCDLNPTwDvZAe+rMxtd86IGFrTQP
	Ntlh2nS3rPZgaKkYAbtOSlix856gtrGgSqjy9VhQyh0mgOOUoPqvw4T2ErMg4BTrb7cePfPAPvC
	ixrqvE2uQlZC+U/S4vH2uekMQMt4jlm7+2oxzvGMlB93LeISuwknY6ZsiZeyP/HRanYoGk/Y+mX
	Bfw68Jf120Aqn6bWmqdNAJADxvOoyDSVLewRYAZmY85c+gLqsgEiqUhNFAnpDnwGGCgKlOR3Sch
	x51wKObpwKN0eIsEt0c5HdSunLgLSj9OQ2/Cw5h011HRtQo4KXNSVbKIV0afFjPTHRwNo131qct
	RXPl69f96RZhiTolBJ4SLlh7h4NiZHEgGcxk81lt7zB/0Nk6gxl3HmpYg/dSGoLSbceHSpd1zFa
	tcbv7j9SpYWQ==
X-Google-Smtp-Source: AGHT+IGzU40Bf02ZiunUmBQwqZQkwop4QCe+bNWbYKaguM5GeKAWWOUq5wkMBFK8h0HWejlWKzSlNA==
X-Received: by 2002:a05:693c:6014:b0:2a4:3592:cf64 with SMTP id 5a478bee46e88-2ac3018c2e3mr7575976eec.8.1765752427907;
        Sun, 14 Dec 2025 14:47:07 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ac191ba0fesm25394683eec.3.2025.12.14.14.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 14:47:07 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: "Anton D . Stavinskii" <stavinsky@gmail.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	Yixun Lan <dlan@gentoo.org>
Subject: [PATCH v2 1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
Date: Mon, 15 Dec 2025 06:45:58 +0800
Message-ID: <20251214224601.598358-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251214224601.598358-1-inochiama@gmail.com>
References: <20251214224601.598358-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DMA controller on CV1800B needs to use the DMA phandle args
as the channel number instead of hardware handshake number, so
add a new compatible for the DMA controller on CV1800B.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
index a393a33c8908..0b5c8314e25e 100644
--- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - snps,axi-dma-1.01a
       - intel,kmb-axi-dma
+      - sophgo,cv1800b-axi-dma
       - starfive,jh7110-axi-dma
       - starfive,jh8100-axi-dma
 
-- 
2.52.0


