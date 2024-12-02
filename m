Return-Path: <devicetree+bounces-126104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A699E0703
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 306D3B63839
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32BE3204F6B;
	Mon,  2 Dec 2024 14:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Il36N5Xd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A09F2040B8
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733148138; cv=none; b=rOsExau/CXScda8wIOdK3TnEMfTO88p2uALtWCYzwr5yd7aYW3CmMB3KfC1oSkkOF7gLp9LotYhMUa+z1NO1yWDwGS0OhcQgCQAZthp9vOVN5Aoieudr6YD4oB33CyvmK9VBWtij1TOxuDlgC6DtIbDKqYullBjfLgKaXV3RuXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733148138; c=relaxed/simple;
	bh=xEY/MYEzww5v0mEutJbZHHy0DYJ5xp3n5zeADP54oQM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=smk80Og+FWm5SHa4pcqQD7VgylUteb5DMJGiUQqhlxqpiglbG6+hkZIBOAPDfbnmUsfZ1lQxoMCJZyj7FT6tc9SIEW+ADesakVRgH6HQHywKymYWz4/FKe5gUtP8AlplZe8yJ7fRpvIRgE+YZV/nWe6rTThP88lTo2vHcoRFHm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Il36N5Xd; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4349ec4708bso3606205e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733148135; x=1733752935; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFdTL5VEPeunnOwNpwyKpiYpCh3mlklnlXFkbGWKFNQ=;
        b=Il36N5XdHOijTPmyx0W4A+hb9woYKhF7acX1cEwefc1A0tcVqnQGodbUqy9m6K+5yu
         kkNIxMy/zjGi598u8K9lGyKEaR3raSjwcnccA8ctpoHUcCILqlm1LL6lFwbCAsozTJk/
         xcKnEuAi0+5S6dAg1bJhMLFDiFMW4A76QMsmHrD1tFaU4jCljMZwdR90mrFxVVDSLRag
         zJo4fXImBDclVoGlw++fRvE/xdRoQnjlbyjp1SZFwhd9GOiVybdtmjsYYsQQHh1d1vs7
         KATzl7crdPgDrkJN28ielGb+NlbdG1LEmpOGCPqUch4eEVGQTzPS9n3tTUje6vaTxgK8
         dQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733148135; x=1733752935;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZFdTL5VEPeunnOwNpwyKpiYpCh3mlklnlXFkbGWKFNQ=;
        b=n4vJH6+LwR+pZQEsnGDaAMC2fLgjOzAjcQf2Z95SjU3ARgaCJATu1HWlaesHt68NMe
         3tgerX1ERDoAg2FsSkVQHKxm2qTFrKW2dwuDC+7p8m8Z3EQ24YnEN3wk84oyjpaaWF08
         JIjKsCwPDMlfM0yhhpdZExZrx7eNfVA7OUDOWHch7u+0fJhUADrMmkngtSsUeGOo+wJU
         O3za5uvfwedi5DoD1gC7RgZ8yyONkFJzyjp5lymxRo7V1vJ0NTuf0QaJoqSiPQn+cZFS
         pazW+pmrD7SMRMr1gkw7vv6KbmJQQdvvhOMOJiPttaBOIqFIk2GZAMfoA6ROiJ84iMfa
         N1hg==
X-Forwarded-Encrypted: i=1; AJvYcCXuvg0iZefwIzWEr/5Hgy5s0qGmrrsBzATWoMeVP1PLeN1pTdsWs8Oy2cLzbfMiWzKFQflx4wfrWsIE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7hI0qd5Qc11tBJj2UjELjCrngWEqAIdEHdZU8yDE2MIMebRc5
	2AMQ2q7Hs/ukFDvBSOjB4ZlIFB9T4KDe6UtPWNybZPNZJ/sKGvgo6fOkPF0Vw4M=
X-Gm-Gg: ASbGnct8yXDj6iloNigAjGLRfy0PXYY7HqKmfE9QFzfVwuezMRxGOHFKCDcRDGyn6Xt
	mArGlPWOtWSXYJRewQ6juwEOzI583/b69TbgrhNL8zTi9Ych7IL7oRS5WGVDQV6gRBmZDAhuLk/
	9zguvMhESBfTP1N9F8mbjUKAgZpX+o7EKUBN570YLRXiR+ZQknePHeF+InzZv/iAbgP1yi/+MRm
	JmqvrqgM7cM7oGJOwVuWy6V+dBkAUOMktr84pX4w84sGwX895/6LXP6MhfwLZdc
X-Google-Smtp-Source: AGHT+IGxwUtz2qX6sl87AP1MAktuEdNdgWw/JHxE62KrZvo42zm/39LbfbWZORwukdi9PptFej8bKQ==
X-Received: by 2002:a05:600c:1d1e:b0:42c:aeee:da86 with SMTP id 5b1f17b1804b1-434a9e1ce8emr81193255e9.8.1733148133134;
        Mon, 02 Dec 2024 06:02:13 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7691b0sm184502815e9.17.2024.12.02.06.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:02:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sota4Ever <wachiturroxd150@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241114143636.374-1-wachiturroxd150@gmail.com>
References: <20241114143636.374-1-wachiturroxd150@gmail.com>
Subject: Re: [PATCH v3 0/2] Add support for Samsung Galaxy S20 FE
 (SM-G780F/r8s) [SoC Exynos990]
Message-Id: <173314813121.47662.7729149107568659652.b4-ty@linaro.org>
Date: Mon, 02 Dec 2024 15:02:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 14 Nov 2024 14:36:34 +0000, Sota4Ever wrote:
> From: Denzeel Oliva <wachiturroxd150@gmail.com>
> 
> Hello :),
> 
> I'm a newbie and I started getting interested 1 year ago.
> Well, that's the beginning,
> until I learn more about kernels and the C language,
> which is important in that.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: samsung: Add compatible for Samsung Galaxy S20 FE (SM-G780F)
      https://git.kernel.org/krzk/linux/c/9163693d368f00c02fb8a07beabe2c2f18fe0a32
[2/2] arm64: dts: Add initial support for Samsung Galaxy S20 FE (r8s)
      https://git.kernel.org/krzk/linux/c/706119fbbdff2f95a62d1665fb4234ebe4e9392c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


