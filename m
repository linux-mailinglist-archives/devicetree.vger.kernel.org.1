Return-Path: <devicetree+bounces-216048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F27B537D3
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:33:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4D667B78CB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D666214A9B;
	Thu, 11 Sep 2025 15:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iySdujC1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52D019D88F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604770; cv=none; b=EulonjNMJvlOgP17LvlghF3a7pI6VLwDzNxFd9lUj92SCAqNuTCg2OlnXqoxdGW+6epa5B7gVl0kwRmJJjv80IeXrAkVbuo553jRJclz7HfAP2Ci5LFXq0mNEEiLITjPgHYXZSWaM17XZG5+0d0/FZGb7AwdSR4BEnyoN02IoUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604770; c=relaxed/simple;
	bh=YkMv6YjsyCNBVi5yIMwaJK92TSsQZwK3ovRalXzSm4E=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SSstd3NbdZ8hEQzjTO8l1QWkKe8f4WdJNWj9pctjSBV2w4omSPoz9nd7pHQXSnk6y+vpG/KrWzhWDB4BMO5dMypVQ2+f2RUZUTqQROtL4XTWIQLedk8FUvrsQX5fRbSp+9DOd1nfUg1V3AIREHbjKbdust2tF8aNkFONtNQyzLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iySdujC1; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45dfb8e986aso10089155e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757604767; x=1758209567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Y/244DiSphAJbtkVDW8SEmzh2Ums4Tc++EtjExWiik=;
        b=iySdujC1QrQC4czP+CEbV8VuLXtpy7ttLEReliaXH+L1WUDFIll2p2Nq2C4MOgFt7B
         ITpv/BKt9xlrsw2BGVNtb3HpzYTTk1Ocv14dn84Ang34rCKRSVBzfeC4Wqaa56AQDV2v
         sfk7eHUaJojWt1nZogl2kE31d4fsHxWURkdgsOyOpggTf6KE7C+2jGvGd70/GWCtqAsH
         Aw7vLyevFtKOvTHAqAVNw11cg4SEZ2xusdwrb1jjk0QxEr2mtlZ1cKSmoIh6JQLfvaHT
         rOOQWKma3SgRVzw3U6zqFblQGjJb2eJHkoYlpzoUMTKG3IGyQQIVljpGM/myjg66oYAo
         xFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757604767; x=1758209567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Y/244DiSphAJbtkVDW8SEmzh2Ums4Tc++EtjExWiik=;
        b=fW0v7WJSMjGgMAb2TqzNi0sklTXiMqkHwg1P/kmF/2gcdy4OTl/LgsPBSDXlbe9IU1
         t1oEwKCDUiOz+0TT9Od3yBsJa2hCAAijEhEz0x29b3MAbgbAYgc062/sPuHLWPeR4CiX
         vMxCb+mbXPp2i/a18/0tb58fzND3l4aVh9OD0Fh25B2XNaQQgkjC2TtT4IxNbRdHgFAQ
         YfOeco61gEM5aIVJLsa6WyVMLW1hSz/o7kv9Wl/v1NKlzip9wOmIlOWuvydVwDfcKisg
         M6PzISP5RcVJjXmKSZGnTxdUsy4GI1jWJoAwkqBUs09SS+Rbk5w5uW2OBj1ZTZBSyoqR
         m9gQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIF2t+/LZGJZub4G6+emKcdIQMvvB3Sfn4VBX8jY1MuXI3YFkcOUwQoUym7gDKp/LVdqqwrgP5rqmK@vger.kernel.org
X-Gm-Message-State: AOJu0YzJwSc0vu3YQiBzWohBCZkGPujmCSnWvm7oRol/nnIo6UfC1MkA
	T91K7+0LV3zmQ/R8TBjTFo7CTFBvawNn2ZIeS64Yy81RirQy/+ccfDRO
X-Gm-Gg: ASbGncu6x2Z2ALg7zXQSAfpCk06CVWINyD/sHwY4ZOKJoHI8isS9HyeuPB8SZYTcRhH
	9OIn/7ZXQQnSTnJxW0M7UbN54cRXSY23VbOJjTFYZEwQYxaFbukjc3L7wtS1MkDpfV68ESMqYEf
	fGOOGg9wFmeoT3tRh1CTdngg3XBTcB+u/urU9iVx6MqMogXRN0nV5IExT/qwypl+J2FbkTuLlFk
	AgTskSWYmDc9lzfbCAHOzDtXNa+sUubnPAlpoo/MFrDxL/5lH0F6Lh/Q0muVy9fNg/a2NchklDe
	7CvfsZBuxzhuBNMMpq0ehos259jbYmlnXXcXc9+HF937So83qTSpHW47d83izj7GJn8izwT/xBU
	u1PD5vDUufpw/QhAHHb2Na0Yd9LblzrEDjewA7cmduTBd6wvCU3lTWlXhZEcDD8yJai65PAB9pY
	siTSMY6WKiSLrXo4UfA0d7lFUJX/mqehpbwQs=
X-Google-Smtp-Source: AGHT+IGDFl50WTcAW8FK5GtCVqo1WVM9JouN+PbJLJQUqledX8LqT6eikYMKGBvqjaGPWeZ+ftRl4g==
X-Received: by 2002:a05:600c:17d8:b0:45e:598:90b0 with SMTP id 5b1f17b1804b1-45e05989245mr18195835e9.9.1757604766795;
        Thu, 11 Sep 2025 08:32:46 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e01baa70dsm30941195e9.15.2025.09.11.08.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 08:32:45 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kartik Rajput <kkartik@nvidia.com>
Subject: Re: [PATCH] arm64: tegra: Add I2C nodes for Tegra264
Date: Thu, 11 Sep 2025 17:32:38 +0200
Message-ID: <175760472294.2784204.12720978219175288045.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250828102803.497871-1-kkartik@nvidia.com>
References: <20250828102803.497871-1-kkartik@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Thu, 28 Aug 2025 15:58:03 +0530, Kartik Rajput wrote:
> Add I2C nodes for Tegra264.
> 
> 

Applied, thanks!

[1/1] arm64: tegra: Add I2C nodes for Tegra264
      commit: 7afa0f58751a85bae003fd1f0a283b9fbe7611dd

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

