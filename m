Return-Path: <devicetree+bounces-68999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD198CE49A
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 12:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DF591F22A7E
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 10:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B656085C70;
	Fri, 24 May 2024 10:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="g3WaAMdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B192085C43
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 10:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716548384; cv=none; b=FDt5+wz86aqSF06tXsA9MsVIdDaFJG6S/P+kmMwvmTyyN4ydnmYGoNYwMLnqm+2nZCI5R1zFSt3vr+MzjIuc3N5cprdzL+m70BH7/wvcl5frd2caTT4Bh2X/tIWUJlFLUUTF2u5Kug48nJoEpJSLjB8w1gZZBqlT1j1I1JqYddI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716548384; c=relaxed/simple;
	bh=NqeeJSjs8RW6WO+W/yuYoxXi4n9LCs94p37EgDi17ok=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o9l77ax1xP1KMsc7e47zGXbpXkCGMUDz7OaNLObbmbPydwOniyq7kiBNFTi6+ra45jSZhhLGEEG8v6G0QYcuUmvHLoIkiv3zVGHTNNqfeZwVzgwXtU+QKcNXnng0VICg9FmVe4yDhGZbNQ4FWe3mq2TlGqyJIC8uuqDLq18TDa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=g3WaAMdR; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e95a1f9c53so8506801fa.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 03:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1716548381; x=1717153181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yP+35eRZqZ4WiMnuzTxJyTRhfiCcTNB314PeuCIhpmY=;
        b=g3WaAMdRjdHzT1fsYRSthhxHOBJlIAwLmXfs82IbobLtWqYUvA066B83npdgaWfQCF
         oLcgaxV6B3PrRpOa4OIJjtoY994DJHIugtQfpqbfHvl3/wyis6BtN2eGSVsaAHKcC+El
         Oic6E+zqaIinsPm47KZS2/0/WmkITcWPK/4wwRQ7dqByyR6cghhlNgyUdKVXIfIBiJUi
         HwP/wdzCyh9vafthOZTm/IGgcPTc+PDmRrHyse9bKJkF8Nc1qLEpKpbnKVKaCbh26Ruz
         I/PxMtzWNqSpocf51iKjfa3jkh3N64W7WthW1M/jIsopAT1j8e2DCyec4lnxI3chgfwO
         hGmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716548381; x=1717153181;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yP+35eRZqZ4WiMnuzTxJyTRhfiCcTNB314PeuCIhpmY=;
        b=XuSsgCxNTmT/tQzUmE/0BhVhfPYlC7hs6zCRweFOUwTYJWXOYbzw+oGOQkFaJ/GtGx
         /egyDN5w1+Ygsaoj8AM2lu6Uv27GNCeh2rBXcDFC5OmrhZhleJZhojZlQYu+hOvPAwzb
         gDnorJrVvO22UWSEffWVkl4XZQ1jsQx0N3mtIJtm/nEryhaNIQFC9eCH6nLv3kDzGdom
         B8KcMi3CugdNL/hBrVyiasyrLOFrWlGHzfu4qC5Ic5PevNHrB8C+dxWt4/7g2M6X4qRO
         rLa2qk/4hiDFmkELSNtDBHZ1qTKnr92+BlRM0uylme41J7/Ax27zHjh52ybTJfXWT0oi
         P3ow==
X-Forwarded-Encrypted: i=1; AJvYcCVKkI1A9n8eMcxkWKRVjwtAjV4YyIHIUvui2DLwlnN4tPQKn/UTsV/7JOtMB51O+Ybrkepbc656IodWk4/+cvzs6qrFARWp8coZPg==
X-Gm-Message-State: AOJu0YyMY4TlfvMiwNzYy/nNmrxjVQYs9LhIHDQMgOzSbI0IYbRiQ9Pd
	Bgo/QM+oZamqlHJjfNpOANehMf2ng3sw85V9gUFSJI1ql7NeuccMdNxd/mUwOUA=
X-Google-Smtp-Source: AGHT+IGK/BLRQXataXUt6EPhmbkyqO5rhkY7srRTdSk9qHDfilweWDrpUOv1g25WtjZeg6fxNjakXA==
X-Received: by 2002:a2e:b70a:0:b0:2e1:adc4:47f6 with SMTP id 38308e7fff4ca-2e95b0945d4mr11424051fa.6.1716548380802;
        Fri, 24 May 2024 03:59:40 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42108971393sm17396985e9.19.2024.05.24.03.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 03:59:40 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Naresh Solanki <naresh.solanki@9elements.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
Date: Fri, 24 May 2024 16:29:23 +0530
Message-ID: <20240524105929.557129-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new compatibles used on IBM SBP1.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 749ee54a3ff8..307232336629 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -83,6 +83,7 @@ properties:
               - facebook,yosemite4-bmc
               - ibm,everest-bmc
               - ibm,rainier-bmc
+              - ibm,sbp1-bmc
               - ibm,tacoma-bmc
               - inventec,starscream-bmc
               - inventec,transformer-bmc

base-commit: d976c6f4b32c2d273d44ff9ad7099efe16279a39
-- 
2.42.0


