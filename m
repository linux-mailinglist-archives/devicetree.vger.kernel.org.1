Return-Path: <devicetree+bounces-228372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E26E6BECF2A
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:12:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5829434E2D2
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0092DAFD5;
	Sat, 18 Oct 2025 12:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kNXybClD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88EAB2D7D2E
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789527; cv=none; b=G3wTFfYmjv5NxR5agWQu50Uio9ckh1Sy4JQwwT6qQWKVQXY/nRiIwgf/r75ZVEghEWU0jQzF97MUe14aqzUY0HLbkR3LQtFC6JtzTMDM9/yrDLVMpMiqVk7rBn1nW7deX4EzLEmSztUdICa0o2S8Si2Qfo2lXR8Jutq9AbrIQ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789527; c=relaxed/simple;
	bh=p+HtOliJIpdvfgNiu+HTRNqZsxXYbMjiU4izC6ySwGk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BzhwZfvE4V24viD2N9UoKFIjjB7a5wEwn8CLPf0czQgsa2XbN2f3+wL833Iywl4UJ0cPRcaeB101RBDvFoKZjwh4P2X/ozZhTnmuCSqT3C0l4wm9D8TVoNkjvtPDgAIU9mjCgTiChD2zgm4QUCbUck/IjK+9s+lQMCCWJzUYibo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kNXybClD; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-427087fce27so189148f8f.2
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789524; x=1761394324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8NQa4L4CG7HoZPqJ8Ok32X5AepFgS3EiKF4/VxGY/g=;
        b=kNXybClD/Y6DTcupWiSQR7DYWza+FhEG/c1SAPMv88FHPMUrqOcOf0InhbtSS71YoB
         ahUJ7Yh11A15pUM7LPJuFqAWfaiAABtnHgoy6lavvb2udghF1Q3fqYuvR9KmnKx6Suxs
         dOju/741mf9zlyebSC2mUecPgzeQLFyVmbU4DBlvio+mO/xnPiAGoMV2pzXoyrWzveQe
         JzfPWo3GNenduB+VuRaRbaEjLgHfDol7IZnxg6l9x8dAmJiU7qahTC1glSQRIgaym1O6
         ykV0xzx4srN8uX70nK7hCYdegTBuvKOsYn6PYmpTjZoBvHgBEjXbrJWu/EjMF0Jky189
         SftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789524; x=1761394324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C8NQa4L4CG7HoZPqJ8Ok32X5AepFgS3EiKF4/VxGY/g=;
        b=Hpmo3jcqX3uRqb7nmEaW2+PQGhNV03EjNNGHJ7PStQA1H8AvK3pNWDd1A4lShxlPCp
         lQKOmjlzrze/1+5+Ohx35Y3HOmUqwOq1KbAXhy2n7uTluxM1EGowO22DCaJHlqJ5oqii
         XQMrWc/yCIOz6wN47R9c6HLtR6OMTIORzxAZGOLz1NAWJM3RoP+05Q+g6jlOOK9NPuIk
         CmLVS17JlTU2952qh3AeGltn/OGhr2NB4X6hwcQAPHcjO9NH38wvLjflaGeX53Nhlsqw
         c9D4ziFM0N2OqgWSA5Fk5ii+4xopjlcstsdWjftfTedsdoC/g0KyuAK5q8CLO4JjK02h
         GjcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHHjs4wOToOuDJCwf6qN1fBwzcWO2omtojjFGWsqip5+Lkq24uCaa560UTclZkoNzXyJT9mHui2OUt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+Jari1lgmKr4YG5hSd6BVQah5fNbB3eF0mKx3t0/Xz4WrJmjy
	aVyi2rk7VRMjqY+UBUIJljGiDJoOAWTHV+PJ7SbKdfE2z134EadWfhzB
X-Gm-Gg: ASbGnctd+L4sjfEh5RMNlScl0DiWj42rT6Sg5xSVrZ4tXLQIqtQlof9+grO7gwoO72i
	6KJN2CuBD4Act3zpE1DSJMvb4bKc9SeOWIT1Zm3IbtLahgmVagpuiJNgQJX8DspRG7lPOb+Afqs
	P0F1ZCI3Z8vMI7wUuazEzhguIAcmCgXGQ3bGqu/L5wQBPFJAWnclzNzdN4NRWPyqGoym9Bj+mJ4
	iCpaBbl0+eRduHHTSXO2DE6dJ3zMuJxh2yzdQPbTMAwA5VzyQsIbZVNPI1nPBg7ERSpjQC4FgHi
	gG7FPGWU+DUe/F/OkY6My6MNr//mamhymWDpQqvhNuiN2h1JU7FYVaLeRMDrgd4vvoAdjnZEFX7
	ywIAyjrqDWQxdxyKjj3hcZwVeGHAZ5Htz0j7ttAeFtRu5IU7l0N7iDwbbUmyng+T4pSWaNI2TAP
	iqhd0lb1X8ehVSq1wpRqO7P8LHfZN8B8AhGmLsquitWJ4jJD13Nbs=
X-Google-Smtp-Source: AGHT+IFMimUuU6vASBX3/3Y6ZmH+XpYxSVsS9ATmgH0fnw+pTkO3H29jtTRlJ2kDPv6y0tyObHaGNw==
X-Received: by 2002:a05:6000:181c:b0:427:529:9bbb with SMTP id ffacd0b85a97d-42705299bdfmr1908900f8f.8.1760789523682;
        Sat, 18 Oct 2025 05:12:03 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:03 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 04/11] dt-bindings: altera: add Enclustra Mercury SA1
Date: Sat, 18 Oct 2025 12:11:48 +0000
Message-Id: <20251018121155.7743-5-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the DT binding for the Enclustra Mercury+ SA1 SoM

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 30c44a0e6407..30ef03c53d73 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -52,6 +52,16 @@ properties:
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
 
+      - description: Mercury SA1 boards
+        items:
+          - enum:
+              - enclustra,mercury-sa1-pe1
+              - enclustra,mercury-sa1-pe3
+              - enclustra,mercury-sa1-st1
+          - const: enclustra,mercury-sa1
+          - const: altr,socfpga-cyclone5
+          - const: altr,socfpga
+
       - description: Stratix 10 boards
         items:
           - enum:
-- 
2.39.5


