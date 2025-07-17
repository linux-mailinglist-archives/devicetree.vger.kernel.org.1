Return-Path: <devicetree+bounces-197377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA760B08F1A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10B77A63B38
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 158742F6FA5;
	Thu, 17 Jul 2025 14:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YNaiegbu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490002F6F9D
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752762190; cv=none; b=OW6w5UhjvP0T8EqAwdzCDtFSeZHbeTYVc5A2kNtHREivWpN8U2CCdBNwDgCYtkftprEVwV/sJGAjcxxHhHohJEkJFZRK+0VyOWEgxuybRrWjl73LhMMF+LWYv1yeEd0njlfR8bj23T15CkO7SwxZI+FK2zZSSmVR99wvZOfDlRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752762190; c=relaxed/simple;
	bh=5lS5PcV+SW9LtXN/oJ09BpDx+tl0xtlpI3fH+scoObE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gt9f234iUO+YpcrxlHJ0N+eAWJe1PRZQJVZm5sda+FW9w/hZRYiFl0DWoQavgKm3NXoGwiJv04Yjdx7W7DJXMepHsAqZ18XrvgsiQkPwOPC3LEhaYq9Z0C6+SsQMYnwpqvj2JLB8zFPTer9QnsgXhUxJ14GzddKAH0MvnsddGAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YNaiegbu; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-606a269d440so181174a12.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752762186; x=1753366986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uC7B9qKhN/4PoZChB8nu5mHDtv7dsKlcLqC+7kIFNiQ=;
        b=YNaiegbuP15tagjYMrMhRpxeqPmWr07haVZpIDVV4DqTkHu3uGILJqG8aWwGvKgg64
         mknTMqDZEm87I5sxstqSB9VdEzPV4G/TXxOyfNtCZ076my/8YTGzyhGIxKgAWPNe+cWz
         xQ+rz9eai5WLZlSHOdzQ7pPdJnlCXudW/jTgK053B33uwDW97uTkjwX/QSXW6dDg5Dia
         H6BlrCH6AnARVtuTBG1PfvfDfw/YUhRUMtcJHwv4H7P+MhaD2XySPEzOBtyHJRwOdhWM
         AEHahdHbn4XPchsfjsbhMR4ZvJa70qWoKamUYqMv04T/e+6S+24SCQjB7Yoz0G7KkwgF
         qTHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752762186; x=1753366986;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uC7B9qKhN/4PoZChB8nu5mHDtv7dsKlcLqC+7kIFNiQ=;
        b=fJ/OJcbj3JYNUYj37BRFoWmrQnDhcmZRjkf8PjlPxIHk7M3+e4ZhQpNGkIdSLRM/Tq
         cxFTOxXu7aqJyTgZBdK4Jwhcg62bclIK93j+MEi2pvn2ggme14WNLCLwVGUia2aUAAZg
         eTad22VrvZj9hNnQzkqhK5xIXKhWGjYJ0TvE5EmCkYvdcrn0Bi1BcJ/6GbCcR5u9TRT3
         jFjvAuJNJprbvRY15kpwNKJ9MeoQ0X36QgEY23EF/HhRyr5cKdGHCFwvDRKwymLvGiU8
         SmRD9lKbV7AAUf7zlnB9DloxBzSugM2/8tC/WgrxzJqMzJunydfNG2K8tj1zyP519hiA
         9rdw==
X-Forwarded-Encrypted: i=1; AJvYcCURlvgJKVSQE0JjrucYAYcbDWYIwZNckRTX7WWuuzzBxavBtMudghICIVv+3JfefhAreaWoccrgx0iG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj0DWbWfNImJQJOj6feJKsVqk9N0YQQx12f5TMYN2zKOwQvA//
	NvOWqdqBvpe4lOzf7sG/iffKqtpHAyMmXA/7aAZ/WRtW8ZTyXPt0GuSRUQCdTiZ7xas=
X-Gm-Gg: ASbGncukJr/9GPgrn1enVMR4kT8nidPm8N4VfWmVlVEHmBMxe5peCVkQKmOghDdcH1u
	homoc7q2yYkvfY6UN3BX3fcrvf9VNk8QS3pgiDTUDL/YcVqn+Q4Eo52x5e4u0b2KUqrogh/gLG/
	IKS/k7M+VjoQhhGO1vyvdCMPQZaCTFS8sh+4odLC09wLHhi7TwmpHNWaCFwdeDY1xNYakxTtWEY
	3r4dfIMOLHs4ArCY0mwaw8F8Zc4qCaY+zZyX223lCJBSQTxp+kio9xMMy9KCveR+XPm1JwQ7iNY
	bU7Exy5AA9JFgBAuiGNXDiJTiJ98mjdpJMbDAYHfdRksXgU3KlPEiE8NYf4a9IGGHd8UjOs4UST
	H/YWsKXOIFyzjNdIi3clSke/lggJjGFUj
X-Google-Smtp-Source: AGHT+IGuuLa3Vb/KSBwUg2zTekQ5l5vJ975p9f4R+T5/YcFzGiBqvq9lyW2cY6LpT2UokeowN2VhEA==
X-Received: by 2002:a17:906:4789:b0:ae3:617a:c52 with SMTP id a640c23a62f3a-ae9c9955332mr273565366b.2.1752762186554;
        Thu, 17 Jul 2025 07:23:06 -0700 (PDT)
Received: from kuoka.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294c0asm1347281266b.127.2025.07.17.07.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 07:23:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: nuvoton: Use generic "ethernet" as node name
Date: Thu, 17 Jul 2025 16:23:02 +0200
Message-ID: <20250717142301.92548-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1445; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=5lS5PcV+SW9LtXN/oJ09BpDx+tl0xtlpI3fH+scoObE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoeQdFiZYpYveODGEOcCSwOy+4ytz1aspSwdXmV
 bupbLY4UWCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHkHRQAKCRDBN2bmhouD
 1+lCD/9N0B5vDrapB44zfaRMBd43QiAg4+VWkXSnAgNQcc6bl6s55kbQqIMGG675vjFEDbDqnHC
 ckMHUTmLHs7sEGIOmymhIPTsXYi2KDDgr9htpgc0Vl+hsyrSFhA0KJU0vtp8mEAJIPY/4UhjPfi
 l2uQ6MQarJHIif3xCNhuBuz3l98DL7zobU/Zetk2c128ecapJZBIQ7tlSsB6V25DqtG692sk/FU
 BrkIlo6aoUscY/dut/b5dK3jKYHXbQ7DeFDMSf3SO8cgH9gQAmkEOcFPBeXHUUMZWY9NfTN7EH5
 R2YVrE+pGK/2CjP/2c07LP3GpFIX60cTWIYsaPZFAChfFCtxoOio4fnZTr5V39Rhx4jknvBcQ2t
 /BwsGtGw8SvF+3bzZbN0xWdiufQXogE8Kfzb2ICBYF1cOcWjQilh7+AEvEINUDTqBvK3QunNoHW
 NeNGWC47Lb7Xah/mo3pSFzfE1z9Z1XhRnxfeE6gK9+U0te37YjFZyBB+ZIodGOBcVMJuvKCR3BO
 oNzzgMsg6C4+UEkiPyK9wfScJNePWJWi1i4ZSomYW8auswpUhBwFNuoYT7k2bdzSBT+L95CIGQi
 OWuFhkloN2hNg6PjOVIYJH4+4hh0tl6luYfLvnMVans/0CM8h3Gn54MhJmKcAcchtb/tt1ElpL6 1qF8eLJ2mQFDk/Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Common name for Ethernet controllers is "ethernet", not "eth", also
recommended by Devicetree specification in "Generic Names
Recommendation".  Verified lack of impact using dtx_diff.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 2 +-
 arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index 791090f54d8b..98c35771534e 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -134,7 +134,7 @@ mc: memory-controller@f0824000 {
 			status = "disabled";
 		};
 
-		gmac0: eth@f0802000 {
+		gmac0: ethernet@f0802000 {
 			device_type = "network";
 			compatible = "snps,dwmac";
 			reg = <0xf0802000 0x2000>;
diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi
index f42ad259636c..65fe3a180bb1 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi
@@ -44,7 +44,7 @@ timer@3fe600 {
 	};
 
 	ahb {
-		gmac1: eth@f0804000 {
+		gmac1: ethernet@f0804000 {
 			device_type = "network";
 			compatible = "snps,dwmac";
 			reg = <0xf0804000 0x2000>;
-- 
2.48.1


