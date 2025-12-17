Return-Path: <devicetree+bounces-247571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1992CCC8C69
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:30:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E34B30819DC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AADF34B40A;
	Wed, 17 Dec 2025 16:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SlvCNvK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A5334B421
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988684; cv=none; b=cs7YaqFrA0yvFVUuVjACyScNju5iEy8R36/1cqoUUDoFxZ0/jDray3damVdbagixzLmLqUEt6oWfPEFkU7dQFp3Kt0dDasFeIWhJW6wwuUcA4viGpw/eBaLBF6TAHz6bFYsfv4cXdaSS1cOZ2LT6zy6wWpnmJ029JE8AdIGXFJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988684; c=relaxed/simple;
	bh=07n0zpGM1mcRCjmEoORnP+p4Tv6Nx9ryjVOY1OMyuiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GFsacy2t/p7wymz2KzmT0lLHQk/IyWKONTOG1Fkx6fASY/o5hfhInxUSli1RPPQ/Vbl9hlnWKBc8Qf2mjpTqCUk/djXYkasqgMwRp6E7TLWRn50+RbTBcEr7XGhX645mp9/LpTngH1LEcyOUO+L1s1OJTHoWukaHU+Mt9/B1h5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SlvCNvK8; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a07f8dd9cdso45616675ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988682; x=1766593482; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CBsTBcVtZ52Xc7+liwX/QWMHum7rwn6gjjvyLUqjbLE=;
        b=SlvCNvK8QM6e7XWU/ptoxsBs5sD7391zUewVvpX+ORq1tYpgHAZWk9EyEs3fVltefi
         mo7vUr6sjeZFB4Sp2ZH+1Oxho6A6JuBdbFVW8VQanHarzE9GI7A+/tiUQa1ZcR7sXzZn
         4tudeSnPtNvvhtq8SBupyRAhiK99vUN3xkiosyY/FX7vgj2/qcwnlWhehJq3NtwIO0xt
         vAxqifFzbt1mVhJb/KQuNdLwvy4Nlj9dkvdGLrYtXUL7vXfIDnpV7z3ByBtFS1TTDNjr
         WD8sQyuGBbkNW7kN2Jvqxkgain/ZOtWOPQp5Y1Faz+38Fv/dmgdXfT6lXBF8YvIH28xC
         AJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988682; x=1766593482;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CBsTBcVtZ52Xc7+liwX/QWMHum7rwn6gjjvyLUqjbLE=;
        b=Pu5l4a0zWvYmj6OXQMJNVlPuotiZ6M+UKpq6ixuyG4xD3zimGwIro1vFT15dPXd546
         h3xH+VrnHAWEGhhtQUyhrZt4gHIEI9Fhih6Z0n09t1GW2F2a+nspMUyiOBYjvMq8xm4T
         b6XovM76ATpUI0rTta99mG5A9Y1cp2KsiNtioRxQmG674YX9GeDq0odqdeNzZYgxb4aT
         XpjY7iPmXYDCdOUOW0CIinBsP+xCIzUdWLMEFZX2Sf7akG4yx7VCX0eK0153F+IIdnoI
         djZlxMLpIl1E/BIucujgW9uiQLPi0vYiYBJpx+ARdzHcoDfG+pnCkYN46jQm0Ut9YvpK
         HZ3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXf4Ru3r56Yjcm9fzaKFyjA3R2NM8+dAVh/FnJHFgAL8YXPoDLdBhZWEyZ6olMYlvScgxfP6E7+rueB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj8Lm2V1mMqe8C2x3LqqjkOe5wARbj8r+JJjSJmAs5xTAM6NQD
	S/7z/HmA+6+Tew8HLcTdBKw2SRitX4W1FhYGngEy2IeTHlbZkqRE73G+
X-Gm-Gg: AY/fxX679d6djU3wMpOsENYHD4f6nwMKDwJn/Amo8GreMLhpl5kqIiBbjfiBK9xmt0b
	8W4vWCoMMcanH/PW1e0s1JoKXGMuSHlX/R5k0ugLY3tNKFe/TL+h3x5NbgnzYy75FZCzxqtSnBj
	edPMu/LwKespkDWrpeqQu9TCxzYpsryjVXyJNe3zz3c4mKYbkqvO4B36gH/g5cdRYS4kBWWORIp
	EPfFS/qHZhz4E7cjZNEwBNcTzqpe/dEdJyRgyJZWwbn94k/dBoXV+XFXi/anLuxa2hyMmyBws+C
	yeGyJbSBQgyvRAllCUDgF5qMCweO8A/hC9bpv+ckSpQK1+GUkFRO8tOB5cm5fW7tQ693RrgK6th
	6bwzFroFcrHRRx9qfWUaiandeG/UX0fn7o++yxYmmV9MJ44NhGv1IA06aemvWgqAT0glyg4ZMcj
	8o4BnQUl7jj+KZ
X-Google-Smtp-Source: AGHT+IHerJ40FopgnOq9crZZQAG5AvJv+BI6Pdff7E5Aip3DS5jCH8CIcKubc8M48Ss2JNmpxKhZYg==
X-Received: by 2002:a17:902:f789:b0:29f:2734:6ffb with SMTP id d9443c01a7336-29f27347628mr180428125ad.22.1765988682146;
        Wed, 17 Dec 2025 08:24:42 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:24:41 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:14 +0800
Subject: [PATCH v9 01/21] dt-bindings: arm: pmu: Add Apple A7-A11 SoC CPU
 PMU compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-1-4deadbe65d03@gmail.com>
References: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
In-Reply-To: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=07n0zpGM1mcRCjmEoORnP+p4Tv6Nx9ryjVOY1OMyuiY=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtk/vxtAppGPRI3gSWnHu4Hgsj14l3noyd1EW
 dyQk74BBouJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZPwAKCRABygi3psUI
 JFiAD/0WRDI1uvHw5wnu/YUvKRrNw/aC/10n7dU4nlOOgz+dT2KXA7o+S0CfTGh2NUVNhRrpuoT
 kiFY0DSNFkJ1kJg2hA+mEg2UGBT8OGcCZB6CZOJo3YseuW989tPXypTy38ESuklM3Tz/XkzyiDs
 civ3Rx5FQqHxTNS+wm9nYxtKh4U/2boicojfE9ehPkgcQUXXG66QdjjyXyWK1z6wcyJR3wWPOLr
 leGpDrNP+ObKEOLJIBLDoUiCGWzMqWfDQsSl6dRBtgmNXtFbMukuXkDFDteotZWcTDmh39+2ZEn
 U7zE8lTV9jRgCuh0RKG6oe4CTRdjtaxgygKITh35fCATqjJUhTpc355eJOuJyFi/OmtiAFSAfEw
 YA1+50N9Pd4JbRYFovGZSc78FrPMz/Wwx+I9lGOyDf6j3QFnS0zrMB6/06ZMj6HTtPABNlXvzWi
 qOTBig7MI72khRcL+fEsKZ+yiLg1FryCsvaJZf0CRNQEAocCmCjzcPE8S6QiKVqZQEhICQ+6NTc
 ZQiZYlal8uS2Z6CNF6LxR3NX8WG6l8DlcNCkft6Lp5NdTMmHdd/cd0u/FefQykKx9TvnButGA04
 WwGNHnq04CsmWXXfX0rO+QBhYTbLw2LwCN6FA8HkCXH9fLFB/tY4FDFm5VLA3OgLrbjb7OYAq6J
 sGEJf5OdJIkDI4w==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Document the compatibles for Apple A7-A11 SoC CPU PMU.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 Documentation/devicetree/bindings/arm/pmu.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index f47baaefcdacfd37472926ec6994c33603163a44..97800a991f208448aa4bc8dd59b45df2ff35b400 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -22,8 +22,14 @@ properties:
           - apm,potenza-pmu
           - apple,avalanche-pmu
           - apple,blizzard-pmu
+          - apple,cyclone-pmu
           - apple,firestorm-pmu
+          - apple,fusion-pmu
           - apple,icestorm-pmu
+          - apple,monsoon-pmu
+          - apple,mistral-pmu
+          - apple,twister-pmu
+          - apple,typhoon-pmu
           - arm,armv8-pmuv3 # Only for s/w models
           - arm,arm1136-pmu
           - arm,arm1176-pmu

-- 
2.52.0


