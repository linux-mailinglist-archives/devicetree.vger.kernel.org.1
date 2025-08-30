Return-Path: <devicetree+bounces-210771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6DFB3CB36
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18E197A6FAA
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D09276052;
	Sat, 30 Aug 2025 13:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TsH7eFkF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA57B24A047
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 13:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756560376; cv=none; b=sYKvTDTVnAWEHlc3B8ksn5ajzJlQn9JxlerOj1iGjhJyp+PUoyzWjMYjrMFwignwXh4oht6DyClX4Nj0jr2Kt8sEZZjlwgWDtl5585nOhsbr1YIBbVkZaqGkTGNKGCGQl+PRtDQbwjoAk153vqamq9cnA6FL3DF0UkzixNR+ecI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756560376; c=relaxed/simple;
	bh=qwG4c4Xd+B3YoR0uF7y8E1dHfmZd2XS7G30El+hHeyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gRQ3/0laAmsXHbG9NtyDULGh6gqYi5t8mB/6LGKyAy1y0pObsfCfETGs/rJVHSLYvmhy/EKwSSc9Es3CcX8pb++7OIDB9YzGyoUUJMjuwuBaN9yI8CfUgXOjmISh9c1WzHIX9Cn4yMynTS8tCEY3VtaIAVbu493c21UWdYnON38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TsH7eFkF; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso39374166b.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 06:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756560373; x=1757165173; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jxv0MqB/ujP6vHvTc2WwDI6QNrDWWZGMfkdvAnlFnuQ=;
        b=TsH7eFkFF9werCsKcPtU/X57EogvXskDw39mx3se32vryutXUZeD41/bBX12tkm2K5
         6xZYbtaDe8i1M0NpZnl6F+f3N3k9KTDzz3fowZ3UtcTDZ44EbvWTkFU659gCwYCYNKvA
         pt+vr6Zzp3NDWULcpUC3GeHkHQOUULHbp4rm6YhQh7bQyCN+LSQMl1wXEgjNHuJlCwgb
         wIYEEbrslzyAErutzabsfNvZjriMEAt0K0ISTqRtkfu92dxcsSe069MCNjD9POd55WI2
         2Fe80UBfQda565Ku18P/MrpboWgrEc4Nk+d6TGiJ8KJXgRZ/yhgubwMB4WseToyZE3JW
         UR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756560373; x=1757165173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jxv0MqB/ujP6vHvTc2WwDI6QNrDWWZGMfkdvAnlFnuQ=;
        b=rTedCw4BuII61sRMwVfy0Dqdl6uIkywMhZJjcT7DhloSFviX0EaIwMA3uly4y32a5U
         qFYVuDcIeKvhHovBgTkDiO7N+foeYRMlKfx59oAXMCwx0NRHfJlukfPUIfNHEvGcc6/E
         BBVsv2+9NPQbVon33iPRJflGVeWmk802ZGr+RVJQIn9sxrlgYq19pKlQuhIEdQeADR1J
         /ayWWiUOqJoZnydBPpe1U+0ofGbHylCsT2A5/3z6IHuEHqx5hjamqheUr7N5pRINQgQa
         fH9wDqJKJKW7lklS0MMkIq99QSHMpDBRU1N3EMMbUvfJnPsXJVAEpjSeXZCOA2j7VkpT
         iyaw==
X-Forwarded-Encrypted: i=1; AJvYcCWLvPByvBRicW6a0opry/m2h4KBRND34dQcLxi+uADQ/PI7sSe7PzwFj3wNwzktd7DG4guAOTUmCo6y@vger.kernel.org
X-Gm-Message-State: AOJu0YwKbvuwoVXHV53/CSp1anrSAmAS5scg7ebvZznVuMZZU84OWeFt
	smBTdQP1wzpCjHe+4tw22TkxKopJ2C+nyYvvXaIvlUXHDRYkvZZKXJl2viP0kVFzvR8=
X-Gm-Gg: ASbGncvQRrWVxfPgtx2sktvaRBpPTcYZFe/O05mFBkTOIQHQkJ0VbXQvIQ8NvMajrzT
	0D6kFB1dDBuP7zY/Xf4R+mD9zJZRuYdyex4ipa7P9L7c1/+onISSFmpKu597TNUd2xxUu62jcUr
	kIOCk4ba/o/RHyLrAXjzA4Kb+Fs/H/fZIlNBF2tuTBuP41ddur318Dl2C+WNzIzieS2FnXcpLft
	fZXOUAcOsc3nHoGORlHy+VQyPIAGlAO3HwTcSU6Q5dTBpnP3ujVMDWfZ2Iy38ppKeSANwAaVVmw
	g+puZbanp7RrvKfPhKacfkEWNhoDueVQJ5g9j41DlL9b+6570KTCfb1EFs3a8zQ7XR6NloKiUxC
	HpiyHFeYi0vp/W4E171gkDdPkX2J8OnaCyrybjmc/czr5
X-Google-Smtp-Source: AGHT+IEZpDjBctuWqYNRlyG55Wa6Z7JlU2nXfaTVYBNjCJjgFc8SZE+7HVHp1fu8CNukponM0TaUCg==
X-Received: by 2002:a05:6402:2110:b0:61c:7c3e:f7e8 with SMTP id 4fb4d7f45d1cf-61d0d2a9310mr2165499a12.2.1756560372888;
        Sat, 30 Aug 2025 06:26:12 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff3dd9574fsm225212366b.84.2025.08.30.06.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 06:26:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] spi: dt-bindings: samsung: Drop S3C2443
Date: Sat, 30 Aug 2025 15:26:07 +0200
Message-ID: <20250830132605.311115-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250830132605.311115-3-krzysztof.kozlowski@linaro.org>
References: <20250830132605.311115-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=981; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=qwG4c4Xd+B3YoR0uF7y8E1dHfmZd2XS7G30El+hHeyw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosvvuWOMibAY+sCtkr0eJY9VfamQvRG859Wy96
 p5TeNtYiMOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLL77gAKCRDBN2bmhouD
 1xXUD/9qOZnQ376tzF5lwUEClQkuLBudqcuNOfdDxwqUDHTvhTcOAWvj2LAGTmF9dF3g1gaNxWt
 ABBXRcxT0uLEoGRNlwKDKAQ7VJ5jUAcckldLBROWWIOPCehaoLHXK/c2rgQKUh8KLyNdGOCK7CL
 ebnU5WbX8ihfVb9s9hbyaQxyLEs0KfONYlJkkdOf4Ui3n1/k1sPqAAucyy0YpiFM9//NaNmXXFu
 rNk5FvCoUTHSeeqGnpzUNc/f9GOZ8YAFoggrq/iHgZs+EIsBLvqwoR0c+x/TL0E8DI6cCu6zNJK
 tCNPtD5Zf2PCpCr26GurjsYx45fg4Gc6FAZo0DZvNDzYV1BtNkvdELIAUZP6UPGFg8bto1AOlqi
 P5CBHIp3cQ/GQfm9+jrmwQAGJ2DFl/eFBD5f6uWB6PkWQlup70I6z8pcbDhnChjj9mUYJ6Hj1yD
 qLzs1EVfH2AuYHR767ZQZaHUtV05/HkftI1Vf9h9xVi1tmOOFSMgNQaAnnbYKOi9dF55Tg7nl5E
 B6LRtTB+RGr5fh3Tf7o1uIIOK3LQ/LtXhuV3mD85MgoJp4TACcr1+BMtzyQfYkKZTIpw4Kd4O7d
 2fMfvxUSE25mvLYJ86YpePN0AOEx1vsA8n1MqUe0KoURjZrrdqvpSS0zxG4RR/U+wgJerDV+G/B W8W9Wd5GXVLh14w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Samsung S3C24xx family of SoCs was removed the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of remaining S3C24xx compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index fe298d47b1a9..1ce8b2770a4a 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -18,7 +18,6 @@ properties:
     oneOf:
       - enum:
           - google,gs101-spi
-          - samsung,s3c2443-spi # for S3C2443, S3C2416 and S3C2450
           - samsung,s3c6410-spi
           - samsung,s5pv210-spi # for S5PV210 and S5PC110
           - samsung,exynos4210-spi
-- 
2.48.1


