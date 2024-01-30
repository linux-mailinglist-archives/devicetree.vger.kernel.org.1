Return-Path: <devicetree+bounces-36611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0DD841FB0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:38:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27C0D289C23
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A096089A;
	Tue, 30 Jan 2024 09:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BYQSvgVu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3EB59B79
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706607510; cv=none; b=eUs5+0MWpc1h8yS7rCOUVwnnrImPKaXGMIm337+5MzPJLZ7CzICJDWrl+rXm6AHdR4/g8ChTAwQm8QEjrGIhQCHzDM5St3NKRTPgV/AGjFfp/ti0wZ42qp239sv4JIw1LdgMx86oUwnR+wYOY25wcZqWmvLx8+KIKF3oYMG+c+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706607510; c=relaxed/simple;
	bh=IuA4mLN6900oSwbnRVrQ2gi7SLLO14ryO68RT0cNCnU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=emAx0ZpNwrq6eqHjDDTi2UzoEQhuWSJ+zNZKORlLvIqoDK5JAfRriyIIanFzemqWlYNl7IdrqbCV++PRXvauwH5X/b+wNFKl45onMAE4Ec3fD6flsHC6UyDvb1f42aBstyp2d8xZEK6l0J5OtpGaLU86g2lYrLwJCq+QxwWZEZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BYQSvgVu; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so4747526a12.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706607507; x=1707212307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HttPdQ9wtHT3O36QTysPFmeFn2Ai+flVcwvN38lZlLs=;
        b=BYQSvgVugZxNB2yblYoGsQjNr5q1/6JuhyOFlsS48z/B/dKxVZYOugf7oGIqkq09mu
         wOPQ6LHyhnnTW/7AUsrCHKQEwoCoh4yXgoXsuHYshJi2tH/V4FzfxdosIfZkKWYvxk8/
         Hab0o/nYebqVzwFivBdep44/Y2dMswEaKCoTS/fRRuHGkw/C28eMwRTL6/fNJUsa/JlQ
         dlpktPdKUv1qmTStgGTpiyHnX9HCsndq8HhYys07WBR8iTyXMl2tJRebVXULZ1VLL/T/
         9B7Odhl+aWM+24JXJUT5sGxpIYnfyRyEhsebGZ06YnjKovfttJILfdgTAxaXY0r8FpNx
         yLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706607507; x=1707212307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HttPdQ9wtHT3O36QTysPFmeFn2Ai+flVcwvN38lZlLs=;
        b=DUwYc8OLjhMRNNo5QlzeqpKQ3s0jrooIi6ua5+cJGwOzR7dSlr8LGvSmpXkn42HZ0M
         Vwy7ab+RIZGPYu6CtURiBPXmntMxESabTPTRiFtFJUObFCBB3kSfU6Obevam3yFj0qZo
         nwNP1DvxTBYXJ+uaUHge+lHL/K9Ui4PM+OJ3qbl1mZKfceBBu15f+nMMQ0E70RcTLwxD
         MhMDJA8nfJgQlC1jtUKSvqe2jLsgnnOtqWr8tG8/g8MKIftf1c9+l4Wr0IVER7h6vilJ
         hzLSHTDUbxHzrWvehIjXyu/ZPu4xpnITs+lSP+8R3JdhrCt1TQIqCjIs7qcBtJbHUNHZ
         qjqg==
X-Gm-Message-State: AOJu0YxdpZXrYAQsCIsQDLg49mZV6kpjJ9MxUFxOl5Q1+JMtQCwuz8Nj
	fvCGphkqxSh+NExPaLeygl/Ew2k7OqPh/Ii33J6fVFUode6UYQ3ZJnKZ7xsRmNw=
X-Google-Smtp-Source: AGHT+IEA6NxIu/ED4iTEyJP4pvq3EJXhitTD70xShbF+2OaIKJxva1ufNrR7WYdOyG8FHhNLevhi9w==
X-Received: by 2002:a05:6402:26ce:b0:55f:1ef6:48dc with SMTP id x14-20020a05640226ce00b0055f1ef648dcmr2575893edd.21.1706607507072;
        Tue, 30 Jan 2024 01:38:27 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id q10-20020aa7cc0a000000b0055ef56f4575sm2281225edt.39.2024.01.30.01.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 01:38:26 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/6] gs101 oriole: peripheral block 0 (peric0) fixes
Date: Tue, 30 Jan 2024 09:36:39 +0000
Message-ID: <20240130093812.1746512-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

While working on peric1, I've noticed a few issues in the peric0 area
and these patches are the result. They should all be pretty
self-explanatory.

Cheers,
Andre'

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 11 ++++++-----
 drivers/clk/samsung/clk-gs101.c              |  8 +++-----
 2 files changed, 9 insertions(+), 10 deletions(-)

Changes in v2:
* new patch #6
- fix a typo in the commit messages of patches #3 and #5 (André)
- add some empty lines to commit messages (Sam)
- collect Reviewed-by: Tested-by: tags


