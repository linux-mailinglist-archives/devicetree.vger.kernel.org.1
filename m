Return-Path: <devicetree+bounces-146039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8E9A33107
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 21:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A87C23AA97F
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 20:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C466202C40;
	Wed, 12 Feb 2025 20:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D2YauDTr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887091EEA4A
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 20:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739393404; cv=none; b=hSoNp0571okDR3mWqjnMG6Lk+poKXFBk7Fib2tOSTk1hm+HgF40+yMOFv9GMVxlvYqPT1LbRjd8iKa6cfmkgQOX//19YwkGgKToDknX3Fl9Vl7XVgKyn0skK3tnGDXnb1UDOtmMLscMnR0cAcNTMl6FNASLkK5L3JHAqEwco/Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739393404; c=relaxed/simple;
	bh=TQy6MBVOb9u55vCzrWhe1w7LxXmV0gslemT6zUDv00Y=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bJU35a0+xK5cKXprducaOLU8zbXA3NWDFBtTQdlTWPFg4GW+RZ5O1QvG75ZQ9YhyHhQZ+9nACDsvdSi4LZzCB/AYzIJX9gO4f2VF7fLiWpbmjk3FDOKC8vWhNPiWRTd87wTutrIw8soAvZT0dzuulfa2DlEAyUvlZsDvq/GDEE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D2YauDTr; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38dc10e479cso22947f8f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739393400; x=1739998200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u9Q6IpOb73y1eWE4uJt9PH7CT4fpxSco1fxVBO1qUus=;
        b=D2YauDTrfP3y8k4Mjn/luRPc61OiUjfHTRB3eVLV8tEoyqZo8/DA2dyF9xqdHK7tf7
         j3ioGMymACXh4oSWV7XMBFGZTLW11dqqaKt9TqDJ3A0/vAP3vg7FqjhjfnKrmErLfYff
         mwCugwGYiZfvU5JjMvUKKf0763AqqHH72wxGQGK9ayfJ3tax54KoO0hMIh+NMhpJLt7l
         ElsBY/KlwEfRcOhP5nnkTefTBALQmeto171RTm0bUkx+xakY2Yuo4G/YqiyfveeaXGFq
         uy1VmY+/pMUjg81Kx3GsuKH7Oe4g+5JmZ29sG4xsw5KzYXnEoaUTMmj8FVSmrImcjtgq
         5BgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739393400; x=1739998200;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u9Q6IpOb73y1eWE4uJt9PH7CT4fpxSco1fxVBO1qUus=;
        b=gY9iz5dvzQZM1Dw+IwZ5QEj12XhcopJNLnlnmJeYYlBkf5UoO2cI95/tli7U1F6bjr
         GxuNj2t3H0cwPXTnYei69A8blcionExV/pcUp9CqCG97jcokUNK+uSOYhKLpEQ+WiDT0
         cljAPtqeaDYiMbjZnNLr48knaLsKRLJ0koFKvGzWCzEY9aXLq4SpYPpEoxDSqy8dPH52
         /kTFqQ/TaNalBSG3c7Ihf8bjTzXov60ieGVT37+gbhO+13JVSy8dp0vGRbaTApc7KQ0t
         pxnTuQHSxLttaIBinQZafxtk81lMTuiYZHybR5c3YhBiajLtkSFllKhDqC9WmEHS0AKa
         2kQw==
X-Forwarded-Encrypted: i=1; AJvYcCWB32WGXRrAAPBSl2kE/MV1WHJYTNqFMbRz7JCP43/By0SMz+VLQ12IimqDyQ+eXLuOBLmFZMRLI3/Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzwUMxKZLo2xYrlWTbD1PElCrwT1XljzOSdBQsp677FwASV0JNy
	XXAb7Z5nNeNutoBlRfo7VcdfgQas9DyDej3kUSOfHPnaLtLFk0ekjQhb/Kj6tRo=
X-Gm-Gg: ASbGnctFoYtGOKL8mvOZz1ZjgyMdQgWNK5cIJmphZQAI/bdox6sdCWO2yVkqi/OAnm6
	W6ARTTMhllEzkhQ4V107abxXhYgZ8dtr2uktEZO3oiCA0Emn3BV+jQQvja5glSR8IZYfiIy8fHV
	7JJsMdJ9a0XCaQaav7lmSXGAFSpkSusjzr5nUVePXvpWKrmkagzj7fW6oly1x8sH45nTJYn3fiy
	rkdNDDPtgaCeNaCEXgMWn7A0e+y84+QmHE0H8iXMrjOdNSL3wZk7iu9S9jZq4DomL0etSTDnlqH
	ewVkNlRphTk7U4Gyu8e72hLNCGLjnQw=
X-Google-Smtp-Source: AGHT+IGQgROpzQmu5Pec0W38CXloplfJn0/crXLM41iuPQgsFev9fKPKnskaDjdS5VJ3FEEolSApBg==
X-Received: by 2002:a5d:64a6:0:b0:385:de67:229e with SMTP id ffacd0b85a97d-38dea2e0d93mr1631306f8f.11.1739393399872;
        Wed, 12 Feb 2025 12:49:59 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a056151sm30461495e9.16.2025.02.12.12.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:49:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250115211747.194191-1-krzysztof.kozlowski@linaro.org>
References: <20250115211747.194191-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: cirrus: ep7211: Align GPIO hog name with
 bindings
Message-Id: <173939339863.59416.7752699077412217408.b4-ty@linaro.org>
Date: Wed, 12 Feb 2025 21:49:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 15 Jan 2025 22:17:47 +0100, Krzysztof Kozlowski wrote:
> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
> to fix dtbs_check warning:
> 
>   ep7211-edb7211.dtb: lcden: $nodename:0: 'lcden' does not match '^.+-hog(-[0-9]+)?$'
> 
> 

Applied, thanks!

[1/1] ARM: dts: cirrus: ep7211: Align GPIO hog name with bindings
      https://git.kernel.org/krzk/linux-dt/c/3f6e319a236de93774080b163aebcaa99482358f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


