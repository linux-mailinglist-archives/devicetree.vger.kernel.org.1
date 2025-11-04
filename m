Return-Path: <devicetree+bounces-234884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D94C31BA4
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:07:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A8444342C79
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C3732E73E;
	Tue,  4 Nov 2025 15:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FSqSaNVX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939D3256C61
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 15:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268826; cv=none; b=qSIlRrCLMGCKrKSpm5IVkQ9vnLEJB87iH6cdC12eX3h7nwx3iSWksZWR6Mk9bLGcFRY231rpyRm+3m+qCSxEPxXi9lZS+ji8oc/0FL9mNgsmK7t11HkRJii9DJp+w1ETpOX7hwiH04d6BTDLX6lIQbkigVNY9bf0ReHnjRbycdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268826; c=relaxed/simple;
	bh=8bivci5cWWAxauLG2MtkB8Tbb/thrZEnVxK7tXLKEU0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BDwhUTYoA+Gju3f/28nM7J19IAwvFq7CbFm12Wes/IH9ihWKWlAddQVKKP43o62Kcb0BzNsmGWmAPzlwf7zvY+bKPiH7st3GzYKl0V0vFTsfSIZRkBFG65Z9kGkKj+bXr4eKUgtFL7e2qLI4DXR+eNZreQgXYy+O0ad6dgNlXmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FSqSaNVX; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-640b06fa959so4406111a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762268823; x=1762873623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kJg//KOLtGKSYp8Owm6BTGh3ScE+qyb41BzG67dVSA8=;
        b=FSqSaNVXhp7T9Edc17wUQaWgtGg3L/onx7DodG7O53fr4d3F7cMhX5LyDa3pupEfk3
         0Qi05Ba24D0jYxdKt24x6QgzGOgWAxxU+yOzVuM1443FVBUkY8uXGlp26Pe57PK+p8z+
         riMyzI3rfTePhfHfXqRbTekZ7dq1HtPlygt/LULar4F8jXC7w0DHwCqAYESS+VHt6Ggv
         NatDCZ64B2Fg5AE26VF+GpvaAOEj/8+asa6c0PeKt7kiSXOrDt8GYoyEH/6iCr/ukmD1
         SFUh34exj8NxQGkbNJrfb6e0zpkRunq4pwV2VBw0KaW45PiyRXrChGGcAGdEaqHDXtw/
         3hKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268823; x=1762873623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kJg//KOLtGKSYp8Owm6BTGh3ScE+qyb41BzG67dVSA8=;
        b=PoD8pigk4cjgWNt1zCBw2abrsKqNM2nZdJt+Qqky+oPntIlfxlEXZsBdPFQXKHMtX6
         yojvDU5vmAjHO7c4Jxw4w7WWN2HFtyaJNRaC4jl0hX7suuiP2zi+GY/LDIhzcbxJyju4
         79MxpME5C8DhgvWMbsakHV8O8++Yf0gbMWsSRQIDNOPqiH0NSvac5JqEidBRJc8H0fBu
         YmJQLY+MjskEx0brNpqXF6JZo5RkbibdINaU3anzBY6ExWPZka2umiK692FrVL5WxfIH
         TuC0dlDvuTn8qZTmIXRv67ai2ICVhufAOZdzuyoHbIIXmmfkdwWOMpbCD7txA/LlXCWi
         jyDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWk0dbySKAivw8d9vmqAujRWWoqs2F9E7amHg9jGFRTjcrEFRZvV+sbjsML6x5niBBthWB5B6fZ+sas@vger.kernel.org
X-Gm-Message-State: AOJu0YzRSg/YSqGP6ONqSNFM/k0vV+zTgXWkHkYgzmYtlX91BRt/65Fp
	aUXqkxBgvnAa90+KjskmRZGtyVfcNdB6TyRz3vr/uxEetDFB9PF3ibdt
X-Gm-Gg: ASbGncuhy5Ux5eE0Vav4RCy2KGMntVTnWDgU/OiyYwUfbXjICG9srP1nZvwpHW0x4qt
	oeLqW28nh2Ak4UOJLTAx2C0cpedopPXF7fdgSaTLAq8C77Fm6RbYh1FbSHWQ7CUcLfJwx6qYffV
	F3jPTMPS0lWL7ivjv+7JROBSnlSfVsS9OjS4K69o9scmggH8Shfdbq7oZvXePef8Z9PNeDkdxzF
	8TVpK7QFciohwtNcjeN/eHv7jZLTzsUdEG2HvnsrXzT6Ry31YtLhEPBved7Jp7xN55WGi/hT8ID
	iHPpkUfm6xrii/w31iTI5ToCoafEp+wG1luznQp3CjwhFt8FfGAiujam+KGif/GQrgt8yAgENN6
	9MsMRs/rLiIJIVCFqUqzV0EsDioAj4zW7e1QiC5HnEC65ciJufbhYwa/j/045aNqzYmltI7z7X2
	Lyiqg0a5NGu+8qRgPKplM1KfZ5bw==
X-Google-Smtp-Source: AGHT+IHSgCJ70F1XxE5ENSob586eoO57raX+3jUNcbe4Poy+4oAmY2PXokw7lx8dEM+M4PlDYQMzJA==
X-Received: by 2002:a05:6402:4309:b0:640:b1cf:f800 with SMTP id 4fb4d7f45d1cf-640b1cffb38mr8047514a12.4.1762268822882;
        Tue, 04 Nov 2025 07:07:02 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6805da3sm2342014a12.15.2025.11.04.07.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 07:07:02 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Daniel Baluta <daniel.baluta@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: imx8mp: convert 'aips5' to 'aipstz5'
Date: Tue,  4 Nov 2025 07:06:11 -0800
Message-ID: <20251104150612.1874-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104150612.1874-1-laurentiumihalcea111@gmail.com>
References: <20251104150612.1874-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Change the programming model of the "aips5" node to allow configuring
the security-related registers exposed by the AIPSTZ5 bridge. Without
this, masters such as the HIFI4 DSP will have their access to the
peripherals connected to the bridge denied after power cycling the
AUDIOMIX domain.

Co-developed-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 7ab321af9e15..426c11853d84 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1428,12 +1428,14 @@ eqos: ethernet@30bf0000 {
 			};
 		};
 
-		aips5: bus@30c00000 {
-			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x30c00000 0x400000>;
+		aips5: bus@30df0000 {
+			compatible = "fsl,imx8mp-aipstz";
+			reg = <0x30df0000 0x10000>;
+			power-domains = <&pgc_audio>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			#access-controller-cells = <3>;
+			ranges = <0x30c00000 0x30c00000 0x400000>;
 
 			spba-bus@30c00000 {
 				compatible = "fsl,spba-bus", "simple-bus";
-- 
2.43.0


