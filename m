Return-Path: <devicetree+bounces-99052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D5396880B
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 14:56:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20F961C2189E
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 12:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AE41D61A5;
	Mon,  2 Sep 2024 12:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C0Pubn1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9C7201269
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 12:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725281766; cv=none; b=jkaOtEkL8ecA7S+X5MYtHkRpNawWnn5mqZih3cpyk+RKwO4tpddqpoVBWP97uI1AKskB8p93Fz1Dcr8AQdbJIaTupEKMK3M76UPZN+g2kJ3OOgsslkryaRYpxula/PCeYaS/LNWJ2MWEb0wQBDrWRXC1h9i8EIjXq3VVMeF/G68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725281766; c=relaxed/simple;
	bh=RLumHEb7qWE4JfyCA5WnXvYQKHxzAU+asHtpAq54IBg=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nvAhHBLQIrnvut+6at1OHwnr2V6lXDxoC/kVIQ+CXFjUiSeMGQgBG8QiXr1Lg61bNkKA6obKEFjK1SDKWP8JXsnZPOqssZRx64H1K9myJMCq4k/PDNRZEebdxS6tRde4ZYVuDzLvcwhYn+2Oy+Ei4OykHavHpGW8MksQC+PPxqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C0Pubn1Y; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a866cea40c4so481502366b.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 05:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725281757; x=1725886557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mRq1nfnnUhUMRuP7ndrQm92a5ybx/cYKL+FVE11lKTg=;
        b=C0Pubn1YVZMNhnWyD7TAI/WWwpxckCyzaf8DoWdkhQ4nV08WfGX9k/khFMExUi5Y4j
         HYEe1pcoV3pI5JZXz5M4iV5p6TOr9kEAQ2AcWFTBxIlVism6vJD86ZtxCChPyI2YDmWj
         cOOcWxqg6TnaDEYJu9NN603orPUD/4kgjiIXfWmdatzp2xceNyHWVMEjD4R/TubYUxo2
         RWQG0s5Mbx6GunquOOD8QmPvPu6J7yAEAIe3e2o9bTO6sTrAY3dSN0qYAbNjNmhBscqC
         NDzgUSTyqLr6GXB42c51HRG6EqfVhAk87VSR96UIYJdOpOSpmQinpMO2zMzZXbFLwa2j
         uHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725281757; x=1725886557;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mRq1nfnnUhUMRuP7ndrQm92a5ybx/cYKL+FVE11lKTg=;
        b=EMEO3kL1pdle/S/HeMTsIln3/+lGkOoql46xfjmq1eDLOuUyxa9eb8sxv8LsrJL7Zo
         kCzIaravQ+mseOEvd9ajoq33OfqkyhgFu4fPO4sDFAIBrwC7NaoBBBULKtr/By083E75
         rtbviXdm2xKieJJ7Oa6WuUdFZyuk6bjrlhLSkyiVyc5LIsfp5ATKnHW73rco75fPRfoJ
         PgYa1uxDfmlEe6STTkuJTZ2aYH4qZ0rVPaw72tanNK0TqpwuDGiWIn1wblglbyGvRrKu
         2pu/+m4bdPB0/Yrf2yHo2Y8zGp5un851wxARH6XMR5PnhTqDqMFGrcu0G3Nlbn4xj7IO
         vnBA==
X-Forwarded-Encrypted: i=1; AJvYcCVeYbhPrtjPfYDQ/TXGLHDH5r53Rh/W0xjs9byPrIJWMMy3hRAbpiwopR0+tIel+jEIXmetJpR+xcXR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy299fi5XKmlWucrxZNwbCiAIvbSlWHPMDx2jxWFaYYYZPYxmet
	QA7ofX0Mlw84CSohx0tDpHMF2bcrZCNTgFKHjqjPtwTCHQqzIGWVJKNW6HrNwQ8=
X-Google-Smtp-Source: AGHT+IEoQ4/Dfc500DOxwirAQ3QPvKcm4UqzswYSK6n4xJfPLS8U3/M0gXvKw2QuMJYLiGjD5OQvnA==
X-Received: by 2002:a17:907:944c:b0:a89:d1cd:1936 with SMTP id a640c23a62f3a-a8a1d29ba5emr10139966b.3.1725281756767;
        Mon, 02 Sep 2024 05:55:56 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb410sm558203166b.21.2024.09.02.05.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 05:55:56 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240811151737.106194-1-krzysztof.kozlowski@linaro.org>
References: <20240811151737.106194-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: nvmem: st,stm32-romem: add missing
 "unevaluatedProperties" on child nodes
Message-Id: <172528175582.63217.5487746839450506262.b4-ty@linaro.org>
Date: Mon, 02 Sep 2024 13:55:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Sun, 11 Aug 2024 17:17:37 +0200, Krzysztof Kozlowski wrote:
> All nodes need an explicit additionalProperties or unevaluatedProperties
> unless a $ref has one that's false.  Fixing this for STM32
> Factory-programmed data binding needs referencing fixed layout schema
> for children.  Add reference to the NVMEM deprecated cells for the
> schema to be complete.
> 
> This fixes dt_binding_check warning:
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: nvmem: st,stm32-romem: add missing "unevaluatedProperties" on child nodes
      commit: 0d1d52a2d43b56d6bd33328583c81d85c1aa97f6

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


