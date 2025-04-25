Return-Path: <devicetree+bounces-170845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78309A9C83D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 509EC4E1DA3
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F290B2550C2;
	Fri, 25 Apr 2025 11:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="pEAT4CBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DE124A06D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582041; cv=none; b=h4/ELUcx/YwIXhPqMMU4CsmCywmSS7DaB9la3A58Y9GOt5NopaocFy4BgxgcwB6+znblaM4nBdQVdydOER1dBL/lNVA8QnzmLVewb9K/ZP/J1TfmOWStHfUd3gInJhZjBlVdOrG6W+RpQS9E+btCvWYt8FUVN1nArLFVXmIwXcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582041; c=relaxed/simple;
	bh=xA8NKzSZeMZy2ZgXNKPIKIYpW4Hf/Vjvs+lFkOc9rEI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JzZ3CQseOroKAhBf1brYUAfdxI5tnVkMprCnmekV/tTiWYeIeN/e1dmS5SyGNV71fCQJHu6ZAQibeU7s25ALzOv7RPNgSC7VzvDrWOquQDMg9ooHWHP+XLEZTb8PXBSSm6+xBsZWDJxLtOoSH77v5mBmyu04z+AYuaJphF+bG+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=pEAT4CBK; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac2963dc379so317139766b.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582037; x=1746186837; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+EeMa3F8H7ojQ/yzojb+zajWCzvkVtlo4S7C+lzWDU=;
        b=pEAT4CBKk8kZq9hHx27kz1/rPMRLh/6FOBQ+EEUKxpkuzjDe0pYoKWe+0P1f5bskdm
         28+FY7mCYGXSNeJ2gQARRnEtvKPBsXuqWexneVb8ezU6sOT7OuxLq8/7eJnexZDF784c
         /3M4kxFGstu/hwBIzi8Pa96Sc3RdJDtl0X4EWj/aYcnxzYiV3/19XRot9Ace6tcjPdpz
         LoiF6TDM8A+Wbb2+MXXxb/7JYS4/HpgJBt9ZlzTvL3HhYnlTfgRwQ7k+5nIN2PvuKlV8
         RcjTnGPoacFublesm+WdyQJkUiCJXGibkK+lgibz88IAfMtzLL1MB4AvVwU93n5ZedRk
         HQIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582037; x=1746186837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E+EeMa3F8H7ojQ/yzojb+zajWCzvkVtlo4S7C+lzWDU=;
        b=GvZQYUfSieKC99s0rMcVXpdIYcBwOzjKj/AltVQmiBM7knfqaTBCp8fL/rmM4aUUB/
         z1C8Gble26JUKqHlQRdSStJ3NiOpZK/GshaERnZG7y7B733D4ZoVGNct0+E35mCsvJMd
         v//GcF9BiB0yyB+fGM3kFRGkZJ8azC6dRSsN00cGNqPdtPRHqGh2r2zr976Z/u5hk5Jc
         5FroA4EH6WxWtt+SASMpALWywbHAdTSI+qnSFLUypqh/XvSnwz9vFx63UgHNfH/Hy3Tz
         lD6qW9rGomEjNNwbCsMponXO9sttIC5fXhriwtlxtm11qRlHQb/vzp+E0MiaYqaDqhbG
         hUoA==
X-Forwarded-Encrypted: i=1; AJvYcCVv7iPmX7wa/VAEbwsS11mDaHUG9F/jVhOlBfiA+CgjwXPBa4qCgtl6IhZ/eaEoG8sS7ib2JBMfptfZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxYu8JHs/6XemfcUvVxH7tuzBKmKe/Mj4+CTX1ZVP2WgWWw8CtE
	TkOjk3t7pfZjZbfBXz5qy0GEuw7R0apZOb79Vt7fqSbLkzU/zy9q0Tvxoh8l/BU=
X-Gm-Gg: ASbGncuOAIADOqBbum0YcRC/pSs4Um3LcuxeGoFvz9fo9E2elmsj4r+GMvZ3N3sxqSa
	HMTxeHd0oacBWQX5nvqnmXikQB9mWEpBwUhi/PMpV2aLuH8ZAwp4Ydk4OwV/698aQZ2BLzjj46N
	ZYasPFRgOApA8RtKtj7br+SdFXItyn79RcjO+d6PuYCCSaBRF4q4XtjQAPO6zvjXfXOexEY/rPJ
	WC9TKCbdh6BLFuKLAT21V8k0aXDsvy2smKvu6/JsgDKkdgKeWAlVPSgjmwI+Id8NL/4tc+s22yk
	mbHkKbUcrJFZ/bbUxzQ9H/0xJSnZ9/wYwCu3jC/qLsyL5o+rpzPNP9Gblvk+BT5lwVywvh7vF2U
	ffVwdoroyD211D3pzOjUTsB7mqWkYupcGMpsFbDUwBS9jRfAxexoqxjElZ7NLkmQDZmo=
X-Google-Smtp-Source: AGHT+IGUVJI2dlEtwHRWklbLnsmR4txxtIplCnP7D/soWMK88Xud1U4+gAr5CXe5ahL9vOPO9+mX6A==
X-Received: by 2002:a17:907:9405:b0:aca:a1cf:d5f8 with SMTP id a640c23a62f3a-ace71047e97mr181754066b.11.1745582037043;
        Fri, 25 Apr 2025 04:53:57 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:53:56 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:44 +0200
Subject: [PATCH 05/11] arm64: dts: qcom: qrb5165-rb5: Use q6asm defines for
 reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-5-28308e2ce7d4@fairphone.com>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
In-Reply-To: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
readable. No functional change intended.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index dcb998b8b05498d8f9a82ff9a984c1e237a61308..33ecbc81997c5ecb5606c7555adefd1a53634b80 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1008,21 +1008,21 @@ dai@20 {
 
 &q6asmdai {
 	dai@0 {
-		reg = <0>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 	};
 
 	dai@1 {
-		reg = <1>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 	};
 
 	dai@2 {
-		reg = <2>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 	};
 
 	dai@3 {
 		direction = <Q6ASM_DAI_RX>;
 		is-compress-dai;
-		reg = <3>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA4>;
 	};
 };
 

-- 
2.49.0


