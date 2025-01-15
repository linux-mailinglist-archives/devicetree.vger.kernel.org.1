Return-Path: <devicetree+bounces-138895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B5DA12D92
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:18:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 217543A14FE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893361DA62E;
	Wed, 15 Jan 2025 21:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dBzMNHo8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D890C1DA2FD
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975874; cv=none; b=Jbb+EJf8Res0tW/T0qjrb+9TMBqlBgsDPY0SqqBRhbJzv31GeOJJ6CE1D00Wfx/4wrYNmTfDdHY0dmLYoBOiQNbnJlO9q5wMHm+IYyGqbTaW7bz2/ua8NKOQoWpgO7mk2s4BHcQ9oaYLjX8LdytMJ9fqo3GFqh0czL3zSoG3/ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975874; c=relaxed/simple;
	bh=HCu/TQu0O3DeduZhaJzJov4bS5s8n5kzaP5h5yylF9k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JISbu3YyU08VIvX9T3J5cKIB8vyhuWdp4isDety+QAJBZWPPWUUeBs0YrW94+gO526hXmA0WHUEKsLNreHqAYqvPW9vsZ3y7wtxJTNQk80Ao3WptULxN29FWh1IXAAkJWJSI5cx8m3Owjiaf2lMnqTPI2jXc9An/RtJNdbmZczY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dBzMNHo8; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4363299010dso200485e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975871; x=1737580671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v4lkrWmwEeV9zelT5YINl7kMdmj0ygxzEXfQRU8/Xkk=;
        b=dBzMNHo8637Ua8lx4n0f8AIy+24l5x6Rva2P7tZBVUzyaDXnQ06udtdu1BL7a2AC3p
         nFIX3TaQeEf+G1iUczkFlx9KyiT6aLsZtZnBSZmz8pGy/C1IBXvhAXYbZVZE1qWfQPpi
         HfH/3j9r0j9BBdJPwkg76606KzDWR/jVV8EkTiG4eZEKxxTCa5SGJVWa2lqIdIaX0q74
         WKQ6c4AKuW2aezpXUymHu2FjvNz9fuqWs4SR1rPsaVcytHL7lUvtbFG05tsMxk/uw8GH
         t5XO/iHsoydXNIIdTK4Qc18FboaiwWmA3aGBkNBPNyZ8TJKUurtJ8GiTNtrJ/be7HAmV
         5EBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975871; x=1737580671;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v4lkrWmwEeV9zelT5YINl7kMdmj0ygxzEXfQRU8/Xkk=;
        b=KG7e/pR9yHb3D7CBdR64njDtqlrvq0sLOSEMf8fpYz5pea88DV0eOg4UbV9ORoV6ki
         EgZO+MqXOt8htlqReIheZiLZAkVoojiaLMjIl5H4GJYboLWT+0Xljqvg6+RuulziSRtD
         IfIXPZADuagtJaO3IT4wqx5ruvaA76ed56j2iNOopZrGEXfugEwVG9s8g/trewrhvhA3
         tjOjLOYGmgAjZxtT1FTddaWI3yLuTZK2fJIrEgRLgKtNIxw4mIfqX08f0+lkJGDDUhOL
         jjPtBUuB7mUH8Y+5sexO3yMZBN91LyPO+r6lmzzZxU7K5hpI2oo1LZu24EeB92Xt06Gv
         iPPg==
X-Forwarded-Encrypted: i=1; AJvYcCUN2XYUm+sfXD3CRj2ZkxcSYuaeTlNjfH1HzNeuSppyhq7WHdL7ysxrlBa3dNZ15nHg40M4d8dNLK83@vger.kernel.org
X-Gm-Message-State: AOJu0YyhZ3NzdMfWfKmsb3UygftxW7kQ1yFLVwRBhs3ai8bTtaz4tHWy
	NjX/wt+oEKtXTghpbFAwht289JbpQKzu/OkRvl6SmLKhpQrJJrHnU32j/zKcPRE=
X-Gm-Gg: ASbGncuS5gYajPdq2aNaJKoFWG+OSS5+DmPazNGshvE2EnOnpfLaB8W6GlGGZgbKR8j
	VR6aRrRNhxv6UZ0kF/ym8w53HofPKmTqHeUDjv9JIqRXkPVIFLA5NorSrsgfIPoA4ubbNsgozZt
	iVnLBmeSDapWxUR18zqa4V7p/E2a8yQ1NR+n+LnAJDzVCSwzRXdcbQLoVwySiLLNcDqzSnB4ZjS
	uvrJFvvlDcDrug0R2CptzQ90uP0Vo9fONAvMCAGSv9Tlz2fg90Tzp73ESkc+csUp9t4jCE=
X-Google-Smtp-Source: AGHT+IGh24VpzQRTuvb4bEdZGhGiYm4+O9Jls/w0Gexvc+jeOD09q+NVxt8rvCOs4CmyRr95sHyClQ==
X-Received: by 2002:a05:600c:4fd6:b0:434:f5f8:22cd with SMTP id 5b1f17b1804b1-436e25603fdmr100314735e9.0.1736975871314;
        Wed, 15 Jan 2025 13:17:51 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d11csm18738553f8f.16.2025.01.15.13.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:17:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: cirrus: ep7211: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:17:47 +0100
Message-ID: <20250115211747.194191-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  ep7211-edb7211.dtb: lcden: $nodename:0: 'lcden' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
index 808cd5778e27..adc74243ed19 100644
--- a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
+++ b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
@@ -88,7 +88,7 @@ &fb {
 };
 
 &portd {
-	lcden {
+	lcden-hog {
 		gpio-hog;
 		gpios = <2 GPIO_ACTIVE_HIGH>;
 		output-high;
-- 
2.43.0


