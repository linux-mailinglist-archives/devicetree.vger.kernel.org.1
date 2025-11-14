Return-Path: <devicetree+bounces-238661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F429C5CFEE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:03:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9698D4E4B99
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DC2531984D;
	Fri, 14 Nov 2025 12:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UXcqUHkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261CD3176E0
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763121642; cv=none; b=heJp8pWuIuJyXVKg6OzNO46ibkAj00jyk3+TGI7zwSA6vdYcB0m3fvj9GUYW20qlw1A/QdO4qNiecXdSoA2eNLJje0CqaTI7UmzvRq1+SNsxwck+M1mm/c7gw1ni3MIyN1oV4Oi+a3BvBwfmBM+3vVWsiooERqUGl2SyA/T1dns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763121642; c=relaxed/simple;
	bh=cmENj0W8XtjYOV93TTYCBYmHtN9YboPhPdx0mxFR9/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gMXK13UrElhyySWUu0l0GJWN6w3OXf3tgczITBnB3uYFWYxNSiXUJOlrBfbjbA939nTEp++DjipPMcUqR/XqUM5d03Jt1eaW5r3Yqi1ZGa/mx4nFcUQLZ82WlwXRnceOWBSaZsxMHylIndvdRfDjUq961GrD3VLRHu8LRsuydBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UXcqUHkj; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429c4c65485so1601138f8f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763121638; x=1763726438; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UvAB0mCQYQ8c80Klm7WQAFVp/EeiM2LU4sVj8vpf494=;
        b=UXcqUHkjHeabVmeDd3wkbv5ji4m3n0Gxpl44FqVGrhtg1SgsywepfgWDr1Du6a+2vF
         /BwbqZ2Cb6mxU6uXuQyqzlAC+k9VoE/bjZByUIBBn9MLVcW82PtHwP/yTkig6yerRZ3G
         OaozlY8G7BzVtsF9QZ+bQuqJc/zNXIuFyye7cDBc+L8UFMwDRFaN0tqpA9QfZp20hmyX
         N6fpCJ4d22NgX2Dy13KA+k7bfVPuHor284wyWnVbNfbon/QrDkoAMLrnlBMD8TKGYUwk
         etbhXgj88Ob3FLA98hpCvnGfvNYqTqq3NPa82zzHyTiuGq7L/ceOE+k7oZIYpUtZc+s9
         bmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763121638; x=1763726438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UvAB0mCQYQ8c80Klm7WQAFVp/EeiM2LU4sVj8vpf494=;
        b=WAai8IOJR7OmGrC0dUJEl8+O77eW+n0/kSVp4ylfGLC/bOB/qc6U5M3sDnzziXyeSp
         lP2nXaTlmjeIPbbf3qVh8yfW+u1d1KoaOJbgzWRa6B4owHYPANnEVcAyfF0JW5q9OWS5
         gndkAm0IoiTH6EG4AKw3gP5eFcZQgj6fTb7hX1mcpne8bCdfwHKiTAuwiqSh3UrpU0CU
         80v/7yB60VqJwq+GfjhSy4UgWTZZHRXgVbl4zqXdGr6T5ZXcllsW3aUB42fZfI3bephe
         27AIzDFwyjtTAqmCdLSDIutHhHIBqvrRUki3525n1mKaB+nIMLRMSZm0q89UaYHnlUa4
         +Tmg==
X-Forwarded-Encrypted: i=1; AJvYcCUeC6DXw8W7YW4OMUUnV/68Fkxl9i8pjnc2vIVq7l3s9fBd55NzFVDTdT3+C3ufYualgqCpXt690MYy@vger.kernel.org
X-Gm-Message-State: AOJu0YyQEH3apbxQkB/9hL7I8sNCcvQWMRjTd6nDk0/B7GEjwd/KQzqQ
	OJYczCiHesjKq1NcF1ydBammprhYQFLxu3GkNMuPPe6vi1QvuFiQSpHpjNLLJYweS5E=
X-Gm-Gg: ASbGncsC1uLvGUshH1tCsRfGFYjE35gU9TQXlMkgrhqp6pq9G5GiYutWru9RV5tT3pk
	OmRrCav0YmYv1b+ZtXJ7DLIkB4lWaM4aMaIPm7ufwKwnb1Oe5bf3dbWtAVyEHNjVZ5w/SH5c8TR
	r+GszfV4tKPosFMNx7IZHh4oh6ah2pWhZnJFhkJ5gF1c/MlKs1skLKf875ayHkOUPodq5CGkDYo
	2KnO0wY7k1DOuPKWUNAzcXlXec1M4xlGnKbC4OLCYEJXpjemDXLc6/T69FbtIW2QD4mTjcUQLSY
	eUE+95qemkAIx/wcpxFhKCwuuFgXO6UPD6A7ijeAfe7qyUm5Uh0tmogs7mUDBT5LtaUf6UdFclh
	pScOjD1sG0z23FRAgSBIF8SrGkiuNeNXfIkzN0NJQU55E4ozIOid+kUO8mIOQUvJk/uHvwboTUc
	lk+59GTjJW5VTInkuFCQVrbTf92X+RhT3pU+KBaaI0
X-Google-Smtp-Source: AGHT+IFDytDOoxWCznl5GNdQ7r3wEaAqpdygs0quJMyPhhtYCqkt8A4W3XGhbVCI7Rkl0znQmLbd+g==
X-Received: by 2002:a05:6000:2890:b0:42b:30f9:7998 with SMTP id ffacd0b85a97d-42b5934d76bmr2913871f8f.27.1763121638277;
        Fri, 14 Nov 2025 04:00:38 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.83])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae5bsm9487578f8f.8.2025.11.14.04.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:00:37 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 14 Nov 2025 12:00:17 +0000
Subject: [PATCH v2 2/2] arm64: dts: exynos: gs101: remove syscon compatible
 from pmu node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-remove-pmu-syscon-compat-v2-2-9496e8c496c7@linaro.org>
References: <20251114-remove-pmu-syscon-compat-v2-0-9496e8c496c7@linaro.org>
In-Reply-To: <20251114-remove-pmu-syscon-compat-v2-0-9496e8c496c7@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, willmcvicker@google.com, dan.carpenter@linaro.org, 
 arnd@arndb.de, robh@kernel.org, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1844;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=cmENj0W8XtjYOV93TTYCBYmHtN9YboPhPdx0mxFR9/w=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFxnhnEbiRUV2bxgCurkMI1ULYwN3pjRsDVkQ/
 Iqdy1H47GmJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRcZ4QAKCRDO6LjWAjRy
 uphND/93WTuH9XIpzNaqeJVvHv8NtS/9c9v8swUUO444EIliwGiCxxV/coXPYhWI8QUrfPTrqh+
 1Bf3ymdvHWfKrjBBhR1/QMZ3bI2I8JYczEvAtxPSpc6qUqmV8ET09puYBhtdQERfJpo78+hsVg8
 JfJD7UXGuSvpq1fITtC92c0aUIsHGcid0RXoFFTlOyaG0nklcSIlwmyK/2d8DzxQ/28HOy6+omx
 +ysHJkTdoG3pd9ErIYABY1NmpKOQX/+bKmTZ1DIGvXw6Er0xtqd6Rzi5cHdSbI9s6xYxIi6gb9i
 EZ51sbexkWvVRRXAFf272t3IS7voZ/PbJef4NAfopXrjojS8fUT+AH4N6EX3EOj9Hgg7aJwWhp/
 eFtbMpr5stHFvqWj9bcKX6bgJf21qrgr4KpHDKkF8ZoTT5mzjoAHY4gnfJJHa6Dm/CWzyREyYtl
 kwaFEeZ3HmCtAK3vi3NVlGb51SqMQV9YRJJmS57/Rxs/qNBH8/CGhDhKeqeVq7p+vOdTW0VYuOg
 PaUX8ZHsFl2lbqbbW9UGN92azRbYAZePGPLcYMDFLUEfnM2Yl9Jn+pc7eLweT9C/4rHZNxomI12
 Cm5YGjJm64UpUNmTB6BkvVanUq7Lf1fAmB7hGzJdjCJhaEMPG63UchaVDKttcdJDrLeSRxcG+2y
 zWSCtDBgHgBu0UQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Since commit ba5095ebbc7a ("mfd: syscon: Allow syscon nodes without a
"syscon" compatible") it is possible to register a regmap without the
syscon compatible in the node.

As mentioned in that commit, it's not correct to claim we are compatible
with syscon, as a MMIO regmap created by syscon won't work. Removing the
syscon compatible means syscon driver won't ever create a mmio regmap.

Note this isn't usually an issue today as exynos-pmu runs at an early
initcall so the custom regmap will have been registered first. However
changes proposed in [1] will bring -EPROBE_DEFER support to syscon allowing
this mechanism to be more robust, especially in highly modularized systems.

Technically this is a ABI break but no other platforms are
affected. Additionally (with the benefit of hindsight) a MMIO syscon has
never worked for PMU register writes, thus the ABI break is justified.

Link: https://lore.kernel.org/lkml/aQdHmrchkmOr34r3@stanley.mountain/ [1]
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v2:
 - Update commit message (Krzysztof)
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..e1a7d33fd4a369f7b352b81d2070beb62a0ced16 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1705,7 +1705,7 @@ sysreg_apm: syscon@17420000 {
 		};
 
 		pmu_system_controller: system-controller@17460000 {
-			compatible = "google,gs101-pmu", "syscon";
+			compatible = "google,gs101-pmu";
 			reg = <0x17460000 0x10000>;
 			google,pmu-intr-gen-syscon = <&pmu_intr_gen>;
 

-- 
2.52.0.rc1.455.g30608eb744-goog


