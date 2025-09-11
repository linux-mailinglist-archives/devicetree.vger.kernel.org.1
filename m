Return-Path: <devicetree+bounces-216049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF1DB537D5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45DFF3B2790
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C630034F476;
	Thu, 11 Sep 2025 15:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h+wirtxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18444227BB9
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604772; cv=none; b=ocBAejHPeqFXuu0p2jKHf43cbiJ9qkpR673VZ0Aj55YUNaF+ks8JhjsYf+G0ecA/o2+9axFPLEzhZEfeJeYk/EKjbTNS6Iaw+vMdW2gZucuDACtPG7984S7TwpZ/EXijiUrNUJibcZXjqFrATEpgGZ6tM3ujLv3UNevw/W7sOY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604772; c=relaxed/simple;
	bh=9d5INW21jjr6oErj7y4Sti7BG3O8dXxCjtAuIhufDNc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sHIuIsXWKrc14ROarOo5tI1DPzZTQyzEBXObHPwxkMsDJsZlqz7B6t5Bmgm6TfTdN1Rx/Jripi72a4/nIUb4SWfTf7H33UY6eco/FkRq7lpv+PlYVpTfXh73pSQ1n+9vUSZsPRLoJVM4wzqX9ZsHTbt0JlQUA9BU2VaHv3lAbeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h+wirtxO; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45dec026c78so9271675e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757604769; x=1758209569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3axJvgEbFXgxfwL/zVY/UXD8zhBqiTBNfyhVw2O5KOA=;
        b=h+wirtxOZcmfcGFV1qt00csoureoSJAWB0UhFy5L2Q3B0L/z0rcYinbD3Nfvd5j4/X
         oaUU0o1jA4H8hKIO4VE74fM14ZQrcGllHA7ivBwEBqz4K4KYPZW/JQlUCbiAbUu0QJwM
         qzToOgJOU6eGR8xtOU89nJtF16v1tpGsaAG0A+ToaVjSnDK8/XhhCQGL/UN3ObGMYOm0
         OHKdOJiACoxgXZqRxHboU3BJoyNo7hx7Rl2UtMTZhB02XaicXy6KzlgJJs6GByibqlzt
         KwF/ca8R+/K2z6LxvdgVzHgrV4GrhzmnQ0sb3cugO9PzOQON//+6+qoVi6LRYHIvpqXH
         gNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757604769; x=1758209569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3axJvgEbFXgxfwL/zVY/UXD8zhBqiTBNfyhVw2O5KOA=;
        b=qTi1zdkU/LW4bNXHPp7b7CBfolzScM3rPBWjcFeiWfwrUK72ApSjbG7CiDzy2/mzJa
         0bvvFeieBgbQ5AhGf98kL2VYVCPNTDJKXZxBDpBIETIQo7meoDJvA0W7z+kiJ525KhZV
         TfcZKYDaxcjRHz5RA9tViEzvb6Q1i8cYVBsPZUrJBYPHclFkPOf/LoGSBZ8mkYuuowQ+
         xJzR7QZmib9T3K7mo/xGvxRBXKqADMK/cRh07vrgoEJsmP15NLXhSNh1NHV6v80YhO+j
         1EoGYYVO7JyEkWUjhgIfR16em0i10QxTMUmSg0nELtiVUfs9i8nmFc5o8TS87lrZ4B5E
         lDAw==
X-Forwarded-Encrypted: i=1; AJvYcCWEOjiZ5D3gIDmWgqjLXXKOYUv364FqVw9iVOth3fpnQsxhMgDEiYH00OOKTiDJH1CvYYgLo+SeMm8K@vger.kernel.org
X-Gm-Message-State: AOJu0YxM8a67WfwKw+w/BcMEdcOgLk85bxOlCms2r6EVujwIbvAYXqsC
	xKikLwwYz63dTzRnv5UzuN4SCOAFueE0d0jFBjWO/QNN5aPWodmaybcf
X-Gm-Gg: ASbGncujAd1bJ0p6eTkwI0jsVSDY8h8uptIatNkaW/luyR9d1M5bEa1LXAvgvHV4ZVc
	XlFPq0uUuRi0PAhqqtKb2Xk3xkZkIbSsDJ4FjJ9EcPKHkMT45WTiuYdKk8r705MvMKkk3cqLex9
	lqOWzVP2twmeZV1kPjzYX/AUfdeUYTqdqVGUrWVaIke0hUFYUA1GKn0PDuV26Ch3mzKksw5uk2E
	jkQyJ0aUa5rHL0wRmmxcgzbIgP4Cqlc9rx/Zb1x7CS2D3EwrANcL56ek3NUjMfx3LzVxLNCqvyj
	HUoHX7JaM4ZcMAl5v9HdSIiOX5dGPK5QhAea7Q0AjG8XwWETfolnbJ7cKdmeVS0EbnPTlXUoYsM
	8IMPWH7N6/skIRiNj5rMnZV6P0gmaOW2z3IOcYG0TJ2SDlco+P8dbC+ezhgCL7jbpQKGGR3vI7T
	1W/70agg0nnsPOpiqPq1eijYM1
X-Google-Smtp-Source: AGHT+IF3BLIq3kR/6GHqEPtT2eBTcLlyt514cWOzH9fOkQVX2eOkZCeyPsb05zloZHpD/Z4ENo6UCQ==
X-Received: by 2002:a05:600c:46ca:b0:459:d3ce:2cbd with SMTP id 5b1f17b1804b1-45de072e878mr165182475e9.13.1757604769028;
        Thu, 11 Sep 2025 08:32:49 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e037c3cbdsm29794125e9.17.2025.09.11.08.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 08:32:47 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: akhilrajeev@nvidia.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	ldewangan@nvidia.com,
	digetx@gmail.com,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kartik Rajput <kkartik@nvidia.com>
Subject: Re: (subset) [PATCH v6 0/5] Add I2C support for Tegra264
Date: Thu, 11 Sep 2025 17:32:39 +0200
Message-ID: <175760472294.2784204.8145431282909905411.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250828055933.496548-1-kkartik@nvidia.com>
References: <20250828055933.496548-1-kkartik@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Thu, 28 Aug 2025 11:29:28 +0530, Kartik Rajput wrote:
> Following series of patches add support for Tegra264 and High Speed (HS)
> Mode in i2c-tegra.c driver.
> 
> Akhil R (2):
>   i2c: tegra: Add HS mode support
>   i2c: tegra: Add Tegra264 support
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: i2c: nvidia,tegra20-i2c: Document Tegra264 I2C
      commit: 804ebc2bdcc85f30973708835b47ee023a4be003

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

