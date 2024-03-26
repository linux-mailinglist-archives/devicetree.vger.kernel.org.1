Return-Path: <devicetree+bounces-53280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F82688BD06
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 10:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A9392E48ED
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 09:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B30C1BF3A;
	Tue, 26 Mar 2024 09:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b4+gF7y6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747A318E10
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 09:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711443624; cv=none; b=cIf1wVYIQ3UmUvg8isBcgsRj0rTjXNO0aoxBFbx5nX8TkyGVbNL53w3pAteT3XcJaFU5e8ZepFaURcaL0lgzsGHY34hWHOroFfzNuyZypl7a8veO6BZycXz8lvKQ9TTZyH23LNfcre8wOvxBiVoZnpRIm12PC3c1sauVqxlrC5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711443624; c=relaxed/simple;
	bh=pNzfa0tdg/eWAuQZW6ONxAInY6gp1HmiXSutOixrMY4=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=AW/gIFrbayboXuxHxD95aoP2w/iHptH95wmOzfjHVMRp5BMzGdLFCAmVPB/IWQoVNHbqeAINyummQubrDCGUiQvNWv/YjO1X307foL+P+BLjq8po0Hxq1Tz38pGVPKggA96EX3q3bhNbOrn2pMpaneEvp1VaROL+ZZXAodhhtOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b4+gF7y6; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a474c4faf5eso262406966b.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 02:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711443621; x=1712048421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4iPDWY1+f0T1Q2vEEbvMtradJ/i1iR854HyXNPduhM=;
        b=b4+gF7y6P3rpW28puep8VGUIolak4Z4zZ/lajVUvG8+HVxMUFYJSJU5IcHwtVxuLKN
         uYZf+7iCb6nBBdysbt630Lcr03c7E5ukk7yd0aUgd6srAgToWkgmxty5xZfnHAQhKJql
         pSg05LEbFG5rDfJMhLj6L3ZTJ+bu/Fu4Q5IaxPMQ4DjLMc8K/bJlR6GSIGfs0CSqexdl
         YVbXIgOxAUzqzRUMq0NqYWs4PVWHEsFo+Druye6k6aeGQ/p/4kO0wM8PEpF/DonNMRv9
         vuiC7QVL4C305hngY/ab1JHVR0eE/DRq1pp4lvKzVFqKUJhC/SK9Iel81HHNkaqOu9AA
         cWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711443621; x=1712048421;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N4iPDWY1+f0T1Q2vEEbvMtradJ/i1iR854HyXNPduhM=;
        b=aLB9mbYhgWDJdFcDyyCiR59R0CmdkPa/M57iO/MBmHgdfH72EMzdgcMA0nG2kERVCb
         WpdXXIIsOVuOPIrMcB7X9VcjyqUsYYaOsmjHndlyeHBJn4gS6ljRpLdwWNosDfBKNNsf
         B7dQhENUcTr1XyiOI4/gmCBGzaHrx2rDhsSth6Ma4sKzcjK+wpzK0FqCLfo8avXFqUNl
         gFlXUTz5auN45/BuitriGmmQNTrgUQ6ke+lQJwHBdfd9Gyut57Q4oVpY/AhUW739Hypd
         Zx2gPMVdJItC4Q6ySw6sO94/4KSjFI1Ksz+bf8mJ7cVQf/ZW5eudsowVqsm5ChIYhb14
         GUEA==
X-Forwarded-Encrypted: i=1; AJvYcCVIfBpals0X4CJwiegRwp6fgf/BbXlv4NThoYrarzUQokQUS5yec3Jd0JeqOg+Lj/RR5hf1Y0DV5R5gz/anEWMTa/oEAr9XJHL1zw==
X-Gm-Message-State: AOJu0YxjeVe51AOcecfkb1DaLncKH2zatPg37meI8ZVUIH3RmiZsHE/K
	M6+iMOpyWO5gAb1KeoRX4JA1Gu9yi1tA7NDWpBFCNEZ3SqLUkxsOE/j/TqN7JYU=
X-Google-Smtp-Source: AGHT+IEyA1ZISAYO+CTSMcYnd+8P39nO4D6VhkYb5rVIQFSdgNbddobawaW1CRoklpLfMEqGbBHpSw==
X-Received: by 2002:a17:906:260a:b0:a46:de64:c479 with SMTP id h10-20020a170906260a00b00a46de64c479mr5987710ejc.69.1711443620676;
        Tue, 26 Mar 2024 02:00:20 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id a8-20020a170906670800b00a4710e7817esm4000973ejp.135.2024.03.26.02.00.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 02:00:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240312190348.724361-1-krzysztof.kozlowski@linaro.org>
References: <20240312190348.724361-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: memory-controllers: add Samsung S5Pv210
 SoC DMC
Message-Id: <171144361934.95197.9760843620606063956.b4-ty@linaro.org>
Date: Tue, 26 Mar 2024 10:00:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 12 Mar 2024 20:03:48 +0100, Krzysztof Kozlowski wrote:
> Document bindings for the S5Pv210 SoC DMC memory controller, already
> used in DTS and Linux CPU frequency scaling driver.  The binding looks
> quite empty and is most likely incomplete, but the platform is so old
> that no one expects any effort on this, except documenting what is in
> DTS.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: memory-controllers: add Samsung S5Pv210 SoC DMC
      https://git.kernel.org/krzk/linux-mem-ctrl/c/e23359d88a81679e7c55d221e7cb4c39abf5d760

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


