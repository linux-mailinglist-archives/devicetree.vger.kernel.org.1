Return-Path: <devicetree+bounces-193922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D10EAFC35B
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FD36480EA3
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 06:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57EF2236F0;
	Tue,  8 Jul 2025 06:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="At0j1/TC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1732222C4
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 06:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751957594; cv=none; b=neUGjwoRLH4fl5nxh3jxLesfLSMotrxYqVmMA009tuffm2Bn3DwyKXg0iLqN1kFRZZLSAH3n0IleTXNUYZQIdkIPo1SisoaWXNQ8/QGd6LxaeDepHwRWGCZJAl+507PXhBLbAjluC2SDzXEMHbghBZJpFQOsNfgZbgLosNe7MCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751957594; c=relaxed/simple;
	bh=KeJy1I2WRqHTgKYre78w4cnzBjwEfXqNjUN5/iOMgok=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Wp833giEzD5QmmQbeg5tsUBfmbwSVzcePG7ue2VtTzyZ4HeZ6QtzuBBwPx4kjrT8x3KaF0+/6cGA8aadFhz2xjkebVQkYMpvGIQ2kWK4WS4mbjrVYxwnTWUSr/Kecw/Y1vfkZsVxCc6WDmd5VEw3HQWUaf2pOCtTo0UaZZNRdmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=At0j1/TC; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6fafd3cc8f9so74599206d6.3
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 23:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1751957592; x=1752562392; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUaCIiC5eT7Qg5Sm8qe+PiTSoWZ3Xtk6pXg4jHYXzdA=;
        b=At0j1/TCz64hH9AT/0+AEdy89Rc8c8cjocdwCTZx75Q/xHCW8CgPkBcBi0NEUd1JZK
         AWtaIqbV0+LOAQXhkqnbnYG8+8B1mLwihgYz20DBzdNMWi2NDNwGLVY8F+wgBtd1cGjP
         ItggjOrH7/H9sTtrNcHX6HmciYmwdTPbWIoxeiJqGBcqRIEcWlckQI8bGQSEF1uG2R0D
         OBfp+lFj1SWYd/phK/QtSo2YrE0p57W+7UYc4xOvq4nrAJ8incQyJSrcb951vu3S738u
         vtRlQKUkKF9G6ZtLa8GYsSq612OLlfzew0t/H3HpZEVFXYKwC768FYA6IWLhhV2k7nnh
         AJAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751957592; x=1752562392;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RUaCIiC5eT7Qg5Sm8qe+PiTSoWZ3Xtk6pXg4jHYXzdA=;
        b=pK8Rv8qaeV0tpFWgmW6BlffRkoV/m1lRWlSbheGuaF4bvDScplZZElVGvZArZ/Tdy6
         /2uh7Ghhu+fqG7u9/LuPwcBdD4XQL3tMtRBqw21BKSiGhQFJnCijZh7UJF89FJtqjZLv
         1qCXRPTFT8Rng5rSKUAXAOnKu/2BElaFjtCSaUyI8X+Ra6Z1mGJ1x7TNaMKg8GZn7mrr
         nthrP90blayyFYp9cWZPtS/9rUvX7joH3aul8cBGB2V5oJWwMfQL9hta6C9iPXyW4Rpv
         wFNmzis7L0z/Wbb5kSsCzGKAnv0BrVHZn6KOl3l92ki/n4IW3M14I0A/ZSohNgAZOdCM
         h5rw==
X-Forwarded-Encrypted: i=1; AJvYcCV6ovP9K3VJenq9yaTKTVqCSwXmHrmye66uEGKcyzcS4ZY5dXwGJNSYP47nfZLqnnxVj6/128r51kBj@vger.kernel.org
X-Gm-Message-State: AOJu0YwrSB0+vrkVfI+B4vIBtFGEWERMtgbK8b67Ze580OTKlN2fpS/A
	AjZq08wfNAYgdRqZMc3K73lL3Wb+C+hd8Y+gTLvVhrNqcL9tzS1GKvADgiONMrvqzQk=
X-Gm-Gg: ASbGnctydthq486OD0NsJU3SJt4LSvhg1JKPaF2OcBkRG53f5JIEnqEWsTff8YxLteL
	id3B7bA7EJZ6wInltRfndF/kI3A5VXowHuglAlSlwr3BXoM02hm4Aclr+9yDJQg985l9aAIxMEQ
	YMftWKvzHwZtxg68CZDr+ozxXyQOwkuJFOZwS3i2pud37J+j5R8+RpsJg0xczebvWbi/wz8O8Ku
	LztpU0lFbA5FXvEegVSFEtolbWpZtLmrPpvDP5YR+OmUYLt0chdv2ILdjeNH25dEWQWFtiT30rm
	DVd43N9aWPpLzsCSdDfEMb2hlZgeokgX3mrTGUdeUOMMmLLP5qfv/pbsuOkLdQ/G/JvPLBf0+nY
	ywt8sJFG6
X-Google-Smtp-Source: AGHT+IFO5mmekcCC0R1ZHrs+gCMYv738zxfhnZx8tkn82YBM93zZS29An9l1jVIQp8jc/Pogs4YsmA==
X-Received: by 2002:ad4:5ce8:0:b0:6fa:c054:1628 with SMTP id 6a1803df08f44-702c6d66235mr267954486d6.23.1751957591948;
        Mon, 07 Jul 2025 23:53:11 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-702c4d50e14sm72109856d6.74.2025.07.07.23.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 23:53:11 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Hu <nick.hu@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] dt-bindings: riscv: Add SiFive vendor extensions description
Date: Tue,  8 Jul 2025 14:52:42 +0800
Message-Id: <20250708065242.26371-1-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add description for SiFive vendor extensions "xsfcflushdlone",
"xsfpgflushdlone" and "xsfcease".

Signed-off-by: Nick Hu <nick.hu@sifive.com>
---
 .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 72c1b063fdfe..10c37c61243d 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -626,6 +626,24 @@ properties:
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
         # SiFive
+        - const: xsfcease
+          description:
+            SiFive CEASE Instruction Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/freedom-u740-c000-manual
+
+        - const: xsfcflushdlone
+          description:
+            SiFive L1D Cache Flush Instruction Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/freedom-u740-c000-manual
+
+        - const: xsfpgflushdlone
+          description:
+            SiFive PGFLUSH Instruction Extensions for the power management. The
+            CPU will flush the L1D and enter the cease state after executing
+            the instruction.
+
         - const: xsfqmaccdod
           description:
             SiFive Int8 Matrix Multiplication Extensions Specification.
-- 
2.17.1


