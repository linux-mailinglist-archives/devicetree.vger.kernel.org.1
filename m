Return-Path: <devicetree+bounces-40830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A888285178C
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB24C1C215B6
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5D73BB46;
	Mon, 12 Feb 2024 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GoEEYRjG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1950C3BB34
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707750333; cv=none; b=sWiwD/BjiS4HRhd6HzTBkLoYMhAh6WrELMFlgv2HUj2BKuEaEutOXdi8GGEyPh6m+g/yXZK4qyfKMmH330DXE89lgD1EulDKaJkay2UT5Ydrq6qA6/ijFwLR0htiyADgSxOuNiodP5Nzft2E636y1XzIOOmhr7sCOfwZG3J2tbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707750333; c=relaxed/simple;
	bh=9pC2Z6Vms16Gtc+ezTFhNRm1u9ImyiB0y+VyyuUyUns=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sDchs3HqEOxwoVrpJIOKoAqGhqq8V2fbhZQ7cooUZXpnXgyA28xI8dBPghzq/4fgsxFwVLi8SBVP5DfrrQ0mJBJr5OthHWFAyvN8af0ozKScBvEeFZ+OnX1RAxy3bK6NJwu4pHMgDZZa6/btdVqxWnLfK+vz+j185hU1d13RNwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GoEEYRjG; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-410e820a4feso4069835e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707750329; x=1708355129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qir1fthWNc0Q+rYe6JcBDOv3+52gvRslOejMmhfxB7U=;
        b=GoEEYRjGfMILgq2JtEnPhPahmrUVt8m6kLLn2CySG50GHjQlCSBwHb5uPohXGaeSsv
         XNax21K57O4bue1J5AGt7c0AU/R4kAGm3r/fFRIume1LGOmT0zfLma4VfSTRr4vQ4KZk
         2lw7a9ZcCbw1LQOX78IroQHwzktr0RpIOUGEhyQE/1RaHm4cuODGF17T7OrorKK7tJH7
         Wu/BOGpv9pNrOMxog102FHNzEZO+WU+ksVAxOQQEVHRRYWKYpfAPi9jLCZuoTBjSrTeK
         B5VW0FStTE2cB+vH0T3OULBepPFnr4pe/MdnG+PnQsW64rmZCVP+xyjuV2w6jIijyo1U
         i9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707750329; x=1708355129;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qir1fthWNc0Q+rYe6JcBDOv3+52gvRslOejMmhfxB7U=;
        b=VSXSsK+iFFvC0ZdQQqmx4Lqmgk6yukbPZX2Z6hreQvobnd0LfY2t/BLOcub1/cj8xH
         uILBIHJRPwosHO3EHpS9tCsNgNKWEidpu44p+AMwPciLVWUJbuDJyCnT3raeMn73yArC
         Z10KwaaslPkGFJmV9ijzn3nrrcKWVxuPSVdkZlrz2lC9yNfL6qzCYPDnAfFoN0tk9gcq
         j9a67RDRv/4iz/t8dJWv/McelAwOKTcc5/+olKstaUPtCVof57oFOHrzcipAcYx/qPCT
         N+qqpmTNKJSB5/bJIRjmjaJPw466Amm2jyqSebOlmXCyZiB5ofISTQuK7HwGHNqqmzxa
         fsmQ==
X-Gm-Message-State: AOJu0YzXW+j1J/unCQ22wfO8UNl0GjPonoU1JUvkoT/VkSAvjipv5zpo
	fSGo9XfWdtkPs5bbUXU52SVa0ajnBuZrklFOP4H3Yn1cBmt4naKZG+MLsyBfkvs=
X-Google-Smtp-Source: AGHT+IHbRemWtZnRZQJfYZctFHFgHrmfOXu0s/tHvYN1EQ2twJtnnOnoO+ym9qfVWpFqek5MwFU0XQ==
X-Received: by 2002:a5d:42d1:0:b0:33b:69ef:dfb with SMTP id t17-20020a5d42d1000000b0033b69ef0dfbmr6188662wrr.14.1707750329247;
        Mon, 12 Feb 2024 07:05:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU1e8ENr2VTkB/vWhkQm6MFHIiUtKB5Op+3TDHDfQfwaRr5dbRx6cf591hcKNk5scZ0JFBn8dznY4bBMDdJB/jZLetI7rqwppzEt45akuaV0wIwlUyoq8QwFLKGn/ka+2mJodweYK2QN73wNPm5rupu4c7w1v1mLwICwQEvhw==
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id bu13-20020a056000078d00b0033b6d5a1244sm6964223wrb.12.2024.02.12.07.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 07:05:28 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] docs: dt: writing-schema: clarify that schema should describe hardware
Date: Mon, 12 Feb 2024 16:05:22 +0100
Message-Id: <20240212150524.81819-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'title' and 'description' fields in Devicetree schema is supposed to
describe hardware, not the binding itself.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/writing-schema.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 0a6cf19a1459..2e5575e6a4e5 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -31,7 +31,7 @@ $schema
   Indicates the meta-schema the schema file adheres to.
 
 title
-  A one-line description on the contents of the binding schema.
+  A one-line description of the hardware being described in the binding schema.
 
 maintainers
   A DT specific property. Contains a list of email address(es)
@@ -39,7 +39,7 @@ maintainers
 
 description
   Optional. A multi-line text block containing any detailed
-  information about this binding. It should contain things such as what the block
+  information about this hardware. It should contain things such as what the block
   or device does, standards the device conforms to, and links to datasheets for
   more information.
 
-- 
2.34.1


