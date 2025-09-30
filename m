Return-Path: <devicetree+bounces-222676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B63E6BABD92
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5101E189EBBD
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAB7277030;
	Tue, 30 Sep 2025 07:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SbtzrdM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60682239E76
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217855; cv=none; b=Q7yW+mt99VaX7RGAZ9FJBb+L9+4xbwrfbAJabQK96VsL89fqZPqWCF7XAbJCkkl7tLj+BSL+PecOLi6cL0zZewafdY10n/mBsoqCDfw8Ic5XMezNxj3zqaAG08BAH0m0825mKmK64FH2qzRGnpS7ZwnvRipnMYhr6XhYnZy2dAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217855; c=relaxed/simple;
	bh=ENGheAYnNW3g5COpjG03gMGNXlOZ2EcAFRzlHVSA5ng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ikUwavbVvAY6xZ0HaJe2Mkf6qptv6QYg7oAaLRkFGH+JzRe+6GHHlNU+FWW/ZigpvRb1WT0LCwmUyHUSG/EF8Pu2XBMKRa3LlmwIsYUoK0SikILVwSiPhDAFhwNaEYfY95+FRe9hsph/YtVI23j94gR2trdM+gfBi4CgLMnnRjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SbtzrdM6; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b3d5088259eso357881566b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759217852; x=1759822652; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1iApKO+F77Gmy+nvt9OQEdz8JuAQZPIJ8wB7y7Z7dgA=;
        b=SbtzrdM6fadj02L8XwAIEAp0QjVDZw8ef9lOJrgovoXOie9eIB8/j7TRtnhsDPkqZs
         pGrqUeY5dX8X2rf3edVDV5tR0k9hO0u+3wNmzF/Cm8xXvHECc5kCInRmuN6iy1NUswfy
         CpUrXNS4cYGsq8D/JBBbDKy8xZv3ujAdYoXSbvZxPeQTIOINyIQgvlrAqyTq0QE/3N3G
         qiI0RVmKrJgz0kafr1YVBF5CDYyyjTwWcZLCW12xELbbUDGTGskGa3Wy9poLCgmSj/FB
         h+kJtv3POt2SusRmn9qSZTDkcb2Ij8/Zw+DsRl3djiFaZ5W2wiaCEiimFkNVhZsdGOeu
         owYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217852; x=1759822652;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1iApKO+F77Gmy+nvt9OQEdz8JuAQZPIJ8wB7y7Z7dgA=;
        b=gaajhm/cQMn68kC/6DL37MXhGqdDnM6in+pgn0fVnjpcl4BVhtDsfBW2DNECpere+o
         plgpUnZBtjr4BYu3278iVcDpxgwOFNGyUMrm4BKJTOOcBuIMSYLOw0N68vMXU8o4IC6q
         xhBzvnpRTNzA6a0C1tBT31eHK5lylT/zaDhR5mkzYcP2S86lzxOUDKqdSw3zAh+M8Tp4
         arTuldHLN+UYhlSNb6+stQ60F70WWq4NSDRGoFHSybO3HNR2bHiuaxgVZiJxFCEMuqEm
         xpvD9Mc0WrH0xstCG+Xy/VZXF1ARIiP4O9q5GREyuQy9M5R/dGFGIyLUyYollTJJe08T
         nMnQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/S0V1jtaoqHYKuQPk+BgpPv+eLs4rcLV05oX/hSy2h7PpqcKHx/WI8dm2PFTk1PNUiUHlFNwT0zWe@vger.kernel.org
X-Gm-Message-State: AOJu0YyfzqdOIXF+bCWUCaEOlpHchUTA+A6oVVMCb+iFgcbMazkuPb8K
	j48XhN1aJ1IdqIjlZnsFSG5VpP8moA78qCGh7Z4tYD1PdMMqk+Svp9U6R88lGaKVnKg=
X-Gm-Gg: ASbGncvs1+ymtyd/q9utMiTpnLNTnj85uwm+0MHwhxpQrvMVF8m0ZfWAjoiHcMAzzHF
	qEJiA57yyKGSdD3P0PsE6uHdv0J4IdE/ahqWEaada8saJNOSAl+4SzGxhVcPIUUSISjh8Ro8BWx
	i2icyDfJ8fcDK8NWAs+N0zimQMWd8R76FxxE/I4dLBx2QpEbX3WqrearBR1piA5HxFmq/hntXXR
	81wPKbmMImAjg/neK66/x3yThOJc5DVTwNf3PBeQ0Rn7q8JNDQ8YGAKKqB4+Y6aM2+q8Ugev3cF
	GbbQg91sgfOQ2QsAU8am2KqzRDeEiT0zTVnu9K5Hw/ZzbyyN5KAEVVGd1IlXr0RdhpguOCdn65e
	hLFa1QpQ2dkMp4jAWWzYB48zc7hUPP2uWE6ztZHglvWiPI/mK38oGbp+y5U1zv435kwgMFP34gG
	O6SFmiJNYe/+o3smYHAQ==
X-Google-Smtp-Source: AGHT+IG9j4qCfb+pWcKxOWPLNAWJqVlW5gBDMAQjRf28CzIk+BsQWovz6lYnrw00odazuAg1RoDJ+A==
X-Received: by 2002:a17:907:3c8c:b0:b09:c230:12dc with SMTP id a640c23a62f3a-b34b7209e46mr2054121866b.8.1759217851585;
        Tue, 30 Sep 2025 00:37:31 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa46b2sm1084376866b.24.2025.09.30.00.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:37:31 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 09:37:22 +0200
Subject: [PATCH RFT] arm64: dts: qcom: sm8250: Add MDSS_CORE reset to mdss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-sm8250-mdss-reset-v1-1-a64522d91f12@fairphone.com>
X-B4-Tracking: v=1; b=H4sIALGI22gC/x2MSQqAMAwAvyI5G4gt4vIAHyDexIPYqDm40IgIx
 b9bvM0cZgIoe2GFOgng+RaVY4+SpQlM67gvjOKigyGTU2UJdSsj4eZU0bPyhZaKyXJlMkcWYnd
 6nuX5nz20TQfD+36Jp6K+aAAAAA==
X-Change-ID: 20250930-sm8250-mdss-reset-307c3e921d03
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759217851; l=1086;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ENGheAYnNW3g5COpjG03gMGNXlOZ2EcAFRzlHVSA5ng=;
 b=J1uq8r0DaAiTXMXmOmZSb+gbE0/AQqQXkde/No4Im5tvKyezccWDZwJHxiAQnh5r8fiI9uUYS
 R9BxHaVroVOCzWJst1RVXSv5OAglNbGU9CNARiExyL0gF6lWU3pNxXB
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Like on other platforms, if the OS does not support recovering the state
left by the bootloader it needs access to MDSS_CORE, so that it can
clear the MDSS configuration. Add a reference to the relevant reset.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Not tested on a device, but should be necessary on v6.17 kernel.
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index b30aea8b05409094837ad494389d7c22fa1ba7dd..9bcb2c4c34388f343fb93083977b8d2e9a724bb3 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4687,6 +4687,8 @@ mdss: display-subsystem@ae00000 {
 
 			iommus = <&apps_smmu 0x820 0x402>;
 
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
 			status = "disabled";
 
 			#address-cells = <2>;

---
base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
change-id: 20250930-sm8250-mdss-reset-307c3e921d03

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


