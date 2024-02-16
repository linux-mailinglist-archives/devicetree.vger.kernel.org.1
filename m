Return-Path: <devicetree+bounces-42287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 605DC857239
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 01:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E4534B23A82
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 00:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78AE1149DE2;
	Fri, 16 Feb 2024 00:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="DxDCxmkx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1806819
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 00:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708042124; cv=none; b=Gj6+pCIKSazArI7u5JHubUO86eC3/sgGYdLcM9jd9X7S88mWWuIhV+abyYsJX5MKfJRbPSqmg4l7wpDeEIR/5DfIAHet66CelJvmIB844FkPdHYbAEoQw2gOeKIJU5BSP3NjbiZM14NZ4OXMmqeFYF0b/XIXYK3+J3aXjMgkE4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708042124; c=relaxed/simple;
	bh=+ztwmbEweby5bHFMBlDPRY9F7IaAz7efgcfvXOjOMFo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yyjtz+D9IDrV72KEDqlL7VtiBbNhE4FtRv1E2HFuaKYnFQ0thBU2OfcUREfhuKFXJQU+3h7+QIi0SeKrXCnONPdnXmx6HZCfe+QRG/gat/uTUJrtvLy6HU4PloVbnECe7djohQIYGX7gCaU8ECrsLe7TCDF00iFQgVk+h5afDc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=DxDCxmkx; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d94b222a3aso13954265ad.2
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 16:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708042122; x=1708646922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oULp81TNDm6rtXJp1+1NlVw8kUN7N6Lx6G6xlg9BNVs=;
        b=DxDCxmkxjrrukDu9xKwUBIYHc+JGcrFCNIUcqbUex3+GhYvfHY4QKNmZDYQF5bg32W
         1LZf4MdOo3ae1YogH6bNjOYX4GJ+4SvREvRnZJAye+iIRMK1TIbvaA24P12yZ07A8ARA
         D+XPXiB3RcSHUFCBbOHGYJZs4xWSyUp8To/xxuWUNYEqftMOMwZ2SC8B8FAYPXpIOgEc
         zVK4q9r9rJ5s9FisZPtsryqa0sD7A4kwfk9HGJ0HF+0IgIzYHCbyCiBo2OADL1Gfiya5
         iZT4vjEqE/6BX9N3/sxNegIejDaVAsqFmS9mtGQeqoLAvkPo0Tg3bGnpJc6/yxEuYeqv
         F2CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708042122; x=1708646922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oULp81TNDm6rtXJp1+1NlVw8kUN7N6Lx6G6xlg9BNVs=;
        b=VCRtyBsnVjhY9dvSHN1ucHxOrvPCE9JS3wFY2wPBxvd4E7jjGG8DHS3xxHdM/B0cYD
         j+ZPKZuwpwxrnO5xwOTm53FrPO4hMYP8VaAu3HjWq54uf2VuJpreilzywTB7JIRNfXdw
         nRxhhj/zALKfNee7q3H7KBx3shAedSrXCLfOmGAdWGqcsMCeHurez+6HXcXp7awdSllr
         pm23BPm+p4SI5hBKVCkdU5urhmR5VRv0UqF8qC814l2FyC2PcN9Tn7bn5c43NEzOQnCT
         Oz0cuAbQ2VceSvjtveEwDkzskp+DbrUeYB2VheWebNqWEI/StypGX3r6y55oe03mQiNc
         kMqA==
X-Forwarded-Encrypted: i=1; AJvYcCVxTU+LFR4RE5FIfB/LSNk9RdPoYN5nZ4Kntsq0gh+cV/0R62mC/5NS9fjhGRo1ZOH10jm7p40ixKxFL7jll9XWCGjXLBst0JRmMA==
X-Gm-Message-State: AOJu0YxGNRfm+4fCr9QKnr/qaG9Q9JuP3T6DHoJEErHPoE/669dTb/Vl
	/vhQlvcCCgQ7Mg36mtUbvWxuc2xO3y5dbKnMDWeLpTAlVUMCcHmy/NXr3UsVzeU=
X-Google-Smtp-Source: AGHT+IG7WoMFGu0/RfCzt3XOL546mMsF4SOL7oXhsNzvqoggBob9r4cZ+ZAFJwFNFVhaS4ZZGy8jhQ==
X-Received: by 2002:a17:903:1212:b0:1d9:14fb:d142 with SMTP id l18-20020a170903121200b001d914fbd142mr3570668plh.32.1708042122114;
        Thu, 15 Feb 2024 16:08:42 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id bb6-20020a170902bc8600b001db3d365082sm1789486plb.265.2024.02.15.16.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 16:08:41 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Eric Lin <eric.lin@sifive.com>,
	Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	linux-riscv@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v1 1/6] dt-bindings: cache: Document the sifive,perfmon-counters property
Date: Thu, 15 Feb 2024 16:08:13 -0800
Message-ID: <20240216000837.1868917-2-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240216000837.1868917-1-samuel.holland@sifive.com>
References: <20240216000837.1868917-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SiFive Composable Cache controller contains an optional PMU with a
configurable number of event counters. Document a property which
describes the number of available counters.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
index 7e8cebe21584..100eda4345de 100644
--- a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
+++ b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
@@ -81,6 +81,11 @@ properties:
       The reference to the reserved-memory for the L2 Loosely Integrated Memory region.
       The reserved memory node should be defined as per the bindings in reserved-memory.txt.
 
+  sifive,perfmon-counters:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description: Number of PMU counter registers
+
 allOf:
   - $ref: /schemas/cache-controller.yaml#
 
-- 
2.43.0


