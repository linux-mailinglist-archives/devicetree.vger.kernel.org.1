Return-Path: <devicetree+bounces-184087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50BAD2FA7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1CDD3AFBA2
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B14E2820D4;
	Tue, 10 Jun 2025 08:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VSTJ3ZQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D86283124
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543132; cv=none; b=bljnGNnkry0KM0MBcJ6eRLbZU01fqKpWgvXtqi+tctMhQZojkkDAsWiHT+iI8L0PpAcXh0PshMAqJG1kqlnBiuP5GegUl6IV/rrMxeqwkJBiEh0lhEZFaCdnSffCKWRAXPzheZK49Vf0B8yo9G+XZ6nBg9WJ6FFaOVgX0JhHBwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543132; c=relaxed/simple;
	bh=oJYRsQDIZIFS1gyuxKSeATK987ZVV/SuTaXBG/5waxc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vw1UGtm5yDpgcpeLifroXR+fmexlDNWa7Lsr/rm+klWHgwijiIaPkAOpvlEUTzmNwUoPLmnahYBHSpF54bT8eC/B3D+9XDmsmRv7dBjsOJC40vaq50a5FfAaKF3yFt7xFfK6CiXUWXCIu0quOSEPFjb+mmGvfCT/rKb9drIFIys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=VSTJ3ZQb; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a5257748e1so3437990f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1749543128; x=1750147928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AQOikj5+hOjYofyjQTxrgd5Ve5lIEwTQk5A2jm1d/4w=;
        b=VSTJ3ZQbLKJ73vDbsJTxvlGnM+HqfKpGH/byEpyxS+kwzYNjznr83uVz//Gf1Low3v
         DGZmfprQp6kN/SRATd/Y1UwanZrBqX/dppygYNtAUIa6QifJG65z4k19NbyIH14x4GLK
         J/kVAHKF/wm+9S9yp8+R6L6G1MYklbKtZB5SfV+IBDSFcLkom/cpPDgm+bOwvOLfTDYz
         F6oxtwp4tC7Ip7GH6dUejzYZb2QO3zRiovCt0YzbZu3akdee95l95rpj2IQU89hcSGOB
         LUit1EHgTVi+ChscFqOxeKGSLlkFmLxE57jILytCM0eHvxDWGbzno7jdMQQ7+l74P8R8
         /fog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543128; x=1750147928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AQOikj5+hOjYofyjQTxrgd5Ve5lIEwTQk5A2jm1d/4w=;
        b=sK+eN8TR6HrVW5k1qZxfPlDSFZ74B23yAXeGnUMgSxYrevkIGsfmbRJ3tJQVilBEeu
         FsLXKfIKvfR0rxIPlNfCJKLUrGSVkNnqqZDMyjULtU/P+YGtuPF88x2mb7tSpUhZkWFu
         vYb0PN7O3N7Yzr/+XRhLm1+bVAcHkcvP/628HVr9ACxUeumf6T+HzQdJ9JHLefTOZush
         O00Ss1FmiQf1bbRE162eMKkaxBKR2pqo4VxUohBbNpbWviBC8a5mt+iQbUZHlkkiAc7o
         sNFz1RjJYvP8SAzKyI06MykMCMBXEgTv45BBATHQ88gL0UrD8Gyh/whQA3YNy2HxHd6B
         cMnw==
X-Forwarded-Encrypted: i=1; AJvYcCX7fTqbMbm2dDwaZpD85VlauUvkYsVvmciHsOgIGeX/h3lzFhLAEdEyYvmFU6fNDUs4TQdmaK2WMkoR@vger.kernel.org
X-Gm-Message-State: AOJu0YxiF7ADve56a1UQ5PIbo6Qm8EeIdhUH4Vq1D4kbDtnvG+pbF2mb
	Nfj8/B3Jes73G+nIXpY7B5n5Ee/B2+lt3lQv1ACFcTuK0DsN5XHTxl+hvcshR8Qefr0=
X-Gm-Gg: ASbGnctZG5MMB9HrYoBkBKtdd3rU35ekfJ840Uy35gnWM7gNJgu0Q1IAEzSF+jCef6Y
	Xp/E+JviG9qT5BixoJvVZAbHW47+Zmf39yGPlN5o1uMFckV2EJf3F+94CBhiw37MfuO0cm/PqA0
	5LEoku9I/dpY2qE+Eq8YDwfyhYFvykU1M98VG10GhM8PyO2nwwCuJcyx0qWSeKiOglxCaDmlqYl
	twZCUSGp2FcbFuaCt2JQs3T0VUdBLijyk+H5hu4vtB/mg8AkW0L+LJtSbePkSRRgdqpFZ9umRT9
	ZHrPF1EdnNV4mypeY8H3G4LK7naEeKGhrAjtvs+1HMBIJTBFSF+kqtWMrtVA
X-Google-Smtp-Source: AGHT+IHeh5JOUa/6DesJDFgxEXglaZaNBYUlWKW1tsF1e+6vqxndSIUGrZ0XXtHALOHyX4qbc6zicA==
X-Received: by 2002:a5d:64c6:0:b0:3a4:ec23:dba7 with SMTP id ffacd0b85a97d-3a531886727mr13057182f8f.31.1749543128214;
        Tue, 10 Jun 2025 01:12:08 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:4d:e52b:812d:eb7c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-452730b9b3esm130838565e9.25.2025.06.10.01.12.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:12:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH v3 1/1] dt-bindings: gpio: convert gpio-74xx-mmio.txt to yaml format
Date: Tue, 10 Jun 2025 10:11:55 +0200
Message-ID: <174954311123.28634.14290388105456519016.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250604144631.1141430-1-Frank.Li@nxp.com>
References: <20250604144631.1141430-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Wed, 04 Jun 2025 10:46:30 -0400, Frank Li wrote:
> Convert gpio-74xx-mmio.txt to yaml format.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: convert gpio-74xx-mmio.txt to yaml format
      https://git.kernel.org/brgl/linux/c/0e3b7b8759a7f3597e64fc12a8a017111edbf777

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

