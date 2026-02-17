Return-Path: <devicetree+bounces-265955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGUWD0W2k2l17wEAu9opvQ
	(envelope-from <devicetree+bounces-265955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:28:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 940861484D1
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21781302EE86
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E67231A3B;
	Tue, 17 Feb 2026 00:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MwTyHKlI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ED824E4C3
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771288105; cv=none; b=aveJBUgJw4hwKXHwswDakbHCekQDGW/G5T0qJvy0giTLBSEIKJDwXyJAjTSpVRkNBpj3GpZNrUboAXo7EWsj5FX6XilcSxv8gelhZ0m4tRzE4vUAzu3rJm4vvkT8DZrhiLbQmOG440ByubqBaP1zATC9IYHxZmOEDsZttBy3e0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771288105; c=relaxed/simple;
	bh=BGFbjAQGLZNXddJ7Zbnf+eR42ONlD2v8hRdM+CSNiEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rCYeWhRIdz8yHlglzW69s3yEsCSamT3uXLoqY1xQcd8yv1DFUXhOFQzt7BpKPakUUoE9iLF0bIfB01wFPG2iFTb92upKq+ir8rU+Z0oN9puqXeRBN2ZHTPwufyQV+bE0S0ZjPmPbnmBs8lqiZL/ID9B5QktGhAkqB9dx65gIi1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MwTyHKlI; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8972a14e27bso47848846d6.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771288102; x=1771892902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q42/v/aKtXIsSN3fGfEiA94YbSmv523XY3uYLKo5rl0=;
        b=MwTyHKlIZHZ0Bo53e48FiloGFvENqQP39UE+Ihv6dsOFDaxVKKRj8raRFeHW10y+u/
         ERaxic/7bgaNXKBlOIDBsKPQRp8KWkCkBlDzOhjBPtlHUPBkDgKT8rT4n/Xh9JHh0t6W
         BdXaPGvpJH3mPIqKxftonfMc3cGpCCozYgWBcc5bKX8DiCSWRD7zUu447qARkISZFeb8
         KDoOw6v7CpnwGF/3VDg4nXA1s9+tITHMTo7x6eu0eQsnEpR458FG3hyv5K1rgq4rJV8h
         Msv67MI3dTOweSzkNfAW4d6pmVp4cXek1I+XYBpGBfX3V84Gfid6FK1Vcm40eKerlRh0
         HMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771288102; x=1771892902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q42/v/aKtXIsSN3fGfEiA94YbSmv523XY3uYLKo5rl0=;
        b=AfHLpjwuXLnJFplJYTJzdpb5zuW8BJmNaUld243x82ZjQRYMWSP4jE79huAK2BB438
         8OQTukGxACzhBqfsAovrXV/F9uN+B9/7OdxudkXe6zbnh8AiICS6a0p0hO0r5EhAc4w4
         oLMOkbOTqH1eSmzkUUBC+kywfHlKqWseBlYzbb42I54tPxAeU6HzP5AwTzqNcIf7i8vM
         B63mQ0IUkk4ZpMfvz5YIhEQilcPkem1Iva5E8P1NaAkRrp944eDbdVZAtm7HrmocaMI6
         gGeYMj+tMx8i/yPAL3NN99JSe9TmAOy7La514NF+cPckmWrrAptt1Vnn1pwA4plYk/7V
         mxOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcMitkciEAZxPNMr5sEWFortpcUpC6Tfh0Xm8/2Xb6N4jfDkBOjE6aijBdUPOGiExIPIsdbZnF3bnT@vger.kernel.org
X-Gm-Message-State: AOJu0YzVi8xcyvYqAH+t0F4eJfZtCKlSl9w5a9q8Garqjum9cllkFISY
	CyIhbzjOwrvXe8G4BXpKqs8/Fs+/mE+sJVmeqvRX0TLtXY7mYJTQjswp
X-Gm-Gg: AZuq6aJ3QrcSeG9BGxhQ408iC8nQ9G41aETBWc716iDL7LADA8law5T4uKpndk8MrF9
	k5Ixy5NcdWRRsPajnC7266blo4ieAMDS+o+WEU/i7J1XUo+FHDlZtZE0KeWovH4NrDWICQkd5ph
	cUV8SJ9HAJN4m0PYhzTAirInlf1DNMNp50CBGUSHAKNnWwdDlXGKyUsGH473MWheCvCgS9GBoRm
	7X3oKzFhaKKByrL51bdRUcqvlwYCQSJcAw3eisZAtahusB6d96Xi33rK2dj73IGlgpe4irQNOSR
	cAsdAICPzQkd7IaJ2nvxoFdc8rqQKVyRFXc4kBbd2i4NbypwGtZOzjkDtqnnpe5yHwpmZD9a01Q
	I7Gw22sEiQmPDp8oEN1FaJzLQ+bXRQ8ITlpxJ+XOcS96yPsS+xCAykwLakM+v050zDL9a87FCVe
	JHmQEVj482D6FsAWP4wWg3tgpEYheyHw==
X-Received: by 2002:a05:6214:1c86:b0:894:768a:a8c1 with SMTP id 6a1803df08f44-8973628fdcfmr162944716d6.66.1771288102314;
        Mon, 16 Feb 2026 16:28:22 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc7ff1csm150951216d6.3.2026.02.16.16.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:28:21 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v9 6/7] arm64: dts: qcom: sdm670: add camera mclk pins
Date: Mon, 16 Feb 2026 19:27:37 -0500
Message-ID: <20260217002738.133534-7-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217002738.133534-1-mailingradian@gmail.com>
References: <20260217002738.133534-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265955-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.51.225.64:email,linaro.org:email,qualcomm.com:email,ixit.cz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 940861484D1
X-Rspamd-Action: no action

The camera subsystem is added for the SoC common devicetree, but the
mclk pins should also be common across the SoC. Add the mclk pins for
the cameras.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Link: https://lore.kernel.org/r/5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: David Heidelberg <david@ixit.cz>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index 3eb4eaf7b8d7..f21e60a6a2ef 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1196,6 +1196,34 @@ tlmm: pinctrl@3400000 {
 			gpio-ranges = <&tlmm 0 0 151>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio13";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio14";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio15";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio16";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_default: cci0-default-state {
 				pins = "gpio17", "gpio18";
 				function = "cci_i2c";
-- 
2.53.0


