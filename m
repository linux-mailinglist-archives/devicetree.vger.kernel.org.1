Return-Path: <devicetree+bounces-66004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 102208C0E77
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9F501F225C8
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB1C14AD15;
	Thu,  9 May 2024 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vX//XXhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D0C12F5B8
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 10:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251714; cv=none; b=Fy1w8NPjUw5TVkB2aaSFb6BlrZ8PTIQjuGopf4BhgG8t7jPu61s1s8nOHNVT5BJkTdkvTpfSSzw/efG8NyXEUn0gl9YEQODentBJP68nxKEa+xqBCeGuNRPUZdwrTxrw/eTL+Vu5DTnkIQfIJheDzRmGUCJraZ5pEoyTf7mypDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251714; c=relaxed/simple;
	bh=PE7mtrBUhQs6eNS3JaxNEqj6Z2nbuCS/IxoNn5x0NOU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uQQtv7JSKg+oGetYgeZbSESkWjGiVQH5x6ubeRpHhta90PkhuMCrr31RzLFLdglr9lZsdj4X7D6PQ7WiouzyU6rJwKgg/i5LwJWhuHdbjLEybTmAve2I0jLfo35/WXv2qDO1PiJFSHaVejP6gZUs5y68fhmEI1r39zBZMG3Z/Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vX//XXhg; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a5a13921661so154245666b.2
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 03:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715251710; x=1715856510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bw88AqXpf+K411T9WDpv8hTZt78Cn4Kd72UqXrKuG4o=;
        b=vX//XXhgLqg+PcAKzhasLOzR+i+Pr9pnj/+HEKFbIyAa+JkK8tA2l95gEWvrDpYe7d
         njPkOr5UYCYd8aUPm9ojY9dLgMUbxdvlFT92lfE/eQE262FCPt1BEt37CyFtj7Dffiht
         97CN4VSp7kkdZK5H4IHxNu8Bz841IuaNtiyEvZpTRC9WOdzD+f6Cymnv3JlFSrLvO7xs
         X2wPKTOM/3YG9hswY7WaJCS7xHD0oe4dzU+3YmdBlyyBYU6WRQM3D3Dr90KPmNbRT1Mz
         yPqx1vBFCBbceEQRchjs/4hhk4DDIdWN/FaXnNr+ibUK1QZpB8PXiHqttocvDflEcsW4
         9kEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715251710; x=1715856510;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bw88AqXpf+K411T9WDpv8hTZt78Cn4Kd72UqXrKuG4o=;
        b=Ew5ptE1IN6Sj/eZH53akApQHW1B1jag4WIr1QHUjaS8QjKM35T7Th+HXYF3Fpe2HJS
         8xSO9TTz3eWkAXO5oHzJMyctz6Xpaz848Pd1uwq85iZyAYpkCb2C/J8CktMDzwKkzm8U
         46AB1nXCqLL/M+8J49ZSbrxjMt6pVPvOtLM9k3noAhD6VhGkPICGfpo30OPIrd5L65bq
         GZgHY1wlTL4eRXAsxNH5oikw/FTx6NK2ap75okt7IPnxDYjWqG0HClWBV4ZIMBRApYho
         SocG6VFO8WoZZFHGCuBjLTDq1AHhGFA+HVomGNevULaSapbfonMdL2PJXBr4JL8XYddr
         W+8w==
X-Forwarded-Encrypted: i=1; AJvYcCWWR67tWT/+E3HHkmmS3f6JbxZqelZ4ITzWmszKKdgLtxx+5t68jCv3KJYcF34OklSLb5tgLkTXSmQmpWsCzC6Ur3XlEI2gT/lCew==
X-Gm-Message-State: AOJu0YxnWc6o2vgtUIqUeZCRmUnFqm8ZzK/zeXYk/WpUL9bhIyWngetU
	EzU+CIr/iHD2VQe3rfAv5ExnlZOsJLxctG6U2zwNgZws1YHlV5XtzCqzAjSASLQ=
X-Google-Smtp-Source: AGHT+IF6Kj+Tt4zZZKJYOj2wwBFnuIMUrXZiJwepWhs31vPShiC8E4zlHD7+UStZt1UhbvPPwqJd/g==
X-Received: by 2002:a17:907:2d26:b0:a59:cdc9:6fdf with SMTP id a640c23a62f3a-a59fb81a21bmr402912266b.4.1715251709434;
        Thu, 09 May 2024 03:48:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c822fsm60017666b.138.2024.05.09.03.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 03:48:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: cirrus: align panel timings node name with dtschema
Date: Thu,  9 May 2024 12:48:25 +0200
Message-ID: <20240509104825.216696-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT schema expects panel timings node to follow certain pattern.
Linux drivers do not care about node name, so this should not have
effect on Linux.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
index 7fb532f227af..808cd5778e27 100644
--- a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
+++ b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
@@ -30,7 +30,7 @@ display: display {
 
 		display-timings {
 			native-mode = <&timing0>;
-			timing0: 320x240 {
+			timing0: timing-320x240 {
 				hactive = <320>;
 				hback-porch = <0>;
 				hfront-porch = <0>;
-- 
2.43.0


