Return-Path: <devicetree+bounces-40843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5027B851804
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B3A0282D54
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFCB3C092;
	Mon, 12 Feb 2024 15:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kD5P88OS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0F13C486
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707751965; cv=none; b=Vn3b/a5VYXdeiEvmwG3zw+3SnJn4p2kCIHKUO2Ua+2Mfdk1ViFgBS6+qxJTnnWY3QNyhChnjSBTIFcMqHaEpmOy/OgvLMmIl9FgQkSo7SniAZpV9obU8rLltD+Us26wWbwN99qXZa+885nRj8LIr9rmiOpkdBiY0wv83YZbXyEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707751965; c=relaxed/simple;
	bh=pHpBUQBiYJkeMr8B0EKWoySKBP9xf9v/7A25nl20xoc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Wl8zNEwXZ47QChZzy0e4fQJz+7cqPV3OG/ISgQlllSl34IfBKAkC31RCTv66+eQ8TW9oopp54WQW9t/GdWx1NHxdp5aRIWZnV2kaSWcfHZ2LGb3h4WifIedi9dllxnZep1Cq6P37RY9P5ojybwgpkhWK9dCysVClFwDsLSwjoEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kD5P88OS; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-410cb93185dso9023945e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707751962; x=1708356762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvop4pMui8mqAliOJ3yvJXH1CH0TiqTTiohThJfeSe0=;
        b=kD5P88OSGQ8DxQxK5dPZabNodaPxeYsDYY7GMZ+quV2WRD5yk9BS9YCfoxJWKF8KJf
         SRrJ+1bKeXIO1lSQSbuxmDvQn96CuQQsYN7ozwS4eR5DZzJN/Rt8JrRfeEPR+ZwvRAez
         ZGzGtinfpncmn/ZOZdlEu9WZ8aMWfSNwDnJHOX63zjrYdBsTJ33lpguLfKk/kzX3mP6C
         fqJRIj1rClJup/ikAfTs+zFKiYry6rfK1HWXpBju0kRCxZq4arbIXxDN6O0nS5cwyEm9
         F4koJm7lki8nwqIMUKETnfhjXROOgehyKtoiU/6z/RXQsN3uQDQHtbuJ0Zz+1KMo3RZr
         2/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707751962; x=1708356762;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vvop4pMui8mqAliOJ3yvJXH1CH0TiqTTiohThJfeSe0=;
        b=dObtP/F0kJWc2qyl+X4uCunzceSn3QyfAHtUtjYrunsMDFi98zvqDO/q/n7HhqtxXF
         A0sRzssQrV+qIM1g4w0GnSfc/WGbFZLi+M33UduP/oao9PLrtlP/Mqh/ut4eIms6mkRD
         L9ObU/LXLYkAixTPNrNByGSYgPjW70QqhtdYNjHKkUu9LWvMCtRGV2Yd2HvranJ9IABU
         nlkBPz/OiO042+9UYM5QyRYV8JPC+1pqSP0EwUoEZ/34m3ct+ka+duTR+PIz5Vpk7shX
         ggMUCupavaFOf2wZ1zom1QAO48OlVeWA7q7d60ev65R2iq8+CfcPAV2jmxhmmsgsmcBt
         8Mrw==
X-Gm-Message-State: AOJu0YyA6+AtHFUm850lD8j5xb2pG0w9FC1WR5kEFF6PA2irEY2+8jMM
	ErI0C3ZuqB6vx9jIcTp4S8rSx5QoeRQrTIzzqWMv2NtpqraREd/O53COdwDHZJ8=
X-Google-Smtp-Source: AGHT+IGeS2Wkl/2cobdGcerfZUjxSrwUZsOQN1QKqxNnl5LdYONItDe8T9WktqZ8CnNPSCqtOfIBoA==
X-Received: by 2002:a7b:c445:0:b0:410:5876:63bf with SMTP id l5-20020a7bc445000000b00410587663bfmr6320736wmi.17.1707751962223;
        Mon, 12 Feb 2024 07:32:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXS4YOEYpxlkmyzq11XWVQcX/YHU2gp53cNvmaqCogDxX26i9xR0t8HIiM1zCLBNKFwyIZn2pXa4UGK1J95GArVdW7dzpWtzDORo9Kn3/6DTfTJM9KRza+kBqsUzal0bH7FxaWn4CNjAaQFVN6jzGiZYsEKK2dVGkEOw2/d9jDuJLx+24eIfaJLtaxH1s8yfgtd+9qfTedPM7Z/SDVKKCGTAP6Wt4ECVIi8eI2vQ1Nfk6gAV293oXU2pJKcPyKPN9zJvS9LHI+KIyCYfdK0odLqdTDeHnV9weeroEZVL+AvP5K4snius9h9QI2ik0xdHep9pFl1iLHbMa3n5K2roj8yD2LzrjhlUpK6ZpV92pTOSmawVoYy68uP
Received: from [127.0.1.1] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b00410a843b57dsm5819675wmq.43.2024.02.12.07.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 07:32:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Jonathan Corbet <corbet@lwn.net>, 
 Christoph Winklhofer <cj.winklhofer@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-doc@vger.kernel.org
In-Reply-To: <20240209-w1-uart-v6-1-3e753c149196@gmail.com>
References: <20240209-w1-uart-v6-0-3e753c149196@gmail.com>
 <20240209-w1-uart-v6-1-3e753c149196@gmail.com>
Subject: Re: (subset) [PATCH v6 1/3] dt-bindings: serial: allow onewire as
 child node
Message-Id: <170775196067.98164.490648020384048068.b4-ty@linaro.org>
Date: Mon, 12 Feb 2024 16:32:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 09 Feb 2024 07:22:37 +0100, Christoph Winklhofer wrote:
> The UART 1-Wire bus utilizes the Serial Device Bus to create the 1-wire
> timing patterns.
> 
> 

Applied, thanks!

[1/3] dt-bindings: serial: allow onewire as child node
      https://git.kernel.org/krzk/linux-w1/c/49ffcc9fef9da800b32639f57388685347f3aead

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


