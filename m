Return-Path: <devicetree+bounces-114050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD5A9A9AA3
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E85BB1F24BE2
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 07:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD8B14A4F9;
	Tue, 22 Oct 2024 07:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ITBx2/Io"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05D51494B2
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 07:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729581242; cv=none; b=ussN7zZNhEkJWtLz7W2A6UpvIxyQxTtakLXRVP4yn7O4S5KHvfOnsoS9tuMmwHzU4XD74mtxNp6MItX5QvnV+Lff9iAxE6pxrvCSbDaE2c7wIwP8dA+evlLEsVYkuIfl0M5MFx8JIfuz2JxnbVR+uxr0KQH1/2NXopQG6Pul9+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729581242; c=relaxed/simple;
	bh=rg6eNn4n7KKuhoN847xjNM4A6AinYmC7pL0O7ui5KnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DI2jJaIXLGsAIGBrOYCFArh/jEOotCLYnF2Wk21i+b0pftuf3rqWbn1Mgrp0FrMlOwbr1U46BENRE2V+u0EieHiElyZq97CK4wxC4dG12OHHbo8FfiGIx4QjiOOsXXiKCpyuDb701aJggbvg1BDqzCB62WCoQAiMkyXSKALknlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ITBx2/Io; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4315c1c7392so48174305e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 00:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1729581239; x=1730186039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2DpZoo6yO9Hfgv4N61HzJjjkVfEBeub6eC9TjyXKIOI=;
        b=ITBx2/Io9mEbD6WDkZTeUX4+aOAYx5BvH/ETO2pCP5rRkHEt6p2oSU7wbMlXbtkkna
         iFWXmA0SuYpEXQwW4NG2NAmzVf03qkXG/qtXZmwVKPLi9fjtRTzhTL684zUHDhk+H0H9
         wRrcTZIKv2XDXNMWJJ1KTepFET/hRe10uEWAOYB49lMtbPYG2N0K3o0wLNwU7/LWqBxy
         2a9U3zbceCPt9WlsoPoOACu5OlpB6mYtAoShwTImMzh6KhEPSTxD/+BDG40ezFPxBFFx
         GrsaUiNY56iAR9ePNs1O/mqHqkxYmn623zDTY2ghPTrCKJfcQLV4LmSnfy3KHW6dtg8J
         Ib0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729581239; x=1730186039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2DpZoo6yO9Hfgv4N61HzJjjkVfEBeub6eC9TjyXKIOI=;
        b=D9mHbEoSoszhZnF+StJCbNX0SDyYe28pirV6gVzf4O4Irean2qLVY591VRsTRy80Ae
         yPQk739SGU9iGAZBkeuYx4ZQVnBOdiVjlYIrOVpZklfxuAuWZBqc7atmd2PTMBZAsyFs
         B7MS0pp9mb6Q5tfUWCniWZYeVuhIp6vND2m6xDQTr52/CIR1FBn+OLrsw2BrFwylSD4C
         tn93bSkpdqCfGHmEntVGEKuZHEfRCsfS9vMMYaOx9NUSLH8mJag6cR/e7KaH75IllaxO
         dSs7c/pJEH/1HmZkWutNWNnjvGzlbizLl12XVw6KpHlxPIHNiKTll763CYdH5prNiX4q
         dCFw==
X-Forwarded-Encrypted: i=1; AJvYcCV2hN6mpunwmuVUy6WehXtZIBuHVGsz/MKe1l2jIOs51bYYPCQZbcytxk/zqTnjVRtu/uVnVL6kEtek@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3aftgWpPfSRdYs/uPvvSLgAqoHsdsbMglkkRT2LI8J7g2kxwe
	bCTFaBgJYkkOUHB30lFW2fdZ6I1LWICGOh4MTbpyHO2etn3X1oH9f02JwNUrpXQ=
X-Google-Smtp-Source: AGHT+IF7poMWB5wXDFbQZpRfCv/lvFJvmJjWztGtzS5HoWO0iyjQWrSGbADDmRVBaQjNId/3pravTQ==
X-Received: by 2002:a05:600c:3553:b0:42b:af5a:109 with SMTP id 5b1f17b1804b1-431616a3c1bmr112210255e9.24.1729581237606;
        Tue, 22 Oct 2024 00:13:57 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:9c8b:c7e5:66f5:b8f1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a4ae36sm5955801f8f.43.2024.10.22.00.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 00:13:55 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linux-i2c@vger.kernel.org,
	Marek Vasut <marex@denx.de>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24256E Additional Write lockable page support
Date: Tue, 22 Oct 2024 09:13:52 +0200
Message-ID: <172958121344.18422.8336462727519958263.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241017184152.128395-1-marex@denx.de>
References: <20241017184152.128395-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 17 Oct 2024 20:41:25 +0200, Marek Vasut wrote:
> The ST M24256E behaves as a regular M24C256, except for the E variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 64 Bytes long and can contain additional data. Add entry
> for it, so users can describe that page in DT. Note that users still
> have to describe the main M24C256 area separately as that is on separate
> I2C address from this page.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: at24: add ST M24256E Additional Write lockable page support
      (no commit info)
[2/2] eeprom: at24: add ST M24256E Additional Write lockable page support
      (no commit info)

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

