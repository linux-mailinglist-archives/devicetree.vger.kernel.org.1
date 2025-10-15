Return-Path: <devicetree+bounces-227321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 933A9BE0828
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:46:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 56E025081A1
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BCD730F553;
	Wed, 15 Oct 2025 19:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EDvCVTo4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610AE30E847
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557476; cv=none; b=cM0xu5209ekU6AXgAG3yxGHchrzjJTIyfefSTEOXXBARoFjon33YCul/tTx4DPqwymXTKVmQ67Np/7wvT+etWSWnx0ZE+XD4CBTQqmjhWlTsGNbnF48bGBUBieAyZGOedD70rMQyLYVsBT9YBbD+XmmDyr5u1H7V9fCbZRmFmOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557476; c=relaxed/simple;
	bh=p+HtOliJIpdvfgNiu+HTRNqZsxXYbMjiU4izC6ySwGk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TNRgEqg8STJXT8Fy/Xrm3LI9RyRVscTHlSwqjy2vZG/1Q3+hYbx6gsSYUm6D7UWqH8np7F+h1BUWbvmjhMROxW1EkWK8GJelpmGxsDXPixalSbq+MZ+ZNpBCuC1jPvZGD2cUq23wH1u8kdzSDODgCm9JnKtfGdqiHzZXZ8lMXas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EDvCVTo4; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47107a9928cso1098545e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557472; x=1761162272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8NQa4L4CG7HoZPqJ8Ok32X5AepFgS3EiKF4/VxGY/g=;
        b=EDvCVTo4zg+MN0QRxza3cXPxLjAuZAPqFBUu8583Nq/VaUPiiVlzjHJTDoBPLC9vFv
         n/KrD1Peas9hYjC7nth3ldWJcE0yJTDEnnzTIRo0caPeUmerkQo3dROroG9MPd1Rxnhy
         BlIG4QRkNpKUpNwp2hpWlZi+K1bitSgSdISCeAew7CFkYUMtUfKzRzdWWPalxrbufKDW
         nZy5CWirK/0blb01+6Qus2z747nVI6TzNsff8HhfQiz7su94WC3n/lPPvgFmO5yKh2RS
         jpfMRXdFyMaGPWSEZ9MOq4U+RFg9qMQyiasn/JWp0p5uOAMYlfzQT2wjAskoFjMJqh2J
         4IUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557472; x=1761162272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C8NQa4L4CG7HoZPqJ8Ok32X5AepFgS3EiKF4/VxGY/g=;
        b=LgBXkfZ2D62598aLQhSnPSfh0CYE4rzOXUXAVvXux1SyWnHWHJtjw/orPC/gXZX8Qf
         9idQjhqzeHe4qLBBt3lutHKAwgSLMbaQpo1qZ7Ng/uNsGGhRVgm7kThgICXeiaL++Uyw
         cjKNy3RXuyIIhjNGhUDh/ZXFoUJ5RLq61CnzXvk913z4zmdeJUdlYnUwnRZSXPkk05VT
         E8ZLIPtjMM4dNmhly+HG1+Vh9ZjIgU27sAQ/1eD/ABD/cr/sLGOkV2SnJEPvNANOdrqQ
         La/o4HYqz1lfjcJs2QkbZYzVM1PHmVmeVCfdsJXdPRUMrtGjDVmvxHVfFEEkzR9SCoQt
         O65w==
X-Forwarded-Encrypted: i=1; AJvYcCVy2ykjIjLdnb9XVTXUxmEWpzMw6xHWmrcL9D9h5y1egK8IZ/gyTKnvDEuZrCbS3EghRjkVkMDcUWIl@vger.kernel.org
X-Gm-Message-State: AOJu0YzKBMaqSzNA6w2pXz8wfOU8t2QF/0T82UF2lqqDH4QRbIZ5CQFz
	upruNBMIvjDyz+XN9dlkq9yoBG/JSNSH6Jx2JAnaP8JoiPq/OsPvvqvL
X-Gm-Gg: ASbGncvk2XwtXfri/VfhS6Gpfzt5OklI3jIPIiX734Jt9P+Rrnh0fLWk6jVv5EAQIH9
	WnVEWhrfLjsvNY4IdG6B9507LFpNhjbj3YykCF7Xxw0SUYhu9J6Ibw4Nn0bQyHhClleqnC5TsD1
	50fOllnw6y81hM8d8j8st8oXWapi2NooF8pEEXMiq2Dlz+fjjPAtmd9X+FC28/FH0bE1bE6P4Sg
	rzvogBIpwreZqqpEyoO6jl6SBACvBPcLGAgFTafILBDqvyfC5dJ/ALSQSdsw3xUMV5VaYlK4PQj
	s8TZTbOiIOm/ZkaiN6GClXUqJ6ovmQK/E1Lwmxi/hV4qWzADNJalCD7SOKxn5tSt1XW1j7Yl/L6
	Mg8sg2K8bthlTaBzKkVmmjFNB2ISSpy672m8coQZ/77oiTRWC04VfmVBiARpS9wq4Sb/s9K8NVf
	M0iPu218/2o/MH/GUX0mct5rxz
X-Google-Smtp-Source: AGHT+IGFbUp2aUgqC2NxxsFWUdzRUYNctiLbdeKx3VCMXkN/w1V5RXhJp/fp0x1EjgmVnxo0Afby8A==
X-Received: by 2002:a05:600c:c162:b0:46e:6778:c631 with SMTP id 5b1f17b1804b1-46fa9a214c4mr121264845e9.0.1760557471616;
        Wed, 15 Oct 2025 12:44:31 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:31 -0700 (PDT)
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
Subject: [PATCH v6 04/11] dt-bindings: altera: add Enclustra Mercury SA1
Date: Wed, 15 Oct 2025 19:44:09 +0000
Message-Id: <20251015194416.33502-5-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
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


