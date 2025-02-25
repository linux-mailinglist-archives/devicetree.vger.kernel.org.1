Return-Path: <devicetree+bounces-151181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CAAA44AEE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4B943B116E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16A02036FD;
	Tue, 25 Feb 2025 18:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IoH3j/SJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B081B2182
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 18:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740509312; cv=none; b=ljtvuzquuLpkFCrqfwjzk+GcLeADcDdDOgqT8Cz4Mz8mW2bq2cPpr1vq5Ub6R25gAMPRdXnoLgQ//QaNVe4PCFKN9rn0AqVVw/+t/609xBLJsJLY40W91n/4pjP5Duf7wM7eViokiWmROj9TM2YGwkAnp7YxeMc6qvV9x0wIRrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740509312; c=relaxed/simple;
	bh=tCCjly+Qh5AY74QbK5LfS4mXEJXwkw/OWlEpJf5244k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T4EtA/q74LP242UhiVCZIINUeF8/QaW3ipes1lU3afNr1bE48UvuV06H3D2542U0oDsaYiYiWZnCOywKEdAJf6WT4Cs/6eedqhtxoqXiwm+xpFrGmgyZUepndDX2ikjSWk0MyU/NZ7d5SwdaAumvDi41tpHpP+if/HDwwTopR8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IoH3j/SJ; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-abb9c8c4e59so99525066b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740509308; x=1741114108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/oN23gi/Cv1G/Zd8ve35VhHoD43rI+bSAAj2I1PX/Ag=;
        b=IoH3j/SJJNMyiCNeXqg+0ck4j8VISqO5IN9kZ5nBdSnw9B3b4QcdgP5xP67i9rpDxX
         dmTS2sxtoRltGWqdZvOserGg7UJhrR3BixI/OXKBDKtSDThMkPp5Mze3LXLzGFV3g0tj
         pRHBYiCOKVK+GcpBi1OKpuL+ZuGa4xeBvln5nRp1fc4qz2YXfkMrT9SB4L7XWyoGujBn
         E3PYoLNkZoZr/RzT557MuOvqOthd1f1TCQkS0gihwQAnYtVIzvusr265UD/UOiC/c2CJ
         COQ9hrI/cMSEUg9jqyFs6q/yCivfqO6Gbmps9BmvaMKbdk0ilfCCcFVkhbbTxUCnYeQD
         g0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740509308; x=1741114108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/oN23gi/Cv1G/Zd8ve35VhHoD43rI+bSAAj2I1PX/Ag=;
        b=L998Z4e/SbOGu55gyuDiTsFKP/8RTsk5as7jSa/2tfxSAEUgJ2iqV+A0gewZL3yonP
         xHwkf3FsJ0AYfSe9Plh6lQNxh8KaRAPmdztxLTdiFmYf0pf521vSEv7KgRyHxck9u7N5
         4FvT3oWZn+PJhYXkyn3P3McGrMizofP0MtX1U2Q0jTyAkllDYwS2b6V/1D5f4eHOvk/m
         w2f4r/pcVNM5RgGHQ8tPM41993rKssyYwE6cw9YPBV/MEFxtHIyGxDY8Hczn+JcQEnHC
         XoPPl9NR85sMT9KYPNY6+TahtsTaLmLGX5Tx3K7NIPUzp2PwjaDdeM/K658ewEc8xbbW
         hW2g==
X-Forwarded-Encrypted: i=1; AJvYcCWzbiZc6UeFyWUjG6wCGqPX5QgjGg1uuxr2PyTk9GmMTjpfzFrQtsPkkiLlL/MSd3oBnDldMPK9/iLn@vger.kernel.org
X-Gm-Message-State: AOJu0YwwgH/OfEg96f2q7bfygaC/8ZDSDodXS+yt6WXaUEUQQYtm6Ll2
	vsUoLol63e8vyC5vqyzcQB7hoPNZcbMFvSvigzJMXHwz5bo4jqlBoDwkaZbqOH0=
X-Gm-Gg: ASbGncsJFp4xZirZIHCM38PGuPHKgdVp1zViT3lAmNUlSW+bhD05Q6jwqjGgWzeSPIU
	RBh8DSQ4wv20ka2NyIc/OnTMbpuIqTzVjp+xmI8gwfLmOrAZKk3j+kmN4VVSi6cne3+u133VVYZ
	IajAAvPPp/NvxBt/QzbsMbAzKI5OdceIY3mzEB0CPtgEOb62X66nmq0ieBUnluMKt7o4Vqbbs4W
	OlPQNzSEzJavQHCA7PvLtAFzmR0/yvM2qA0Y/6437w5RvPGw3xE37ydohsbfm5I5yiydEAZkaIz
	Djhe5tyUGUGNm5c3gITqK4Ei8mMsMSFFjx3FUhdlubFFRNLGq+JzaM5d9NwZ2RN6G7h5IOjNlcU
	=
X-Google-Smtp-Source: AGHT+IFKOZhRHtEHCCTN5BHVYVCPkFDsRkb7jCM4fs2ECH+kp2S3Jaa2qQ2qzrnOEoKDVZtT2N63uw==
X-Received: by 2002:a17:907:2d20:b0:ab6:b8e0:4f25 with SMTP id a640c23a62f3a-abc09a14d0dmr792407366b.4.1740509307824;
        Tue, 25 Feb 2025 10:48:27 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1cdbf55sm185359466b.15.2025.02.25.10.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 10:48:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Jonathan Corbet <corbet@lwn.net>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	soc@lists.linux.dev,
	workflows@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] docs: process: maintainer-soc-clean-dts: linux-next is decisive
Date: Tue, 25 Feb 2025 19:48:22 +0100
Message-ID: <20250225184822.213296-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250225184822.213296-1-krzysztof.kozlowski@linaro.org>
References: <20250225184822.213296-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Devicetree bindings patches go usually via driver subsystem tree, so
obviously testing only SoC branches would result in new dtbs_check
warnings.  Mention that linux-next branch is decisice for zero-warnings
rule.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/process/maintainer-soc-clean-dts.rst | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/process/maintainer-soc-clean-dts.rst b/Documentation/process/maintainer-soc-clean-dts.rst
index 1b32430d0cfc..5423fb7d6047 100644
--- a/Documentation/process/maintainer-soc-clean-dts.rst
+++ b/Documentation/process/maintainer-soc-clean-dts.rst
@@ -17,8 +17,9 @@ Strict DTS DT Schema and dtc Compliance
 No changes to the SoC platform Devicetree sources (DTS files) should introduce
 new ``make dtbs_check W=1`` warnings.  Warnings in a new board DTS, which are
 results of issues in an included DTSI file, are considered existing, not new
-warnings.  The platform maintainers have automation in place which should point
-out any new warnings.
+warnings.  For series split between different trees (DT bindings go via driver
+subsystem tree), warnings on linux-next are decisive.  The platform maintainers
+have automation in place which should point out any new warnings.
 
 If a commit introducing new warnings gets accepted somehow, the resulting
 issues shall be fixed in reasonable time (e.g. within one release) or the
-- 
2.43.0


