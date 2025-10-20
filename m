Return-Path: <devicetree+bounces-228737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E99A6BF070A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:11:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2616D3AFBE9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7F52F83C4;
	Mon, 20 Oct 2025 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s2nyImVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397CC2F83DF
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760954906; cv=none; b=X9tuKF0w09zgrq2y26TQcZyyGKZB44Vp43n/H4bdo/tqeDYq0Fcl9e7bAEBkUcdcTERXHb1SErAQP1VC9d7V8HYdnBsyEaaoX+YeeuUp/1iijDSwNR5uCehPZjSDstjOIQIp8Hcz2sbVF8Cf2WWoZBqdBdS9ecaCHIhbIUBAGaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760954906; c=relaxed/simple;
	bh=oA2ElgPBvOiCxkFvL8m89chK28aoV4jvlA52sYjC9wU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uYhMcOGJ2aXglOsQNKKrgJUHaI0aXu1+FGpn4XMvmvXU+CqbmfJJ2/oX1vrvfKCHQ8jVZsAXsUlhENxTWw4LinvuSvZ7aHuOmpXMalQytaue1XyjeS7y8OTy3buBpoLOuSnIlXCcYAWW/X6ilih6ccWyUzz61WC5QZmxvWPbov4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s2nyImVn; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b47a5a17303so67235666b.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760954902; x=1761559702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sAIc6gY01YpxCcQ99z0flPHCre83HKOO57mvnvOjC0A=;
        b=s2nyImVnD280TQWWzMQhsaEhSTJOIZze/ISy76ApAXDn4lm3FSUvjTjmOWThR80Kry
         wwhwxkpafIjYpJHnYXSK1l9nokAADg3ogmQLoAb1Jxzzxr+4ZuaXQzZpZVseidIDR61I
         VsgkzR+NPF9+pjjvI3G67kTIEKwqPurn4m6pElsqi6MEV3ej/zQGIgoEVLIf3tGW5hyF
         kqWRZcu7oyhebTZcLQkScpJg+JAigoH1pY0p5LksLly/6SoFau3n2rWMVTZNUUg3oZOQ
         T3JRvmFbgeE0hgQffk+db81PF039m0OfC9P31cFpQa0Ukw/56EhrHoebjCay765ueeNl
         FBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760954902; x=1761559702;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sAIc6gY01YpxCcQ99z0flPHCre83HKOO57mvnvOjC0A=;
        b=EUQy15JgYVCr3QbHvCWIrkY63l1ck8MICM2KJb29fCcBgaknnUZw+AEkxiMEO7jVms
         KitMt+oKz18g33HtN+2TXnZZLJxlSaBNz8kwJWR2I6rCMbQFvnjoNhjnHgclhkVXfZwq
         cHTn8Phh1MYaQsuCF5kbZHM23jYd1obDbf7BU9t3ibxsCnXe54q3fY0tJ5uGmT/Y1TEP
         DAOyRv/3gVaQIOIV+6RM3XTvr9FxvQ5EvNp8ndyH8M2gHV0xht81bSIHRzq0XF2R8wsK
         Mr62tMEeDzJLB7//KU4Ffzif5OlDtsoeCTxHgsaYqnFrYQZ8l+V4R3DNK7OpO59MHhOw
         75cg==
X-Forwarded-Encrypted: i=1; AJvYcCVcOCc20i190XSpiyEoZP4nIjSopS8YwpCXVRacN2QAhOC9B4JKaa3B7dg9iYQBrtfEPoJsUoiWGC5+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr+XwkEl6P1ssPFbRuuU3/rOtigAMz8/s/PkFEWDjK961i4R7k
	pfv1n5zMN/4AKaXzjlJxtyyqt8Ya48PPVD/YCCHGGK5rjCHP3+qzS7q46uu4p02zX18=
X-Gm-Gg: ASbGncsNgkmMSd7Ug0VPzdqhteOMA4+REGQCA9beQevkFB/RnUc8GlSawcR68NRTYjy
	H97FAhqyU6wwuD4KmgaZe3sgxSpdAavPTrx3x2tGsQ5NsRGVnh+3waGRfYq8Um3Qg7bsWvThTX8
	ZA+oxv7lTsRRNdkgqIbBPFXQMIDB3Ygln5jzrM+TX0AFVm4cPBHJeJB57Le3NjLn7x8tDnG9uiP
	MNP6W+SwU4e97kTnaGyuGIw/R2tCJhva8MSjxNhjsq8j0nPeoSdOasDL9knMkbWhgYknZbocbnj
	4FhQKSDMvaB6yE1XZFVgvIXCiO5vZQI/kPnbX/hdPFl1gcQzEY6jL44jw9Amr0RQqyWrZLz0C+D
	5FhwagBQ9RRxPuWVZoEcxBeHF4Mce//4h6GVW/BzUR4rITwJ7dnH7gKtPx56gs+8f1G1PVMAO0i
	JdOvON2LbnSk0HD102
X-Google-Smtp-Source: AGHT+IGbEPDs6ivtDg6VzwLTuv9vaft0NZuSPujUXbh434PC4DZqXM9ezasAKoGltsR6KlNX0oCeaA==
X-Received: by 2002:a17:906:9c83:b0:b3e:c7d5:4cb9 with SMTP id a640c23a62f3a-b647395aab0mr801507466b.5.1760954902572;
        Mon, 20 Oct 2025 03:08:22 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da33dcsm753414466b.12.2025.10.20.03.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 03:08:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251010-power-domains-dt-bindings-soc-samsung-exynos-sysreg-v2-1-552f5787a3f3@linaro.org>
References: <20251010-power-domains-dt-bindings-soc-samsung-exynos-sysreg-v2-1-552f5787a3f3@linaro.org>
Subject: Re: (subset) [PATCH v2] dt-bindings: soc: samsung: exynos-sysreg:
 add power-domains
Message-Id: <176095490095.45974.5198951258133478877.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 12:08:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 07:29:01 +0100, André Draszik wrote:
> On gs101 only, sysreg can be part of a power domain, so we need to
> allow the relevant property 'power-domains' for the relevant
> compatibles google,gs101-*-sysreg.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: samsung: exynos-sysreg: add power-domains
      https://git.kernel.org/krzk/linux/c/ebd2160ee6ff3e8e4c7b17b45380900307a34b6b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


