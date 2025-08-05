Return-Path: <devicetree+bounces-202022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F60CB1BCE7
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 01:03:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4C9118A6E44
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 23:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D70829E11B;
	Tue,  5 Aug 2025 23:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vRmsEWlc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AB5285069
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 23:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754434995; cv=none; b=uHjda0DQf0aoQEo7iZeXS34M2UxF1I9sUlL+qNN+j7NpaMuxMABjW68hYzCSvzcDl8Drs7jspsiajKsnS02QXPrAoVMM3Bh2AMY981M6TYwrOR28Pql/XNNyHk4f7vJwYwpEUAl3Th0SU9wT9Mp2a0Xjyi/RPqqyFZ7iJL2Bxtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754434995; c=relaxed/simple;
	bh=LpA/12lKYbseLexu1xt45wXAvURQtgeiq3L4rCln+6s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=mpx7qHoK3B3tKNjlZiRHMW8Ga/6J+JuMS49LpDT8Pnozm3bEjHGQ4/83zmf5RPDS54xIWEIgcuwYu/CfifPvsjj+2fS4YgxPKAgBqDFCUu2d00DWgQ7oepEcgM1p8THhcHVkv6aZabamX2SKIb1ITnKMehmKb4uw3TJx1+ZZcfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vRmsEWlc; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55b978c61acso4457899e87.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 16:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754434992; x=1755039792; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4IsXbm5yo+rC2+4joemdslWqYWGOkTnUCtwDueJfKEA=;
        b=vRmsEWlcQ82H9p1GuvCLorSOibdlEGhUfV4SFLNHlbCo/NAf733lmxtuwBGCc/2N1R
         +Ficl9AxGY67nvct2Tgjg1El2aiycQ8PEIpOlxMJIGt0zeu5cf7z+/dAVBhw+TA2/KE5
         E0Ji/ifpDtF94tFY/RPq3PgupXVW23g3J7ipYhjDG8IMbdMNynVK7uTFuzuC7HsoTb1/
         JiNoi69GxIta/EF05rgcuBUgJ5781Gh1ErVTsSPPUHDDEmyAV+SUNx5G8vWLa+FfuKJG
         LeoQ6u7uLtnNXKQfYVNrFBHVbWbphx7TxPwEf7XUwTEWX+6FD/kg6Fr3HMF1AU5QtaHo
         S/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754434992; x=1755039792;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4IsXbm5yo+rC2+4joemdslWqYWGOkTnUCtwDueJfKEA=;
        b=v8FexK+lIVdWB6e3sLwoGHOHW21OcZdQ+h8GmJbOgRdu+z9yoZ5g+aSSgrNEv1QjF9
         bydFwOu/9hR+vporBVz2NMs+WzpXAvHODss6q7VVzrBUIXnbkh+7K5WD42V2NtVtmdEo
         OmpVMJCHcFlX5Hgq1+Q1MjeuF0p792tt90ByufviSjY7eLCOtVfdnGArDOBWHZvwVO6K
         uPoz952jDmKwLboA4VT+iAAvGjNqjRG9d6uwjwASlEkXyMpsjkyjzHhaRz9lj08lHwsU
         wKAM/Q7ezIbqyrKdmNjrlnqzMt0kyZZ7KDrlIb4vdhHj4yMYLi1wshiP66bOT8iceuCD
         JoEg==
X-Forwarded-Encrypted: i=1; AJvYcCWMZgebAkuD6R7kLSowU+qOGvM9QfLF5gU+lJZxEezsS8vfuMYCsipX6Qse3SQiMx4abE0uuQaCSqCE@vger.kernel.org
X-Gm-Message-State: AOJu0YxzbKe8YYtk2Ob4kbzKPW7C7YIkmPMXClwKVvcNbWRxxqD5CErf
	QAv4nTo2RtuC0uUw0VtnltcxULn+kTxcYPhvIh7MrBODrAj7JtRPBATULHBGsVeDBY8=
X-Gm-Gg: ASbGncvLVndkfORtAqqF/6rhjMy+hwLUCZ1b8z6TWeSsD64B8vaU/zvLLGg656W+JoH
	rD6fLa6ecnA651aIba7Y6k3KavmgAbTC7rn0ylmLD7iVxdBMsh9ZNxvz4aR71bJTRoNS6bBeG6b
	urENzdx6XBdpwj5bqDrCQE8PpTzKtZlj9fVvDt4vnkxgyly9gk+IrOjqbDcknhu2U7bSQO/pMh4
	hUpqhM8r4tOFgIsm5SUz4Hp7y2S43QLo9dlGBihv09gW90oOASp9QjvVAgtFu0y8ls/RnqKzXBH
	avwEBfjAnIqMtNjL8eUETaEzjfpXpmFujvE5HERQt62cMdkQwLvHFZf2mjKG9MY5t7xL1SJ6giF
	L/KovwkSj1ayo8uMd2wKCDcBKShhuTUrS
X-Google-Smtp-Source: AGHT+IGfn42ydA85a+Jfe5rnq0i6T7H9uPV82V7YxakQ0JK3kzkY8Uloi4eXTZz4QmUtme0YZNeb/A==
X-Received: by 2002:a05:6512:3b20:b0:553:2e42:fffb with SMTP id 2adb3069b0e04-55caf5d7f5dmr124807e87.33.1754434992168;
        Tue, 05 Aug 2025 16:03:12 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898bc69sm2140683e87.29.2025.08.05.16.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 16:03:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 06 Aug 2025 01:03:08 +0200
Subject: [PATCH] dt-bindings: arm: Spell out acronym
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKuNkmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCwMz3cTUXN2UEt2kzLwU3TSj5FQzS9MUc0ujJCWgjoKi1LTMCrBp0bG
 1tQANKqemXQAAAA==
X-Change-ID: 20250806-aem-dt-bind-f2ce695d792b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

When I authored these bindings I had no idea what "AEM" stood
for. Now I know: it means "Architecture Envelope Model".
Detail this in the bindings.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Maybe this can be applied directly to the bindings tree, I don't
changed this document much.
---
 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 8dd6b64463943d5610ee1618a494110ee09d322f..89298b39903fd8f0b85004bbee64df44e365b5d4 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -103,8 +103,9 @@ properties:
           - const: arm,juno-r2
           - const: arm,juno
           - const: arm,vexpress
-      - description: Arm AEMv8a Versatile Express Real-Time System Model
-          (VE RTSM) is a programmers view of the Versatile Express with Arm
+      - description: Arm AEMv8a (Architecture Envelope Model)
+          Versatile Express Real-Time System Model (VE RTSM)
+          is a programmers view of the Versatile Express with Arm
           v8A hardware. See ARM DUI 0575D.
         items:
           - const: arm,rtsm_ve,aemv8a

---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250806-aem-dt-bind-f2ce695d792b

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


