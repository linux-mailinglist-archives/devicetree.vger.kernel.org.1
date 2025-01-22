Return-Path: <devicetree+bounces-140143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE54CA188BD
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 01:12:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 670E01889F4D
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 00:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D3E632;
	Wed, 22 Jan 2025 00:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="haMtq7tu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A2B1392
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 00:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737504766; cv=none; b=HwTiVQOEjo/S3szl6sUAeB3gXAjff8w84NZoVkULlNuCMCKMyrN0pAlOuErDyqIVpbFMQw9BAdzG8w5DGIYkmtmpT243x2SCymI3k9BSxd0X64pR9bJJRzesiQTrMcnjt7vLp9XxJ+DjFncJsTW9DHF5TmuNc7qj63KgtAJItYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737504766; c=relaxed/simple;
	bh=zki0NDt+u+V1WcCaj88mFx68pC7AfO2UaZCB6rbYELc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k+tmKzi1OAcYqlUew+7BxwVz6dvGxK7zMO4/VkiC+wIaTfA/FHmwgBRqJ9Yq4GiVhBoUwGwYwL0zgrPyC1gPB0aDK9uKEZjHOYa4mEiM0xhep8fVBl5jMvWhQlUOLfoXfdbDCRIH/tYDTS7744R+QiVLTc+xFeTAyCx0SQIzpZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=haMtq7tu; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6d8f99cb0d9so49979526d6.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 16:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737504763; x=1738109563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9xQAzgK0Ogi26D6sZWQIofoTNpuYU4aGotfpEsuIEtk=;
        b=haMtq7tug+PK1YRAwS5J78wh0oIzfzAw5kI8CAFKa8Q9goN7k0To0HjyE/4F9012P1
         6jcj8fQDjEqBRyo/2JIFaHP5RQCf8Ch2iJehpEWm0zNLV3YMgUbdeB3eU8JkIXNKaSgy
         OtCcAtQzu7FVxvBsMIzjNdWu5yXNCk4z4o64A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737504763; x=1738109563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9xQAzgK0Ogi26D6sZWQIofoTNpuYU4aGotfpEsuIEtk=;
        b=OArw4lT5C23A3s97cSm/ZNZXBSF+HzWI1IYxQUQ6RiV7yX7OluBC3BYKxbj9uBDUGM
         nQxeRnOQ74Yze1gOEOjog7xpFd1Qrx0+GVqZXZPRM1llHq1DnlOZ8Yfi/oH7i6FA693N
         aFJRrsbhG8mazrcTruhgtF6Udrp74j8aZS1l3DoqPMFBVit86QbKdoHpJmn2eVUoaRjN
         74pWIWIHNeA1VgFyxzB80PoYyTaL17Yh4mjHcIGYPS+KmwT0u091FxGgKf5C666l3et5
         NQE5I5WR5WPEuL21IrLSdbO2LlHBOvWkPyvBPGnJeiqkboiK25ejzVnziaVqvohSNNBl
         /fXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUblrKL97R8enGEMrKRcmi28pKccld5CXDkqK7xFVpeAwkZZi3YUlCnZ9++2W5DL299dN+XMI15tZyy@vger.kernel.org
X-Gm-Message-State: AOJu0YypLi2nESHoyCfUjgHlCY+wIAAYAlVJqRCHWn5WEpgDRWIA7CU4
	sUM84fWDo/yujLf4k4Nr4bkepW9sn7Y34eAwGW2asx1+hzj61gBBKdNP5Clj2p4=
X-Gm-Gg: ASbGnctc27PV0ali7JKFOoV7+9UXCnmGQAAlin90FxKT8JPT2oByJd0fzu4u5TK2hOe
	xGBwj8U6pm6b6NVVlT9n26ojXB0F05GF4KU/UlHRbFPNQ5nfOzsTQiSyqYF9AYTBXhw18AjJai9
	G+3hahKSVgTGHWgTrGxXu94IYRVEtby1NW6uM62BDD5CLCgbkDrtLd/tOd1Wp8YTYoYDeuRf92N
	+ssiBDqAly2HRX7TN1GPpVZkJ4P4mGi0l7k0XGcLkQcmTLAtA5sCDQEZfUm4uE9KnF0TGZulf0M
	Ugllu+yjPQyEug==
X-Google-Smtp-Source: AGHT+IHlqHCOtWWIu6jeCjXsNFo7V1/c1NMKUJkpfavLRNRlnwek8Hj/DAESzcWFpktf/pzsuw1N/Q==
X-Received: by 2002:a05:6214:408:b0:6d8:7fe2:8b31 with SMTP id 6a1803df08f44-6e1b216da9fmr340577116d6.23.1737504763471;
        Tue, 21 Jan 2025 16:12:43 -0800 (PST)
Received: from bill-the-cat.tail58a08.ts.net ([187.144.16.9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e1afcf6d29sm55855746d6.119.2025.01.21.16.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 16:12:42 -0800 (PST)
From: Tom Rini <trini@konsulko.com>
To: linux-kernel@vger.kernel.org
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: omap: Add TI Pandaboard A4 variant
Date: Tue, 21 Jan 2025 18:12:40 -0600
Message-ID: <20250122001240.4166460-1-trini@konsulko.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the ti,omap4-panda-a4 compatible string in the appropriate
place within the omap family binding file.

Signed-off-by: Tom Rini <trini@konsulko.com>
---
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Andreas Kemnade <andreas@kemnade.info>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Roger Quadros <rogerq@kernel.org>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: linux-omap@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 93e04a109a12..28e23ca766b4 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -137,6 +137,7 @@ properties:
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
               - ti,omap4-panda
+              - ti,omap4-panda-a4
               - ti,omap4-sdp
           - const: ti,omap4430
           - const: ti,omap4
-- 
2.43.0


