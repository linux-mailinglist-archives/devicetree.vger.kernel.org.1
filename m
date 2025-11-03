Return-Path: <devicetree+bounces-234306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7250CC2B230
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 11:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EB7B3B7254
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 10:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6E82FF165;
	Mon,  3 Nov 2025 10:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Vf+Kbiye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E63D2FABF8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 10:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762166924; cv=none; b=RhKDXJVlcj9tXRfhUr2i5/nWfY0yVVGOZFaAKCi9KvULbTjHjevBKfaH9YM0i2aQv2H8EiI3yQo5qY5dkx/fg3cCa/UJKfUNwhy3GxJtonhC225iCFzdRrOhpn/n6FgT2fa01ryfOhWqZN5yVOep5JnaavbZcQdImbr6uTCdcv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762166924; c=relaxed/simple;
	bh=Q0axP7ETcYnEup2g4QMYHRxFWs2wS5e4vu/YmLWZIJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nUd7Us7WDpDEGagutOkStjdIfUm8Rn9THXBk+Q5S0t0Q7Z8peFYKyZc7wkQrVnXWuOIOh6GTNISQQcUwdc2J/ooQzLYy9cjo32lN7wZ2qHEWY8e966obx8kGAxwnCGI8BNTjH/QOl3btjPwaY5oEh3AdUF2SHYr+OMka4xbOJEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Vf+Kbiye; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4283be7df63so2225842f8f.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 02:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762166921; x=1762771721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7gm5UI0a8gJneLZRiznMNXx7ABUbqRL4XwkxE1PuudI=;
        b=Vf+KbiyeCpgXPyW58fP0TOBoezVi1nstP2GPKqQ9XZrd2hc0Xkfi9dtwcaEzo1EHvB
         1Si3Cw6g9JeQt+Wk0qNneD2srzPWg5jH2PQLzaPmn8Vs8R3TJeevqWGfAiISlGFWLb0Z
         mcaffyPkkXphpYUn6dkYsfm9e2gaFugTvNAUzWpxPxWYK7BLCDehGAWHgke29YGIuZvA
         po8fD8EApYaZ92Q9gJEXEnOQHLfR2z9RRgVVf+qrzsngJun8woiKuhjW3mgRMp3emq5j
         cPYPu4D9K5uqPhPjadHRdb4wgxZuiOZ2RewEolAO53vdxA2Xvb0LbtcIv24owSrsGQkb
         PBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762166921; x=1762771721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gm5UI0a8gJneLZRiznMNXx7ABUbqRL4XwkxE1PuudI=;
        b=oukBj6XTkwuH61RQec0ka3eEXNx3m8xsbFc9bkNTC3YLmqiIUSmEAJu/gBdSe02kxU
         2Ae4UR/fn4bwnMgwF2cnizBoIOaTbgNjdAqdi9sxtFH0MkjfDj08u/aTaspPBLkZv0ZW
         JMgZQ8d+mbJWtaG9YSNNTJGd4WdPtqLYhdMvqOXhu4nAzGRp2R9xsBg8ClmiGR1+WynS
         bWCAedKph0gUJK0LzQ10HquwKxkbqsHXeBrGs5KPPHSAlX0dwVdy2gKT/gz2NRYrgbBO
         B3uQAcH1lBR2N/fRSa6nXabLWuFTkdOiRA6zkaCB5nPtAvDWlLXsg87r0WlZHCYZQSWq
         2NoQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1Wm2dwmAvl1sqPbylMzWtGR1lMQ+rKNB7dOF8kS9xdXKvo5kzhKQxm2xwef1z+0BGprc7FSRcDugs@vger.kernel.org
X-Gm-Message-State: AOJu0YwCXrtZ97G0GK4tZ+vX9m76jy2mbwZ5LE28UbBRI2nq+UlWovw5
	qJnAB1hLg0gsF9Q4kEqMzwdafLKPTFw60ntQZw0aGf3qtUFTbX9Zg1VAxAAUp9x6l8k=
X-Gm-Gg: ASbGncv4+JVB/BKtjlYkNg4zwMkrNi77EAIxFPEorRiGUJBSpWeHKqKG7iG9k7beLCN
	ttuNvnP7GU0Bc9I3fCTwu+80LnxZoaZDtlcLo3U2QiWZZY21ANnLG2DcRxyeB5zYUL6/IrNDNT3
	zrOfwDLabJ+7Kk/gvRPk6huAfo6r9inj4LHHrq1EJtQEotdtM34togystgoKSSckssLMzdZnwx+
	enOMhEtPma48QGSMeWYsI2916Mx3o3DkRpsEbsr0A7SF+ns0bDSYUSvmzDCoYcgb1wfdMV+UZaQ
	eVLOybf+fH9jL+SdNhGanVD0FnhG13kvQ46TIFw9pfHIM60vjm43+tJBJzIvFVziWu7boewH8S6
	qNOKgae3Oit2WaGWLykoznJbrCVSB0NQKMQUAM11AUdReRLWSp9rKvClIgsgsON3McUUeV/4=
X-Google-Smtp-Source: AGHT+IE/TkquzP4ggQueLS98r8yrdu4ozRBE1t+Yn5KNrc0ectXwdTIGdjfBNAgyxbItSUV+XIH7Lg==
X-Received: by 2002:a05:6000:471c:b0:429:c4ce:eeaa with SMTP id ffacd0b85a97d-429c4ceefd6mr8497128f8f.60.1762166921518;
        Mon, 03 Nov 2025 02:48:41 -0800 (PST)
Received: from brgl-uxlite ([2a01:cb1d:dc:7e00:e6eb:2a19:143f:b127])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec2csm148762365e9.11.2025.11.03.02.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 02:48:39 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	peter.ujfalusi@gmail.com,
	lee@kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	shuah@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5] dt-bindings: gpio: ti,twl4030: Correct the schema $id path
Date: Mon,  3 Nov 2025 11:48:38 +0100
Message-ID: <176216691575.32454.14353160997062734188.b4-ty@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250821194710.16043-1-jihed.chaibi.dev@gmail.com>
References: <20250821194710.16043-1-jihed.chaibi.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 21 Aug 2025 21:47:10 +0200, Jihed Chaibi wrote:
> The $id for a binding should match its file path. The ti,twl4030-gpio
> binding is located in the gpio/ subdirectory but was missing this from
> its $id.
> 
> Correct the path to follow the standard convention.
> 
> Fixes: 842dcff8e2d6 ("dt-bindings: gpio: Convert ti,twl4030-gpio to DT schema")
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: ti,twl4030: Correct the schema $id path
      https://git.kernel.org/brgl/linux/c/4a372798e12cc777918db90c06e11c80e90bd001

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

