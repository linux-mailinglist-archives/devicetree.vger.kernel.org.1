Return-Path: <devicetree+bounces-223843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 055B6BBE3A4
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 15:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4706C343352
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 13:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB2A82D3750;
	Mon,  6 Oct 2025 13:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oYwC8e2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBED927F19F
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 13:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759758718; cv=none; b=g+5N99QmJ0xo9CcMQq6x8vYhDxDs96CetrHBnWOaroqZsxLrlW/FjwKbcTF7femL/okaQN6SEGyzQyEwDMgyYqhAK/eFXHJaJgScPl1PkHJsHHAsQsyIGxigK+MUJ0+XVTIRsoqla6GkFZ9fQEv04swdlb/L9eHsf5jpGzx4BzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759758718; c=relaxed/simple;
	bh=5+4PJ6jPfemENa4btjS7LirYUE2KnvwhBP+jw2X7dVQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=udUKJOdDeB74VrTwZHAwjZ3AOjGnbTRa0bJIXly0h4Jz7G31nQFbvKpCFRgQKfm0KxulPw6OB15QagJ8ucxVuYY0dK79hAsm8joEsTJYO5koOzmX3HTSfk8J8a9yUq5K2F+mBDHlGX9+HM9C9UW9kkScjs2Q94FIPJjZObwoy64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oYwC8e2a; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e2c3b6d4cso40279825e9.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 06:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759758715; x=1760363515; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sl/Xsdwp7DpkeGa1ImOkGWOTN5ZyWaGLBtET9IVZcxU=;
        b=oYwC8e2a+4ti8O2OSDQjxFcgTGMVI3ElmIZGOnuW9lssdlbpbUhtlZJG0SEmThveB1
         2eYVQ02XSwg7eS8r8IH2RQrQTUuh3RZ1ygM4bBp27hpN/JJwRJfTWp6HgBrp0gFSeMLL
         4oSW9fMeg0m1pRu6RoSDxj3gM7DHYiBQh6zO3O0OIBa7EhrwJUVBEWZowWBGcaIhTuGq
         xV9Yp9u5o6jUE+vSZnxa7DKSAftyiKUqDK118D03XQJVXMm6EX0BZME7n0YC2CHNgCrm
         f5dU9cL3Y1WkuLCIwUVwzOW102neTx35AeTkWuUReAUBg8SlImKPYD/k9SB1zR1kFwMX
         y/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758715; x=1760363515;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sl/Xsdwp7DpkeGa1ImOkGWOTN5ZyWaGLBtET9IVZcxU=;
        b=cdVEXKGscjXBuoblsEeT6++m9a4fGRPPheG9g3Ng7zsPCrOoOJHuApOl71VaGtY0sR
         FoKdvipGsbHtoucH4JVMkGkz8UiCeGZ17wI1m9OpHpWrYkxrpN4/dTJ7KlA/9fi5yufp
         Jigt4I/J7yOAVnVaBMxlwOI/43athlnvoBtkrxVVSFArEikeospcLE/eMuvimrhGG5yp
         n4wYoFaljuIFpcARdYHVtkhTCJtv/9C2DmN+vj41Cs7dkbhDjInFKXjYRJhW3klY/Bk3
         yEXPzzFa7d5ydUTZrqSmgzvZR3dlKNaPO7Q92wjLTv83he4hwb0mVf1uQQhdwB+gVvky
         BLAA==
X-Forwarded-Encrypted: i=1; AJvYcCWhuFqVAGKC27zwBZqVS+2dJEqEKvFW50SGiNJMTmySEVJMRRpcrxElPbfs8OsCFrh50fECKWfsoe9O@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwq6XryjlBk2HI+XOQJOGQG7/1SB73owuGNYAuTYtNfeCfsxoL
	5IFgdtsshTbkMFa4rE7VcMG5agkZMAQS6Xd99TetfttQcH6IuO3Fv2S0NoEFTzKLv15LHKms8NA
	737KP2z8=
X-Gm-Gg: ASbGncvqfim+4eNykWUUJ2yZTNAvC3wMiXQU6xmb24fo4SMpXwJxKO4ioOqFImyEmfs
	sCuK+L7/cR77i4+wKmJmfL82rYxEhksAisLhxCB8HvR1UsSAcrYkwlL8Gjn+IsA0aLF5cvGM8LK
	/ezOxlQfHqzeDu88N4G92TI70H4E3QzmGK3b3p6MMolBqR3sWHL25QLHwfg0uSjB6HF1hWxWZj/
	V75iHRUJ5MJdFDhmj01qAPQQ8PlYqKowIao9eQfpI0yzvVyd8JWRTjlznu8KL4Mv6IkkHUIzFT3
	mUvOx2Gy8M+kQh9Uk8jAlw9QbufI+dj9lVMLjGkc6UeGKjGYL93zGM86A8wIREkfjWlU1UXxaWK
	Wsuo3z95dE6R9FqtvVqLVPzhzW9+SLJNouOArfDzomU7+kcJ5bhovF+xxLfcyrgDgo6E2Y+I=
X-Google-Smtp-Source: AGHT+IHf0XVleDEkE0BhbbDIPcUJVH+5v33yVTTQ/TAofs4Bb0q1LMt4liHnvPnDbjjsIjmsonEo/Q==
X-Received: by 2002:a05:600c:154d:b0:46e:6c40:7377 with SMTP id 5b1f17b1804b1-46f9bb3fd36mr29299735e9.35.1759758715096;
        Mon, 06 Oct 2025 06:51:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723437d8sm161373265e9.3.2025.10.06.06.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:51:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 15:51:53 +0200
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHnJ42gC/x3NTQqDMBBA4avIrDsQhdHSq5Qu8jPWAeOkiagg3
 t3Q5bd574TCWbjAqzkh8yZFdKloHw34yS5fRgnV0JmOWmN6XDWJxxKfBxn8xYReo1O086w7Rg2
 MZZfVT2gHYnJEbggj1FzKPMrxX70/13UDC6M3qHoAAAA=
X-Change-ID: 20251006-topic-sm8x50-qmp-combo-allow-mode-switch-a75e5b55b7df
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1797;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=5+4PJ6jPfemENa4btjS7LirYUE2KnvwhBP+jw2X7dVQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo48l6OT55Ag31LX05Dik6U7flL1LRcECV3P48fmDE
 TId2NMiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOPJegAKCRB33NvayMhJ0c75EA
 CdtICwvFHqp7DobK5NwBTBXdeEWfziO1B5o6TRtlyFfartZTPlBciNHfL80Iyk3Zvn/Bwvv0lZjqs7
 Pgs2/TMlsScDFroBe0L+wPbPF95GXaUg5lYogAdm4a7nHolbsswGYikugIT0xHxghal77W+WeHSb6M
 mfnnZj7Wpty/ilqvoyoNB5+Wvb4hGv1hAxwx0v0J6D0HGtJ64m17JV3+7Ioy1gW+3PyVsTTFAHQTr8
 +G5pSMtZzqf963pvnhRPCaMqhGi/Gb3Ks/yOm5rzOJh7gvkrExraW3ACooQoq7TKK0YF42oyK4z8cV
 sP8HdD8lxXXCUU3LiLHlLsCIZyJRD54Fq6pGBS2fP23+ZxZfRByCr0DgyrODdTr0uSdVkrZk5z4VYY
 K9Dw80O0MphGGbHXEmOMTwnNwYUme64EXh/IRbZseeWhVpqHdjYZAkfQC5Bsfj57OfvgBS+7nOtLjj
 jQVbagl7QvgsmagcI7Z75N7iEfqo1FofHJw/Q5pkQIrXaCL2/HwDUTOAtR7COPcko8wXUqYDLlHpWt
 5B/qXalYhJHanRRQJNDlunY9F02oKBmjZza6cTcDfH27xZnyhvybtada3MhiATJrKqLFWGHppgwbZ2
 //70JOiIQXdWdHNHvdMNmHNQDMhhGdY5nTwtz+Q3W0SCeQ3YQp20MbFgA3bQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to receive Type-C events.

Referencing usb-switch.yaml lookkied like as a simpler way to allow
the mode-switch property instead of duplicating the property
definition but it causes some issues with the ports definitions.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Depends on:
[1] https://lore.kernel.org/all/20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org/
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 38ce04c35d945d0d8d319191c241920810ee9005..bdf7894ff84869030252f64f20acb4f920fd19e9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -73,6 +73,11 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
+  mode-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C altmode switching
+    type: boolean
+
   orientation-switch:
     description:
       Flag the PHY as possible handler of USB Type-C orientation switching

---
base-commit: 9cba8ad3e538c0d955a9844fbe26a887dbb04f4a
change-id: 20251006-topic-sm8x50-qmp-combo-allow-mode-switch-a75e5b55b7df

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


