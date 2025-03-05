Return-Path: <devicetree+bounces-154557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F059A50B01
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 20:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 418A916EE38
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 19:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 153B8253B77;
	Wed,  5 Mar 2025 19:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W0rYW1jX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344261591E3
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 19:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741201560; cv=none; b=R+rTGGwj6dpLqX7RFjnuxbhCDn+cb/cH1oyh2TwlR7oxlYBfDunyKPd6mzXirV+sTbPrYRKigRXyxhk/gnbCdpLlJTpDe3M5yw6e9KgePXG6CqhLz6Co9/Yw+W1rSezeprXAFGAELQKAOy9uFtCtMW5re9Hyxoa7+7svHx+sQlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741201560; c=relaxed/simple;
	bh=Z7PsFIVvWNKCnh0FhMc2FHab1fDB2A1BFAq30W1FyJw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dG/z7j15oBE8PdubNFxcwAQjEmULFz7QXAWc7tv1nO1JOor0WweW4+kV1chhdMx3TsDMrkV/Ft3RoohHb9ftbleOEPpW2jONDrU4dVPAWSjGbgAzDXZk5LY4gdzgFv3qDEDgggsCIWoaCeWSaF3eL9Z6mBAz/3tbkFH4WXkMbh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W0rYW1jX; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4394944f161so8748535e9.3
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 11:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741201556; x=1741806356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/7bb++1x3K8R82/vHvBTybNECeoo2FfhBX5a5/oxy4=;
        b=W0rYW1jXDQJiajUA0+vAUhWKmKL/ox5kpwIaj7ALWnpMMka52oZ+dUEvGzrrRH8oQV
         hsq35tRmCvkFnKCnQ0Bb5Gdz/5wClngYyJP5Hq857LD4CxkaiVE3VRUcuukncFq03m/b
         6AB7K6fd+MzdGm0lCBLakRmObjx7IJsZ11cnheCmcugotEvm5jrelBzqzRsJP22WEDSL
         YSGKsaZfAmNjUIdWbOliOkRiozbbKmUIt71XX5AerPl4OwoDDi1oKrq1p5oJciUDfp3S
         ORSBVkby6Ryvm2PzE5JWqb+UB6mbaqphWZ+wrNz98cnqWxPPzHCQtRBDk510xnT7fOCa
         QMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741201556; x=1741806356;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/7bb++1x3K8R82/vHvBTybNECeoo2FfhBX5a5/oxy4=;
        b=Jy6GO5yOwwTS6vmVBWE5J1pBbGxttT95kIbIgRjvStUjg4+XqUutKw2/nRASWggxQJ
         KJsZrIySiu3wkzRLnHbrdCzpTwTIIJ0/ecB0SuMvHbh9Hv9gG8hqRG+teJLcv84EMkOS
         HI8YLItZoEByhpo63qyRyvmZA6fZGGe4blqa7GXxax3LAWYC0jWnUDP9/vbb01swVyms
         f9baPiB/g83MOhvs4edbNHY0OgvYDdA+LLlkYtxmrXpxc76NlfhUs70W93YXWmxG7Oht
         gNSbMNd4e1MX+Id+6i1fqaLjRSwM1X4slCdXTqXdBKIIj0jVTB4uAnRNswI8hiZHg0R6
         SQeQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1PwLIcWhk4TfPjb4jhVdKqI4L+g25x35f+Sg6aOEVAWSf0aJEnW1Ymn72aC6SJfvuifbNbza2qvl2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9B02tNKZf+tv8XkxAHVh1P+4qgN2HtNcA00rvDPUSO/EJl1Ja
	QQUckM3j4ECpQxcTsrvmK9XFh/Pkg+y2mOBJyfyH6PtFEWQ6ey/hVlms+lz5xLs=
X-Gm-Gg: ASbGncuAx8tvFIHz7jg6CvD4/TbLCFraixG7JjTc9FLnzblBA/0KJKYxQX6qAKzqT+2
	Y6UH4crlrXi+P4RwvtDXyBAVAIA1KCQScnwv6goQ2L9S0URKWXF9U/LNSJ5r54E6iaCmXZaoLLL
	tb3cubzUfE1Ohen1gUFnnnIhLkss0ELtCa57d3wIWy5RLgznEl+X/XweM7dR0sBah39cKWuP4QB
	ScWm7DZnR7ZWb+CfNxRUr0llqoyQ4PlzEJJclwAzmsTynjfyXYVqIgrzwYLebGonRplz6jSMPzr
	3SJTpMHWlkKCXbQajkY2+rSeGfPm/niDmCPFJXhOOIgs33NkUqPsCYa/KzLc
X-Google-Smtp-Source: AGHT+IG2bHpjMm5lR3ttmKg8e6SD4XfgjQ/Sq+OZGDiXmqknlKp3DfcVARj9uD/iCvt9N4GVLWP9Hg==
X-Received: by 2002:a5d:59a4:0:b0:390:d8ec:1779 with SMTP id ffacd0b85a97d-3911f7bedf1mr1576634f8f.12.1741201556285;
        Wed, 05 Mar 2025 11:05:56 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47965e8sm21491662f8f.1.2025.03.05.11.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 11:05:54 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20250301-exynos7870-v4-3-2925537f9b2a@disroot.org>
References: <20250301-exynos7870-v4-0-2925537f9b2a@disroot.org>
 <20250301-exynos7870-v4-3-2925537f9b2a@disroot.org>
Subject: Re: (subset) [PATCH v4 3/7] soc: samsung: exynos-chipid: add
 support for exynos7870
Message-Id: <174120155205.74217.13161571019009381202.b4-ty@linaro.org>
Date: Wed, 05 Mar 2025 20:05:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 01 Mar 2025 01:16:51 +0530, Kaustabh Chakraborty wrote:
> Add the product ID of Exynos7870 (S5E7870) to the existing list.
> 
> 

Applied, thanks!

[3/7] soc: samsung: exynos-chipid: add support for exynos7870
      https://git.kernel.org/krzk/linux/c/13a24175005fad410464bee482ed58af144ba250

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


