Return-Path: <devicetree+bounces-197549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E712FB09D1E
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78D191C28369
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3140429ACEA;
	Fri, 18 Jul 2025 07:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="2w5yPR0U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BAFF29993B
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825389; cv=none; b=J8PE7pNpoyJMCgLm0h2CcATBxVaH/1DkXsA8A048pVg8Swkv+7zDi3C/E1LtHwBwnXoyA1FsuIi+HkdirCzx2fkk09JJM7BiplxBNbbAlwGVFcqfKzLbDKqMC+RWC5o2yJChJ2bayCRSL/ifaSJT9KesyvkJFNzw8FYE6ap4974=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825389; c=relaxed/simple;
	bh=1fgqSf5aAC9jRJPk5Bk29Dz6jUVTr0soJ6WtJ+UinRU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ePkvTlaN+I3b73ecYbZOyYnrOeKJlCG8kfO92gWQnJ/5aYqWlEyvMfok7FMMXYYHe4V9AjiShzcXM7Y7oTrSr22DnLz+8g1Fx+gLRh8Mq+eHPU/49m//YUdZiyq3+O9fdE286ZQFukwN0Q+uvbpJVu7QjpJgctEyrgxAN52RUzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=2w5yPR0U; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a51481a598so923184f8f.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825386; x=1753430186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8KwhM/lf9Nerwdb0SADC6wgBP7Bye9fmYsylLUyZDbk=;
        b=2w5yPR0UMI8mfGGYgNQRl26/E2neRmbP/IKDoGmd0rCvqnZjJetcKi7HIz7PJjOOrF
         8HTSOoJ1c1VN2Yg2CXzkMK78LOlnjsFnvzwycn25Rlrl5UgU3SAnwAMcWceypOZkZkTk
         I1b8jyczUAiJSIH0jxEm/nGffj9Jx0JEdkaJXmjgK9RT4ISBB1XFN1rpp5aSze95Iypu
         WSDuaFzNarVcR2gvPbGz5GqoB/K1v+SmRNSGvgt6Xp0UmMB5FnCC2dFjxITOIFUTXxAA
         IN5xa21bd9kgFKrtHUpcM1IaiHihFckLiGIrs/A28gPkdBN1B4CvvcyamBtbFFgd6nDb
         NGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825386; x=1753430186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8KwhM/lf9Nerwdb0SADC6wgBP7Bye9fmYsylLUyZDbk=;
        b=ZQPvuFlwzWyqgAbwaKvmvbikVQ42ZdpmYsN0iFw0jJcBckjoyd4oAll//SzO3kPB8o
         Fe3H0MumCilkygVhEFJWtLmCM40l9RjFlNl5NEoZUBZLMz6qABhpdedge0TdvgXl2jEO
         3B827J0aQGDNkzD5SyjNAE/4EGJjxd9M9nI5p35Vtp7/Jw6fjWA41chltioao1DYppTn
         lP7Wwu75SKRc6haCdR67cM+3fB9X90AoE2FWNInWrY+0HCPMS7ZmbCkFkwcIumy6LOkK
         dcvS++k8PsDcldQ/y/e68xHDgW0+vi840XBd6CgzitotwJ+NUVQaaPk5gQ+GT7c5pGQv
         C7TA==
X-Forwarded-Encrypted: i=1; AJvYcCXaX2vp0A27nVycBuBBPochCLF/8/FY1VuHQEhjicRaScD+0e9dsHJm4zNgEFx7gQv4xZs1Ksp/RQbG@vger.kernel.org
X-Gm-Message-State: AOJu0YxNL4JduiGa9sF4XjEv6YvTh5DdD2F0/987tIVxj+cGgxBNIOpe
	eSqwiEY0CmxsFpk4H8OOZJ4Yt41RpW5BxaJQPAU5wDSiN3byZleu6fwvdds6F6lGTTdkO7+d+1f
	RirniSts=
X-Gm-Gg: ASbGncutNx7MN3IBsdKh3fLjR0OccdqR+Qo6j/W1X+yU3zRCqTuEIzDpr53hXQo58Wi
	AUJk3Ha+9uk4IPr4bIia5lvM8FdlG2TKai4JW9oPAuOm258SP6G2bxYQU0lJ97ZtBIrj0QUX8g/
	EH01P8WN+k0c4dQMc/X1f5VkBvLqJBGzqvEz8PxPH0Lc0ml7FgtY8sogmGrD5wg7EFI2Of1Noqs
	hJGtU3CQfhvb266DM/m8yfBO3NVe8NBP07CAyu7ICvk2iNU6+HOH+FhNpB4oFQa9mhRf7BG+mvj
	mnxO97cTwqPY21wE3A/FK/2vUsnDfVuv4S+jIxeT3kYRWOzow3boX1b+t4z7yn96hxUcKTIwKSK
	T1FKUyaLstn7xg0Gev0rsDWKL48DhS5c=
X-Google-Smtp-Source: AGHT+IEfvTTvP20bsmaiA9C+HGIRVnrx6tPmoJoYFi4Nc3WaHVBeqyUGFFLd1Kw4CHeO3KYUvaQJfQ==
X-Received: by 2002:a5d:5c06:0:b0:3a4:ec23:dba7 with SMTP id ffacd0b85a97d-3b60e523dd1mr7539382f8f.31.1752825385991;
        Fri, 18 Jul 2025 00:56:25 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert maxim,max3191x to DT schema
Date: Fri, 18 Jul 2025 09:55:55 +0200
Message-ID: <175282531517.45055.2981352382275082151.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202843.3011698-1-robh@kernel.org>
References: <20250714202843.3011698-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:41 -0500, Rob Herring (Arm) wrote:
> Convert the Maxim MAX3191x and similar GPIO binding to DT schema format.
> It's a straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert maxim,max3191x to DT schema
      https://git.kernel.org/brgl/linux/c/696d8332e591b11e438c4bc17528fc79255f4266

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

