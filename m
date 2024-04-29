Return-Path: <devicetree+bounces-63709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E008B601D
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 19:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30C5C1C220D8
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E4B128366;
	Mon, 29 Apr 2024 17:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qTJj1P+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A8127E28
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 17:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714411813; cv=none; b=l6znsc//3jMf+4yqyHm79IRK51HGHlG/7fiK3IC6mxo/TDnIDdWZcCM480lejoK96FBGHLvdvhzWfhhmmWOFamU9eFY2JqEfWKg+ic6rRrts5tmcYcfwPvsggyqhdj9ci5vFgl345rastcawDk10jBV0rGR/vb54fiNVie8iym0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714411813; c=relaxed/simple;
	bh=iaTQupQAQ4L5aKb0tIWtWWuAWG8nTrTwjkrpuU281t8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SMELoqIqt9nm9IyU3zTLlPI7B18iuFHXrS27SRP2wfNtIOC8cqY7qJ8tZma/sIhvp+97DvsFHQcA255pRzQCRJvvealXgIBPVwmloAvPVQ9BIaBils9RS/8e4+W0TofY15OTDiV4bfmIcY73Oo+pllJkVnVh9NNpCOUkLuwxo0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qTJj1P+L; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a58989cd1f8so617636466b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714411810; x=1715016610; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SxTwvzJ3b+FUAA/qnTPY+8Sgx2L2qoMam6QtJUfQvI=;
        b=qTJj1P+LfFU2YVTLggxAoCO/QujRc2AaU0/k41C/BtMp8gjdkEBZv5Qa/RsE2ED95W
         RTqjJl/bfy4l5iqmIHOIvMT2SUMboR6X1f2pq3tQfO1YQF9yHoft2VqZmT27fVtI2NkU
         JJPba56nuDCDaJtfaa960P+QztcACX3bA0jXe4EoHymmimH/qsD1gX18TjzDMLH6cTqD
         SnJCL7GbAgv02+vMEAG/fXL9OHnJ9apx+ky1kPP8gHAIcDTz89f0vLG8SJb+kp1baW/u
         kIUVvCnfgab7/0EJFliN081ODKyJmsVT2w3eXAWcGXDf/zK+psS9hGmComoCdVdE3ZWg
         CN4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714411810; x=1715016610;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SxTwvzJ3b+FUAA/qnTPY+8Sgx2L2qoMam6QtJUfQvI=;
        b=luk9lFk7cpdel0AlQw/mpTi2mUYgy6YyCfVjz5wZKmn1lY955y8n5T2p8kQd1TSIvB
         RSZ3NajnRbRZAH98t5nP2DbzBjPVjMy5k9aJS6sLYX8JWJnr7iJjpJc1fryqpM4RS7JL
         l+P2/QYHccAm5k4UxtL6u8bQO18Ww+F7TqDdQdhc7yvwYSOkg9OF3i33UaEcfFIhdhex
         6tk15/F5y6QWH0jHeIlJp2WlhYwzkocOdd0lpVncctDgEho74QwJ8RKMhnOBXUhzhKcz
         iw++gsKyCPDk+CHZhI+M/3EVrzHuwO301XuuFA3jArhoukWriw5r/z+gAEk9rTZAi0Qb
         GqKA==
X-Forwarded-Encrypted: i=1; AJvYcCUvEyx/R3ROgjRK5jiYZWo7aRoLgu5cR+dg1SRJJ4sl75QwT0HSK0VXHeyHxqcqWOjjT7IRADt+QYMzRpsl534tm0EEdK0qclqrkA==
X-Gm-Message-State: AOJu0YzBLRyDruFhV44OmaV4A5J/EZD0uLXax99M+3rFwGoE2KNOzt4k
	LwMwei4IWVSSjdXGTFoCcbdbGcN5vsXlDKTaBPoRiQ3r0dJdI8DtNFNnnBRMvOw=
X-Google-Smtp-Source: AGHT+IEARV0SgB/0lblqA6jxutXr23c9cPn9YAI3EwhEKDJ2gkPwhoLsKwDfAtOAcAvTFz1grDZekA==
X-Received: by 2002:a17:906:2483:b0:a58:a721:8208 with SMTP id e3-20020a170906248300b00a58a7218208mr5388937ejb.73.1714411810655;
        Mon, 29 Apr 2024 10:30:10 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id x10-20020a170906298a00b00a58ed644d6dsm2770173eje.127.2024.04.29.10.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 10:30:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240429-hsi0-gs101-v3-2-f233be0a2455@linaro.org>
References: <20240429-hsi0-gs101-v3-0-f233be0a2455@linaro.org>
 <20240429-hsi0-gs101-v3-2-f233be0a2455@linaro.org>
Subject: Re: (subset) [PATCH v3 2/3] arm64: dts: exynos: gs101: enable
 cmu-hsi2 clock controller
Message-Id: <171441180847.306855.8156583534053780934.b4-ty@linaro.org>
Date: Mon, 29 Apr 2024 19:30:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Mon, 29 Apr 2024 14:02:18 +0100, André Draszik wrote:
> Enable the cmu_hsi2 clock management unit. It feeds some of
> the high speed interfaces such as PCIe and UFS.
> 
> 

Applied, thanks!

[2/3] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
      https://git.kernel.org/krzk/linux/c/86124c76683e31033180f1d31e7543863ce6d850

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


