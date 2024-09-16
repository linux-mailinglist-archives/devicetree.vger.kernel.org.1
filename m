Return-Path: <devicetree+bounces-103333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BAA97A65C
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 18:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72E001C22391
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ABE515E5DC;
	Mon, 16 Sep 2024 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VR1ZGriI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2552C15B98E
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 16:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726505913; cv=none; b=iZc14AxOFYpvN43i/Dul/A26mtyzDqIPsNLT/BSZEqIRFsLOEFe3fnIwyU2wMnDRj9L+puJoeLUnbcPQJ7GoqQs4o155mjrKZ86Jyyh5VaJENnI2CUv8ZaKsAyrRL2gSfTOCAKeNlMVWHDUNtj64PqWwRfX6EYMduQjY3mforkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726505913; c=relaxed/simple;
	bh=Ss6gV6KoFmAdg0J9ELwBTb2pxCTiB9/8V66BGMLwpSQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kc1oDLnBMUJybaPjSJ8RKj93KkboOOU9uiYkWUOR//SglChbVRWmJ27XS6duElADhiWj97xm0cTo5J7tvrhQwDPg0jlPPdqbVWZs/dd4F6AyEHk4LsT64hcsF1/iTcFyV7r5xnfuxc9HSaezLRZrXQFaOztvSCneVSDbB3r+770=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VR1ZGriI; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a8d4979b843so654958266b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 09:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726505909; x=1727110709; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kkXSCl90OLgwAeRvpNGzT2qKg9IVxF5VpqwKkA/VtMo=;
        b=VR1ZGriIfF6n8mZYz2dFhv6xDsUc0m7rLKucu+yYzSKQe25KzRk804DnA9JmOhqmAn
         kBezIaGGg2inE2lBRc5RjB16iXhEcmi2Sd4DsowQbeLNCRTbDBtEjjh5mfApfHt7Ph7O
         Lip86U+18D+vQbc7FwPsqKa1pHUYkvqsk9r4qhc8Exod00Fkskfd9KXPx5o17dFkdw8B
         Tjv3PxKjsPFT+LTZWQ5reXOIuYXaja+BT2+m6ZJOLF+tdSo8BL+XBhpdNHRwDnflyQWS
         SWc8z5KTQa/t0uGVo2eiIpGQsKw+GAe6SExNRMg7snLWD+fAnKjGPIM3Gk05taW9vMG6
         Nd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726505909; x=1727110709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kkXSCl90OLgwAeRvpNGzT2qKg9IVxF5VpqwKkA/VtMo=;
        b=JBUXGRew3Kd7NaOP+xqlI0QUqr2s7FgGIyY5ACx4ILp0HH5npaZZ3xFmq7IEOMsyK4
         YNy6q1CeLkKg011C/fByyUw2n5iatjcBnqgL92P745hv0Y/wg5YVMTCUnFOPiESPy9kS
         Nn+aIrPF7dSMPSpDbGsavI3mmLGptiGAYhZMoQ/m3zw93hy9sMSLsz3fA67DkUtHO3B1
         ZFp6Dd3fHBWqBXyAi08DVRJk6MMC9pR6THmp9AIBDb54oRlEYRSK9eXY7M+6r2TVl2MP
         D46W4RcNgMIqBQbwRuttINETBV9ZsB0zmeHNJu86Mif0a7hfm91GgcE/bKUsBvpBNaUg
         AqUA==
X-Forwarded-Encrypted: i=1; AJvYcCWogtXpVAfWiITDnGxOA3/GqVhWNYd1g3qbHuOj8LwYg42IKxMrQdYBxjHA3gdTk9c9OZh+rT5QMm52@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc9aaYWrxWcj4RvNFfIkXu7fUAqQT3yiXLTjK2mqGpIK8ZMLsf
	h0ZDu1PsI3xPAaBdRHPwQG9I9s1Tz8e3mCxUo2CXvWIrQrPPkxuakscB1YTn9pc=
X-Google-Smtp-Source: AGHT+IG8dh+X7wZY1cb84r7WJlZM+YVfRmpBzj+gbX68DS4yZ1mEVHyrVMiyu3tma0D7kvq39y4DbQ==
X-Received: by 2002:a17:906:d555:b0:a8d:5e1a:8d80 with SMTP id a640c23a62f3a-a902961ab79mr1721767666b.40.1726505909325;
        Mon, 16 Sep 2024 09:58:29 -0700 (PDT)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90979ceb67sm32992966b.219.2024.09.16.09.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 09:58:29 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 16 Sep 2024 17:58:28 +0100
Subject: [PATCH 3/3] MAINTAINERS: add myself for Google Tensor SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240916-max20339-dts-v1-3-2f7ed7c24e83@linaro.org>
References: <20240916-max20339-dts-v1-0-2f7ed7c24e83@linaro.org>
In-Reply-To: <20240916-max20339-dts-v1-0-2f7ed7c24e83@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Add myself as maintainer for the Google Tensor SoC alongside Peter.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2cdd7cacec86..b6edb21b4f2d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9669,6 +9669,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git
 F:	drivers/firmware/google/
 
 GOOGLE TENSOR SoC SUPPORT
+M:	André Draszik <andre.draszik@linaro.org>
 M:	Peter Griffin <peter.griffin@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-samsung-soc@vger.kernel.org

-- 
2.46.0.662.g92d0881bb0-goog


