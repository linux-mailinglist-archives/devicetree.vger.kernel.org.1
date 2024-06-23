Return-Path: <devicetree+bounces-78922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2635D913A83
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D75D52818BB
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033A3181CF1;
	Sun, 23 Jun 2024 12:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yoypqlcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A870181BA5
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145360; cv=none; b=EgR0z0vO75laatj6+KpbG3DeDGhtQ3gUobgM83mYmSW0ScW9kyEUWUVS1jEFI4elHSgcWtE8e/AQDbUv9CsoTykiiqguiFkqRu7L8o+mBd72xHIBrG2p/niqigb8zJH48noWGzv9tiX66ffdJyqVFxBCmfHlu4zrYVnRH/4OX54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145360; c=relaxed/simple;
	bh=dptKWOler4N7yIKYoGpq4WLD+5yTvioWdUK3HNlSHmM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MREaq4nroDRB9uY/KFd9i1TGiLHyjXmICynVVcK13QHf20XiSB85XVFWyzwbn9OvziZXGlvqdbC+RZqhT1T0ZcPgjtG7JS0UVX199asetOnOj9VCbjrXGffRnQ3KgRzWla8KpQuLrZZlqyKPzgdyMnTi29sgTtYCJeEB29X6otM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yoypqlcr; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4217dbeb4caso29335945e9.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145357; x=1719750157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lEyt1clUvQ1PslgHqEefPU/EF6DS0rMvBZKOKD27pAk=;
        b=yoypqlcrRTjkP50w312GmUcl/9VHPgnw653zk00RoLXrbaruNCF0ch7OFZ6qoUz/y5
         FoPeFXqidurXff5AHqKgo7OJ4WlyLOQi3/MoxB6+uyG8Mo6MEaUOPBM4+ozfKn4K3MMa
         fcfFbQ3bmbZ5K9IyZKDTjlM4YnE3jE6F+RM6fzDo/DPtW+NU+La86DYZqnWUmVHIeTcH
         3iz4J9WgurgYQhNrNZN9wK0VJoWs2sJsZ83efQlS9k0uF/XsaOXm+BbdRZUAupWkiapH
         OMoYq1RNJfHviOcY3ulSMrDjD3txNpwYk8N6dcHbHeVYK3A48BxOBxxot9EBfYHCXMoe
         XPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145357; x=1719750157;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lEyt1clUvQ1PslgHqEefPU/EF6DS0rMvBZKOKD27pAk=;
        b=TK53dYKJuWLeg8kLVg9pgDHETOlc10kJBD/SnnIPpCsUmLp11Cu6nOhrUZqpMuIVFo
         PHKwIxTpdeGWCVsGYOqAAXT58i2hrdLwRzPs1SBZkq2hnp7mcYIFrPbl4t4MYC/dmsi1
         IGzqV8QTNTiEuHkvMQa9KJHI1xFWz6Onab/XIK4C7PhCDkHTS3xsQc8TEbOPFL9zmwaf
         EA3V8t13HwjetemP/ikPuIl6YnlEdFITv1dSKiJJEp+7UrltN4cK47SjOkAb1CTQHmSh
         K7mdkf72jNwUpJlXsBjImMZBU2ks6F7BPUfUon4cdjDCgGXYH7zLjtWAD5nppzJoo4db
         n36Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2bwS2KAY1YgN7f53XThfUA00s5m9PwnpB+iBEbEkAAOhZMsmMGzGKcEqK46XjdvMltHYTdj6WJrZEtZubaSIRVhd5t7zlx/7c7A==
X-Gm-Message-State: AOJu0YzL/8rd4DrkbtopO7i66POWIdCcI+QcEHGsYZ57DWWlAobxwpDN
	ZVkVBclUdZpVEVUHaoo1XN05m1uZuHZf9aGEoUl4Nkj1pgi4ps/8nIasN545plk=
X-Google-Smtp-Source: AGHT+IEMZCFOhYXky3s3TDx8dy5hM9Fnpch+Lj8XEfUD5u6tCF3MRMkE/dJ5+tVAvUSDRCUQdjLCtg==
X-Received: by 2002:a05:600c:450d:b0:421:7198:3d76 with SMTP id 5b1f17b1804b1-4248cc58b99mr12799485e9.28.1719145357746;
        Sun, 23 Jun 2024 05:22:37 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be841sm136955455e9.20.2024.06.23.05.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:22:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <20240612141018.7348-1-krzysztof.kozlowski@linaro.org>
References: <20240612141018.7348-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: ARM: alphascale: add Krzysztof Kozlowski
 as maintainer
Message-Id: <171914535659.46985.7068409299945759255.b4-ty@linaro.org>
Date: Sun, 23 Jun 2024 14:22:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Wed, 12 Jun 2024 16:10:18 +0200, Krzysztof Kozlowski wrote:
> Apparently there was never a maintainers entry for the ARM Alphascale
> ASM9260 SoC, thus patches end up nowhere.  Add such entry, because even
> if platform is orphaned and on its way out of the kernel, it is nice to
> take patches if someone sends something.
> 
> I do not plan to actively support/maintain ARM Alphascale but I can take
> odd fixes now and then.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: ARM: alphascale: add Krzysztof Kozlowski as maintainer
      https://git.kernel.org/krzk/linux-dt/c/3974eeb925657091884a2a44f8b71ab56befdce7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


