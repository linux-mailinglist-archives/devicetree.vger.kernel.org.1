Return-Path: <devicetree+bounces-214302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA55CB48AB0
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:57:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ABC53A8004
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C20226D1F;
	Mon,  8 Sep 2025 10:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TVzGj2vO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4442264B6
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 10:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757329028; cv=none; b=cRIlzcr7YOdb07ZtrJHe5yLOzj/xlie62o8aqgEPmFIlnTxPZ+t11nyr/75whg9AoYQh2DvNNLTiEuCoGQTuM0Nc2ekL0Zf4/BdIysrIOrGqRw9NcSSF6PEZW19r7HsMx5i4jjUBXkhoSC/qhcnkcaUT1ZEMi0Koai1I28RZAbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757329028; c=relaxed/simple;
	bh=H4GKqV9vKQYnuJ8t0TV9btzVLh6ocsYYvcT3DTkijw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=etFPv1Q9ZSDUyyBPzTCbn0stq7dyBQq5sEc5/Z/q/gDS55G3sUETIbH44O+01tACHcrekjq1dFiUMWpjcDlJrWdWZgRnq9/9C0w9sEOuu8SFtlEkMN3GDbEf1GBCCcIo9ci2dSt73FJYZpJnW0P3dap1d3bH1/nVxXpK/sfcET4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TVzGj2vO; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3e2fdddd01dso572382f8f.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 03:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757329024; x=1757933824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lXcNKb7eAeUSAOD3P9kbauHvQhJ/T5mYxvtqvBukuQM=;
        b=TVzGj2vOOi0iJTRHBf+JjlEVlcLFofPEc0ysXPC92iHoIMR3ld7KIeIkcnxAY1lSI5
         EUle7uLJIyN1lJ+Bor89QzHObAQ3/zf1ibdu4FrEqn5ZeSZx4KCcQO31SdIc26BpxZVD
         2/mludSs1DYd4YtOfamP3vkfZRyoS1D/gGaD8tiprRyKvXzbtKK7TlPMcFOsmUn7hfB0
         QAK8eqhADN19p1opLcJMzpuUOwRkaaIiJb+dXK6SlN6MMDiB53Kfz3Ck53fjRaeOfr6X
         5KwR80sHC1NtRDiuuMHkiLbY+AQnvBEXAEnuwdoHUcVqGmLP8DXWerS5h2R/DOe1HC/5
         mmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757329024; x=1757933824;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lXcNKb7eAeUSAOD3P9kbauHvQhJ/T5mYxvtqvBukuQM=;
        b=CUsm0RprU96zm7se6RpJJdAvjJcplv73rIWDMnjrtsxu2zKgkkJfFS5uyFMXbmJ30a
         EN81mdh3g7wzm8AWRhxPcxyefUn6BPBNaLVkosImQi99UMKdxHvnAlkrvZhHxxAXU6ue
         klleH7G53a+DjgCQ1mlx2Rcw8BdxdLPV0qs74OHYdlfVUf8eA5gNpd8YfRI0ZcdBmUg6
         GRTilmtFb8CGU7HOhtsaCf8Ft0Ex5z1kToYHUSGVg1GwWKh+rM+097HOEVNgnYTN2fZi
         mVijzIhU9cMoBWYZ8C7Q8AVnKWoxf7gh+PXBgnDAI2+IOcTogpzXDuc11yrcJ6ab0A/c
         RVdA==
X-Forwarded-Encrypted: i=1; AJvYcCVu3jDL7L7lOyef5GvGQ8jHZQqYi0B6xNXYr1mMKZCO3ZolRnyB9bl4lgTWxHba4QXEdGrSXru3iehP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5PVKg99fHzTWwquALMwNo/H4NAcWTgC5zwuC6cuxRi2xgEMEd
	kHmW6r6aDvqLjJpjsMfLJMesRvqM5gashVqPpKlFKm5K5zLSusuNycV9X6wZZSnEm20=
X-Gm-Gg: ASbGnctyfqXwPOzZ8CEjBNE5dsgbc8KhQdde5zcAurqHX8022N408Jtwb67MPckeKOO
	oW0QQlomF8fi/0sOE4dQEIhAuvKNGnzWU4GM0T71VOKU0oZZ3DsYiTPT6Dhv7miAMGpgCZE1Q3v
	NkJ2EKaJo1/6N6OL8wrSe9HG/IwGzO6QKJCJf5GmP8xT1exY8A91BG8ZPGOZN73r10KoFHQ1+CN
	nvh9Xn0hcSUlO+z507fI9B/QfOj9cM5yKFKBa0MZOlqAU/U2Zp2YGbmBdtadSWdWN7wEqUPmpNW
	SuPPfzHNjyYi3MoRFzjgCe8MHEdnJhouEsePCwlymWhAcg3TCCaUgrMy+4xxCW1GZu4bfmGXijX
	SngmJQS3ZicLl+7tRQMLoQArDE622WFPRYhgAbXfXxULo8BDWPb3AQd6mCXHUjoSywTzJNSosr3
	P8Mx8iAvQ9A0MGVxuPAuM=
X-Google-Smtp-Source: AGHT+IHJenZkBnBqX5JJGGi8QCqzH35vWp8fn9f5als83N3CMmj4jtZhM8xY4+BhMYtweIKXzuwxjA==
X-Received: by 2002:a05:6000:24c9:b0:3e2:4a3e:d3ee with SMTP id ffacd0b85a97d-3e64ca75db9mr5387379f8f.58.1757329024396;
        Mon, 08 Sep 2025 03:57:04 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e8879cesm440740795e9.12.2025.09.08.03.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 03:57:03 -0700 (PDT)
Message-ID: <bfc3838c-b2fe-40c9-a1bf-f5269b48dca9@linaro.org>
Date: Mon, 8 Sep 2025 11:56:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Add CAMSS support for MSM8939
To: git@apitzsch.eu, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vincent Knecht <vincent.knecht@mailoo.org>
References: <20250908-camss-8x39-vbif-v1-0-f198c9fd0d4d@apitzsch.eu>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250908-camss-8x39-vbif-v1-0-f198c9fd0d4d@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/09/2025 23:04, André Apitzsch via B4 Relay wrote:
> (This series resumes [1].)
> 
> This series adds CAMSS support for MSM8939.  It's mostly identical to
> MSM8916, except for some clocks and an additional CSI.
> 
> To fix black stripes across sensor output, and garbage in CSID TPG
> output, 2 VFE VBIF register settings are needed.  So the 2nd patch adds
> helper functions to do just that.
> 
> Patch 1: documents qcom,msm8939-camss DT bindings
> Patch 2: adds helper for VFE VBIF settings
> Patch 3: adds CAMSS_8x39 version in CAMSS driver
> Patch 4: adds camss and cci in msm8939.dtsi
> 
> Changes compared to [1]:
> - Move bindings patch to the beginning
> - Make the order of {reg, clock, interrupt} items the same as in 8916 +
>    append additional items
> - Drop R-b tags from bindings and dts patches as order of items was
>    changed
> 
> [1] https://lore.kernel.org/all/20250613-camss-8x39-vbif-v5-0-a002301a7730@mailoo.org/
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> [André: Apply reviewer comments]
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
> Vincent Knecht (4):
>        media: dt-bindings: Add qcom,msm8939-camss
>        media: qcom: camss: vfe: Add VBIF setting support
>        media: qcom: camss: Add support for MSM8939
>        arm64: dts: qcom: msm8939: Add camss and cci
> 
>   .../bindings/media/qcom,msm8939-camss.yaml         | 254 +++++++++++++++++++++
>   arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi       |   4 +
>   arch/arm64/boot/dts/qcom/msm8939.dtsi              | 146 ++++++++++++
>   drivers/media/platform/qcom/camss/Makefile         |   1 +
>   drivers/media/platform/qcom/camss/camss-csiphy.c   |   1 +
>   drivers/media/platform/qcom/camss/camss-ispif.c    |   8 +-
>   drivers/media/platform/qcom/camss/camss-vfe-4-1.c  |  12 +
>   drivers/media/platform/qcom/camss/camss-vfe-vbif.c |  31 +++
>   drivers/media/platform/qcom/camss/camss-vfe-vbif.h |  19 ++
>   drivers/media/platform/qcom/camss/camss-vfe.c      |  10 +
>   drivers/media/platform/qcom/camss/camss-vfe.h      |   3 +
>   drivers/media/platform/qcom/camss/camss.c          | 157 +++++++++++++
>   drivers/media/platform/qcom/camss/camss.h          |   1 +
>   13 files changed, 645 insertions(+), 2 deletions(-)
> ---
> base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
> change-id: 20250517-camss-8x39-vbif-975ff5819198
> 
> Best regards,

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


