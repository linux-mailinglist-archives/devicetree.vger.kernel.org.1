Return-Path: <devicetree+bounces-181622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B80AC8179
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 19:09:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F6921BA636C
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 17:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731E322DA10;
	Thu, 29 May 2025 17:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VFdgZAYy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96086209F5A
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 17:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748538546; cv=none; b=D5PtENPyLdqSvwMUDRJVPhM9Yj7xJgRHTTmhe7RJV+sze54fZq7pxsh3SBo5cOmY5NmIqKoiScBPHhOUg0aIHiWEpPuDIwy3Z54UywMx6RJhUWeF42cLf8z+Rl5prDWi0wLymeagvFBhTv4GX0CYe6UT0yhK64Ngy7HpNxXv9IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748538546; c=relaxed/simple;
	bh=bTCJh7Vs9YYA62uTf9Qa5e5R88sXF7eDOyoY3jHAfms=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SGMvuU93Qvza2IlnzCQ9LRgEv7Qxy4uDb5zflGAOS0tvu4s/NAEWRebs/ll4KcO0MKj3dsmX4Wh6/tfDx0mH4ruQ/oj/4hK9ICEHfxNp2LiZ+g2oHO6xh8xdMKE+uLtcJIhyLzm5G0ut5pBnWbh9mEMSTQFQ/t87gN1XNEtNRBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VFdgZAYy; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-742c7a52e97so969963b3a.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 10:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748538544; x=1749143344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=475QwjMvob141k8a/Wu8TwXkWBwztNaPrC5le4HhOJA=;
        b=VFdgZAYylFU8y6AQEOWhvTM2lqdrEJ1dSxQmIjOsYRUiNwT/l4hFRHjSgLOD/M2EQD
         qihBYlkgFfDhUopSR8LegVYx/BLLWuazLA4pm5JrTzEDNzOd74qG/RNDG90nuNTX0GxR
         tSMo3Ou4X01BtRE7dkKXOS93M2kNDsGGE+o7qhtz733emPXkgp6B3EppLTjmSoyYoOCo
         DxEO/zmoNWqnFUghtqoB74XYgnOhPmVEPcrNYDPr5rPlmCqAGYHDKyQ0iW+Yv31Nc+cj
         BJmzwEHpRW2np4UT6UenDeyXoe+oTvumoVJZ6zKtKzMZjJNgfEUIR5kCW1Nz/JW4ls8u
         Us2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748538544; x=1749143344;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=475QwjMvob141k8a/Wu8TwXkWBwztNaPrC5le4HhOJA=;
        b=r1+vDKP2+U5TgjC10id61dnAZ0imVpDy6fwm4jvNxFmnjZL9SGfQ6REuoFA7ihYQkF
         0ow2iVGBU6S8KiWxREKqu74su+eCVNd1n1I+BzHdyfMZLQt0qsrxokp9ybIlY2DYznNM
         BN0KfZtN1kDxoJzRjdCKLOtS0vkVyPMjUd+EKOrw1p4vwMtOXsogaGPCTdGsuBDdye+P
         hriMNi8z/RE4Y66rHYp1ILHg4Rw+HJEyuycCJj3mRt6d86p7g85GFIHndRTO72DV/yjF
         1Y81jvX0zTbAwtRRlj7Ct9eZ6blvPzWvZjAfn3ya7DYYIzJo6UZN0GiA7TexjCRVEW/J
         Fggg==
X-Forwarded-Encrypted: i=1; AJvYcCVcH/IKRYy6/yD5MLg/S8XI+4jlnPuw3XxWXKU72/fUcfa8TR/RmKNlZ8QlsH+Im3IYMu+OU04OAEXN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk5VfCbjvwr8ygtI3Jl6Se9Ho6P7ixwCnykfNuSk6fvf15fEwZ
	hOnmUT+XhxZ1aJ+vUxeQS7v/yJGfUIdFrG3L2TUotcxM+gxSmPLfHIDBWT1YgtJL3d0=
X-Gm-Gg: ASbGnctvt9QLdj2BD0BpVp1Ube+LKd7XJOyGTFuHatqkEyVmwfwJyDZbewr2Zv6aZA7
	J1YpWFGdO6T1EUq+7cRg+BFLN8c/r+Du/+5Er7m0eTkKSOchzVkVXJbTBsvY8iWkL+UzY24waz/
	D1Qqjt8gZ86wrcm50yTKUMpqkK96BIUnbEob9x2+W2xu7ZbyJP6DlCqTdpucaEUuwinvlRIFSBD
	pqOgNvVzckWwQQhkoH4zOL1bSGmp/dpfeEV9kzPinUnZNmL6rfP8blfldHgFyAi/wtDwmQeKpxe
	nF3XhH/FEoJ9g2vI9NiFBQQM/MSiXMEL47GspLbX8y7uk8Bbjg==
X-Google-Smtp-Source: AGHT+IFsZkN4U8eseSF5210Vs36avHRe1Pd57NJYh8mHeC8iyOPf69SAlhCzh6rpbhZ6zB7HSxl2pA==
X-Received: by 2002:a05:6a00:4fc3:b0:740:6f86:a0e6 with SMTP id d2e1a72fcca58-747bd96da33mr304060b3a.6.1748538543680;
        Thu, 29 May 2025 10:09:03 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affb01d3sm1559252b3a.113.2025.05.29.10.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 10:09:03 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Mark Jackson <mpfj@newflow.co.uk>, Tony Lindgren <tony@atomide.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250514125158.56285-2-krzysztof.kozlowski@linaro.org>
References: <20250514125158.56285-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: omap: am335x: Use non-deprecated rts-gpios
Message-Id: <174853854269.3631742.2539937093987304095.b4-ty@baylibre.com>
Date: Thu, 29 May 2025 10:09:02 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Wed, 14 May 2025 14:51:59 +0200, Krzysztof Kozlowski wrote:
> The 'rts-gpio' (without trailing 's') is deprecated in favor of
> 'rts-gpios'.  Kernel supports both variants, so switch the DTS to
> preferred one.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: am335x: Use non-deprecated rts-gpios
      commit: 30b3788330e351f0f16d484f0e7b9b816506e444

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


