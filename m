Return-Path: <devicetree+bounces-95153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 149989583CB
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2B3C1F2585B
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908F918D651;
	Tue, 20 Aug 2024 10:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="C2dZyN5u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC0718CC08
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724148754; cv=none; b=PkfR0ByRXy+bsyrp7ujCWmmJ3kb+Rod26O0WDCDmuOUguQrm1l3jd3NKYSw9rC2+Q9JJzmGWgx6pHJK/jJr4IufYwjHsUbn1ujuT41PGSohHsUZ/SU2XhCWZEZ8bNUEl53ox0N+BhiZEWIVFTHFkbmFLhr4KGalqMYybQ70qVRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724148754; c=relaxed/simple;
	bh=W644OxWrT67qvyKAGwS0o5Px/YgwCYVCIzFvJEpdSXo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=byeAaHM2B7jLFrG2poYj3yA14QpFUevIsWPyTdeKjn8LhX7YreGwDTrUgQK+u0PiTrphoDQzTBQ17lH9OqTgE1E5axMFzDNFNO6pekukn7IZnd1jmt+FFse3qDNTeA6r45wvOklgfTp5Q345odmPpMJzXLKsP0a7Pdo89kGNtfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=C2dZyN5u; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-713edc53429so1704527b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1724148752; x=1724753552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=st/i+sGXRsN4w3kxPextDmUHrJmeWMOfYodvp9lM/R0=;
        b=C2dZyN5uRJ7SPGdaHJJHxQXdeckW0udq3WfAjZPFHWnp6dnfqRD1aUOZpOyPp1DIOp
         m00m9Sla3wf6V1Vj3UwiJmlcItNSWLI46SHzDi59afl4IJkRVB1MKkbt87bjVoRa1Di1
         lc4UzZzPSG9j7QqiSFP6MkRU5EKD/kTcqxkfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724148752; x=1724753552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=st/i+sGXRsN4w3kxPextDmUHrJmeWMOfYodvp9lM/R0=;
        b=nRYq6BKnm2crZmO+EkS+jBq37AjvjFXpC3qEHfPaIWQ+NKofzWMLzGxKvzhzPBOipU
         lDkVMnog3RnNIee4Igcdz3V36RVC8wdTw+plSmOs1dDqGyy1gCN7OgaIIRbKLIeqERT5
         WiHVqdIYej5UWbaIc2Gtbg+G5U4nlhonhQxVjvWRGNhuuCEY7ExYvgYgKT2TGtPw7pIq
         P2WPFiDkl7BOFQg2brSkEOoyRuJfcx0DdQ2FhImDkrZ6dNThyRhnlifX1XKx+DeeVYux
         f44bMhJSNbELGliMz9aWnxAXCdTMxTLFgZbEtoRJ/lfkj9becH1gJUXQUnJ1AJ0r0bwR
         h/LA==
X-Gm-Message-State: AOJu0YzPinbh6Bc3mkZTyFtihhE6C1O87vHJEV2TAvt06BCiCgWUpDjP
	/IHgzaT9qUPDos/dlvEfNVbTp+iu36kGbgQzoDdlJQl7lhvl3S1LrVSWO5sHRQ==
X-Google-Smtp-Source: AGHT+IFRvQW8NsQ+qPYeONdzztKRefuQZmv777XGiLSXepx7b8zuT6dl3melnSswYK9JmHYmoWB2Ew==
X-Received: by 2002:a05:6a21:3115:b0:1c0:f1c9:6835 with SMTP id adf61e73a8af0-1c90505887amr13980615637.51.1724148752214;
        Tue, 20 Aug 2024 03:12:32 -0700 (PDT)
Received: from bld-bun-02.bun.broadcom.net ([192.19.176.227])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-713f3c35cf0sm3111052b3a.173.2024.08.20.03.12.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2024 03:12:31 -0700 (PDT)
From: Arend van Spriel <arend.vanspriel@broadcom.com>
To: Kalle Valo <kvalo@kernel.org>,
	Hector Martin <marcan@marcan.st>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	brcm80211@lists.linux.dev,
	asahi@lists.linux.dev,
	Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH 2/2] arm64: boot: apple: fixup wifi device specification
Date: Tue, 20 Aug 2024 12:12:16 +0200
Message-Id: <20240820101216.355012-3-arend.vanspriel@broadcom.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20240820101216.355012-1-arend.vanspriel@broadcom.com>
References: <20240820101216.355012-1-arend.vanspriel@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align with the corrected device tree bindings in brcm,bcm4329-fmac.yaml
which imposes a constraint that the compatible should have the string
"brcm,bcm4329-fmac".

Fixes: e2e37224e8b3 ("dt-bindings: net: bcm4329-fmac: Add Apple properties & chips")
Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
---
 arch/arm64/boot/dts/apple/t8103-jxxx.dtsi | 2 +-
 arch/arm64/boot/dts/apple/t8112-j413.dts  | 2 +-
 arch/arm64/boot/dts/apple/t8112-j493.dts  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi b/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
index 5988a4eb6efa..4b021626d469 100644
--- a/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
@@ -72,7 +72,7 @@ hpm1: usb-pd@3f {
 &port00 {
 	bus-range = <1 1>;
 	wifi0: network@0,0 {
-		compatible = "pci14e4,4425";
+		compatible = "pci14e4,4425", "brcm,bcm4329-fmac";
 		reg = <0x10000 0x0 0x0 0x0 0x0>;
 		/* To be filled by the loader */
 		local-mac-address = [00 00 00 00 00 00];
diff --git a/arch/arm64/boot/dts/apple/t8112-j413.dts b/arch/arm64/boot/dts/apple/t8112-j413.dts
index 6f69658623bf..df2a63d8dd5e 100644
--- a/arch/arm64/boot/dts/apple/t8112-j413.dts
+++ b/arch/arm64/boot/dts/apple/t8112-j413.dts
@@ -43,7 +43,7 @@ led-0 {
 &port00 {
 	bus-range = <1 1>;
 	wifi0: wifi@0,0 {
-		compatible = "pci14e4,4433";
+		compatible = "pci14e4,4433", "brcm,bcm4329-fmac";
 		reg = <0x10000 0x0 0x0 0x0 0x0>;
 		/* To be filled by the loader */
 		local-mac-address = [00 10 18 00 00 10];
diff --git a/arch/arm64/boot/dts/apple/t8112-j493.dts b/arch/arm64/boot/dts/apple/t8112-j493.dts
index 0ad908349f55..5f3453e109b8 100644
--- a/arch/arm64/boot/dts/apple/t8112-j493.dts
+++ b/arch/arm64/boot/dts/apple/t8112-j493.dts
@@ -43,7 +43,7 @@ led-0 {
 &port00 {
 	bus-range = <1 1>;
 	wifi0: wifi@0,0 {
-		compatible = "pci14e4,4425";
+		compatible = "pci14e4,4425", "brcm,bcm4329-fmac";
 		reg = <0x10000 0x0 0x0 0x0 0x0>;
 		/* To be filled by the loader */
 		local-mac-address = [00 00 00 00 00 00];
-- 
2.32.0


