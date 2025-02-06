Return-Path: <devicetree+bounces-143613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A921A2A916
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 554481675B4
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4776922F17E;
	Thu,  6 Feb 2025 13:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AtCOG30l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E9A22E3F7
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847305; cv=none; b=OseWLoTGb9bM9TH7UhxaMOt2XbuUvE0suVznNq8g2KAmEWaH4zFVxC2HGhVFExgQlgEShlq7mCgEBc88Zt3WTBbjnIqxlIu029gPsdfSMX5sU5txbmw2zI8Z62An+Ode/0qnu/4jsEOONT3wPP9kRTiCkMJWQFKs44mE4+N+akY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847305; c=relaxed/simple;
	bh=d6foee+YIiHorPvDAYRgPRpXKIHz6BSRVOLUmX7ZVN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lsnIvdsfcadDv+04ZN3RAHWoerj9z5vWt8F8tAab7peLwI/1Dpb+vCinvy3xs+89hbwmZg5hZAHUiRpNVRo+AZSAVFJxuVIOdAR51wvlMS0ue1VIIO9044zsPI3i1fifT3MqOnaqlrmz/wiP0srUsfWVy9DJomb63PP9T/GMSyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AtCOG30l; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5dca4521b95so1947138a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738847301; x=1739452101; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bEWiMUNEqLClrTF3KdKFb4oug1HLJiE4dMnSAetMkog=;
        b=AtCOG30lr3zVIkgB3as3/2EN9HHpWNTWTOlDPokC+DLcpSlL48EkHHRWcPiP0mZCJX
         T5bV2/KOW1SqXw9SvboytIXZXnTdFxVMXYKpNX56jFPDH+cChXhGaaM44XSTogClyyzI
         D6a82V7joZgjyQV6YbG4AKQgkHTAPUk7vK9P0fVN+VelgdS2irjRbaCKJAeZgJGO4wFN
         2vt5igPYzPABMvMdppv+317KTrbft4lJImcYYfH/UgyeRqjq4CoPr0U2YYew9pvoUeC3
         zRGk8F4dVGpj0JpH5tkyXYaR+ByqFGlPpVqJMzSOYXnzm9WUl4Zf37Vf7kL7UVFyrnzQ
         LrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847301; x=1739452101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bEWiMUNEqLClrTF3KdKFb4oug1HLJiE4dMnSAetMkog=;
        b=C334bEyvZ8lJxK2IbGgLwNpc6y6PWfTwFOFDIZ4Zw6jL2/TJZ8c1aWCCrcDW9C01HH
         bm2UrEUPXjg4oNBJZa1frCvur8Xykgw/jzgISL7oSNPYlCbbyouxyJOpyTdSxAJQrOyt
         bRfZp7fE4sosTtaFwzepnHAcf41XEIGzdjpHmHOZ5N7Nx1GhMciGZdxXPs/KMtgTFIF9
         6xsnxq6vudcF0Rx95gxhDVLPbQl6lDpdZHGiGcEyGrM6LZDfaGX/FJFRtJ1PrtVTGWTl
         BUFLzclwEiCanje6Jeeomv+JZEP2z/ZIJubM5fSkuqXmlX2KFZ5JIX9P7+Gj9K/HCwSw
         +apg==
X-Forwarded-Encrypted: i=1; AJvYcCVH7w5JZIlIFqj6XeudJqOatvkVwv5iXLTv09PFvNqgOrKAP+J5tuGL7vBPaIppvjeOUv5PqQBSqSC2@vger.kernel.org
X-Gm-Message-State: AOJu0YzSkzwAIXJ9s+H2yHQxG0hLUGXVSaO9Y1rAOSDk71Sqc5cNfL7a
	rJpeP9I5ygnC1p9xNkoUVs1884VAgN71ohgHGHnlY37IVeFUW27uVGVZU6wWBjE=
X-Gm-Gg: ASbGnctYe1fPzWTENBT1HclrlIaqGDWC54T5Aj3ob5veGy0Ira0yKm2iiQxckODtZ/R
	kmbcauJ7MamJB5LwG3qqmVthtGzK5Ft6BeWMLsS2nSARmmxxF/cmaFMfhVi6WZq54hMUOC15Ppu
	fscUpkW6iUfe0phgYdtfdxkk8UkKwhkV6fpSIq6O7udAFGyU1zZ95qoDUBtdb6fn3PEfZM4ttCV
	gHs9Q+slcJsVK0sfIP+Q35fQ87jIOI8rLf+V8mupH+9wWL02vl2FX3PWSAJbN/os+/OxP1xTa//
	MJPbfq/5PguxVaKRn3b1gBplL0nme+IDku5tvctRZYb4YGlMx88pxk8YElkw/PyFYrxsb+32ETk
	=
X-Google-Smtp-Source: AGHT+IFeO9gqDBs4A+ukV7FG2tWykoGpIb5Yum5uOgYOlnokRh3L3ZP9VDrs1qPmq6hH48wtb1DiLw==
X-Received: by 2002:a05:6402:845:b0:5d3:e766:6143 with SMTP id 4fb4d7f45d1cf-5dcdb77fba0mr7904791a12.30.1738847301240;
        Thu, 06 Feb 2025 05:08:21 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b73f8csm830235a12.8.2025.02.06.05.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:08:20 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 06 Feb 2025 13:08:20 +0000
Subject: [PATCH 3/3] arm64: dts: exynos: gs101: add reboot-mode support
 (SYSIP_DAT0)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250206-gs101-renppt-dts-v1-3-cdfe993fb3c5@linaro.org>
References: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
In-Reply-To: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

syscon-reboot-mode can be used to indicate the reboot mode for the
bootloader.

While not sufficient for all boot modes, the boot loader does use
SYSIP_DAT0 (PMU + 0x0810) to determine some of the actions it should
take. This change helps it deciding what to do in those cases.

For complete support, we'll also have to write the boot mode to an
NVMEM storage location, but we have no upstream driver for that yet.
Nevertheless, this patch is a step towards full support for the boot
mode.

Note1: Android also uses 'shutdown,thermal' and
shutdown,thermal,battery', but that can not be described in DT as ','
is used to denote vendor prefixes. I've left them out from here for
that reason.

Note2: downstream / bootloader recognizes one more mode: 'dm-verity
device corrupted' with value 0x50, but we can not describe that in DT
using a property name due to the space, so it's been left out from here
as well. This string appears to come from drivers/md/dm-verity-target.c
and should probably be changed there in a follow-up patch, so that it
can be used in reboot-mode nodes like this one here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 4f45bfeb33c0..f4c098ca9fd2 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1410,6 +1410,19 @@ reboot: syscon-reboot {
 				offset = <0x3a00>; /* SYSTEM_CONFIGURATION */
 				value = <0x2>; /* reset value */
 			};
+
+			reboot-mode {
+				compatible = "syscon-reboot-mode";
+				offset = <0x0810>; /* EXYNOS_PMU_SYSIP_DAT0 */
+				mode-bootloader = <0xfc>;
+				mode-charge = <0x0a>;
+				mode-fastboot = <0xfa>;
+				mode-reboot-ab-update = <0x52>;
+				mode-recovery = <0xff>;
+				mode-rescue = <0xf9>;
+				mode-shutdown-thermal = <0x51>;
+				mode-shutdown-thermal-battery = <0x51>;
+			};
 		};
 
 		pinctrl_gpio_alive: pinctrl@174d0000 {

-- 
2.48.1.362.g079036d154-goog


