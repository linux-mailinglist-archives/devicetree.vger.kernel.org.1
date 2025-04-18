Return-Path: <devicetree+bounces-168557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D225EA937B7
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C8F920BB6
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0162777E9;
	Fri, 18 Apr 2025 13:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="eAkgn5Q9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73746279327
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982047; cv=none; b=n8fukBzfEE3CEykfxGSIxJ1L039B2zzxKzD3KK2c2YbVIg+AHLOXO5Uekv54eYDIdFOQ90njA12Q9jG1SZ8nZkYNPUmXrtysoYTJIK1Md+ISmacScyzxMo0/pT15/TsGc/vGlukzbZllVGpgSdC2SvJei/GkUauMvK13hsDbCDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982047; c=relaxed/simple;
	bh=7W8nlNtWeSVZAoWHnHqSB5kTMZ8gnqpruhrnUubBDVA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rxQ0ae7hGb2dcEcMJM+tX6P8SDe/DQS9KOFcq7p7KHN2X82EM6bJP9w8xQTbU9/lVX/4aEET1vrN2uhr5Y4OVxXAHhsCUWO11f5J2ssV5kvFPXIf22LkDJg+BWa4dWOTGyd1ymzojzChx7t5NHckL1ddAEJSyCGjlmH0bhVX1nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=eAkgn5Q9; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2bdea5a38so279427266b.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982044; x=1745586844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s2opD8nWNn1a16aqwefGGL4ApPA8i/bb2N5C33dKCms=;
        b=eAkgn5Q9ye2e2Vof3H9Zxxsv0LeJP9fAAGs5laxIOv4OUFi2fx5QCACZYRZ1xc7FAR
         k9PGZtfBTFYAiOll6XNKqJqFtxIJJ8nfg20KnHUzemZ48ZTyZ/ITWGFqZEW7bG2Rm4Gj
         Kya4WBhcSeOcT8pyAJzSVEYMCke/7v7UycUmKbAaHwTjM4VJbYHLOF+amZEsl6YHKTym
         7LSOFXya/ftVqNcl5JkgOjDvpyvTYtvbXHRKAhtmyoYhQJk201GswqzfnsBg+5MFovGA
         2c7rvIbaTYvG+N3BYQkhdutCzPodXdJbDreqYZDY7ehxvMJzWD694U6cWKz9VuFPt53L
         iYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982044; x=1745586844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s2opD8nWNn1a16aqwefGGL4ApPA8i/bb2N5C33dKCms=;
        b=w2JdDtJap72dW/+ZbFCASP+G8g855vvrDv8PxvEu/gtwogEOOdcd/H5SMB3R2ZuKqF
         iqnIxPNXM1lFtPl34ugDhw1FxOiU/eJzcG25mNoDqDJVq0fCHLrRU/5ZowSzFWodW01e
         osF5bcNqxuno2L5P8mNp0HEDE55a5gdeeHAyDEOlsvP80A06kuNOh9AE4wRGE0vOgzZ2
         xrY18c2ApZ3tfBwvX0c07I5OCuSzwuNyiBYS3vUCf0YofKpg8A60E86S1JLkrLpE0+zD
         a9kpcm96xuAy3/ZoaxLwzUiRc2V5bMclnn87XeNpM5jqxRAu5trhCY87PBjYJJa4jUdH
         WfLw==
X-Forwarded-Encrypted: i=1; AJvYcCXHK1BAtoF+vyMUKIQRlditUMtOsg5u/Oyc+jF/NVjoZlakLLolzjNn7phl2m2+ouUzIDrgzUXhotyM@vger.kernel.org
X-Gm-Message-State: AOJu0YyH28vRHWRd2NNqmv2NSnfVSkntySAuUoeH8mpO4vL7uO7yv94k
	FAGP+TkJ07ki0veqGS/4Hiur6CL+d/j1pL5QOkTO4iA6k24aAMAxBwDNuJmPchk=
X-Gm-Gg: ASbGncse85lIpxTlk6VfY/qnQlt/ZAErIUn3WRiBaOQ/czOmSDPHC+4N5Cwk+HimwB6
	448eezWdOiToJIqilI4LxNc3VhofBcp7NuizcaH0id3on5kikLa1BEEtxPOntT+YnYJ6y2ANYMJ
	EZWRSsSATvpLXzW9uQ2ynRDmU32eWUoYIZiVlKWEFmWnwrzozyZrwgHYS2yWtOmgoPOgqRwze5n
	5fHhuOfpW2x71mFU0M6CMXQU+YSUtvq2D7tYnQCSq9yX0lyM41tJAHintfI4GgDpwj+ldMI1MIh
	wi9crdaFIx+q2PWenTXb3smv7GNM3GIiZa0qYd70zZtvu2kLtE5sMC7fhzlwp19aZjxZrVMzH94
	DPwG1cffhvviRZw==
X-Google-Smtp-Source: AGHT+IFTPwO4j2zMKdap8t+bRIhg7rN6LnVakCV5EvwVUc0rb5eLZEGy0q9hARUTa5SmeCSVugZM8A==
X-Received: by 2002:a17:907:96a4:b0:abf:4708:8644 with SMTP id a640c23a62f3a-acb74d85693mr230821666b.43.1744982043795;
        Fri, 18 Apr 2025 06:14:03 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef41605sm115901966b.124.2025.04.18.06.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 06:14:03 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 18 Apr 2025 15:13:46 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 DisplayPort sound support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250418-fp5-dp-sound-v2-5-05d65f084b05@fairphone.com>
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
In-Reply-To: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add the required nodes for sound playback via a connected external
display (DisplayPort over USB-C).

In user space just the following route needs to be set (e.g. using
ALSA UCM):

  amixer -c0 cset name='DISPLAY_PORT_RX Audio Mixer MultiMedia1' 1

Afterwards one can play audio on the MultiMedia1 sound device, e.g.:

  aplay -D plughw:0,0 test.wav

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 9e8f9fb57c4723a24704a8239a86c6081910916b..e115b6a52b299ef663ccfb614785f8f89091f39d 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -14,6 +14,8 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include "sc7280.dtsi"
 #include "pm7250b.dtsi"
 #include "pm7325.dtsi"
@@ -1147,6 +1149,35 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&sound {
+	compatible = "fairphone,fp5-sndcard";
+	model = "Fairphone 5";
+
+	mm1-dai-link {
+		link-name = "MultiMedia1";
+
+		cpu {
+			sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
+		};
+	};
+
+	displayport-rx-dai-link {
+		link-name = "DisplayPort Playback";
+
+		codec {
+			sound-dai = <&mdss_dp>;
+		};
+
+		cpu {
+			sound-dai = <&q6afedai DISPLAY_PORT_RX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
+};
+
 &spi13 {
 	status = "okay";
 

-- 
2.49.0


