Return-Path: <devicetree+bounces-232401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C057C177CB
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 861A04E56EE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193C01E9919;
	Wed, 29 Oct 2025 00:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eE2baHz3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832421D5CC7
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696710; cv=none; b=P6yfT2gE+HUzXxUHJ7JiSJExxf0AJpiyglnqRBXTretd4+MMzmyCUpu3VJlUUCJreHsGkVa5Ytu7fB91/oLD5dRh8suLeoCaFXsecWzlyyTZQfceIPtVY5g+MGl1UiCs0oysZx4j8JelIKWyb4r1ULqdV0UemLzsoFMYcE5s4Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696710; c=relaxed/simple;
	bh=Set66TJZ9yyv6JkRLCo5kR4WnKp3a5s++BjmP6dVSE0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=foIdfGkDMMYdS1TXSXw+6YRogq5xFK92m327EU4/B+dGu9Rrd1FRL+rgjpgmflPEvsL9QzLdVeS49H11G6wurfeFsso5QWrnuVllA6Jmpf2UKmpCQt8Z3ABrU7LCjXtCz2KesURTtXqB4EpcneeixXutKChaF2KZmj/qk9S8Apk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eE2baHz3; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8738c6fdbe8so4779936d6.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761696706; x=1762301506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tq2p1V6khYqdwj7axqsIU1Jb8x290oJDm2pwh+Ywad8=;
        b=eE2baHz37gEFHKxiVEEXJ6nIEzLvZaC7rdINfeg4T0D0i+1ynXYBGLwA6iIr5XoYaF
         XRl9vQqn7ULXjUPNlMAG+Q7ekc8fQZhnpNsfYCG4JNV4uqEMwVnIzvzzxivjRcUZOU5o
         j/xWw1Dvd0oiUzwgJatAlzwnIqmz51OyUJ0/cxh82C/em+W9tOKFDVQGb9JpYxamlO5R
         yrMsg0++DBT2MfHLVHaIs3MRw9ieENKUKtE0a4qirYrDrvdOUFksN5zzwWNvdXTSfphM
         x8A+hi/ZzXmqh+9EPfBBdWEJo5ty5XOCBOgDdBCIF1MgX0iihiTCRN+aFrCkCQ95U9cT
         2ONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761696706; x=1762301506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tq2p1V6khYqdwj7axqsIU1Jb8x290oJDm2pwh+Ywad8=;
        b=Ce1vCgSow6C01g9V+eXXI0G1V+GjV+LDNC6kY2XKySDxEhpSSn6xK4qITkIKR2owmL
         CO16svzT2e04Ktv28DYV9CFCx7XmT7+us6VH2uz47TCakflg9UdVic0jhgo/slJ3tGoO
         i1Y+1jf5qDlZjDObsPLJBjt4kplFla+R6hg0smZTbaBI2fKiE5CMbPzmRk7/fUugnvhD
         8GDwhHbvNGkSHboPyRVlRaG8hWBcZy4C4EkL2eIRf/8cYayd3OgdHfDqaZPnMC/f0K9t
         mnYzvbU9vNFtaxvKL3hK35fCIcSz+huVXTrccg1gufxZln3ktrDAH4L+PC60xUj5FYxm
         rY2Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+n/faXax/nf+W1fuF8Me/YU/MPlA6G7PHegt+g+rWZvGfwAziwVPgAuKt4bwuFerbhmQR6e5e656M@vger.kernel.org
X-Gm-Message-State: AOJu0YznhWvNN25eIzQMJZYKMT+0n80iDe5VsCmyXaRApbgR4FIgI99d
	RDwztoKWXxMH0Aad/dvmlXbhe1zHbjGN/skdTKw+VpPl5HDvSccR415v
X-Gm-Gg: ASbGncvvpGsHmf4isv/0mp9DXeTJyFOyXFT1d6kNOMn1upPt6aH2Wav8mP5WIo7qGOX
	y/+AHOdGbFR8P941ZGxrkmzzIvt8WICAd5tiexh97oU5PLKwDCzVTj1kZMMs8dOcE5LHAhoQhmQ
	tFhqjc1SkaHe+gEJG+H8kU4aFzTQcz3Hfk5K8AEiipI+0o7hALc2GyKV84wOuc7INKT3rjyKkeh
	bDtm+yjjtgEc81ItBYvSf/ljtb8GNjTbX+FIoBwADp0w4KMJoaFZMtZ+mN2ey3G3L9ta3vPv1iq
	5crTByFEzFbwBCAshx0VYhrwSHMjg4wsbdFgHxScCva8o2ZUQKzvLUtykjkKnaz9+8CkumxDtZF
	pPo6VdSbqS2Q3yJ5dctBigiZgdSb3Mz9f84fBK6N0REJUBxTpHrU7u6RPDNZDSPdhpKBokBXfOD
	k9vtavX9kiv3pvGxzkCnAfABFLbylRQHLfvtuUT+D/aN4n
X-Google-Smtp-Source: AGHT+IFhZd8hjXUHUkgWb5j59kFDmvYlbS3no4lghYJO/biRsJA71NeXCb5OP8OCzXDNjXkj1j2Y4Q==
X-Received: by 2002:a05:6214:234b:b0:77e:aba2:c8b1 with SMTP id 6a1803df08f44-87ffb49eae6mr67532066d6.22.1761696706418;
        Tue, 28 Oct 2025 17:11:46 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48dee2esm87255906d6.23.2025.10.28.17.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:11:46 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	samuel.holland@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 3/5] dt-bindings: soc: sophgo: add sg2000 plic and clint documentation
Date: Tue, 28 Oct 2025 20:10:50 -0400
Message-ID: <20251029001052.36774-4-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251029001052.36774-1-josh.milas@gmail.com>
References: <20251029001052.36774-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible strings for the sg2000 [1] interrupt
controller and timer.

Link: https://en.sophgo.com/sophon-u/product/introduce/sg200x.html [1]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 Documentation/devicetree/bindings/timer/sifive,clint.yaml        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 5b827bc243011..122d622d20a57 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -69,6 +69,7 @@ properties:
               - allwinner,sun20i-d1-plic
               - sophgo,cv1800b-plic
               - sophgo,cv1812h-plic
+              - sophgo,sg2000-plic
               - sophgo,sg2002-plic
               - sophgo,sg2042-plic
               - sophgo,sg2044-plic
diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index d85a1a088b35d..42cbfb4d46a17 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -48,6 +48,7 @@ properties:
               - allwinner,sun20i-d1-clint
               - sophgo,cv1800b-clint
               - sophgo,cv1812h-clint
+              - sophgo,sg2000-clint
               - sophgo,sg2002-clint
               - thead,th1520-clint
           - const: thead,c900-clint
-- 
2.51.1


