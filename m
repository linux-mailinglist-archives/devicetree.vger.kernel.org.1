Return-Path: <devicetree+bounces-115955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F66D9B17B7
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 14:02:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6041D1C210AA
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 12:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F19E1D433F;
	Sat, 26 Oct 2024 12:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AJ7fCEUB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E5113B2A5
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 12:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729944116; cv=none; b=pDo5nz8Wo2yn5eYpa2igCMzPLvVDdoU6ouX/JEAnlCKHdWJayAoqGt8zq/lXE+Jkd4KMdJTnhxLbq9ZUWk+n/0ugHPIcCtQdnyNG4wIfBOA0BeTDMYTSXuGYrpmQB2WIGk3xtxZKOcodEilQ9+tj29L9ji19fOza2VHuNEOM4cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729944116; c=relaxed/simple;
	bh=9GS99lzhdnNMT9LpV6PpxwW6BOkQ02qXLQl9hTQY1YU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LEcl5CulLotWD4Hh2CPUUU/v63Il3JN9dOfOt3sBhtpgOspEwa7QyAksxE1g/9o5nfy/0oCEj7iX5LNwG1SD2psDYiQlRYSsxEvid4JhtJOavsfUKeOkG+QZmRWyzYvrY2YuERCMELjOy+17L9E41/sxbYc+nAmkJR6jAQ4fboc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AJ7fCEUB; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c9404cef42so461948a12.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 05:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729944113; x=1730548913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivIAohcESshAYpEPq++t9hJfCpjXuscXbD6Im/FDokQ=;
        b=AJ7fCEUBY+Myvx40AIhxqe91LgbTR4xX1blA+VWJ3i3d76HHN8si2lfQA9xeWMWPzE
         JQcVIhDUCLqH2Tm/xTrmIxAbuY2bn2ccO6JzJdpjp/RJ+qDIt4UlX3wveWSLC0dYEyMD
         npQrjVpPy+HpUwVbg4bH3zc17oRzEZXHqgvmoEjMeLHn0ImmiQtAXv/k2rZHRUoCarJf
         LmBtzSh+aYkaThp+ZuR/EdTSJ9udJeagbcznlvfZRyt/cwXa2O8+FVQ5Yg866N6vmV0w
         y02UDKz2p1NGvt/9IhmjymwDzC5rAYZ5j5OUt0WPEpW8AMEo0/t2b56VPrqgBk4/+BWj
         ecQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729944113; x=1730548913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ivIAohcESshAYpEPq++t9hJfCpjXuscXbD6Im/FDokQ=;
        b=ZIDFpeYcKcVv5W6Lso8BgAMMct5tQYmICjvv7H/dQ3XSKeYF8MAArMphvItf6xKr0b
         dx9Njh2fs542QtgWtffveJJo4kL90ULikfnceTIIT27h4i9FpRi+LeFe6i7gNooivngO
         6tiP58K1lPFVsCs/GaSqfF4fqKs9dyF+09eo7HBFq7Zvs75aCHttOYquvgWgVgy5Sj6X
         zc5VuZuMdqUHRRbr0v4DeLLDH58WKZv3N0UVHD/j43RrHKMofuhfL4d3SMjA6v9m+aUf
         Wv3qgXCHHtZAxyfIWAX0P/vBpzvJ+bvcDqeJRN4iXNzih3JK3HeFUIfY/kjRgbZrkIFQ
         HM2w==
X-Forwarded-Encrypted: i=1; AJvYcCVdcO9liyQwYHxoQXbZ47Wts72jUl0ycGKmcvuSmvkjG0q7PBESEXyiHAGqxY+yaOSQnJpIpMmiswUW@vger.kernel.org
X-Gm-Message-State: AOJu0YwizYNb7zDnqoUBKnoX7kpelBXvDEVbjCrw/yjhrMtNQrgmrbeJ
	XXLn7NYqovM60fLshQ2lmw5BJPlO17+u0oGCnXiTWroSCnIUrByN/sqE8Ns0vmE=
X-Google-Smtp-Source: AGHT+IH1dsULDIYCbXnhWrr2hutsWuzTM/gAfeo0yzwyxxJYFFg4QA218/5byXKAvC9+SNM44aVSrA==
X-Received: by 2002:a05:6402:13d5:b0:5c9:7f8b:4fcf with SMTP id 4fb4d7f45d1cf-5cbbfa58bf5mr660881a12.6.1729944113136;
        Sat, 26 Oct 2024 05:01:53 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb6319711sm1490421a12.66.2024.10.26.05.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 05:01:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/3] clk: samsung: Introduce Exynos8895 clock driver
Date: Sat, 26 Oct 2024 14:01:48 +0200
Message-ID: <172994382528.22240.15972019701074354702.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241023090136.537395-1-ivo.ivanov.ivanov1@gmail.com>
References: <20241023090136.537395-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 23 Oct 2024 12:01:33 +0300, Ivaylo Ivanov wrote:
> Hey folks,
> 
> This patchset adds initial clock driver support for Exynos8895 SoC,
> which allows clocking peripherals like MCT, serial buses, MMC, UFS and
> PCIE. As platform support grows in the future, other blocks like APM
> will be added.
> 
> [...]

Applied, thanks!

[1/3] as well

[2/3] clk: samsung: clk-pll: Add support for pll_{1051x,1052x}
      https://git.kernel.org/krzk/linux/c/49fefe602d8fa7323b51ffc4891acf4a91dac193
[3/3] clk: samsung: Introduce Exynos8895 clock driver
      https://git.kernel.org/krzk/linux/c/c6e45979204d092770c55c0b2d1fce6cff8dedd6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

