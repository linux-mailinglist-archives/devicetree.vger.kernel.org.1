Return-Path: <devicetree+bounces-39593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB3384DB0F
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 09:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74D871F235D2
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 08:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2048F6A8BB;
	Thu,  8 Feb 2024 08:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WTyukh7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6876A8A1
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 08:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707379726; cv=none; b=GiJz3YzqasI59m9QWDWk2QNRjsNzKi2DUVtMpeK6nQDMw0Une0sUDA1FvZPVv3MaEKjeOnbI1vR4bs1jyU25C+HjrofXVy2KCCNw/dhXfwV4OBaWOlJ+vGFP22M8nRbN/DmiUUIDPoVMGe3uch2KLyPoz1ZDEXAwhZND7Y0rEHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707379726; c=relaxed/simple;
	bh=fd8o5HgLLb9xxGgOAt425TU4zZoNTb1DKaJucS6kv3w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sYCpzy9Ro7g7tmm3CQ8bNGZadWau1B8FxvrTJkEEZZWkrW9w6CkV+S5bqQaZePAMi2KUxyqnHwjc0opgCJdewPYDc+KZCAMx/1kXV02CcqGL53bBk/gr+q0SzA5MfgS4Ue8WHPtawpWcAXUZGlhJMA4qLv0nZMwrzw3einsoj6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WTyukh7R; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-410219f18f9so8142895e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 00:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707379722; x=1707984522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Toj79ymKzNIKiZBdlDcH6ZznHrVcAbCsKACfCBNCkOo=;
        b=WTyukh7R5DexTdE7YO/jt96CMoKpW5qbjok3n/GloCpTZr1EME7YUYacT75wTsPpO3
         l/ljU1N0KQXfyBtYZiPPRo8TSrXxBlvOOn/0nf5VdFpiDDAMkSitvicDR4jWc0Z7sPN/
         QTyHfyBYXK01VW2gWtpiHZi1Mb999BnZzFR7zlQi0Psmzxgp77mciiwowj27qGRpyAT2
         0A+cc3tzgthb/lYP85eqvMLBaY2Agck38p+CY0ZW4AsKQo+JwiXbcGhbpghtme0BR+oO
         XLfkH1fr+/6idyq/VbelxtvQ7NLS/FtbVPdkGw9MFqFeNTt07LvoqFLvGU9BEbGXcPnH
         wmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707379722; x=1707984522;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Toj79ymKzNIKiZBdlDcH6ZznHrVcAbCsKACfCBNCkOo=;
        b=rfVP7+gEG816+CIk+LVcJKXJmRNTbRv9BwBjVnJ7lbnPsvAj5oi3s+/CmIYOiFB87l
         7pzi21LpPAn74astkthHo3eRm724UWhT5tKB/0AUN6vG7WkQR4JjCEaPrszZk6WA3bhj
         sCqE8fVGIUqUg5ScM4rzRS36yUZOuzPU1ESRokBzhVSPiZVgGCjF9fLKGwc7foNL4ZBf
         l2I2AoP5G4SYEGVxL4Tb6kSFz4+pypm0yCxWVL+ssczFmD39jAOISpo9sNRqtGeK+FMy
         jovQcQuYidA0I3f7ZVAcZZbPPNzvjPdG5a7CRAjbQDyk3L16PfgPXQ+43hGIXomd5bxY
         31aQ==
X-Gm-Message-State: AOJu0YwT9v4h32/WxHTodPDu/TE0WbFO/4ZsS3xaFJok1DP/IYoFNKrZ
	hxXjP/Y//nxmOyNbcgrBOW2vS47bz+VejurDwTNHeYzIk8XU4GIUNM4wFRmt4/qvMRtQpkDP0X2
	r
X-Google-Smtp-Source: AGHT+IGTTlIUWS2U4hnjFra03OBr2NF6ysl00pLA3hZpRrUPSIeOwzQjZJKyK1JHXdu8va9R6ZadKw==
X-Received: by 2002:a5d:64eb:0:b0:33b:48ee:8a31 with SMTP id g11-20020a5d64eb000000b0033b48ee8a31mr6571911wri.13.1707379722682;
        Thu, 08 Feb 2024 00:08:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWSI+ny4D3Pz9fHERhXgGGh6e3HzBn0krV3BWtF8I64DZUDa+GBovZraZbO88NiQ0/rsfc1+lMJ9UmMyMSF5ZXzwUba5Dn+7UzdPnXPcNPZWXvtgQ7G9CiSF1pk4sTqP55+TTXK4oWTqyjxnCSAzlLQOTqGVZWMRTy0ePm6tfirY/mUj8T/Dhv0sko70NwNXQMnkKcGMY64OniHq6ixE1gIaK9bVJm/2Dsu/WsNwV/FcTtz/UGLm9GCcCixHTdlbYjJFFIPFQu/ljr6KRZhSqtX79KrcIFeqU4KCmDZZmG10e/Od563kDbMMUQjFzBYINP5xqB/H8vnx9cibL99zQZDmCUivJftCriJ/bdPgJcYMN9ygbfcDmapeQVeH7fWU1KgyrNGITvF+Cy5jRezZ4g1OWmPFZNLZBTEVYw+VhxzUuuHaY3jfEEz13ntBBZKva3aznb+wR7ldjDCFUhfgOBXT5xpRsuXSKHrW779xRaONtXnku4jCd440JY=
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id m3-20020a056000024300b0033b2799815csm3065421wrz.86.2024.02.08.00.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 00:08:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com, 
 semen.protsenko@linaro.org, alim.akhtar@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20240130233700.2287442-1-andre.draszik@linaro.org>
References: <20240130233700.2287442-1-andre.draszik@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: add stable i2c aliases for
 gs101-oriole
Message-Id: <170737972037.52344.9107022607101399076.b4-ty@linaro.org>
Date: Thu, 08 Feb 2024 09:08:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4


On Tue, 30 Jan 2024 23:37:00 +0000, André Draszik wrote:
> Now that we have more than i2c interface, add aliases to ensure
> deterministic bus number assignment.
> 
> So as to keep compatibility with existing Pixel userspace builds, use
> the same bus numbers for hsi2c_8 and hsi2c_12 as the downstream
> drivers with the intention to eventually add all the earlier busses as
> well.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101: add stable i2c aliases for gs101-oriole
      https://git.kernel.org/krzk/linux/c/72ccd925dcbd2ad6935a4874679b6cf5b3de7156

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


