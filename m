Return-Path: <devicetree+bounces-223342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C93BB3948
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 12:16:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33BBC163E8C
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 10:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5327A3093D8;
	Thu,  2 Oct 2025 10:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="UJQxz+/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1B23081C5
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 10:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759400149; cv=none; b=MyCplxoJ9GQQ8vRLDZdlJbBXtzSeXVreMJQJgdtFO632H4P7ijTOypvTBBg7rL04stdQ0HmwhpilAcGg+4CggbYllcAAr8rZtinwuk/TOOiTOMb/+iBGhpNYwl1aXvBoIHhzcy9afz8YxDtyJmQx/EGVxAUVrjftPNY5DsBm9nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759400149; c=relaxed/simple;
	bh=Czqxeo15fjZo1C4s++w8GwAplorv0FEgEEDoqJ3EFac=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NEx9Cp6OHQ67bZ+FBTAGzOhxEbOFQNDQd+pRxxoMpURIVxq1QcSmPxpgZf2XIOn7N4+E9UYR21jDx5u5u6/T/CWxgR5Re0oP/uBEB0P/Ej/J87hm7V8gebFbTnTUbyCh7G8FEgUU+d5E4PMn9/mb0DuYtX0YPo94LYvFYTJlMKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=UJQxz+/Y; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b3c2c748bc8so122299266b.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759400145; x=1760004945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MpOCePemL6vEYpCvPcTB5T61Ggf93+sTv7+KCD/4Us0=;
        b=UJQxz+/YsmpwUudE4NGVXFNmVMb+WRqECfLJRi1MEXdsTteqHFONywaj1DpRlSrOf3
         n6K+YAjbTY2HZPYfrYVaILm6M9uvB7KD8fG2XALl2peuYASRrgf9SZrNDAik+tkSZ7Nz
         aUDvqkr5jXO5x3Ub06XPAlnCGpKALMpq0pDJqVFNZ0tlcoGArHHbAhI0unuAwz4KI8js
         7DcVm2jT+pi/oakuWrN4FpSgyta0fUx96YAYHXkCgVyzCHxQDAl+mTCE7DCGHDWIhx28
         68LTtM1GqZ0ctYw7/c8ORx9Sq2Qe13f/bUYenYtUANz14+uy42MaVoaslSa15G/EKi17
         4ICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759400145; x=1760004945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MpOCePemL6vEYpCvPcTB5T61Ggf93+sTv7+KCD/4Us0=;
        b=uoDQg7iKvYuQlG4gNIQon24QbigXOmcbacanDcjhNGt1sxlF6I48y1Q46yS5dhFLgT
         DenC+H0eqOS4gN4H5YfwnvmAPkiJfgQ5uTq9wBR80j5HcPg7a6GgeBQywB9IssQSQvRM
         9cWMGRvtx+zUo43EcM9YyDi2EPDc0wIn1PYF1r1n3Fz8VpqmN5Sf8RQwKs9hjasZ77DZ
         QS8OZmmy1NgOZ+anlFOsWBHLsC4J2Scv4OgUwrM+Da3aTfmtYbh10kewKQ3/d/OgtHqo
         Y0AgXCYzMCb6DnA8ByKPZH0kT+Irm3MQ4c5kHv/2ga1aUC0yuAdkJcT4OvD0CdNc3ckt
         6hpA==
X-Forwarded-Encrypted: i=1; AJvYcCVnq+XmYVczpRpH8Q7zXl4ye2VtiC3Wv8xdz29xMDpEvYtUMUbXU/f/QLNP3YYLjyDT1fVLtlEmAM/3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/m8ycHpyZur6ZVJPrNoOw4pE18n8/MHtUZokPeVuq7fRbNyGv
	0jFOD5HT8zvUIik3Kc9OgKrKxtrOS2vvhbDOKtIGQTCpFoq/1wIeNAy7sUB44dhGMLJcLgnbnzU
	eumGWxHs=
X-Gm-Gg: ASbGncu/rdLIQpY7GJzWAo/CavmfIqGeqEF2LbC0Cj7YvZqOEpC1Vzpp9OcRVdvq/PP
	0DYX9m/r7BvxWR+diUWrnsqfL4H3KE5gxwCrq76sr3j21rj4tIsaxct4kIZ4R+zgZjucQ/6DyN+
	9MV804BYLlBfNtRMUsYV2bKZ1o8Xbj5LN7n8nGsIxmyrPikx+zo48ESXpvDhiPoW/ZdErDx1/uw
	RoKiDbnTI/rtAYaSjzMkKR+WWb794Ymop4eGCj3qwt/3eLSoFPZjTY/IFS27EV7ETLHHKrZ75fJ
	ahb0GBUjcft9Ethk4Y9E/Ui4NpQh1xOM7IlhUYTXiCNwy1dNdXFhB6BubkBXhNpswxg49Xdw7Lb
	XXIohsKBaSPSWv5v23DOjid/D71LYuOWt2dw9CRsx29WowPx/s7/qHEjc9OYJrZtiHvdJRJl88Z
	YuQvenFV0e61twbAwbbIvizNEfgwMR3BcFVCnYssU=
X-Google-Smtp-Source: AGHT+IHKPsH/a02esz5LFnruQITPPJCRHmW0KtrQ8DbN5B/ZLJUobNZd3CSpWIcrjaZ7zFTzB4mmOg==
X-Received: by 2002:a17:907:2683:b0:b3c:a161:684c with SMTP id a640c23a62f3a-b46e4b8f4d0mr793928266b.2.1759400145146;
        Thu, 02 Oct 2025 03:15:45 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e77427sm174862366b.36.2025.10.02.03.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 03:15:44 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 02 Oct 2025 12:15:33 +0200
Subject: [PATCH 1/4] dt-bindings: media: i2c: dw9719: Document DW9800K
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251002-dw9800-driver-v1-1-c305328e44f0@fairphone.com>
References: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
In-Reply-To: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759400143; l=792;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=Czqxeo15fjZo1C4s++w8GwAplorv0FEgEEDoqJ3EFac=;
 b=Hi0LkYUTZVrvOTQFoVlNKM7KXL/UaLULs3trcSM4BexT71jmcaLwOrvt96+R1RR88o8Sk2fzF
 H6ol8Mgw8xwCfvrKeHqCMt9buYB1LcZxGoskfW41ktXPr9Lu4j6yy3u
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Document the Dongwoon Anatech DW9800K.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
index 38db0764c0f70ad49295dcddc182b7e100a68b29..8e8d62436e0d0c4f9af9e52262b23881abd37cec 100644
--- a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
@@ -21,6 +21,7 @@ properties:
       - dongwoon,dw9718s
       - dongwoon,dw9719
       - dongwoon,dw9761
+      - dongwoon,dw9800k
 
   reg:
     maxItems: 1

-- 
2.43.0


