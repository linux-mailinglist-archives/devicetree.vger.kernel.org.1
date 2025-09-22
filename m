Return-Path: <devicetree+bounces-219961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F6DB8FE9C
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50C0E17AD9A
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502372FFF99;
	Mon, 22 Sep 2025 10:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kvcc2yuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4FB2D97A1
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535590; cv=none; b=BHvtLcoRS5N0DaEq3kgGn64i7Plee/N8rsxMEQPxzafec6ko7B+qsjuvSYyXpRNacDqFyJScNk9ZNJrTFemPT0V99i4oe7rA+Ds6UPix81/WkP42ukOLDPCuC6MK9+xrtkzr3V5Vpbc5HokwpHu3oJt4JTzj5AMNwkYQHD1gThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535590; c=relaxed/simple;
	bh=p6iwdyUUP5W8+77ExyG+J/4KTfuGbStSzXc5YQJ6uQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e+167dUNR8+BIdxUvSQaxmXqAbA7mXijgAOXqheTfs1rlPGGUiaUR/nWX3yv2qogXEMhq5IpztXPmJ37hhDrnuzWlZtS4C2zZEyGqi4vag5RakMXweECRqWQ7r0bGvWXfVwpZvA7X24PQo9H6Qyl6vzUS8uVVVm/93+vAxEui3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kvcc2yuA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46b7bf21fceso13859635e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535587; x=1759140387; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zz313f5+9XsH5+Eb3Bh9XStxpTdiNn9ua8EWNmWWJg0=;
        b=Kvcc2yuA+C9pliVMnH3NcM/cuTNcTpP9BD6ZmTmpTEc5z38PrdB1ou07Sg9OCDWKRa
         nqe0mO1/uIPlwuNWzpwJ92f7hEm4ykkI+ltu+RtW4pfofjkyF3whnv+F2vejAeQYIwsQ
         VI5YAgoI3R2qM/L3Pz+/HtCaD7NezfDT3OHjEdEjdxXd/eAA1pKDGjxbKB+acITyz7V7
         9wamCwvNKUttbTCblF02F1xJIjXjmcZrIswdrQhoXIW5a+OUGlnkC1AEMWmDN1ALcs+/
         FWaWBZWj+ZFri2yvJCv++6/vSPV/GoiQ1jh2775JOWnmGuztExWD2WtkMNXQ2GQ7mr1X
         zKzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535587; x=1759140387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zz313f5+9XsH5+Eb3Bh9XStxpTdiNn9ua8EWNmWWJg0=;
        b=YlpMp6aUV+jrNHP9MDDOEYY6LPSfT0VKiIHJUfUf/G/QcRvOCdMm5Fi1p7jXHg3jRo
         Ew8VLrQa0qmDzV4KeWlkqC7UYlJ07o+N7lhx2j/ipKo7k7ErLaKjpH+DaXl9rW3T+Zwh
         yRzel9NI0bgRylCJTAlx/niyiwrwm93QihgQRFEHp6eN/iYCBmjbJpi5t2fI1Z+K3wwF
         WZJ2iLEdAPRhEwNqphlEqcX7YcxDvOjckIlYenLAl46G/vMq6jV6wGZXnhXADxeg7xq9
         lmLRIQVP4r4VsGoU37tS88bH1a3lvhrF5M98MBKInCA2QoYXgicHe4nHmBlQBsbd9fXa
         LuNA==
X-Forwarded-Encrypted: i=1; AJvYcCXS0IDK/3r5OdBIHWm8GZ8LxcRyq5F7teYIvSFZrmLxN+b7lDKNWq+jAN2K3OiHISY3+fZcV0b7FpRH@vger.kernel.org
X-Gm-Message-State: AOJu0YxRxg7Lh1rz+zP3x+K7Ny5Mbk2uqO07AJ5aBsrux8MyQauDspoD
	y3/4ramcmZlKbKQbYrMcCJSyumpf3O8dCuE52b9loB51ZwVYteHRiSAg
X-Gm-Gg: ASbGncu24KvKYpUOBzMj4RSDXDc7KCIZxmGVZ2vJj4DSNU1cddz7nSXbZuyxXIkSAlC
	me+/5U0JFQgX1J+LGT3dOSiP0kVakY5KKm4j4TxObloTzNN8cNZZX5lNLQRs6OSeiX9wT0kajwE
	SNusvjVNZewc/k7owlEYNPT5TCjDG4L+D+Zt7E7OvtJCQmdQd9jlU6blBGgSAo7AomdaLwqMr4e
	+zKuMyEOmutl4nLCrTxOct7hZ2CepGZUMOX8TZZh6Nqb1vYEFuwqNzKXE/uznwEYwjtb1bNVrfD
	1K/u4Gsc4le8tP8ePgSFZmX3jJZLC8HkNm468qGNpFR7EataC+a1wrKMC5sRPYLfnw/7e0srucr
	0VAp/qymWof79hWbc0smfAq5GVakfHUvvfiO/L7V0Q/x9e2j8m1SS95k6LhFYHBR5X0p+5zZSzC
	lo0+R2wODhTunW7KGy7s5KRbgonVA=
X-Google-Smtp-Source: AGHT+IG5CaKIu1s56p3TpWS5l1RWL/b3CenMfj9WhML69rXhvqLaZjx6Zs78DXIYN5FpHbWguxd0TA==
X-Received: by 2002:a05:6000:2902:b0:402:71e6:5e12 with SMTP id ffacd0b85a97d-40271e6616emr918355f8f.46.1758535586492;
        Mon, 22 Sep 2025 03:06:26 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46d1f3e1b03sm40913405e9.23.2025.09.22.03.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:26 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:18 +0200
Subject: [PATCH v7 5/7] dt-bindings: memory: SDRAM channel: standardise
 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-5-b3dd20e54db6@gmail.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add a pattern for sdram channel node name.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../bindings/memory-controllers/ddr/jedec,sdram-channel.yaml       | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 866af40b654d..5cdd8ef45100 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -17,6 +17,9 @@ maintainers:
   - Julius Werner <jwerner@chromium.org>
 
 properties:
+  $nodename:
+    pattern: "sdram-channel-[0-9]+$"
+
   compatible:
     enum:
       - jedec,ddr4-channel
@@ -118,7 +121,7 @@ additionalProperties: false
 
 examples:
   - |
-    lpddr-channel0 {
+    sdram-channel-0 {
       #address-cells = <1>;
       #size-cells = <0>;
       compatible = "jedec,lpddr3-channel";
@@ -133,7 +136,7 @@ examples:
       };
     };
 
-    lpddr-channel1 {
+    sdram-channel-1 {
       #address-cells = <1>;
       #size-cells = <0>;
       compatible = "jedec,lpddr4-channel";

-- 
2.43.0


