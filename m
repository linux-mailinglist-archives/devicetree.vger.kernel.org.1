Return-Path: <devicetree+bounces-196441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4295B055DC
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:07:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F150D7B1B80
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AFDB2D5402;
	Tue, 15 Jul 2025 09:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mPWAEyub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390382D4B6C
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 09:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752570440; cv=none; b=oTZ0OZUmXJyJWi/7vKtBqvk9n4Q2qP5PLAUtiNJUK9sLvSDMa1AW5JnS9W+ddtLKocJvBlqTVyB6UwNHDkd7UQBKH9gYA1nqZQad87bDI4eqEKgEeEsQ2S3N9diCo6PSFXtMbyKO4pdzFI+wIObQDFQJMe/Zqe3VY3IJ06LmvIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752570440; c=relaxed/simple;
	bh=u4cIZFO83VljSE2CK6puYeLZeKZBQrk64PpIwLyG+3s=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Wtv3QCylI1FMwlmVPTI3yBRJ4v484Du1C0xi9ZEHdn/i6ijW8RTZU9pRXcb8G0NWcGGZJ2P+kmY7JlAWmY80jiqJiqmpJvRQ1ah+QkMhvcRR+9ZNTP36NhBErXikHW9jB3u3aFi7rkSl4IHaBGK3DVmiAqCHG6hUp3xOGuC6di0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mPWAEyub; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-adb2bd27d8bso73646866b.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 02:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752570436; x=1753175236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jdjGXEPbwx9d8dagmoP3TN3Sha6+88f/yNQTLVRWULs=;
        b=mPWAEyubegUeZxpl7HoJXWyzgE11N9wJ3DcattfGEmW5fqIvNWOriBfWPQDIjqgK2x
         NJGkcf+AXHM5w914sfELEoWd+R6Tft1aYmGdUaIn+hEPC8BbsiB70lTuytgoMKFK1GUd
         te4+16y+D08vhjArRdbXPSv12TTVriST2wKCs1UYVJ47g6sCXtxnrnLrDIi+5PRPNmtA
         IDKECc9cJr0g3yHN7+wylPjf9rm1rxJUoMOxKopaBbXEWCz6EunKVkMUvMUqdYI3IcvO
         YuRAkECcVL35nAbd658V8D6c8tr2No72j2mJQd9MaWZLpYwNqb14pXnuJBrwD+BUvmJ4
         Hd5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752570436; x=1753175236;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jdjGXEPbwx9d8dagmoP3TN3Sha6+88f/yNQTLVRWULs=;
        b=GrlcjbQr4oGCymqLGGNEpTF1RIAArNiyDcAvNiurWFwQVG030owTJL1PV6Ph/Fw9HC
         3PARYhexDUzC10qJzY+xSw60RUOLeNmOKbOJOxWVBKYfwG5ZzshWxx6opSYb6Wmyuk63
         S9b5/k7CyHtv9zDsQkWTS23ZT7xbZa4EwsUkq5mivoNWgBT3+lK8GXkTX5yKMrthC8U/
         PhEwESYDMnHVG9ZMg7nuCdNZxUIcu5pGOlwNrWaJosmWvX8DPaq0c1yr1/iYYLBxkW5c
         PixCUJFQCrJcWlTNFbNMrUdaLyJIsoHp8b2mumfhlvMvX4INPq+UFpcfNrNcA+vVoI0v
         N79Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHTBIN0eQkyFLSvURLtpmEH+aag/jZEfvhvOaziFPV2xIFL+2n1UF7ka+4td+87YXvQO8Jj2hN97iN@vger.kernel.org
X-Gm-Message-State: AOJu0YzefKx+eJW1ai/YJDIIc1kYMC5V7hxrhiSYTH3CAyl326cgrXd8
	nulqEp4FRalM8Qxw4rhqrFtYrP4qt7fHTl0UbTm2rtoZiFS8l5t4KlISkX7wNc3ka9s=
X-Gm-Gg: ASbGncuJwo1oIHDAHnYReTRE5FiPHZ26GWuLu32dJOBKmPERwYliCDFdzTFc1qRaYzW
	Sr3tRxv7Q8oX33mKdi3z+KWo08zPpet6NedU0udafI4rmdbsn2x5iDZz5LYvAFBgoOjMSRu6H4q
	t/zCzbzaLBQokukaP6vpzjZzSP+KbMejf8+28yEJzW+WnR0AB7btTE+fEoUSLFdbDIR0XdraNBn
	+lHw3JZ7Sn36mhGOF1BA2vzyy7wPQOAuwuIVdQR1C7wMdgtbnRWMKU0Y+462moq08jalO+uf7aG
	CbQKnIlR33BuyAVefR5S+64SL2O0MlHk2vqGMbqBhHFwkmOvKTuwm+IsOJxc4PPobX7rPKYd/cs
	oU0vRQdQknlAYODCOmONSr3AsJNE6YSS/8WR2
X-Google-Smtp-Source: AGHT+IG7sF7KS0pmEBtE7CyUxnRi/W3VS/BOjQxGcy53ccUO5o7hMkUXG853x5EsNRJefAyaqN5s2A==
X-Received: by 2002:a17:907:84a:b0:adb:2d38:4479 with SMTP id a640c23a62f3a-ae9be9f6375mr34796166b.10.1752570436431;
        Tue, 15 Jul 2025 02:07:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee459asm988001966b.52.2025.07.15.02.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 02:07:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
References: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] arm64: tesla/google: MAINTAINERS: Reference "SoC
 clean" maintainer profile
Message-Id: <175257043504.32608.13454383152371102716.b4-ty@linaro.org>
Date: Tue, 15 Jul 2025 11:07:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 10 Jul 2025 09:34:44 +0200, Krzysztof Kozlowski wrote:
> Effectively all Tesla FSD and Google GS101 DTS patches go via Samsung
> SoC maintainer, who applies the same rules as for Samsung SoC: DTS must
> be fully DT bindings compliant (`dtbs_check W=1`).  Existing sources
> already are compliant, so just document that implicit rule by mentioning
> respective maintainer profile in their entries.
> 
> 
> [...]

Applied, thanks!

[1/2] arm64: tesla/google: MAINTAINERS: Reference "SoC clean" maintainer profile
      https://git.kernel.org/krzk/linux/c/7f311e5ac36b6cf9cc0734d89546e643f33b684a
[2/2] arm64: samsung: MAINTAINERS: Add Tesla FSD DTS to Exynos entry
      https://git.kernel.org/krzk/linux/c/8e5bf103b3ada972ea890ae6aa2118ff9b8c321c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


