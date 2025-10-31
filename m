Return-Path: <devicetree+bounces-233743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CE4C251B5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E06D34F40D0
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4FA34B661;
	Fri, 31 Oct 2025 12:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GWkl6bjR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6836D347BA7
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915071; cv=none; b=RLjD/phmNRn0DT+tcLZan3CsXgHMCMz6A7MxBP8EdatjN3xv4j4bPSM7cgr4OJrkQYj2h4fMUhf/z8h24Tf/ZAdlFwB81H2qVXf7iGZPmAyfM4z+8kopsjVQsAo66eS2mNP4RfWK8xAOg+4LKkzer+bM4bt1mrillIXGrjoLYK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915071; c=relaxed/simple;
	bh=yTQ4aG8Os9zC9co1gqLAKPoiHIsPKOdPXlkGytgtgvE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EQGfLEGPZaq/yruIahVGKwlQJew2AbybBjHEj+TAQbLiJcBApDA8HR9qhjMVgCOgxU/vwrteLHMKpf8WmxYAm5bBZhbxGTASIOwBMd2gLDFfozFHHmHacGmkxZ3V+mk3zIsBmpUyE8JTWkG8+J5+CEz1PwDyifE8d21jUxK2xj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GWkl6bjR; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ee64bc6b90so1799151f8f.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761915068; x=1762519868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0M1HrUEsEWAYtX+bmlZLBJ9NI4B7ItCBmyvB4tSMhI=;
        b=GWkl6bjRqVL9wPyH+Co5W1A57OTksi1WfPe1hW7y/hLzg3T/X41iXP+jc+gebxGVSB
         cM8E8n/jLW5ADlQDdTKFyeWtaRNWZxlYrdzYmDdQtK2VbUiw4D/8r5XPkmf4Qe0h4gbD
         YsFXCNvfK91EFaNvSKFTbYant0uAz++5O5n45FKf03aUHvMBI/BvHhI7tiJe5/yFchEW
         gyFHR11H9m6Sutb0/gW0x4Q9Q3gMAu7sbjVinq778INzwal9iNEg28ilutCwXg1Snjre
         TyR2Mq/IFyXvXJ4r1coR9CrWP/OCzgJjD1eTNxFXgrXZ7ebLoVi/wow9xo4X5GW8NObR
         GLxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915068; x=1762519868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0M1HrUEsEWAYtX+bmlZLBJ9NI4B7ItCBmyvB4tSMhI=;
        b=UrmkzxUid3KtSw/7MuEqa3uemZQUmM/fiFtPRXJ0wBzg/dCJ+IRBK9B1x4cYLg5ouT
         2iX3GzDHHfaMSuVA59xTV83gGSN/W6/rEOufjJU95pQegfi1r/QCb38Xz/ugx8SI2eoH
         HxdnMrOgMFkV/cucMmCBHImjlohanRbFq0b2f424HU83z70+PuQzaZOEK4POut+eHVe1
         EUR2YUL0V+Cy0zGNEvBQEwS7HaX0ARGQ957B9spfBPJ3KffRJ10XSoj18xd8TMw9BoAO
         M0CCRURKCltaJs03kbGLP4XYoTMavLMYK5VKutqgjR84iTb0xBsjjnulnDnrNFjPA/XN
         yOeg==
X-Forwarded-Encrypted: i=1; AJvYcCWEoVE+G1CR8CJe1LtYMIhZZzTCbwz62xBfyiRKi+oXFujFth3yc6UgMERIDs8wsJ4GzwHJZEbjf32a@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe2mjyBoj3aEQkLro+y1XTNDFuv+Hg5cTb8y0Bl+lnJdgTLJtz
	BXhJ4ikwMrsFuhJ2WK6m7axAt4CwWXdRx0EyaGLvGW1bi08O7gdl9D7gRdEgDw==
X-Gm-Gg: ASbGncu56dygf+iUTJSTiiJxYA0d3ykC/xjN6hvNA0jJQ3Iixy6tWLucEoGXMIGDA6C
	RCht38EOD6MYQ7clW1co6CyoW9gT95sRifZWXs+2AXPb90I1xIRlhcYMk2mr0a3CCRKEu0UE8mF
	+XpcVfXmsq4bT+olw7wXDjUVx0M9+CBTqFEngk/NX0Sygbax3t/ItKknbKkq/qS8moyiD4Y6kWW
	aFpStiMADwUxMTdzyG1lPU8Fr/ttw4k+x2GykPtztRhwWEX7urJTY/jlqSM7IpiNdK33NLx9mxy
	MkX8sMbI5jGBGn8GdXttcgbySSUODJ1K7Fco6WXtvUDGxu6eTQkd1DBrMiMkuIn3A7CXRlNLfXR
	1bIVmSbauLAlHqYbtk7brcEo/dIfF8avome996ID3Ft5qXZVEPsI0vVnbaBy+of/ZmsrF9zbZZo
	0K5m+YTeGNmGNzHyJdizD8wvfuwSuAyeiXls3kkJCOn/8i4w1KY6gwmz31lkRMCFbgrMO4t3g5S
	+EoXMSfmedcuezq
X-Google-Smtp-Source: AGHT+IHSXX4DYRrtxww9sHrkDWOZg/LLH6sryU74L9AN/Ia96ozwZZVUVNQDnIRYpK3dD0oTSYgkpw==
X-Received: by 2002:a05:6000:2407:b0:429:8c31:84b7 with SMTP id ffacd0b85a97d-429bd6a0004mr3158228f8f.39.1761915067646;
        Fri, 31 Oct 2025 05:51:07 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13f1d4csm3144559f8f.39.2025.10.31.05.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:51:07 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] arm64: dts: colibri-imx8x: Add cma memory
Date: Fri, 31 Oct 2025 13:49:43 +0100
Message-ID: <20251031125003.275033-4-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251031125003.275033-1-max.oss.09@gmail.com>
References: <20251031125003.275033-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Philippe Schenker <philippe.schenker@toradex.com>

Add CMA in device tree and set its size to 416MiB for all
Colibri iMX8X.
The size is tuned to be enough to play full HD video using gst-play
and to fit in the SKU with the lowest amount of RAM (1GB).

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

 arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index 32bca4c6f37e..d4bf30d91d69 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -86,6 +86,19 @@ reg_usbh_vbus: regulator-usbh-vbus {
 		regulator-name = "usbh_vbus";
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			linux,cma-default;
+			reusable;
+			size = <0 0x1a000000>;
+		};
+	};
+
 	sound-card {
 		compatible = "simple-audio-card";
 		simple-audio-card,bitclock-master = <&dailink_master>;
-- 
2.42.0


