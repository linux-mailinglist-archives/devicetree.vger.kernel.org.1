Return-Path: <devicetree+bounces-107104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC6698CF07
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 10:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4423A2856DC
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 08:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36A0195962;
	Wed,  2 Oct 2024 08:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="gWI7yF/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55F71946A1
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 08:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727858487; cv=none; b=JaHJyayueZ8USOsHiCZZwbKzy+LpX4RZ15lT3lcU0URn1/WJdkXKqVhTSQVf2S291VZYt0VbBLzSb4/6TI+1viyhqaHT2O6D6AfNi4kAeL9ziJfyXFjoad9eq3qdlzX6Sa4TOZNLFeaepR8jxi5zo97OD9Q4Kgno+UlD8o6d1Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727858487; c=relaxed/simple;
	bh=z9ZlyGoBluNc6PapcN8LPx9sVuMjeiJH4IUyl+2i3UU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TXiRHjziAUkDLgdXaXmeDnI6bqIDsnWcqwLPB/ed1aqvI2lloR1zuNiqp6DnuAdtDfPJY6MAtXnkawKCqBwxNCa7rok27ELRQAythtuUxTAH3GbcggbNw3cB+TkSOOp7eAm8UxiK6anEGnzJa+JJ6fZuG6SjpDlF0ryK0BTTG7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=gWI7yF/k; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37ce14ab7eeso3284167f8f.2
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 01:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1727858484; x=1728463284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZkdLBGm1XB365GQZ5F1KffCkGtsoV8P41FFkFvqweKw=;
        b=gWI7yF/kXYPYGlviafZV9WX7LVOm4AeCxCFXbBE8+L90SysZM3R9IWbebSxMmNcb7t
         fjR4uCXdj1NXm9HaHKyxDn3pnvmYx57HsinhlL9+Icq7PD2ZNEGFI+x1Vxqw2xgnvWAm
         27uYbx8bcLobs4zfQn7zqZvRqv3ukHaxfLOioonZLNp1IO9+SwxMU+VcYxaea6dKsCWy
         BSi3h1NSYV4Bt2WgCN0qco3nLepoH50eqlT/9XCxGAYIR9AC/hGvkQadcjL555GtA+Wv
         i/xJjt+W3iqqZ/t1jJYIv7CLkrT0NbUJ10gYRC2fzVtJVM3OZp2MuT21Xi/oESYHVIGr
         xmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727858484; x=1728463284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkdLBGm1XB365GQZ5F1KffCkGtsoV8P41FFkFvqweKw=;
        b=r3bA2v5q5PvAAAqVksatVtobOm5990nan00JcTOIV72FS2tZZT18eK5kZo9WZZR4mR
         WMG0PFKBhMJWULWNhPq99nT5ZlRGy/GMIE35jA+bIRrzprZDFAzBA+OJxDWEWhD/USDt
         kOya1dvLiS6v3eTVf+tPHXEJNVPHMd7+YQmNW4xWJmE0BoL1rLTzj4rkle5aq8CWB6wR
         W4uM7sLsNrVHeX6uaClF652wwl++cERcgG83BkrsaHy+9I7sZy2RbnSqiFYS87+j56tp
         ihDhdsSouHnDNh55eTuoQbi7KeOeM6rKrLoJau/tqFedGNtZBUnzXAkmWkneFJSWPf2S
         u47A==
X-Forwarded-Encrypted: i=1; AJvYcCVNI2vpF1B55OtLGKsxwowS5UeM4z1ifXtkXb+CMbWCpTo2a+ia7zTGpn2Tnh7afDtxE4R+68cLc/Op@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2V7f+LIuzORxqIet3P90qRXnzQnAEUM9lFTyTESBHWEzZEng1
	eI9xjv+yX/I4aKRFs9SldjG2BscZh1tAf/QzEGnMT7dwJAuNexcqZg+YsvKREAg=
X-Google-Smtp-Source: AGHT+IHHxXmbuR4b6X50HxVTK9A11o7DnmYPeKR05fGwinleKUdREqTk7ARPSItbcf2SaeVHMsEhLw==
X-Received: by 2002:adf:f04b:0:b0:374:c616:54b2 with SMTP id ffacd0b85a97d-37cfb8cf2d8mr2169854f8f.19.1727858484028;
        Wed, 02 Oct 2024 01:41:24 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f79ead833sm12332645e9.13.2024.10.02.01.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 01:41:23 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Naresh Solanki <naresh.solanki@9elements.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
Date: Wed,  2 Oct 2024 14:10:17 +0530
Message-ID: <20241002084023.467383-1-naresh.solanki@9elements.com>
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
index 95113df178cc..8c04d6eaec08 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -89,6 +89,7 @@ properties:
               - ibm,everest-bmc
               - ibm,rainier-bmc
               - ibm,system1-bmc
+              - ibm,sbp1-bmc
               - ibm,tacoma-bmc
               - inventec,starscream-bmc
               - inventec,transformer-bmc
-- 
2.42.0


