Return-Path: <devicetree+bounces-74099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 108E3901F75
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 12:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FCA5B24043
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 10:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B03A78C93;
	Mon, 10 Jun 2024 10:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FpdsPS7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F237452F6A
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718015560; cv=none; b=c88YdhtrvWWR70ptEcKYCONe+uvPysw3GVl3Sxo6lT+s/rYLropzhl8uWWHNkKaw8E9xd4qfJ6qgPEGshe8KSAfUx9w/Az9sh3SP3GLDV01xO8xIVwZZbQwAVAQSoJjTl1Mb6BO1/h+K9vLu1o1WjHn8LgmvYKGAx91D2VuZ8A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718015560; c=relaxed/simple;
	bh=OcNCNxQjyElxIcrEZhK8KOZ1sEwgrkb9YkFTm5vr/ks=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=P5G9DHQA7blhE76KMf6EqQOysYDK139IlGxqccDHfxuTd46TjexQGAOkw1W1f5PNs8VZLnjQte0UG9V158BfWkkl7GCsoXsJ6y/HoC/GgVRS/I+jHXzpHNZpGr10tvb6hLNi9kIIDmfET8cBDmBhf8GvNWychYCC8dnsOiXbTsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FpdsPS7Y; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-35f123bf735so1427924f8f.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 03:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718015555; x=1718620355; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MXXg9qprKu/qiLNvKW8mzWq7DARUrTSzjJdZFxDwHKA=;
        b=FpdsPS7Y5OZz7a0VchLZejedd5yprC9uzWu8lo54DUrS5gMrgtPu4pKm//9joJcbHS
         +ZDtu3sN98Kuti1EFdNbil7xNyFfsEiPBEEHBKaqiADW01rrCNB3TKPYgMRMt7d0mMIw
         WQd9V+H4EViTcxiS8IHPab1CeE49QSQqFoRh/DtMdkKvA9Z46UHhnL64kRXYNqQ93Rvx
         G5b0bJg1v14Rz90O5FD1MxaudpIchkyMtSNx9dykFgmiQgwyTteflPkUWeznXPL838BE
         cS6KcDdyZw1uRpSYUntiIJ08dzTq7f5cth/UcYF3eM/gmYJIfZucrBCU3f+Aml6AniZq
         KJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718015555; x=1718620355;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MXXg9qprKu/qiLNvKW8mzWq7DARUrTSzjJdZFxDwHKA=;
        b=Ytmtlr5mIhbz6YLTZpZNu2xzfC1LklRxZsar0KvNqBscmWWGSZYMQ8lL39daN+aOWc
         rG47anXRb1ChD41BrQKNlfhkCFmdecL2Z10EZUCOF6K9RUZolnh5d2Txbu0zGlkgGsHI
         btTlv53+Z31+lacwq0MnCEd5ej99XVWp62EKEP4yAmIXW6Je13ig5s2mf1TDoR4wgAus
         JKeiPB+tjMt3cUj7zf8DpiziInVHTDADaqSdz+VzvFxpz2GdonFOnj5WBwiL3juf+ymQ
         ojWPafrezmyR5ZVPRStPxMewgEjI+b/3nU397oyVINnOlFZcIucreYaNgnXZRgniQ6NQ
         bbvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzyiYaV2Qq4yDOvaKOnJ+4NPOsFIaxpd7uOTGBdiQ7zJbtS6lxwzHMRbeStkQhjOLfHV94L46qoWPalCNKcNGaANOubebZKrzuFw==
X-Gm-Message-State: AOJu0Yz6WHcs/JqCjSVYWqzjQikU/GMH3Nci0QFfeobaj2LP23AWC9KF
	Hujjdg92yFgQvGXLL3q72xw/5jkCwoPHxiqKJbFn6Fl0tG3U1dz/GtNh5LLjv2s=
X-Google-Smtp-Source: AGHT+IE+UMWspFxOkW0VMFhc6ufITIhWfVtf8wdrgpK/+aRYj657WAU4bd9S2VLhpwjXlkDwo9fr4w==
X-Received: by 2002:adf:fa4d:0:b0:35f:18be:227b with SMTP id ffacd0b85a97d-35f18be22e2mr4263828f8f.14.1718015555378;
        Mon, 10 Jun 2024 03:32:35 -0700 (PDT)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:afd3:66ee:5486:4249])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-35f2774bb64sm1136213f8f.103.2024.06.10.03.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 03:32:35 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: neil.armstrong@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com, 
 martin.blumenstingl@googlemail.com, 
 Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: jian.hu@amlogic.com, kernel@sberdevices.ru, rockosov@gmail.com, 
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240515185103.20256-1-ddrokosov@salutedevices.com>
References: <20240515185103.20256-1-ddrokosov@salutedevices.com>
Subject: Re: (subset) [PATCH v3 0/7] clk: meson: introduce Amlogic A1 SoC
 Family CPU clock controller driver
Message-Id: <171801555454.91134.14151750531513287014.b4-ty@baylibre.com>
Date: Mon, 10 Jun 2024 12:32:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Applied to clk-meson (v6.11/drivers), thanks!

[1/7] clk: meson: add 'NOINIT_ENABLED' flag to eliminate init for enabled PLL
      https://github.com/BayLibre/clk-meson/commit/d4c83ac16c65
[2/7] dt-bindings: clock: meson: a1: pll: introduce new syspll bindings
      https://github.com/BayLibre/clk-meson/commit/96f3b9787363
[4/7] dt-bindings: clock: meson: a1: peripherals: support sys_pll input
      https://github.com/BayLibre/clk-meson/commit/41056416ed53

Best regards,
--
Jerome


