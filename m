Return-Path: <devicetree+bounces-197547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74247B09D1A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1299D1C27F94
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D29298CB1;
	Fri, 18 Jul 2025 07:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="FRZQwFmV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97FC298248
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825386; cv=none; b=PTiSi7CLXZrPFTtSHlhgzuOONkvpenxHpwVbcxz+r66eZSCl8DkeSg6mM4j0Xz4iswpLwDbN9cf6EGFIkaY1pVOh1iDBI+sAwZrqKrLDYE8M1ww6cmfLnZoA9y7G3m43Os9zKSnM4T1+3DvJ7CDlaYxOqA+pp3Lu3YOQ4Eo94Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825386; c=relaxed/simple;
	bh=zMbY/4rJXsuMEE3kFjZ7VDvrxxIISmdTxEEeas0Ou50=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=taezduc1aTJ61PmEU0ci+JPe0SM48hMHya8xaWX3hqbcVNKKoXlnYnVfk6mkQtwb4Bs8+bkrnS3yU+QmwF41WEpFoNCgho02a7OQtAWVsAp04ASG7BSZg2+EyEBnXy0jUgD1Inqb4U248r5YnauRYyH4V8qFNt0G7uyFMhNLV8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=FRZQwFmV; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4561ca74829so20134885e9.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825383; x=1753430183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XcZkxfd2U5WEwXiEp/soRoPc0T9SaK7d+mV9oirE70o=;
        b=FRZQwFmVe691nwa+Q6visFMIToDyjodGF7HCRkxnuid53bH+2dSMwdXpw4kOm90OIC
         i+qyox7U/AAng0R3dMUWKmz/IoVoAvXoCGQkUXKKMBl5nYbPttHqLCjNGy+QIfN1hucK
         mT0ljqjxvAc1mv7JcJyNCzycijiz/B/jbPgVIPbJ+MblLSsp1OdTEIqfWl7IKzlZkPbl
         GF3wtpq8xFgudBanzMcw+DdXr+nRkYpHIDMytlKzZOfXo3f74A4lq61dFyLRmqt7KQ8e
         2v/ubM7tzm855rORbMzxwhJqfnd3ycnlXobEsGdOtJD1H9JeVovyLKV6BbzN8Wob3NPF
         1NpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825383; x=1753430183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XcZkxfd2U5WEwXiEp/soRoPc0T9SaK7d+mV9oirE70o=;
        b=L4I/wEGb4GqrOLGBRe6ZCpeaaH9VIJUd5cX0d5jAo+9VIrYn5nZ61SIPKRhsuPU5G/
         V4BBpGzJD89cKxHHdqQrXm0D3oMs5l2lC7FQdnASV3cieLYueCecADTnukTGBmN5TQxP
         u3mwjw51n4MmXTC9fwZehLz3gXhadyamwr47vZ6tFQL4Yt3gUVq+IWhhRK9m0St1RY03
         KU07GN1k443RXICHz5VPuFGIR4BlAGyViD8Yho1iCLllrJVa70XGkFm/pZw8rdtZxnYe
         adAth5x3IKvi5hnjYrYJgg0b358nhMtLsYcr9aAdIq6KvK1gXZzKgJPoPzzKHhaZ7S4n
         GAPA==
X-Forwarded-Encrypted: i=1; AJvYcCXnV4x0EmKjoIryJ9KSmw/xzf3/INrS122siV3d4QJ5QzMe9vpGYqLNq1na+LbeMwNd8cZh76NaSlfI@vger.kernel.org
X-Gm-Message-State: AOJu0YxMZ6abefQPpE3NxCqZRTuoIudpDKxY36Bw3v81RXXBFAOk8rw4
	lmk5V6uk6jhisHDP2Qk3i97jffHznOHNL1Z4uLiSgkA/4o/1JPVshqIIDwTuNl6FWBo=
X-Gm-Gg: ASbGnct6UgSx/RcwNE+mzIomyYqCCKs3fQXk8HCmd1bGl1f9Sdzxe7l0uEInHN0xbvE
	VGuiFJLGvsbfEd9VA3kMf2/Xl2MA20hDhh2BxOveomxBREIqfkF+/RfhBdQtnTf2F8IzR9bBDnC
	+FqV15/AS4H6eCpMwdX1E2mBQIVltLSVl52Uh4yEghBhk1gwn9RB4Hp1svhcLTkwgOAA2jlsmf+
	AwuUBXKwUEceEuw+iqYFfL8dQLj+cQUkGvsp5TACmiHWI60/7En0ub4+OVDnWkUjEP0sTCXnUNt
	Hbu9pWhC73M9frjP/aigBJnX/J4lxA10U6+rXa5EfsfT9cu+xUaKcfQQYtyAQxVgZ3n1SttT3p7
	ue1lkr9E6zAkoO1UP7S2D
X-Google-Smtp-Source: AGHT+IH0ZVDunuPVsLmlomPhf934rkbSLTvHuM7DA2zkOmV0L8pCs/4DtRGF8zRJ5WSRJaMBva+POQ==
X-Received: by 2002:a5d:584d:0:b0:3a6:f328:22b9 with SMTP id ffacd0b85a97d-3b60e53ed43mr8051499f8f.51.1752825383271;
        Fri, 18 Jul 2025 00:56:23 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:22 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Guinot <simon.guinot@sequanux.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert lacie,netxbig-gpio-ext to DT schema
Date: Fri, 18 Jul 2025 09:55:53 +0200
Message-ID: <175282531511.45055.9031498338657756750.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202801.3010442-1-robh@kernel.org>
References: <20250714202801.3010442-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:00 -0500, Rob Herring (Arm) wrote:
> Convert the Lacie NetxBig GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert lacie,netxbig-gpio-ext to DT schema
      https://git.kernel.org/brgl/linux/c/2ae9b28947d486b7980b990cba205b1862b6d7a8

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

