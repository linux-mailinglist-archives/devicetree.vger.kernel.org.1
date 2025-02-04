Return-Path: <devicetree+bounces-142869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFFBA26DAD
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 09:51:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D7AD1885C41
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 08:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E938207A2D;
	Tue,  4 Feb 2025 08:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G3NVP4Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5610020765E
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 08:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738659059; cv=none; b=tolB46Oqv15xJxac06SmLGvONVcwsjg0KLYSKMqW0wWW/Wd45+b4PYgXse3/lpckPonebx66Qnbt7UV1duepMq8JDWuB75tWe3zaf8I0kyXmFjKeSURksKxKfRHulUYYOtDDxlSldN+P7WW3Ms6jPJg79o180UuDmTXM8PZG3nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738659059; c=relaxed/simple;
	bh=kqmMsjbCNiclb8j5uBxumVvyp3UHeWEC2xIcNL1SHNE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Nz1gUIWfcCu5wX5uJbpK2iKYEcv4bqETPMQ6KZqdiwzUWwEfNKq0SKUo/25U2wMK9NRCSxaRsyR8OyxjrYTn6RL7rIwrym8iW+GfkFzD83EKBwUk3CG7YMlOFrGRVj7nvkCPndJrrFxnyd6UBPYfdpg0ZQvnqmkdA9DYX2SsKVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G3NVP4Bk; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436246b1f9bso8036825e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 00:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738659054; x=1739263854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SL4WrTFt01P5kb4nbA+mR/wAIuzdlMsYyVAk52AYWQ=;
        b=G3NVP4Bk/vFi4d9MZxtyx+0yInbv5O3cVWBtJvGMBI2MhNo6C17PteyJSGezzqNbbi
         U9YtRzwE8e8ZTjFO6b4mSSDKMbA1wtoJzJ9duJ3QXmaxKfiDICxedOeLp4jfFSycNJ5e
         kn6bDBH65MSFzP8YZ01i0dBsxtt9dkZIdSnM7HZiWXSCs/QZIsFlOTRmVtE7We7v4xZJ
         /SzYjbG212KorzFCV1ZHHJUUlBIvQ4sPE42Ie47Px8q1AXkxjNikwwv/oFSpy2NHTITT
         pAUHKvqgHQ7qnP8XcVH6ggC9tQ3jWFAeBhcmEcsQArMsm4Wju/jZ9dEuxLcxgyLtO7rj
         gPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738659054; x=1739263854;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SL4WrTFt01P5kb4nbA+mR/wAIuzdlMsYyVAk52AYWQ=;
        b=fXYCXzl2gd8aY6QXf3Ni1fo7fEv8fRYcJxFKd+E/IQozu1zgebRpFjQtb1o6ynWOmV
         /8sZEpxcpFYBERy0HEF+avV2CZCpbIHxs93of2CP0RzR23IHGGQ8bom9O99sOXyU4xBU
         lml3qq2HIrAewjTiVmxh0fAzGkQnq2wCa/hfZxJfvPoY7UNK1jf12SyUObW7rNa2/B6N
         54cn65Ys7Z7Q8OMPDtuKgra2mgUtc1QEAyaDyu9/EbFixUXhGJcaPZ95ycUTG6FkPQMp
         zV+DorxGZAJkNwi/zKmxEJjdRP0nr3JqrV55UCCuTfsjjoej61yGX6q43SejNKQp/qiG
         /eEA==
X-Forwarded-Encrypted: i=1; AJvYcCWVYR1YLR5/BFFoT7WpM0Eq4l/RQga2J2nV39cz8mZfB/gQ/y7E/A+GLkqxMt8O5jUGgPXfp4/1NFKN@vger.kernel.org
X-Gm-Message-State: AOJu0YxxSDCo3zBLukYLqZhIqRc4ZL/5j9iAeftV6Vx+869OMTojoOrO
	LTNgWLpPoRF2v+6a7L2P5fwYAFKAQDCc6RRWqF2uCHiW523hMMBMLxNa/QKWHL8=
X-Gm-Gg: ASbGncvvzD4OHbZlGxiK5a6+Oe71+zQZp31vm5hjsaSbLblert/l/+Y5OEd75oNy4A6
	afnSuPyC5fNzmQMkCthpZxcDrHPB3bI/yDANowI49qPpkBtLV+/JZc7doqO6pgocw7tDomgg2cc
	gKR7Pf+s2cySPM29pBJg0djEy96zvvpBlW5ZSpsau2IE0IB9rmO6xwfFf6O0yUgcbB+03bsm4ym
	N8Yb56iabusw+Bcx0r7DepBfm3Iqs/gwWPEASvdlDst32PTtfdFHBSgHsHu5uh9FHRwT9hzEgOA
	Hphw5BdAKvCiadA1qBB4rN0cC9Pcngk=
X-Google-Smtp-Source: AGHT+IEiM4BEwyj9kJjGaATYMGTVdtTyQJ6Gai0nJrlUHfZWE9a3z3Pca5QvAuf1g0u3xA6mvsDd9A==
X-Received: by 2002:a05:6000:2a9:b0:38a:69a9:af95 with SMTP id ffacd0b85a97d-38da4e1c7a1mr784380f8f.7.1738659054614;
        Tue, 04 Feb 2025 00:50:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38daf27bbf5sm503066f8f.48.2025.02.04.00.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 00:50:54 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, stable@vger.kernel.org
In-Reply-To: <20250106-contrib-pg-pinctrl_gsacore_disable-v1-1-d3fc88a48aed@linaro.org>
References: <20250106-contrib-pg-pinctrl_gsacore_disable-v1-1-d3fc88a48aed@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: disable pinctrl_gsacore
 node
Message-Id: <173865905338.26600.2847324274342938346.b4-ty@linaro.org>
Date: Tue, 04 Feb 2025 09:50:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 06 Jan 2025 14:57:46 +0000, Peter Griffin wrote:
> gsacore registers are not accessible from normal world.
> 
> Disable this node, so that the suspend/resume callbacks
> in the pinctrl driver don't cause a Serror attempting to
> access the registers.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101: disable pinctrl_gsacore node
      https://git.kernel.org/krzk/linux/c/168e24966f10ff635b0ec9728aa71833bf850ee5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


