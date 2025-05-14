Return-Path: <devicetree+bounces-177315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D92AB7002
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 901CA3BBB71
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD7D1FECBD;
	Wed, 14 May 2025 15:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="v+2XBkFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A5127BF83
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 15:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747236940; cv=none; b=OBql/fys69Fs+CtSW1Gdo3LkHK2rWfoWcKox8bzoE/7zGnsWBKGxKF0xTaS7pGnxZ5i71VITJ+Dce6dTP8rboxHHDSr0kivcdKQpaUIaigwBjOGl0V7UYIvFoHMtx3DRxduwIeYb/6hqZQnR3p95EfdolkGm5uR+0Y+ky1yNSDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747236940; c=relaxed/simple;
	bh=Qpk1Rjt6pLRs6ir4eWklzWDq4deQYGOodPfAPBjPzVw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nQUMtr2zZZEHmXgGvv1EH8DR7uItBtPJv5/boYEVrxsKHmqZ2z1EpGqXAi/NVdak0LOE5q6rV0KvAHof+51IgsOjRsoVSd9/mahw7Gx3anwiEzlgfC4AdRoLoMzsHkZnzAxGfVslHHjd6qv1idjyXtkZ1D6lWTDn+aDv/irJt94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=v+2XBkFt; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-442ea95f738so19094955e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1747236937; x=1747841737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=idqGRAR7bH2KEp3wZfnzOTNqKgABlKC7q7qILSds2X0=;
        b=v+2XBkFtMX0f/4CzCSm7WXVa+Fk6UOa3ohlQotpXQ5npd8yM4021ZwcVEPgUdy0qIQ
         0aMNHWD9aD99RldfmqVysC9tdcznyf2Qe/eQYI0ehdTd7yuEfzfLEqzlyffHbrN+5k+3
         ES4O5rDBg5ehAPylmsLPJpO6AcmWWB7kyvDa82KLCdoSKOschL8XrOclNTSKIDg+C4Bh
         pght4EPaUc9fJYRZ2qrv7U0Bs3OYpru7nq7nEQDe93kPVZA7pFWcuov7KdcDGjs/MKuF
         4/c+iJnMyY+Ip+h83tNfLCNM6lyK2LYBvwoEbEHEMgHCSDyu1EXC8lWLji2dUvoIxSud
         ymFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747236937; x=1747841737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=idqGRAR7bH2KEp3wZfnzOTNqKgABlKC7q7qILSds2X0=;
        b=US9E1wE4siVhZdHGHtdFoBcSqF717JqNn4e85jpURv4dWmiBTtSEYFeGcm/KKBZpXg
         dKIQ7NX47YS290zlh+mQ0UMmQZlPLL81VGvMVoptV5Hi11zMK5w8ddKPRVi1XPcmAsjX
         DHBO1t+oBl+d9kZuQBAJe1n+v1X1imjceR13vBMYVH2OWCOahnR/QQQalw6xO2+Sd2Np
         mJ1I9KEa6qffVD8BqgF9gnR3MqUXFLXO4i23hjIU0MgGoSZ48K0ry5j0BR0fjxxu0fu+
         GW+ObaqIm0sdZeHKJWRsM2xxWCD9NoaXlCvY6cSDmGZSG75aBaHruKljK1gPxIsyMUQ3
         DeiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw+d3piMlyD32PDH+fdBkI1SKrwvwRn7+hc7JOoG72W36wW1WSqkMsdRZVuEmmxQ4H8k6ateTDDbiX@vger.kernel.org
X-Gm-Message-State: AOJu0YwZcnAARFO48qZ2gfdcxFR3Rt+dFbRn1W6/6XToarymddXjWjso
	fj1tVbdB/o7nuZnG6htV6TP7T6DpgygglSGLgSC/wwSlTT4vMlAS91w4xvQrBU8=
X-Gm-Gg: ASbGncum22DOXWH9ni01UZuN034Uc9X9ehNT9AxwCvxEPr1PckAIoIWUXMyuM+gumRb
	1Fnsyx1eOgQgQ4j+Du8aM4f8sTN0K4O3bnTZk9hcoeuB5qjUAOKIRLiprH2y/zpbhNYt6bTBTeo
	2ILjgu09V7IhpOmQwdJ+82cFloy97Xy4mcARggUZFEAmeQvCEUJ/D3wfiNJcqQTJMynA+kiGe9m
	TjSlp1zI9wvqwuLkAf0mMjkoK5IlNQXzz4Vrga5iC+4HXXPCV7teduf5Z6hQEXg36vhYxK706hs
	w1L9jctgG7/vmLUEiqekp0ZqTrG7+jMzfhwKnWAc2J2iVq7Qnou05HNqxNXUBBvoYdNXeB6lBJ5
	SBN49Q8VHpEGaU3xxKTiz9DV7
X-Google-Smtp-Source: AGHT+IFCmh05El55ohgoZq5R2Nfn3DDzJB0oWIDYBJsZTkCWw75PyCCcGtGuioFQpwJTvr+52yNhgA==
X-Received: by 2002:a05:600c:4e45:b0:43c:fa3f:8e5d with SMTP id 5b1f17b1804b1-442f20b9349mr36040815e9.2.1747236937221;
        Wed, 14 May 2025 08:35:37 -0700 (PDT)
Received: from brgl-uxlite.c.hoisthospitality.com (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3951adcsm35415105e9.19.2025.05.14.08.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 08:35:36 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linux-arm-kernel@lists.infradead.org,
	Adam Ford <aford173@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	aford@beaconembedded.com,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: davinci: da850-evm: Increase fifo threshold
Date: Wed, 14 May 2025 17:35:35 +0200
Message-ID: <174723693271.14834.18146148075528464052.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250504102959.81830-1-aford173@gmail.com>
References: <20250504102959.81830-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Sun, 04 May 2025 05:29:59 -0500, Adam Ford wrote:
> When operating at low speeds, the display may throw an underflow
> error and the display itself goes blank.  Increasing the fifo-th
> value appears to correct this problem and the display can now
> operate when the system is operating at speeds as low as 100MHz.
> 
> 

Applied, thanks!

[1/1] ARM: dts: davinci: da850-evm: Increase fifo threshold
      https://git.kernel.org/brgl/linux/c/17f25c977e9eace1b066417b11d16424772a2fcc

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

