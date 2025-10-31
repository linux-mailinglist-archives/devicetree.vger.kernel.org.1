Return-Path: <devicetree+bounces-233736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E828EC25134
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DF513BE078
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D88B34B427;
	Fri, 31 Oct 2025 12:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r21dU9u5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF1E1F2380
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914726; cv=none; b=AMJ29qQmDXPAfpxXpAsZuUkTDv0cbg7XueNUUot63PBR/2YmXgG9yC5ZdmXN6dzCI2k4KL3ES91KJQzPykY3AwNAnaUZW1l3InSwO+fv0dMd0e83S4IFSnPVSlz7dxXutItYSqzoDhDxAUl4T2bYU0wKYhFX8mno+7HCrfajCM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914726; c=relaxed/simple;
	bh=BRKY3GPe1+dBZ+eX+MLZ66l0mvit2jHge4hZNEeZzx0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NEUNO6SiTGIqi1N2of/FZrJ8FDxtr4QZg83AIj0TbeXYBkXUe4EdtTANBKpIl443IajZ0ATJ/wWglD1e2CbRFSojeWttgEk9NxX6vo34HYpEQ+7I4l4ejRbNNh1D1IX7Lzwqg/XI2NALoSP96Jb0UpsNusFEKZulhifxl4E6rvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r21dU9u5; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-471191ac79dso24485585e9.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761914722; x=1762519522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kEEzVDPaPo+3opvcFtHcUqZXHRFcLJbK7RKFKgESsWk=;
        b=r21dU9u5HEoMAYmQNFOUW09/rZPM+Lo098a7nuG0KikNfEMxOpMnWox0ze8t/PTvQo
         7HxhuWMr4vZgfKUPQyY5YHazN6599J9FOzstFgRniveYbdZs4yUBddCU2c2gqoWK6d+5
         iTi5tmbdStm+lYGk2sSfhT6x5fefKAInGjHiNgpJHaCExPrjxNbx+KBgsNLivYNt6N4D
         kLuOOy4Jm7bpBefJtbmGn5u5yBz+ye1YSyb+hK39PUsDIsIpTBuZNV+pQbAWxF8LmoH7
         VjfLpvQpHMTlib1aTTddMY/F31s0w3iwlGWCnBV5Gvyq8KApYR/rinCoSk/DuZVh3UEM
         QVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761914722; x=1762519522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kEEzVDPaPo+3opvcFtHcUqZXHRFcLJbK7RKFKgESsWk=;
        b=OT6PJPpAYQCh8PF5UngH8ahQrwEcspgmTwhLDYhAEaWd/TxSodnP906NOU3lsdAdnV
         Nj6t8rmYxYDj+B7ZbId3j9x+rURShZehtA8LsLFA5V2ssIJVH5hLj154y38oporG4VaG
         mroXj/BUOpW8rfx4aO3yz7pPF8yBCj5mb10xVY8kTLJ5iPKFXHwGmQkhVn6EDDmx1cLD
         yEygaOBs3lFSzI81VXXlxU0C1hJmtjXJF+f/sMd1wG8XpXNJ3Tyv5BWthrHpEFuuTscv
         Glo64ggq/X026DpMDeHpXYGDJkViHZy5qwBS7bEnjqh2QOkuuPsL2RRU5L+1hRuo9opO
         i2uA==
X-Forwarded-Encrypted: i=1; AJvYcCVpnM5cHIhR9hcYNWkul/XPBxCF/lo0bKLB6TkFwMr4Z2DOiCm+8T3felCGzlvnoK7OTXaiZaQxP5MO@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ2UIqfoGWArv+4pTi0xwrYuysI5Hk44YDJRixfKMY4NLVQKrW
	w5DYS2OtbZ6tdrcAueMko21xFHDYbei3+tNe06URxvuiUDowgeLnESUOHo/eMfPRMs8=
X-Gm-Gg: ASbGncuB6MoeVq5KAJKCPkit9dHABzpKL/Ud+9rkqg7Htl9DbjmvLo/OJ43oYAmWBXn
	ghK/hvJ/W6fAWU7DxxnBSI93+b4iSfP11nqNv+/WyGVbYTRsz0WRNN8xkaGnNoJ5o/n5GGqZY5K
	4r2BI1ezHr8RUsP+rBjjY+9X8kvlu57eTluK/DapI+o6CI2FadDY3gSmzW36gXYxnon9uBcmT3L
	u3Pkb5jzB0rz+POznkXeyNstD18nBkYKwrktujVfRKNdAqJMOqJciwiWGxm+yBMaajrG99riwK0
	697QBGoiiGmQ4R1A9DH4fXQv3cw6EsO21azcD3t0oH00fEEfF3gz4fR/IMNv1+QIglIi6GDPz4i
	5WHLOxhoQS0AVOVRPOZfpe8QiFzl0Uuy61AKoEgWRAylsF+OZopk7KjjxXZjmiVsAhSRuLAIYHE
	TIOvZ8dfGV4P2Zr4AFCZMDG6THuY0rbPu7uqloJlXsbFpy6OSMyhML
X-Google-Smtp-Source: AGHT+IGudjMOXqaJcnSNpcKIftQR6nLMDH8mkpNCYaYHTE5PBNCG7YLAiVUUFPpv+vByeUUIkYFsMA==
X-Received: by 2002:a05:600d:4393:b0:46e:32a5:bd8d with SMTP id 5b1f17b1804b1-477331db3ccmr15144245e9.3.1761914722313;
        Fri, 31 Oct 2025 05:45:22 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732ff7fdbsm31077535e9.16.2025.10.31.05.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:45:21 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:45:13 +0000
Subject: [PATCH 5/5] MAINTAINERS: add entry for the Samsung Exynos OTP
 controller driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-otp-v1-5-2a54f6c4e7b6@linaro.org>
References: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
In-Reply-To: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761914716; l=979;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=BRKY3GPe1+dBZ+eX+MLZ66l0mvit2jHge4hZNEeZzx0=;
 b=kaB+fFcB2Da40OLIuL4pYpifdRadcaa8Qg7wjSD6cQePf9r8H8vzcuSNE/jhnhWzXLFwTTsAf
 ljjUdOxSwlEA3FtVZA0GGk3QXkQ/RXgqhsL3tx8kww9VrOB6mnl68KR
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add an entry for the Samsung Exynos OTP controller driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ab00eca640e02d40dd80949986d6cd6216ee6194..813a098475ab7d5371c811020ea022f63d1acb35 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22775,6 +22775,14 @@ F:	Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
 F:	drivers/mailbox/exynos-mailbox.c
 F:	include/linux/mailbox/exynos-message.h
 
+SAMSUNG EXYNOS OTP DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
+F:	drivers/nvmem/exynos-otp.c
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org

-- 
2.51.1.930.gacf6e81ea2-goog


