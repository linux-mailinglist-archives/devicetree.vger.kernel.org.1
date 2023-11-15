Return-Path: <devicetree+bounces-16070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 005777ED5F9
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:24:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 301D11C208D3
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314333A8DF;
	Wed, 15 Nov 2023 21:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pnqm4iTI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7955A8F
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:24:02 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-41cbd2cf3bbso11562591cf.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700083441; x=1700688241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nAMTI965yKRymeplVxBCZKMPT9nQRVKnmgoIwdtDSmk=;
        b=Pnqm4iTI087dHfvyTSuWs8z5/n9x+gvxpaj4AjZtUBgNfATO2vSZy8jPo8Ulv77i6v
         YIxq2hNXR9kc0PD4ZVgaN5xWiAhxk4yeHyM2lxe3g1elBja5GQGYxJTVWfxqmgGbrFMs
         UhSMGqlU5vf4gBkmcXRUGUsqFXH0Xsu3chwlKmOrgX+S0z4M0lp5GsfBLLojOD9KaZl6
         a4UD1cq580KrrwRvHhomTxoKtCvcXcsTxrbRn/XjYKleuDRrpVmI92wcOa+jTzuXBkmc
         rFozNY14Nexga8ejorkI3uu8KUmhyJIW8pkKjgI6uZv/nAz1tSHGWs5+J9jPTC97xec9
         9KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700083441; x=1700688241;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nAMTI965yKRymeplVxBCZKMPT9nQRVKnmgoIwdtDSmk=;
        b=HPTeyhSdXUlnIjvyQfWtt312H7u+ZxooDiF1aeQa+W1mrbSH8Nq0AjZNt25YA+hEP1
         oK20kZmdVxyCZfPvwdGo6bsQnP505n99/QUYWKEPCl/7Ph3e4Hlg2oJXDWM3Qdhj9Z/j
         ll0M9qAFk25jcga0KIGuBuoPyrv9awmxrswzLIpskJ2Jh95PmRPNsvdk3YqKINCVd79m
         bX5E5wB1CARwk4H/7fp7vWf9+zUkrhLPoMEgfZfVCInuK4q04krWjMjOOOSJ3cEIi/ni
         H83qSBQ9UwD3Xy9B4q2AI6z0gTEIvwi5yma6vWKPqcoaKQfOsyJlUuOaAgeMYahdSfLW
         PuSw==
X-Gm-Message-State: AOJu0YzH6bXFK1UtfeLUB96Fj4dhhP967VDBZOsoJzDY/C9tCbS7ZrT8
	7ThMilaGBSbMaliVIOv0nwS0rQ==
X-Google-Smtp-Source: AGHT+IGzygePpmpcWGYG8kJpIBOhG7+gdAgRPvmdp1e3CnzqNyv/Q4OjXwT9P+NL+dlHZ7YhuIa7eA==
X-Received: by 2002:a05:6214:1706:b0:66d:6a92:16c2 with SMTP id db6-20020a056214170600b0066d6a9216c2mr11586371qvb.8.1700083441639;
        Wed, 15 Nov 2023 13:24:01 -0800 (PST)
Received: from [127.0.1.1] ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id t18-20020a056214119200b00670e0f71ff7sm843262qvv.90.2023.11.15.13.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 13:24:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230722121719.150094-1-krzysztof.kozlowski@linaro.org>
References: <20230722121719.150094-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/3] ARM: dts: samsung: exynos4x12: replace
 duplicate pmu node with phandle
Message-Id: <170008344099.8771.17170805240532407985.b4-ty@linaro.org>
Date: Wed, 15 Nov 2023 22:24:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Sat, 22 Jul 2023 14:17:17 +0200, Krzysztof Kozlowski wrote:
> Devicetree for the FIMC IS camera included duplicated PMU node as its
> child.  This is not a correct representation of the hardware.  Mapping
> the PMU (Power Management Unit) IO memory should be via syscon-like
> phandle (samsung,pmu-syscon, already used for other drivers), not by
> duplicating "pmu" Devicetree node inside the FIMC IS.
> 
> The change is not compatible with older Linux kernel, which does not
> parse samsung,pmu-syscon property.
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: samsung: exynos4x12: replace duplicate pmu node with phandle
      https://git.kernel.org/krzk/linux/c/797bf47d8a42792762cfc74dc84109d6d893ddf2
[2/3] ARM: dts: samsung: exynos4: fix camera unit addresses/ranges
      https://git.kernel.org/krzk/linux/c/ba2a45a48503665f7e8eeec51f8b40456566b0cd
[3/3] ARM: dts: samsung: s5pv210: fix camera unit addresses/ranges
      https://git.kernel.org/krzk/linux/c/07e6a553c2f1d385edfc9185081dee442a9dd38d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


