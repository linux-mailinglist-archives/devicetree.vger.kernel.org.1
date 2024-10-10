Return-Path: <devicetree+bounces-109869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B15E99984E1
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 13:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C25231C21CE6
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 11:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FDC1C2DB4;
	Thu, 10 Oct 2024 11:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="FxvoE3wd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1E21C245D
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 11:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728559424; cv=none; b=tLqpcCmR7VuhQxFpf7uCBa5B9xQdZQnQ4LxGO62N20mKHlhpWTNc8nf/Q49DoMHacd/U1jPxtk06BDkZS6GfHNZ8hTGurhDlkrv/pTYZ4pTYbiGX2sGnKNOhHMFWDP8uXlJbmhQWsynZ6tT1ZCIGHu+3whLR4/gCILKuOxHwFSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728559424; c=relaxed/simple;
	bh=r6b1YbYea6821kcyyk+/o9Ps7Vn8p6Hcspii7DWXgN0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R+iD4tVrk6PDE5FWACVcbHM8emiTV6OVTG3gd1W39kvm/+5M7nkwHax/w/ah2qkpPhmdjDA+rhecf4DLUjagEHf+QPLrsQROuOrDB4F+D2qCzXA8RzPJAz7OqtXDwCf9EsIEDrBoiNdKYezRG/veaOSE7BGtCU4SoGU34T2vypo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=FxvoE3wd; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-37d47b38336so438722f8f.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 04:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1728559420; x=1729164220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8qfJuw9pHQcCV2tXijS5mDrRlpcbQjwcuPA1DQvQPNA=;
        b=FxvoE3wd9vh09e+Wq6vWh8kqLaLA+ZDn9pTUdBy5sPvQc/8gZH7q49w4SFx89v+mA1
         QsTJdn37/8EHkD2wqqcnYEoVWYojYrnQNfpGIvO2eHwsavfwpSQ+J/Y+KIt8e/hXSeJH
         RYSrOLVSddsDUTSd7KRoOF+CDH6neZL0ATEBwhqj0+INAuvAZUL6jxRuPiQ7WiKHlDlH
         gH1cPTYnXWJ3TUVKygMLub+NQTXub1yOPZ0ix86AqsNb5M2dfi7MivwPb68N2Ij8rjew
         vKEzd3VWLLXBGpN1Uk7CpsSMIOHfer0BdVezIocye3oPKwzKJLa4SJA9tazGAInF7o1r
         wI5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728559420; x=1729164220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8qfJuw9pHQcCV2tXijS5mDrRlpcbQjwcuPA1DQvQPNA=;
        b=MmT9KH5HLZSclemvux7+wiv9XA3RqOaiZbiVzpZZSZZGEjsV4a71WFnfre0JEzKTj1
         fFR24nYUtJO5KuT4LxTteEUdiv+xYf1RGU5uzva2A20xRJrkK7p8yvkllg9BUzQyaN7+
         CKK6qQQFFZWSDURPtxD/svq8dwa/iK3Wx2KrRszSMmx5bSCELueRcU/6B4vZIbqL88P+
         YEAIpTa6uwMQp+39APoIDxnsUxoCH7uC8VH4Xs7TcHlnXkJ/3dresYjEXuMArd22qpAU
         2XH2/bXsKgoduwUkYCGmzxkB0YdQA2VD91EwFgRIhg+T15uzr9Hkdnys4yvupUmTHRzr
         00Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXf4iboUpYTeLWNryroXQL26jNWE2+yBygjGs0vHd+Cmo0mr1wVtqoYyRvNw3LPHjECm6ZqHvTG/KbP@vger.kernel.org
X-Gm-Message-State: AOJu0YwXGlTgcspOwG6eaIeSQC4nYeiDacQlYuwX1HMN3cns6QsV4Sr4
	CcIfX26g4S+lRFdz5aHKk14gJ0Su9mbxKI0h0brNZuQUGYBe2bh4trgoaGDSkdI=
X-Google-Smtp-Source: AGHT+IH0Vw9DArkGqysshRsRh+1TVUr/gLVYh5xxCOXj9zpK/lUtCdEkscRNDv0C5ZugXkPc3DUS9Q==
X-Received: by 2002:adf:e904:0:b0:37d:5141:ee91 with SMTP id ffacd0b85a97d-37d5141f219mr307476f8f.18.1728559419903;
        Thu, 10 Oct 2024 04:23:39 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6a8ab6sm1272727f8f.10.2024.10.10.04.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 04:23:39 -0700 (PDT)
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
Cc: Naresh Solanki <naresh.solanki@9elements.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
Date: Thu, 10 Oct 2024 16:53:31 +0530
Message-ID: <20241010112337.3840703-1-naresh.solanki@9elements.com>
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
-- 
2.42.0


