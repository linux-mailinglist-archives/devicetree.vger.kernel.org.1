Return-Path: <devicetree+bounces-245223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 958DCCAD831
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 15:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5192530039D9
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 14:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E098E2E88A7;
	Mon,  8 Dec 2025 14:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SApP0M4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334BB245012
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 14:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765205968; cv=none; b=hXCk45KAculWf/q8M+NZzZ+tmpBPvuVawKIO4dZwgh9iWF54EcgKYDkD6g1ARmeiIEpUYc/2f1XrkvOzUYWVSGM0GV+DjF0jA5b5HWRwvTYaWDVeVc2GytyPrjYLjnUdZ+6Ons0F84As4oiVd8gavkOFClN1TgzIOHlGtSicjlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765205968; c=relaxed/simple;
	bh=uLmS3zFAWWg3rczbGlkXkOenTYGyS9ffx9/wMN82yG4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YXukecTRuBtk7wmyQ4k7jxYE91RIZgg1vFNEiThE+e7hLrga2bu2qU5yCddH1Z2NGNQitnVTJXMglCey3XaKQ29+Oy8OtPEPtLvcgf2wL8pkI68r84/jIgCzmETud+x9L37jGEQq6rQ0BJn/smCPN+T+87SuaIYtASHplEyYdFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SApP0M4F; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-647a3bca834so5915112a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 06:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765205965; x=1765810765; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J+to6IujjR5asOSoIClqkwi7ZpRp9+FoGFEMQuOxiZM=;
        b=SApP0M4Fpk10OVuWcZRcpAOxCQttP+51l5UUJr2rxfeLJyEoyYxtb8AwD4TRqPzs0Z
         fapRi5gg8MxEc7HUxgI8iiJF2FR8pvysOnfH1HaN4wja9LvX1Ee0goIsXXOjeG+JjWIw
         1ttuyF4X9wjan4gQNRh2a491r5/gQ/UGhbRquYp26VRNwY7VZiRF8e9kDCYfiRnSW8BO
         RkQQ3xQW8sTZmBQWdvrt4IsZ+92t3jommuuFZoh78io4+bNUTVRGg9iUSwvoxrKzRzNY
         bRijg3LdmN/CoLUlG4uEvXEg8WebBhWAT/WjWLBe0FCkbbqR+DsiWxERRRcuBPmB9VVI
         8LtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765205965; x=1765810765;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+to6IujjR5asOSoIClqkwi7ZpRp9+FoGFEMQuOxiZM=;
        b=cHKg0vOkotu6E9IWkouMIkaQ2CJ09XT1DBMI2ZOOA280Mrs5pnDpZa3c8bQJYPgraM
         zssetasJarjOKpSKfT6xZY8ITRhT2LlC8Uiks9g4KJ6wu2P0RjoEJUh36LdEHGRGetRr
         O7DABgySMbHUCDwy9hjxu0qN/nlS5/8a4h7ATaqllEu4a8CEMiB6YQYVdfZ3acMgUU33
         vNpJrLr9TyF0/7940N8VM/8vuLyU6tAaK02v9dgEASj3VsZLWR7aLFnR8cRdd1Sx7Bao
         z7ubfoOOH9A1kuh8h3vnschVYv4DN+e17vtEXNn7jSPtbjQVeERnLpqQFGAf/rFQBaLK
         pWtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYkvjnmxzVfanYybVCq9Rgnx0m3rzx7FXXJhQ0UERDyYEqK19CoXm25IWhDJ5RFjNlOLUXXEtU9dlN@vger.kernel.org
X-Gm-Message-State: AOJu0YzsSWq0lDpv69g/XMSloQ9H79cPefwie5qtuFem5uF09OK57F5y
	Cdysb0xYj9Z46+syyhU9JUa4SkruzRO3mICrtHBZvHduV3H5yV6jfo1Y
X-Gm-Gg: ASbGncsN8X6HUge7EGwL/P65Kg4z+2EvNkewVaWp5FXl0vF9ceOsjdp1nD61qJ4J82m
	kAIS8au0mteNW5UoVBaTzKW/dxzYry2hLEKnQehAhBApnfy9M0hk/ATNpUCzA2eZGdQHctDlYNh
	h4whuEo9XxhqqZUzoBCEhgMsvtWLMrCqyyRQgcBUrr3h6zUQODk3wjyKBQpO5KSZdxgmL/EOI9+
	nXPZ2YO8nMnFb462b22PzWleeDd0+5CZWb+e/axroxTgIvf2rvz5eMvFchTkBG0oF2/W43Gydwn
	zTZ8VvDTf4B2qf21H1TOpnCEySHvMnjVUWsEeE+7gPFZjT4uzhARSayg5gtv+9DT7b2ZQ/WywiD
	xyLiirXsWCEt332yHpLVa/EoENggOnRfN8X4FgQuExjIRMa83+G72wCjXQVLK/jlgZ0DW0MawKc
	P/t3hrG6qQZtUWig==
X-Google-Smtp-Source: AGHT+IG8rQqpJ2MB89ONVLWQ+Cg3vkFpX8w8CxK5GGu4BMGraZvYfazZZrEiZpBRcHA5m5CivZzELQ==
X-Received: by 2002:a05:6402:1d4e:b0:640:9c99:bfac with SMTP id 4fb4d7f45d1cf-6491a3f3b54mr7570377a12.13.1765205965464;
        Mon, 08 Dec 2025 06:59:25 -0800 (PST)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec300esm11365556a12.1.2025.12.08.06.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 06:59:25 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v3 0/2] Asus ZenFone 2 Laser/Selfie includes a battery
 measured by voltage mode BMS and a simple GPIO hall effect sensor. The
 following commits include support for these components.
Date: Mon, 08 Dec 2025 16:59:19 +0200
Message-Id: <20251208-b4-battery-hall-v3-0-84e2157705a4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMfnNmkC/12Pyw6CMBBFf4V0bU1nAKmu/A/jorQDNOGhBRsJ4
 d8t4AJd3knOuXcm1pOz1LNLNDFH3va2a0OIDxHTlWpL4taEzFBgCigkzxOeq2EgN/JK1TXXmcg
 UCSOVSVigHo4K+16Nt3vIle2Hzo1rgYflurkA0l+RBy44pPKEMjaQ6exaNsrWR901bBF53MEIf
 zAG2OCZhERZICR7eN5mOXq+wn/Dd9s8fwDTozhg/QAAAA==
X-Change-ID: 20251208-b4-battery-hall-c707ae0d8ad4
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Changes in v3:
- Added multiple temperature points for ocv-capacity-celsius
- Added capacity tables for every temperature point
- Link to v2: https://lore.kernel.org/r/20251121-battery-hall-v2-0-d29e0828f214@gmail.com

Changes in v2:
- Reworded the battery commit to include a link to the downstream code
  on which it was based.
- Separated hall sensor pin configuration from gpio-keys.
- Link to v1: https://lore.kernel.org/r/20251115-battery-hall-v1-0-1586283d17c7@gmail.com

---
Erikas Bitovtas (2):
      arm64: dts: qcom: msm8939-asus-z00t: add battery
      arm64: dts: qcom: msm8939-asus-z00t: add hall sensor

 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 79 +++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 1 deletion(-)
---
base-commit: 82bcd04d124a4d84580ea4a8ba6b120db5f512e7
change-id: 20251208-b4-battery-hall-c707ae0d8ad4

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


