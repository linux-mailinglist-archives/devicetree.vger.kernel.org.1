Return-Path: <devicetree+bounces-109820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07049998125
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:58:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6E4B1F26E24
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D14B1C2431;
	Thu, 10 Oct 2024 08:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="deCwGo9c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6981C1ABB
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 08:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728550508; cv=none; b=TE7KKG5rrw1bgXrDVdoObJQgIfYWzlXKZXwgQ+Uv+4m52GMPlgIfXQ3mKJe7gxCS0cWCPtC6afeoek6yvZYr4mS3tK7pHjCM22V3iSqaxg20EVycLGJIz8AXys4MJoAzV2wOh1DlVh+VTEfqNnOxtpB4ggfhNTIANPIoBvsM9WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728550508; c=relaxed/simple;
	bh=5Cx+4eot+xnIUAD/9oPz8ttDeh/qqSFRet/nf/SXMfI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=URCk1RexIVJpK5vnxXhrGIOl7LZ5iwALko7Cz33UYocWKhUAGPkLeJGR1hiraeUiSPcsjQZe8NB5734jyuZVwAyY9bStCg2VHV1mLJ122IPY59APqUgXwj0Qr3utC6cf0xkHqxeCN66i9yDSriZaXlGKqvcquzogAts7pjjdgpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=deCwGo9c; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-431198c63cfso364115e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 01:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728550504; x=1729155304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgOR4E9IFq32loq7SFGtPsR1wH/Z5vkFIo/MpY40Tqg=;
        b=deCwGo9cOJCdCJMj0DzNHzkZKuGpVu1K+Xg8FvronNPQUnOoQqAlpE6QBZkJk/wt61
         oZSEj5GTEIM/ZL/ROM8Vu0XcOhruhXorRNy/w/FNdIeOtnbjrki24Qk1LAKhdOcQIApU
         M/Ch5UeznRGZTGtqgIOD1ZnuKIOYXNOQOyZA0nAi3/Z9TUcQ94idBThvT/2L6p0fC2OU
         Dag877vTk7WQUqxn6hmpKA5OnJDcSW/sFXKmkGy5On2d9B14FLoaRhLjwdfAL1ey2oAQ
         F9tuxUSp9iUUaD8nq8hUdBj2Dc+3AMuqNB70dMQwKj34Y/WQJvwR2SflOtY3pnZkXYN4
         t0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728550504; x=1729155304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MgOR4E9IFq32loq7SFGtPsR1wH/Z5vkFIo/MpY40Tqg=;
        b=iXPBlgRRiqdRK098HRYASCpva1HdAyn7P4CIQL7fz+lEBpqSRrHYSnarrkfJiR4egV
         UMXlX8AQ6kmH5DW8uuPtcBgGQMfPbxuWAJl0SWiIVRZzSB/blIgyYDzT3Ry8PIF0XiEC
         8uJhs/uOudJAa3DxHlYPrBJz61dloC3iVwJvcSnDnG+vGOWYqVIbuUlYLktKt11LrVMr
         SJaQ8Vbe1merH8nWRvDruwyAwci5IoDxBsK7W+scRF+mcoZf8zEka3Ef1BzoiN4V7kht
         zjS8Yb18BoQ0Jvvr+K+p1lGuhbJJr8/Z+FmTLtpDcrgLa9DXLuBQepFnvuAiYg0M1m93
         aGug==
X-Forwarded-Encrypted: i=1; AJvYcCXlvEpLTI1IQL/0yUBu2kQFxN5fqaGn5BciJzzX0OnfM5KSxSFiH0rI18fAfisqIXfPC4cEYrjl9u9T@vger.kernel.org
X-Gm-Message-State: AOJu0YxU8bVunG+A7hQPfYfatib4Xd8xLh+q6GNOA0h+ASxrX0FLQf99
	XNAfqbwAUGcWn6rLXeZjeNLTf14NFB/8vs7iRAarijzfP+7DiPX8Kw4tadjT1xE=
X-Google-Smtp-Source: AGHT+IH2OTiB+QZPXTSj2Xs1QihUyDxM68B45YoqASQPr1RF5iEjSHbzN1GfHT1WymhYm0AgaUhmVQ==
X-Received: by 2002:a05:600c:1d18:b0:42c:aeee:d8ed with SMTP id 5b1f17b1804b1-430d7488fc7mr21015825e9.7.1728550504481;
        Thu, 10 Oct 2024 01:55:04 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6bcf5bsm902012f8f.32.2024.10.10.01.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 01:55:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sunyeal Hong <sunyeal.hong@samsung.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 2/3] clk: samsung: exynosautov920: add peric1, misc and hsi0/1 clock support
Date: Thu, 10 Oct 2024 10:54:56 +0200
Message-ID: <172855049020.142350.17701587570659888437.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241009042110.2379903-3-sunyeal.hong@samsung.com>
References: <20241009042110.2379903-1-sunyeal.hong@samsung.com> <CGME20241009042117epcas2p3805b8b5f3a65ed1ee39d5244310b9581@epcas2p3.samsung.com> <20241009042110.2379903-3-sunyeal.hong@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 09 Oct 2024 13:21:09 +0900, Sunyeal Hong wrote:
> Register compatible and cmu_info data to support clocks.
> CMU_PERIC1, this provides clocks for USI09 ~ USI17, USI_I2C and USI_I3C.
> CMU_MISC, this provides clocks for MISC, GIC and OTP.
> CMU_HSI0, this provides clocks for PCIE.
> CMU_HSI1, this provides clocks for USB and MMC.
> 
> 
> [...]

Applied, thanks!

[2/3] clk: samsung: exynosautov920: add peric1, misc and hsi0/1 clock support
      https://git.kernel.org/krzk/linux/c/5e830d3c97d50d619ea8eec04403e87ff7538c76

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

