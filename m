Return-Path: <devicetree+bounces-197545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC48B09D1C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:57:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C12FC3AAF02
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB78F296152;
	Fri, 18 Jul 2025 07:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="hTzADhy9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290D4295522
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825383; cv=none; b=VKo81rYnd45UBKjg4OENdzRC8w50rDavy85xW7lfIg3SoqQsf8Mjv9IUljE6CjTYZz+05eWApjC+fzaBV4g1VKP07Zzi4W8xPLPbTS0uOP7wKal2hU/FMtsK+ia4qW0jwabAeQf/FlFo6/do+i10/l7pYUYFgpEvlLZ/SDN385w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825383; c=relaxed/simple;
	bh=M0ivYTHfNKMo5EKL/SFE42AtTBisBwLKEVjUSgR3mjk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Olaa0NY7iVH0RO6J568BMIEtiHfYrCjqaGTruJ5gcQ4ubapRlr1eR4aLHorcsDCx+pL+Qud+lrNLiO3rccVsfoQfsLYWAe+J5XTUpFOYRvrDLAft0YBoCNPpqve3rl016zBTJMOy0ugpnEOtE0eAG4h3U7o+y4nnatbofgTIv9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=hTzADhy9; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a4f72cba73so1765069f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825380; x=1753430180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tByAdvGoVRcpXNZHqrPSEsDcA71Dy51Yrer9MDVzBaI=;
        b=hTzADhy9s6EGmpxJcZGUhRjMNky8lYdjWma30KfFYsuANhmtffi4CDbA0pUnU7ASqN
         LFGq0SP6zV/mWEvvVv5vmb4lruqxqtYi8qgd40UdwY5AQyppSzknh/JSIoRsz0gjBO7f
         W1/ukRPdSSTqB95prUpnTXN1xdNiMrVBZnG4jVfSxrPedj+ZzBVweTd9AHr7v2yrCtRh
         yE8uMVwqNpojQQp6k+3SX/zDZuUNvNhNZFKxLwRt9vYwxwmjEdi4m7Gze3uj+uBQ+Da/
         9cVyOwKeDEhb5oyHIIXfMiCjjoXtO4TR/jrs85as2GFQG77D7HFvIVjTA3u3J0Ap6mU2
         4IjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825380; x=1753430180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tByAdvGoVRcpXNZHqrPSEsDcA71Dy51Yrer9MDVzBaI=;
        b=ChGOsM7L7JZ54mpyMkoGg9YdadLNsMvLLGZ0vutHgvNGhAxVUcA6cJAkbzhIjUXC+L
         KbcrCg2TZknEPirqbdR2ZnUSlsT0qddL6QnLdqKmJICWILHQ8/E/IDTv8WTnSPjwd+vU
         kRZDzFc5UQlnvHnJniz1+EpnPxIWyWVicLsIpVs/DQu1XKORK4UIpF5L6JtAfUaya4Lj
         6PeuVQHkHl5q8X2wDaFkDK/yWNWYtFja5dP953d2zfaGXK25jZ6tSxIeYXVnS00FH29s
         JJnds9lU5afJ1u5GNKICTcFzH0gJN0na9yv2C8Qc12jiMhV2pGWmY+fAjHljrQEHJ+Wr
         epfQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6xsGp7yDXXnk5k6j6TSny9LYyMveXFliZvB0PfRrZM0VztqvL2Qv4iMSX3FouQQqGuKQ4+xDQpbTp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8nUG707NbiD3ZillmAT/LSx4npLFhl7IY6W13968HvCdQ9KH4
	puc7A6+0QHv+/Q0kq3j9haVN245C02Ct5Z7ngqviS2XVZf3QZUEeBmQKGuqNRuAlZQ0=
X-Gm-Gg: ASbGncvrkGFf6RsEILDVEtmo8DfNWhv/twdgcMPbsn6jOa9ZjRX3fk9ofQxT4DZ5tjR
	eMuNu9eGvcTn2F9E3Lx0960lPEHfj6iRLwMqpeVbqgIAWlNlYTcd/FJPY+rPhM2D+N/t1zz9UVa
	eMFw85y0c+CPGYvw3CxmzUBlP/s3Zkg4Wg6hsz3/sH4eFpVuz0M1OWum2klNd09bTO31v01VAEX
	eAHAeTffhlZoIuLed5mm0WnBz8Wddlu/C6t6sMJ7jDFdlDO2nvk4bLMOoBGIla1HUwmntBEi7cy
	zFBitLGLIx/vcDXIpaj0H8KjC9C+/T4Ja4+D+xR3leRgq5x0ZjYtyELIhIp+mg0iAReXOhSEqjQ
	8WWsGer+SEigmGRe6B0Fy
X-Google-Smtp-Source: AGHT+IHlZME18JirURUd/kTyb/Qu/NZmdGhMoYIX8OZrVO5iv6nKOsk+fhyrnNFUzOH3CNN82sVzcg==
X-Received: by 2002:a05:6000:20c8:b0:3b5:f6f9:e803 with SMTP id ffacd0b85a97d-3b619cc1674mr1424473f8f.14.1752825380532;
        Fri, 18 Jul 2025 00:56:20 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:19 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Shiyan <shc_work@mail.ru>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert cirrus,clps711x-mctrl-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:51 +0200
Message-ID: <175282531512.45055.11982677771672772897.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202919.3012764-1-robh@kernel.org>
References: <20250714202919.3012764-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:29:17 -0500, Rob Herring (Arm) wrote:
> Convert the cirrus,clps711x-mctrl-gpio binding to DT schema format.
> Add the missing "gpio,syscon-dev" phandle property.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert cirrus,clps711x-mctrl-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/7aee14a170a07bf6481f65e6a36a835e6414917e

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

