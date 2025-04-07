Return-Path: <devicetree+bounces-163704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3635CA7DD00
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 14:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5C5D3AC9BA
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 12:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2B5124337D;
	Mon,  7 Apr 2025 12:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="TOZJpPZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6E32343C0
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 12:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744027332; cv=none; b=j2GfoZvJgTnrKHlUGNCtTEtxfDB3cSospBK4iNeiVyiIhsXizrbyRBk55eboQs00d3nadIEASB2n5kvy7QbmE1FtfIWkzDOyMezV3lx/xsc6dmW8Ent0jYayqoH+2LT8haMYmBJqqBo6h9SnI+4qQU/4rBSTuK54+EPpbWYWcIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744027332; c=relaxed/simple;
	bh=++rBUctgo7WqhcGy75JwrymHZEqQIqCCai4AuvewSxI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DrZGUdkG+rZ4gl6Nb/DYSdiiHvmDmLtkB78UlcbrBAVO84vkBucmQfzXNWbEeeSwlfNhvx91Vh7l2uNadhXslm3dV88sNswbP7H833NpEhTC/5FQLnOn/Sa27JE0DXAixRvfyE2G/5oBIkVVg7dyohqPp7hCV08ycBl5OXFJruU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=TOZJpPZ/; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39c1ee0fd43so3589691f8f.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 05:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1744027328; x=1744632128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1pnqaorkLrZEV4we2FcGB2lZ+lYdMYMSEtj/n+/qjUU=;
        b=TOZJpPZ/V+tKdKYgAUy8fLQNl9nNG5fzYXL2EK2oyNZHSufY2tlJBlEevjxKm10cfw
         RucL3DxI21acif7DuKu08UusDS/HVgpMEeT4a1IyOq71m5nZAd/61/TVzUQGmSMy7N8u
         FwU4N94D4wjQTu8cW3sxivJYEBRZH2EM3ZtFjdGFdkmlW0/I6EIxOKtBU72Nky1HCNlS
         Bkcpp84uz5Y1m0qsYaZW7fm4LS65qOWz8ULx6qU618j61NIluGAmKIk5M0eRArXZRlkg
         IKJcr3C1wiQ33PrgtdhTyFF8xtgBZrArOn2ZQB2nF033iulm5QYT50E2TVvheznkTM2z
         IUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744027328; x=1744632128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1pnqaorkLrZEV4we2FcGB2lZ+lYdMYMSEtj/n+/qjUU=;
        b=W5quLulD6z/77EkzqBJVd/KxNxHUFcvRIyGtU+Qh8zYK0wErddyZun0X2C0W5hEKeo
         9snvV68m2c/Evy9RBoAi/4dWUlKf5HtgOys+CXy6oM2t70WFK8i9QNhrNrs2WwuO5mao
         H8ngL/I/j+ka8+GhBt0hltRTR7unX/1SuBsegBTqtKZc6PBXkRvs7I5As17Rt3o1vKKH
         5pJEaWtxXeW3NUXQth5YrnP2VhUoLV31TFWECsyRrFCH2a7SPE2ip20BZ5GnUqhPhOfB
         9sNUOwinX/tlGg9/CDA/JuY6YJyH+SGsA77Nf9Q3FnoKd5V5kc4Ajkhsk8cQzMbTAvLn
         uNcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLFgL+F/cXmQ5mJuZTpoYZYhaoVuLOYpeJCeBvW/0ihibyWikK1NdissD5CpTi/WW/5WTVrmDzmNBd@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrd0P4lPqIg+Jt+a47Ev8/XuHVLQWL0OEGjd0wcBR1kQFPqe49
	Pvz/7iQwepM12nB8ngKp969iM6/fOy5ul2cM6KKBTdplXR6+YY9VVWHP9pRONP0=
X-Gm-Gg: ASbGncsizQDitbZg4MmD0FsgQm6cN0Qky9zrXhLEC2bcojkSSuRafJYhPuFcmc13k3n
	tDrPyH3tozrXR6ZtIAjrFg/xAduSixJYeNiYLWDV/ZxID2Vs2WmnErWQfniWB2S/wT2a5NiLUBR
	10pLg7U57kt5lGS83D6ibQMJ/6rcgSFGV75JXXbktDxQkJ+e6fDxHM6mineHvknYRFR2TKT3myP
	pSHIGj/sPGX6qY3B6XQr5tLvacLznXXgFwMHXzkG2TBmcu7gFYsifwQsqWLX5k0KWFXd1QWzh72
	npGZXxGlIoNJWHHBgA3ZyFSHzeROWi9IxAZDoSVdpUv4
X-Google-Smtp-Source: AGHT+IHQzfBlcrdH5SeBUOUhvSnbXFRgYmEUvgyqEtRbmlRwoKeao0pvP22bOvClSu4BfKDmGCcmaw==
X-Received: by 2002:a05:6000:1788:b0:38d:d666:5457 with SMTP id ffacd0b85a97d-39cba982600mr9594792f8f.42.1744027328186;
        Mon, 07 Apr 2025 05:02:08 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:8c64:734d:705a:39a7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301a6796sm12061650f8f.31.2025.04.07.05.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 05:02:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	James Cowgill <james.cowgill@blaize.com>,
	Matt Redfearn <matthew.redfearn@blaize.com>,
	Neil Jones <neil.jones@blaize.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] Add support for Blaize BLZP1600 GPIO driver
Date: Mon,  7 Apr 2025 14:02:05 +0200
Message-ID: <174402729978.46356.11201188338288043335.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250327-kernel-upstreaming-add_gpio_support-v2-0-bbe51f8d66da@blaize.com>
References: <20250327-kernel-upstreaming-add_gpio_support-v2-0-bbe51f8d66da@blaize.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 27 Mar 2025 11:27:03 +0000, Nikolaos Pasaloukos wrote:
> This patchset adds a GPIO driver for the VeriSilicon APB v0.2
> hardware. This controller is used in the Blaize BLZP1600
> SoC for its GPIO interface. It is essential for upstream
> support since it is used to provide signals for the
> Ethernet, USB, SD and many other interfaces.
> 
> Adds the GPIO interface to the Blaize BLZP1600 SoC devicetree.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: Document Blaize BLZP1600 GPIO driver
      https://git.kernel.org/brgl/linux/c/5de6156a402b2d2432767478fe75c40f9755232f
[2/3] gpio: Enable Blaize BLZP1600 GPIO support
      https://git.kernel.org/brgl/linux/c/52eafd817651d44ab006c83ebd98f5dd687df2d3

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

