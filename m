Return-Path: <devicetree+bounces-153755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DB3A4DB1F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F32987A986D
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10243202C40;
	Tue,  4 Mar 2025 10:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="lXUofKZw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4035A202C2F
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084801; cv=none; b=GA3I2RCiedLKxnTgCSMQnFnboKqLMfdPmyPBw7UAVyUSVs944hxja7Oc5ItQQmR6j5lJuMqj6T0BH7U2KpX7b0ZMwrby7Uk+uwXOyZolkxngShAJ6sTC2m9Zv/tvFCMCCOU0J2R8KksODS5Lgljzq89QFfjfSk5AHhvhvj03UGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084801; c=relaxed/simple;
	bh=nzgcasT8XlfuMCUiPfV4W/V1AJ9l8OcLLCDvCjZ+wh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QxfqnxAs/l81bHfN6FeTP3qYb26qkcmSg73YwDWaEw++Yq8ul0ks7WLN12F16G7V0Z1ALFifAEuMAwdGZ3VRDoAYZbxINXVACkip5QT18AIkTnxAMuWX0JBr2HRBNQkDsasWbeiUZZXhc/1fEzIQPgubKRiIdkp2eQ7MAcVdvUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=lXUofKZw; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43bc0b8520cso12900735e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741084798; x=1741689598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I4NRBkDX3tmF4bL4mAlAFQOe0WTBDnxQ2hATnqOky0M=;
        b=lXUofKZwkeg5fvE/WuQp2lxCVJSFmUWajPm+wtvu+oMFDi0Y15yee0mX3AZNSTBkRD
         Djr8pva31HiMPD7CHIP4r2gRjj7t8UY+/Q6gHZab5NjFZm9WWkdlJLDRgQlWo+EwgoSh
         NrKNVeB3ifTsGZ32kv3wWJPfWQO1seOwiD4+E7y5nYGRqZ/IkCccg0y7Bq36LTwj9x/K
         3ayaxs8JJXRmqaceCRa3K8aS7EljOB2kVef+RHXsxB4wHzQtgHznZGCiQosVetVhHw3p
         dpIbKcN7Efob2ZtLvwLmfx5G++/OozelcfHcLLSB3KsqhGVhRyTdzSngyJ9tH3tZLkpI
         eQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084798; x=1741689598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I4NRBkDX3tmF4bL4mAlAFQOe0WTBDnxQ2hATnqOky0M=;
        b=Op+nSvGMYA63toTb0okJsYQqXk3nMHIJkdeYG6IyJJgkOZsqeYq5EKIwB57ut5wwLt
         B6AkK844vqYHCex8Hvvkchh0LiL69cy+fpBcotUr2s74LnCBfpDDtFXPcw5vEHTu9won
         aQhMCDTcjxiRIxLV3+7UNRZHYwzjOcBl0Xszw03fuYm+yuTqx0DXk5GVn7euEV8vkLDz
         PeV/vx+kqSTuZpu8b15F+8Dz+LRqQkOxHRE4PZrmkU/gp1/xYwYbVoTtoE/138NsjA2B
         rOrCgklrxTf+Bz4hCZd/ZxyhCKd//MZhnOxm3yDv8BQBLFOyZHTgVMbKLo6aNe3fPjE6
         BP/w==
X-Forwarded-Encrypted: i=1; AJvYcCUGoqLNc0M6Z3srPVEnWL+sZqVYz+VyItk53CV7JVVC/OlBqTJID3nykTnEsJScLjXPQNCRivbjnwFj@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ/ibORfYGMfSga2kbvTTbCWjDYfi1CMeruPTGs2RlYLBxqVDJ
	kXXtgi7+RDgRBwjOAzENWgKDQK8pL+7JiKBthrxcTdGxSeZJkvXi0lvyJSL2vgc=
X-Gm-Gg: ASbGncuMv8xAwtBMv+5Zz/HCv9JGUTVq1AqAP9h75KK2B9Hc2CAYDGNXGVVKkm9AKzY
	UOOcGU8bW5EU8CYHWYC/r176MIg9EvfrBRDqsfU/Ru+/vC2Ts1QO/O3jAUg2QaNaeuhMXDGO1xc
	nZ3W4UwpnFSt4i1GMoKJzg/hZIYPnarvdUEkU8TsGTI7iapAnLYdtOQCVcUFaeDFFja29TxhNog
	V08H3hQGGoSug8HDOljIabRnOJgynsGSiU2S8L7edtqr0ElzYirKVRX1OfKm5XL9cx2ZsLjNdtp
	PMjn2ngskS3Ja5mbrJiBYXpJsnMxuiMmvznww1lRqUHp
X-Google-Smtp-Source: AGHT+IGI5YinM0Fmil/KbrQRp+7dyNZtKk6Cw3iHPUYwQZ6EfkAXgPjAmvyLHMyqzvMus9tjQNoGAw==
X-Received: by 2002:a05:6000:2805:b0:390:fb37:1ca with SMTP id ffacd0b85a97d-390fb3705aamr7047086f8f.53.1741084798504;
        Tue, 04 Mar 2025 02:39:58 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:6018:7257:350d:e85e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e484451fsm17602859f8f.63.2025.03.04.02.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:39:58 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-pwm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: mvebu: Add missing 'gpio-ranges' property and hog nodes
Date: Tue,  4 Mar 2025 11:39:56 +0100
Message-ID: <174108479375.31979.16946190179335788449.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250227175132.3734524-1-robh@kernel.org>
References: <20250227175132.3734524-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 27 Feb 2025 11:51:32 -0600, Rob Herring (Arm) wrote:
> The Marvell mvebu binding users already use 'gpio-ranges' and have hog
> nodes, so add them to the binding.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: mvebu: Add missing 'gpio-ranges' property and hog nodes
      commit: f2f3d5d62f6fbdaef46d1991086265a497b3e24f

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

