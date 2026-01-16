Return-Path: <devicetree+bounces-256119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C5CD3286F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DD18301F3CB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0D4334C2D;
	Fri, 16 Jan 2026 14:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WSfOmN96"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE42D28468E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768573376; cv=none; b=gOPcIS74A+i/6temXZaFkMsRfvHfMGH8n236GXfSUGWZZObONhPf9OfeocXLMAo7cqRBPkh3PTZl2CeGhD38SMqJcRYfGzSQ6h5rvnW7Z13mNJQetQpjyc5yfAwl+SO5ctLyYH8zmjNYOvuK085sTEn3LKpu8hMVWBtZGV43KA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768573376; c=relaxed/simple;
	bh=qpyArYbgGexp0kw5GKDzvXd4kBpE70tAA0DX+Y4oYPc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BUPc2mEK5TBqmGZ+XR98TBhA6dj3ofdQk4YgnZ1NLjRG/vEpbmUPiDo6YBlRXW6WvSKzsY1B838wxIuNk1WEPbooJVmjJSwdhSQ4d3MpHC4JkHvKBrcGLXFkCTUvbKS/ngaOGlCU/hRzSiU9gnuL1Tt/Nll9S0aimyJFcLXwOKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WSfOmN96; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so3450750a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768573373; x=1769178173; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c4htJr+mv+3MEm3YJIQ7F3EojQWw625TtO5UiPuBMOs=;
        b=WSfOmN96iKXxFRro8ZsEjZjB0+VznXzBvzfbcATUNuaBPPShfW2ZCBePPMuXD88jnF
         zHKeHQ3at5UKb04WKQHnmR4T/Tlzmic4o+c+5SB/tZNpTIwSouxry9lSKWFsUzZIPi/M
         ZzWdkQRqOfDoCrKNgCwFT4jDSdS0JOza573trLisulpNWAWud0owTAJsMkfRAo8siIwg
         RJu55IhBgbHAAKlgoQesTUNDSJxve09HzDuOtFokfO+3HNfMkh4o4j001z7PTH/5uwcw
         bd7QhTNe0tTpa8+XiAQyb02+bVUw4XpbLkrrBSddCYtwuuOHuvWqrSuwOcO/me0CziDS
         wKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768573373; x=1769178173;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4htJr+mv+3MEm3YJIQ7F3EojQWw625TtO5UiPuBMOs=;
        b=e+7czJscO+65hZp5VtYyH6sbM46LjtYZamHaD1UEbW6eaGOkLwNzyDq+UaKScDJGNK
         s8n9gzTNZJALQ9gyneVxVXQBTdsbDa5pQrynNgyH2V/ySMNW9nM13Rzi/vZNwn1e1q8v
         qgoemdFp4iXUR/2VG290r8ilTmaeasVfIzoiJ7bltYcbUWeQ9TKhZoxWTZ/If/xisaDJ
         2RYcpRMtlJr03383wSIFnBWV1Y6kadTsGwg537KVi/ftTe5m2b/bV7Dra8fsvDPla8Rg
         5Q9iUFjmjH2DcAy5SuSm7U/vt76b6aNMVND4Q+EvOGz+K8TZnYEayXb36gF/69BQT+/E
         GvTA==
X-Forwarded-Encrypted: i=1; AJvYcCWmcSNsWHVEsfvntCuWn1sEYECfCh41e37OdXLaT20OKg6jWuimEaAg0FinfK32HyWYVNAsXjoN05bV@vger.kernel.org
X-Gm-Message-State: AOJu0YxHs9ytwHXvMGRsYfzyAMrx+07SOUPpSzG8F9naE6MmUiUeoHTP
	q7zYnUotCAkhOGkMyNA2eiu0HlVzHK77T8N1byEl10m5Ef0f5pGYpq6EnrYm83kMUMeB0zJGkvO
	48NmG
X-Gm-Gg: AY/fxX7Con0CFNsTxTXM9E3eNLc4OtFYvsMpYtDX3o6YunxV35kYl0kCvRd+rLIzAob
	/ISAFZ4wiXzHgD0TqQ8QngeNp7j1hcpWWF5XNND6l/UKBN9x4uofiBL0wOyPGvXGQoL7LWfsaVO
	F6QWq8s4FUmwKd25TSNX/9WpZtJFuUEsON35BkeWkx8ly6HCx3xWk+N9el5qlZvaVUPGM0bNtBb
	99ia3jZlwLJYRhpzOulnjkTp8dnMnLo6A3eNTHfR/5jcZBJ/jBfw7/LpqtnQJHHQg0EVxkCQwz6
	SJTzcTWavUIAGuFP4KhVnNeL7lPr8HuFNEnYlQu2zJV04OyAbOS163NpznjXob165GpCTsSG1xi
	HdLGm9jrVksveWBSS7ErN/saJ/w3WI6KaodDbs2Grgc6F6Rwudj+fYZqg1NAajC0vR+lWCLp4of
	x1tYGJtRVGos+6Vw8tEGkXcVgqD4ldntK21JU6+qF42XQpd+tvkRNlXa7Bei/2sVzA
X-Received: by 2002:a05:6402:50ce:b0:653:ea2a:252d with SMTP id 4fb4d7f45d1cf-654524c77a0mr2442998a12.7.1768573373244;
        Fri, 16 Jan 2026 06:22:53 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452bce56bsm2558871a12.1.2026.01.16.06.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 06:22:52 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 15:22:52 +0100
Subject: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrDIBCF4avIrDugUkybq5QsbDo2A4mmjimBk
 LtX6vJ/8L4DhDKTQK8OyPRl4RRrmIuCcfLxTciv2mC1ddoYh2F1OPl5RqEoKaPR13uw4dZZP0J
 9rZkC73/xMbTO9NkqXNoITy+EY1oWLr2KtBdsuO5gOM8fBx2O55IAAAA=
X-Change-ID: 20260116-fp6-hall-sensor-1049f2f872ac
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768573372; l=1553;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=qpyArYbgGexp0kw5GKDzvXd4kBpE70tAA0DX+Y4oYPc=;
 b=SUQPJhnuPQ8OkZKLbWyhCU/QRzhAx9RGx7gjxBZU+8r8zevPBYChTL2y+F93PZr8Gj37riMSN
 +z5nLTFhTZgBuq7+kTL+8T2uWWz3lFzQOkXN7OoqS89Hm5E7Tx1b0y8
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a node for the Hall Effect sensor, used to detect whether the Flip
Cover is closed or not.

The sensor is powered through vreg_l10b, so let's put a
regulator-always-on on that to make sure the sensor gets power.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 7629ceddde2a..98b3fc654206 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -32,6 +32,16 @@ gpio-keys {
 		pinctrl-0 = <&volume_up_default>;
 		pinctrl-names = "default";
 
+		/* Powered by the always-on vreg_l10b */
+		event-hall-sensor {
+			label = "Hall Effect Sensor";
+			gpios = <&tlmm 70 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			linux,can-disable;
+			wakeup-source;
+		};
+
 		key-volume-up {
 			label = "Volume Up";
 			gpios = <&pm7550_gpios 6 GPIO_ACTIVE_LOW>;
@@ -316,6 +326,8 @@ vreg_l10b: ldo10 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			/* Hall sensor VDD */
+			regulator-always-on;
 		};
 
 		vreg_l11b: ldo11 {

---
base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
change-id: 20260116-fp6-hall-sensor-1049f2f872ac

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


