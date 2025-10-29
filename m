Return-Path: <devicetree+bounces-232657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A99C19DC9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB6831C85DE0
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16333126A3;
	Wed, 29 Oct 2025 10:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="R2PZTCn8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C852FA0ED
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761734523; cv=none; b=sQZ4OEeahFW3W1fqeNmIYW1Mra+aErWpKk1kOBMVYT7DnAciGesXYu0eY66qGADHN+buz9jJwqk41spSYV2JAHhxi1UC83Ss76pY7MsvU3BEAuARtKssd07y7FQFoVJCM81hU5HPv6N4gH4pINUzWdDZAn5GhtrotOrbeCTFP4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761734523; c=relaxed/simple;
	bh=AUDqFfVw/6OEV65Z6YZ8rdLCW3TA1z/nedV4oyotdPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SfDtIH2sZpX151sf7aFUJ0A43HF9mgoulyIGuBF0Si5HtSSx55IXHETPxGXyaGqnKM1jlPpC2W0dJc4LJk473BfiNvw3jtvwjXQRm/tkW5qF0PhSLIX9zYtoXxOHfj6fIm0oz1D9WQNRWg3trNNGzvIc5MUTwuex0RtqSlF1RSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=R2PZTCn8; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4711b95226dso89153605e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761734520; x=1762339320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3X4E3hHQ4vm0fEjCZ5UPCa76r6tX7WxRSfwf39l4Uw=;
        b=R2PZTCn8Vxye1cwzPwcvsrc+w83i+sfM+Ny3gEMZoKT6XhJB9jY48Dkpb/LSg/QUvJ
         D6fpevYhbnAjX431AnxdDnZqyrq7XaDKwQTSRGdzzf7jsa83oGDJd42mQBvDcgHuX0nM
         IQPBqE5nju71NUNhZo+4kseVQTh0qsT58h5WlCUT7YF2OkR5x6F4olpRCQOvA38rw0Dl
         pqISNDaaE1oR7j4ji3PnAICgqdv0cckNx8n96Qa1jvM/FjYGb1f96RWaGPeeecO+0/Qt
         BV17vFTHxIQr0H4VQDeDTMZmaro4UVMmeWkIGG5aaq71LH4i1DBSWX7wMxI0GKqB01il
         Hq5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761734520; x=1762339320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b3X4E3hHQ4vm0fEjCZ5UPCa76r6tX7WxRSfwf39l4Uw=;
        b=dFL7OZuBQLx832FvDJWiTo3mLkAP0CixKP0Ltk2iYdciYq9Sd1TesnerJQrDNqQDtd
         m1YCCDajuZfQaQPOeaTXohzRRD/OK//834IcwsqAtT7zd2kcXwpdtdMouwc2ldVuHy/m
         ReJfBuZLLa027+r9si2L659DX21RQSIvMwErA+kdSA6kZmU/BjMNFUz5RIJ7RYuyiYcu
         DQ1v837tE9cKGHuZDQO9sMO/zXD+Q2Bqzel41O3/uNkXdGQ+CEWeFVO3h1bXIuv0Via4
         FcGg/37BO3z3uYmxdsaTP15ylN/Zj3mKFNEvk3425U+hF4bBEbnoQjXlB/5GiCwMFk37
         5fMA==
X-Forwarded-Encrypted: i=1; AJvYcCUyKKuNPmx5f039t0V7D57WEYZ6jVp10sFpula/7p3fWwe7QDX7xjJErCetDepBJc52JqfdE5kEMvNO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmc/4vNg7sXv2889sNy3irauutHt4dG+VWW+Q1pWujczIPqyBh
	yAXukUoaub0fWIVuidxrjWm6cyiVEavQz6QJXORiYEB8TnYMed60fcYiflaWyRSlQROXKii5cDr
	v4obJiKQ=
X-Gm-Gg: ASbGnct95CALnnbuT3om9Gwqab+TYkXP2bZl0B1JCql6h4TGZflOqlsFqUiUXSPoM0m
	ILFAXxxGRl+W7u17I+uYrVlYVdUjgkrT7JlPKy6HZ3GKcm1D8Bkux4h8S9gt95/iBm/+8+5QtD/
	okowCeGH4SjDxTAC0zqdlKXIdAUfwm2Iugz1PPn6qJXy76dbxLdUlqLABftm0+DbPncSu5dXDCP
	mCYAh6VcaRiaA/memXcQFNYeX9mRI2hWe2oRQ94qXCOp0NgYZJ/Ra8z19/WmosOSwlVkxOZN0y2
	1eUjrwO+9mnlyfoKT5fC4Z8MbqvJYwOwo7DqklIR3x+PKJ3thueOcRwXCDdKn0bQHtE/D01V977
	5/2Ziwyour9eASs4R/anwHoqgMIz1IiNM31UqzTTInXe2RYpkOoEKGu8x3lrEEiTO1PUPYIHIW2
	e9donX9QjJjrzK
X-Google-Smtp-Source: AGHT+IEr0/AZFy2/29X+tk87HEM/p5Fa5fWpVSnd5/YgcWtERKefh8/xi2PyHwwU7M4yWjRk//ZiAA==
X-Received: by 2002:a05:600c:3e07:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-4771e3fbdcemr21558395e9.33.1761734520102;
        Wed, 29 Oct 2025 03:42:00 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:69f2:5f2d:9ffc:a805])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7ce1sm25165417f8f.0.2025.10.29.03.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 03:41:59 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Luca Weiss <luca@lucaweiss.eu>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/7] Camera I2C (CCI) enablement on MSM8953 and Fairphone 3
Date: Wed, 29 Oct 2025 11:41:58 +0100
Message-ID: <176173451403.17889.9951642355826230455.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251028-msm8953-cci-v2-0-b5f9f7135326@lucaweiss.eu>
References: <20251028-msm8953-cci-v2-0-b5f9f7135326@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 28 Oct 2025 17:40:45 +0100, Luca Weiss wrote:
> Add the compatibles and config for CCI on MSM8953, then enable these I2C
> busses on Fairphone 3 and configure the EEPROM found with one of the
> camera modules.
> 
> 

Applied, thanks!

[3/7] dt-bindings: eeprom: at24: Add compatible for Belling BL24S64
      https://git.kernel.org/brgl/linux/c/aef72ebe9c86b516c6e126d4b453c96496547f0b

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

