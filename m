Return-Path: <devicetree+bounces-177068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE2FAB65D4
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:25:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CE443AE77A
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2118F221557;
	Wed, 14 May 2025 08:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BAWxaOHe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F7E21FF3F
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211119; cv=none; b=f6/ozyuN48Uy/ifINCyDFVrzZyaf96zAXsl136sRasty8n1sMa1s800BjwMC1uXNmDL5EwuST3U1AGNoux2KQqncI6xco+Mb0dD2X2iXF6xPxOWqi4mRLke/eaKNJQVL0msP/9tfXQv9NT5W6+FGb526eBF0haq67KNVTYCZ+w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211119; c=relaxed/simple;
	bh=yCkiAdtOCF9iCkdkXTKRzrhbw0DYQlsHaTH+AYSbQek=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a+D9a1gGxMvqZ4d00VYSTyTCwCYXpEMpNnuN9L6E+iJ+blW7kfA2WctOJKyEybKVB7zCJHqefIuIHhZKiRzTqqqUPYlfNKgCpR0AGTmnCxM+32jOFOj0Ihf2HkrxdhR87GTNR6DSknAZy3cDVwW0ErRrHupBbx/U6P+CmW8o1mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BAWxaOHe; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso42981665e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211116; x=1747815916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X/m+AYqPg8A8mlOIVXAz+KE+GHEig3We9H42iLfgbKU=;
        b=BAWxaOHenJgAvu2UPpHQG4vjVx7sIAMlHwG/hw+RcO5936fl5xwZ7z9htW83UbAcFn
         BhPsgKQmEz5IoOfRhF5vd7pWeVWNNOZ8P6kb9CEDcxIjjewXLrqH+IkTeZt5WM+rHWKv
         rBESO5RFfMK6bOdhL3OuX8ZqtxN3qkZtys6jA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211116; x=1747815916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X/m+AYqPg8A8mlOIVXAz+KE+GHEig3We9H42iLfgbKU=;
        b=MkiAyVbYVjYEl+gOBKfE44LIsbVWZPvWc3GETcuMWLG/N3lbt42yz4v9p3CtkJRRQY
         8N0EFYBfz1V22s3Dwk0c3WZ4rCvxzCMPhBwPgZlvrfaA3H2nyq2VRai8qwIJA3DPTb1T
         a0NZtJd33K1jB0uoleBhy8MhUABZyz+7hwhNwGLMbOZHo6S+Q/YIgaELaDXG8/Zl6SuX
         bILbxLU4i2Ruc3cOQNDYH72BBlBwRhbZ3aMcODDfpMNi/VbOES/vmDCOTsfU9SFCsHdu
         eOXKpfQR7roK/4WeYYfqAn+jojuXIcOgn/654Yl54MVr7WzRSNx8eunS3wycWR8W52al
         4Adw==
X-Forwarded-Encrypted: i=1; AJvYcCVIaTrqi5ksvLEC51oehQ1/sOlIxf9BKDf2UjXVIL1CjEVglDOXoLJD+fNFW0RRNgwsOSbjZ1j8Nyxd@vger.kernel.org
X-Gm-Message-State: AOJu0YzEx2QikcnV0PtJk4Sd/dVjLyWvaSsUXuLornIEN5JBXp0vmdkp
	z7xpXvMnF2Zgv+B5LKROMkEzKQh7pqcGKHMzemhMNd0KKUvnjgnsfhNOl4ZdRK4=
X-Gm-Gg: ASbGncseLOdCHgtPY6nmZOvaVtIj5UTW4JvH1SUo3ar6xu3dxPwvFr33+ajCG8xIPVc
	PFq5hZSujhKUsK8KFMWN1QFyo0kl2jaR6JW9j8gJaH1AGgiH/ledUQXTplfV30rNrWwEfGm+EmF
	CxmN1UgMTdOZgQWYLm3efUcJ0cNXc8QqRna8AwoCx8HnC0LasLf7e9muZ6uFbFAbtvMMsU0K03U
	ZxyBhK08UOtXBnJ6YUz1/8vCzbFgGEqoh8hSLhiepM+bmiQ5d9Llh2do7zs+txvtYBPzNWbHoev
	/NSBxImHBOXBLwDpCsJzwFpsq45ldppLZsK1DBPWLbpqBxR1MNPEFESx2H34EkB2mqWdMyokvba
	re9BbsAnTlSEUqNXtBTVWlpc39lWZIRoG69RyhEQo2Yk=
X-Google-Smtp-Source: AGHT+IFtHHcd+lejXopr8LfFGaQVmOfL/UNHCcWzihISzr8hDJtjbOrZphMkMM72/aDayUzTnZnf0A==
X-Received: by 2002:a05:600c:609a:b0:43c:fc04:6d48 with SMTP id 5b1f17b1804b1-442f1dd31f4mr24755195e9.0.1747211115603;
        Wed, 14 May 2025 01:25:15 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:15 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/9] arm64: dts: imx8mn-bsh-smm-s2-common: Keep wifi enable during suspend
Date: Wed, 14 May 2025 10:24:57 +0200
Message-ID: <20250514082507.1983849-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
References: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Trimarchi <michael@amarulasolutions.com>

Allow the wifi to be enabled during suspend. Use case is needed in most
of the devices deployed in the field

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index 0d343ffdb7f9..a983072fb835 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -277,6 +277,8 @@ &usdhc2 {
 	mmc-pwrseq = <&usdhc2_pwrseq>;
 	bus-width = <4>;
 	non-removable;
+	keep-power-in-suspend;
+
 	status = "okay";
 
 	brcmf: bcrmf@1 {
-- 
2.43.0


