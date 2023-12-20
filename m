Return-Path: <devicetree+bounces-27424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5E081A35B
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 16:58:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC73A1C243A6
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DFFB4176B;
	Wed, 20 Dec 2023 15:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vAPPsmdx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957645C09
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50e3b11f5a9so808308e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 07:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1703087863; x=1703692663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=szFuFOaVPRcoa/3KGK9k9VHnKNMXDyjWXMloTHpkWuA=;
        b=vAPPsmdxmpPkKNHR7Q6UiwoHoIUub4UZ2JgBahZHAT3mql7Ys/tWKMdaxz5nZo8A8t
         +L1ssKIjhyYgBuZm3ArJmPa217f7sO2MvsTwuiVhtTLVVh/cPvmb5gDhDgrTtKb7IEmh
         yZSUxK3+Q2XeYJVW31c0Jl/hWok0zkAjukQ3W46MwgMku8e0qze69tJsIf/5iKOaaJDq
         jC3mvFsQNnydzz7UPE2u2AZzhpxdpeqZBVcrrDrZ/5kvAhbNjsdOk/fK/mEXINd5uEoR
         whQvqSDnDfhptCyx4xUUtuw6jXL15GVPfjw/CVVk9i0ooPb9kDFMbUhU5xbYXtneGHV/
         q7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703087863; x=1703692663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=szFuFOaVPRcoa/3KGK9k9VHnKNMXDyjWXMloTHpkWuA=;
        b=LxbbLtxUYQBDVCWEb0TUAtzp4EmIkjmNjUz4UDqUA+qSIhYu8C+bVK7/yPgyE8jFJh
         ilqkizjfxrrti1WxBaLdvGqkcLIDFcxvl/UzXlqMIl5rjODvva5oVPVQXoZWYrI1SrSE
         Q2WSZxRPHiVd5otj5hVK5qER0LTzaOGiJIwMQ4WZt9z0RbZ0AFVWFYyf75UqcoEgpca/
         Rkeoji98fNyeIxjEnXQmVVLBPm/08Xbb+mx4jeykFrLaC14omrbE36q4T+enDZ96jSEM
         TWo7yMs/I7YC/0SlMKx3CEQ7TDIk8id3FYubWdAL8fabjk98u4kebo4lIpKghOhVZMqN
         6B5Q==
X-Gm-Message-State: AOJu0Yy+6FP75r91dV8KEZp/gKujrz9EDvFFVBTc7on0+ZsVFIKuf3Ww
	NbWjnFyGXIcULgHSaEWthSLHkQ==
X-Google-Smtp-Source: AGHT+IEMopGLd13u7V/5vIZqrC6QZYkg9U757Xi60NRR7tKxLQz11Pc5U0+SfTyL2OoD9i8imBIJRw==
X-Received: by 2002:a05:6512:1592:b0:50e:4ec1:7d2e with SMTP id bp18-20020a056512159200b0050e4ec17d2emr2327025lfb.2.1703087863205;
        Wed, 20 Dec 2023 07:57:43 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:3eae:b70:f27f:7aa1])
        by smtp.gmail.com with ESMTPSA id h18-20020adffd52000000b003366af9d611sm7279693wrs.22.2023.12.20.07.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 07:57:42 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>,
	Gianluca Guida <gianluca@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 3/6] dt-bindings: riscv: add Zacas ISA extension description
Date: Wed, 20 Dec 2023 16:57:19 +0100
Message-ID: <20231220155723.684081-4-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231220155723.684081-1-cleger@rivosinc.com>
References: <20231220155723.684081-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for the Zacas ISA extension which was ratified recently.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 3574a0b70be4..27beedb98198 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,12 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: zacas
+          description: |
+            The Zacas extension for Atomic Compare-and-Swap (CAS) instructions
+            is supported as ratified at commit 5059e0ca641c ("update to
+            ratified") of the riscv-zacas.
+
         - const: zba
           description: |
             The standard Zba bit-manipulation extension for address generation
-- 
2.43.0


