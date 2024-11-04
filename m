Return-Path: <devicetree+bounces-118617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCE29BAF80
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71B591C2110C
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 09:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAAEA1AC885;
	Mon,  4 Nov 2024 09:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="U/h+IwVC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BD81925B0
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 09:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730712158; cv=none; b=j5XDUhNr/4ast00hjVtmKy3fEyPcncO7AyGiy0W8xF3YmZmuUBy6cQpMNzx55fschDLYzOOUF7gVYhhKLQLrm0rEVH6H1+60jgQ9N0i0zFEbrbgyltuRPEDVAJSYyZZNdjB2dVNUcdOwfwcZHAZaYNfQIL+blH6ubTNd/zobUZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730712158; c=relaxed/simple;
	bh=DBgTrbstgIrfs2aAOPjrRLfqOaoR8mlLG5lDgCgfVN8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kzLTup2yQGyd/aUjW2g7lTsulOoIFQb////6eJ4iuniGL2KAIBbHhHAUyLmYYFSpNKqu/96ro46rXoZWw1RldIb9ufcjNC8/UrEcPRYTsdKfWq0xMrCwxSIHZan37twmh2cZfwpchjRsvMSpBYW8lQoJ0ztiyBhB/FuhBkMwyXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=U/h+IwVC; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d49ffaba6so2717645f8f.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 01:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1730712154; x=1731316954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0x8YfzKgLTDDx7pLL9ZIfdpCd48D9g1TybgGh/+DyxA=;
        b=U/h+IwVCaI9Z4IwpRdEH93qrEzOoWABRz9zET4XduXUPiqvOh9a7l+epkUeXAn/z9E
         oTehqEFINP7ncoPGTGj4fjBrPE06W9bukPRcVS71mFOZxMfLDfgeWCLrv+O7kdDQaygI
         K9ge5pIDcSmKSDb76pLLFOBxFltZFknm8xhwkYiQCRz0NDirpbOMWdREbgE1bi9QuZXg
         pAFdkIwzMaCkqTMzlS3FwGNkC255hJx9CCUE2XPHREVHtQr+Ps5Fmw3lwxmJ8IKfxHkf
         Hwr6RdMi+Ua/QHfGlXgp9MRIjZar/omkujqNYE1Arezo08vxvTQhXtIiaewDn/G0NVwB
         n7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730712154; x=1731316954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0x8YfzKgLTDDx7pLL9ZIfdpCd48D9g1TybgGh/+DyxA=;
        b=BDGEnEoaM4uvLzocTPr6P4vfXON3f27Aop15TEhngpN3G0YImAuf5c59h2dRUj0cic
         dA6k5goyJVO4UBNVavfFso0MO4qPJUgiHTB/y0WUs6QGa6YfnqqGv8deH1Nw2V1xt0p4
         T8vZdEtZICdm6Ot3g2rRlfbG2pX/kbXbjg7mlSShhMylCIiaC8qjdG+Dx9g6AVvRsROu
         GZ3yNwk3V1/IRw3Ihnu82RFjQc/ZDPGOfzBswGqnrz6jVxe7WCjff6BV1vZWCFJ0PmVL
         UbloMHtUzyEYCsHJfuZqE61b/7LxwfNOtRIplfxUv85WxIMZ4v050cd+n5A6dp/cjL2h
         nmOw==
X-Forwarded-Encrypted: i=1; AJvYcCUZJ42DTWg4AkYhKX7pANOs+u+31TdFoRA8IXcgev1BeRl/ELA4SWxwOgwxdh2WIXYOcCcblSmZ20J+@vger.kernel.org
X-Gm-Message-State: AOJu0YwS8RQ0yv7GWdpVMb5DFACCHUp+CURw6D5HlIMyARGXdTyyBDxe
	/6YGQwZJdpFUH13m+USdGzCWczowg/CxwQM6yiv0la6iZUZL/wQyA/P97tOkn3tP56O3Gg7mjk/
	V
X-Google-Smtp-Source: AGHT+IEP9RuCeHmDYOOToxOTcWwGxpvwDvs0FtYDNiDwDu9dBrotM0xovdSu4CmO4Yn3WMu3dC2yrw==
X-Received: by 2002:a05:6000:18a7:b0:37d:45ab:422b with SMTP id ffacd0b85a97d-381b708b694mr15447460f8f.31.1730712154262;
        Mon, 04 Nov 2024 01:22:34 -0800 (PST)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116a781sm12744872f8f.96.2024.11.04.01.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 01:22:33 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	sylv@sylv.io,
	linux-hwmon@vger.kernel.org,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Naresh Solanki <naresh.solanki@9elements.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org
Subject: [PATCH v6 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
Date: Mon,  4 Nov 2024 14:52:14 +0530
Message-ID: <20241104092220.2268805-1-naresh.solanki@9elements.com>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in V4:
- Retain Acked-by from v2.
- Fix alphabetic order
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 2f92b8ab08fa..c79c74ab3d78 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -91,6 +91,7 @@ properties:
               - ibm,everest-bmc
               - ibm,fuji-bmc
               - ibm,rainier-bmc
+              - ibm,sbp1-bmc
               - ibm,system1-bmc
               - ibm,tacoma-bmc
               - inventec,starscream-bmc

base-commit: 30a984c0c9d8c631cc135280f83c441d50096b6d
-- 
2.42.0


