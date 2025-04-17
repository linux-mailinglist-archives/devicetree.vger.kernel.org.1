Return-Path: <devicetree+bounces-168314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A8EA921DB
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0439117691F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD01253F3D;
	Thu, 17 Apr 2025 15:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TPMBTYJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEC0253B7B
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904598; cv=none; b=S2n6KvgMm8TDoGn6GgTmeMgUOSqnxPjpXAvPVPJtSXbRLTueidzS7Bk8xikznCTvl9vZYt3hNARPZEG0RhPJWhLh1MvKlsXGAUr3Y3HZLntUuxmw0HfZe0O23HgS3d4v0cL005onFI0m+4wc0NJgJbsNRjYTeoMwY53MCdqbpd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904598; c=relaxed/simple;
	bh=3xZTPoJDnTR2ZNrT+amq61JFizgrmqJzF9AZziFoneI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=S3YIS7K4UpRChoU4lQFS32Q2cLErKxOK9Gr1Hte+usr6wm21dEbvLmyEf6mqdO6VjmlX+bw+zqfSBX2WJtAcFoPxvoIWWOyoWfkFmwNE+A622mnEqZA3W+9jB55uXfz9veXEpbUPJ65XDkm0KUXwLhuX8/K0OkPb2nZajr4WTRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TPMBTYJg; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39ee57c0b8cso965971f8f.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744904595; x=1745509395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nS+iMVPzLszyvK1ef5pz0a8ecHJhiCbYxQ8pLZG1LMM=;
        b=TPMBTYJgAjSzATlJfHgBwIVZqLa1xAqDVSpHmavzbZaNoUJwmTF0Dwt/NxXD7hV3jP
         jJI+fOCQHK3lf1YW91/SkUuxVlHfh9olXpe6vZZmqLgXEqQC5KnaN27cXTeQzRc9xrTN
         o1VIP+EddNy/6ds11ujuzpHR5f5iMsQKunqVx3g0MKAQEaXyWYSDhnm/f4yyW0seKuAg
         rk2LoLIGJF4L6DJHUBpfbPMikZ7pTWUlHJpHRG8FiMI2mKIY/t3klxN1aU+qwIGUKIsR
         LA4qh4iEdoCpThvIgkqK6FMzJHaa/8loB8BOL71AP5JA0MiTAzDkWledLBheC67YgFVY
         HNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744904595; x=1745509395;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nS+iMVPzLszyvK1ef5pz0a8ecHJhiCbYxQ8pLZG1LMM=;
        b=cyzTBDQPZfP7ygZvFNrhhfPiKDwe4qJqgESqfoZ3rC57uP959AfZKwedvr8jTCkv6U
         0EjE5d9Y/Q8qGUgyS4Gs9t/URVFXy3rRiRdyarcToVkqhBHHW2kHGUufX3X0xLXUYQv/
         RHgK3KRWtdwTq7repf0m0aia8KRvlvMqKeVt7Vrx7oWkPZplKauKotZpv5CvTfijA2WB
         5WLnK8+NwFvqKwJfHRxtGdO6JCWjEBwriJoDPk465gJi6Xq6ojXsuCOtIR/PcIhi7fOm
         MvaUkweGB6f/qf6rvctZBHOmUZuJ9Kx+6QFxicraXK5c4Al64Zq0ftNbEoMQXqkXCfqm
         PO6w==
X-Forwarded-Encrypted: i=1; AJvYcCU7I8DsAlwt6fC4LrIfs2MMiVuDpe73WY+6DQSRXJjUNKCnkOs3I5GBJC1fHrUzNiq7xOyp9b6E01y+@vger.kernel.org
X-Gm-Message-State: AOJu0YzrY8tGVuL9+JeD6SGbgbRL6xpQEEPFRcRyAP9QS6+XtKH9yQ/H
	s7s8UKWYaFXCyaNwLyVr69qUNSvdqBQgzzBFfC19byfPF/a/ZCFMb94r3WePL2Q=
X-Gm-Gg: ASbGncvI1DZI72L+464wV4apAV61W0bO/DjkOMao+gnBZO3QEi/W9BsRPFeFBhiqzjf
	VMEuda6D0TW7r7U+rvJGQkyfuzzY8+C2BadXOCw2lUv66kEXpdAu3/V/qt0pedTgBeLyWEO0EoR
	oiQCorQ9vyloNidzZZWxI0C/M5bv9dxn93dOgNEub72+C70Veu631kF9If/bL2Qt2ztkWqrP4Un
	wtS1qBBA4As6g2ex/EdQs9gRuWZ4UZEKgL8jqJ2/aC+Fa/wVkYp+JRfmNolRIqv4VnukSC3xU7K
	sitHkPLUGz1mdzCYjasS8T+lPE33efHPtKYZQR/2MXXN/dmFcNX69r0AmFVJag==
X-Google-Smtp-Source: AGHT+IGryh9t6uhy66lrT8gQ3EODPyMha/2rPVIOWr8w58yUILTFXYIOWehquSJJiWUu1ku4BKDX9w==
X-Received: by 2002:a05:6000:2505:b0:39a:c9fe:f069 with SMTP id ffacd0b85a97d-39ee5b373d3mr5516764f8f.30.1744904594884;
        Thu, 17 Apr 2025 08:43:14 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf44577dsm20773640f8f.94.2025.04.17.08.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 08:43:14 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: quic_jesszhan@quicinc.com, airlied@gmail.com, simona@ffwll.ch, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, pablo.sun@mediatek.com, 
 christophe.jaillet@wanadoo.fr
In-Reply-To: <20250414082918.30298-1-angelogioacchino.delregno@collabora.com>
References: <20250414082918.30298-1-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v4 0/3] Add driver for Himax HX8279 DriverIC panels
Message-Id: <174490459408.1152288.4538582198698733279.b4-ty@linaro.org>
Date: Thu, 17 Apr 2025 17:43:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Mon, 14 Apr 2025 10:29:15 +0200, AngeloGioacchino Del Regno wrote:
> Changes in v4:
>  - Changed hx8279_set_page() and all other utilities to void (Neil)
>  - Changed hx8279_{on,prepare,unprepare}() to return dsi_ctx.accum_err (Neil)
>  - Switched to devm_drm_panel_alloc() as suggested (Neil)
> 
> Changes in v3:
>  - Added support for setting digital gamma parameters and validity check
>  - Added support for setting analog gamma parameters
>  - Changed gout_{l,r} to a structure and added a description
>  - Fixed DSI LPM/HS setting in prepare/unprepare callbacks
>  - Remove forced panel off in probe function as that was simply
>    useless
>  - Renamed function hx8279_check_config to hx8279_check_params
>    as that is actually checking multiple parameters and not just
>    basic DDIC configuration
>  - Moved the GMUX and GOA validation to their own functions to
>    improve readability
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor-prefixes: Add Shenzhen Aoly Technology Co., Ltd.
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a1958a56e52c87aea94c5cb0c08fe61ede929e7c
[2/3] dt-bindings: display: panel: Add Himax HX8279/HX8279-D DDIC panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a424c93db7ea8ffd18c6c170501bb898abf05932
[3/3] drm: panel: Add driver for Himax HX8279 DDIC panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/38d42c261389985e8dd4739dbd97e2dc855e8dd0

-- 
Neil


