Return-Path: <devicetree+bounces-225783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE00BD0FE5
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 906B21886846
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC22C1DF987;
	Mon, 13 Oct 2025 00:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b+QRD+Eb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3234D18BC3B
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 00:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760315165; cv=none; b=QiLquoz9lqOUtmoUyZnr6kkmTVAHlXHtHBzy4jlsGY7coFNx8CnGalAkGWfmYybvG51LEmz9Z+oE7mWIunK9x/yJGCjVwvJ21zs3+ojkEgWvvf3SBcF7Mj0TRCa6+BY18OdN2982CXWen+yIyj8cJe/UJMue4mqwpXts2fhr39w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760315165; c=relaxed/simple;
	bh=yTHGa3VhxPtU4MdOYplB9XQjuEwqZ7zeosg38lw/Lsw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=m2WtKf/XDYMBbA7tciRmxUZDwlkpRYFLmr82U9d4n78iHYf75xT+r0DP/3ThyGTxOJhfrqTMBC9P7DnpYFX06r16W5TjIAneN2SZYpTGYsjYMevKPU30v5jz79eoLmGrLNab5316tHxg3q1hJ6sDsMoIzz0Xzsw8tUmP7TDc6lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b+QRD+Eb; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-26816246a0aso8586405ad.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760315162; x=1760919962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBN2M9cMiE7Nv+ckCsZbOUgyHJWNUYkdtLKpVQjtD08=;
        b=b+QRD+EbM1H25Euku2dTdoM8J7+VeYBtOrh/D1hMwaDuRv2LDuwYnYVXAwqDW/WUck
         CgjFWN4WF19N4HbbDhwoo3LOXSk6mlSDkbOrGC+F0H4WFYil4JSW6TpCF9hunZ7S6LmP
         2w7vL82PKoPSZKYkUr6c0S43u+k3VVp62YIHqTzuRs70FRSBKakUsF+DdDKIV2Oe/1IW
         rwpa8xga4WF1qteQHag72CPeTWWn8Uk5tCGdMJl5ecJGzmG2YGuk99jSjlzVeF2htO9A
         EfVuEztVc733T9XhQCD209h3vpi5ZuhKuhiV1rohgpMpbGETpdRyNr2qzIq5xTmk/YL8
         rp1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760315162; x=1760919962;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WBN2M9cMiE7Nv+ckCsZbOUgyHJWNUYkdtLKpVQjtD08=;
        b=oRVBYMh7Sen9xHJhXhifw1ny6wX9tGUn0c3TGDAxz6KVOv2TTjbp8liWfaVLl9xIQW
         Z6V/rPq3TVk1bI1bO3Lb+gPI1hfIFLEWlKvyq541iUhlkLKFypxcFmvOLFt2603Pufa2
         iImSrqEKIMGirMFFmjEnnVHXrqwVJsQfSIVuX4RYLajSML2zK8ttbzz/dbrv2yoHbLn/
         MD0IsCM/3M6alVLOGqNOsXh8stZP4lLdWUgN0YNWJ2Q+A7L5h/IbAAafBdQfPqauSuFE
         eL9331yqL8sZD1OljwGvXMoeat+y1ayzDuMVeciSi6p9jV2Zc8ogfeTwO/9ELvGSo5CH
         etsQ==
X-Gm-Message-State: AOJu0YzmcrP7wtA6vIYu2JdWhEPf9H3E/1isCvJmJWbI/pyI5XII0yRL
	TG0GhpJbTfECM3jGgY8NQxlUCP2QRgWFrMqMV3VBTxVma2RDIcdOQQA667rLZGdU5gPAeoNN0jH
	pMQmovB4=
X-Gm-Gg: ASbGncvrxgGq8LgJolJC56xiNTU8w82UfBWDXc2EiMvPs8dZ2kl3s7+vO1PpYfKRe4R
	nGvf2H9+XsqGpPImO2DJqF8OdSobAo3q9co4Rg05GTtzylOYsk4ohc9hx2XmJiz47J/dNZLr8oF
	dhnBAgguRXBDlLxXsdwek7JNhXw60AvYx42DP39Ndrb/AOERd61Gg+GbT7P9SNv6dKa713ZkrLX
	LO7rjHW/mEqceeyENaoJcPwLZC5QvOv3ea8mmt3Z2hU9oTeKKOa6EGPP2D3bxxIbO4cuW1PPpPt
	sTnr82pyC720sOD//ibyVpkyFk3lSKNZkTDEZwDhjEfMmVIk8lDpGT6a2gihEPHFmAFpkVb6J3N
	EFStiNW8gHXE27lp3pAKCu61wwNPGxAzn+CMkg+EPDjrycyadyYrHN6EEg2ixLcsqUWeEMMWFWD
	y/6VdxOg==
X-Google-Smtp-Source: AGHT+IEwIgW8gINldWjknWYV8MJ0j1jUN7u37O93AJbcBBhfRalcRq5iqyc2MYvjmSLv9qtnZvLvRw==
X-Received: by 2002:a05:6a20:9383:b0:2df:b68d:f7e with SMTP id adf61e73a8af0-32da8461710mr14706065637.5.1760315162189;
        Sun, 12 Oct 2025 17:26:02 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d096740sm9624862b3a.38.2025.10.12.17.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 17:26:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250928-exynos7870-dt-fixes-v1-6-a40e77a73f16@disroot.org>
References: <20250928-exynos7870-dt-fixes-v1-0-a40e77a73f16@disroot.org>
 <20250928-exynos7870-dt-fixes-v1-6-a40e77a73f16@disroot.org>
Subject: Re: (subset) [PATCH 6/7] arm64: dts: exynos7870-j6lte: add
 bus-width to mmc0 node
Message-Id: <176031515743.11660.18346080313426927067.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 02:25:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Sun, 28 Sep 2025 22:13:57 +0530, Kaustabh Chakraborty wrote:
> Add the bus-width property in &mmc0 node. The Exynos DWMMC driver
> assumes bus width to be 8 if not present in devicetree, so at least with
> respect to the Linux kernel, this doesn't introduce any functional
> changes. But other drivers referring to it may not. Either way, without
> the bus-width property the hardware description remains incomplete.
> 
> 
> [...]

Applied, thanks!

[6/7] arm64: dts: exynos7870-j6lte: add bus-width to mmc0 node
      https://git.kernel.org/krzk/linux/c/9e3e37939362ba110c341cae09acaf000c0edb34

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


