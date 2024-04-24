Return-Path: <devicetree+bounces-62164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B46428B02AC
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11B2EB218C6
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E6A15956C;
	Wed, 24 Apr 2024 06:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WQWkiIz+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E13159209
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941678; cv=none; b=aIaEhIvqIbVsQnvHfMGH1r4wm1h5dyTzHqy5PHIsxEgqTZod4TOFML9/9T1NzT2TI0+hgDDKf01N0zXav4He59QcdcpCLAqqv8diCPd8x0gB3IV+at9bB3OBoSvaNPCr1qLiZeWj/EzRpa1CuQczdXLjmjz8IHkKC6v3bBCwaxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941678; c=relaxed/simple;
	bh=kY2xucFKXDqqzr8S/qyR/W0doPVyCIPfsW6Hz83rCoM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e3e9RiNuLV6xTfeO0CMmjSmUZqGZWj6a3AxXwL/OLp0u4cuXXHf0gdRdilv+lpVxJiUMBUaMx+iiLGqWFa6Wql/yZuLCX9hMqfb7va/10eEx4buD3HrxeS12kxWmdXvqcbTdqR+HMV5N78PThGQB9P17KR320AZUms0DwZaqvSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WQWkiIz+; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-34665dd7610so3333719f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713941675; x=1714546475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RZlI2I66i4SsS04f2xb9wEuEKYSB3a9TLQrXJM4K3mE=;
        b=WQWkiIz+QGXPz2Eg8x0BwMazyR0QTPrQc8T5GtsZ7RxMotYkom8yWgjABF90wYjjTI
         /jZ0iZeFyIncJwWY4nIH2ve8PLR68juXZEECHpKeYq7qTQMbP3af8tcrW5GDGmf+2Jq1
         FEs9+NTEaQdNsEMGlcqOlSwMbNxol3R2LPsZxQVTCKv2tk7aXu0YFLSFUe325qBfMq5p
         qSyX9gFR9ngY/+lxIZJAJJkjBSZTBi0qZw0SjEAGKZ7zKdeVfBoKtZFDpUGq8BCyfIvu
         U+YGEDw/Yg+OmhtH4OUaHEFpRlKDZQi5Q29GSj7VfnsBe+jVyPaFDrcgjbuNZbXkxzjq
         wAJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713941675; x=1714546475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RZlI2I66i4SsS04f2xb9wEuEKYSB3a9TLQrXJM4K3mE=;
        b=kZdnh1bfTQuGXJJZ5NCWid8h1VHLrMWH+FE7BcO8jGbjzcXqEbzVWK7HlU83i5PZQl
         AWok0IIeb9Gn/jABE6QP10dd+4atpI/R11RypFZzi2CAMl/DIGetskSmCJAzNz79r62E
         FjN2Vh5GQJ8uzvMpwMgtbg6ZE4Cb38rtpW8vVE/mxP8dlx9/byKJXEy4BsbSMINRH4iG
         qi4HafbaYqSsHOV27yTf6cWywkY2jtcwhxbu/j6fCNaboyHZ2YnE2M1LgY1ATuKI+c/x
         rIBX14Myqvn2aQHVfUByeWjwk4jEkqbrHDX7HFK4z7n9i1IQjR0jMermJ4Ur6cctm05F
         kF6A==
X-Forwarded-Encrypted: i=1; AJvYcCWc4ng2Jdo8RQEeRAiEcE+6uYVwL/zZz7yiv3hungTE8/nz87lrv7Tto7SaZPGGv0Fb2UPVLJRbqqM+a3VYuP+4IbL5slo67ZsCKg==
X-Gm-Message-State: AOJu0Yx/JG/4AxzCn5ryHmh63bTP0tGqFf6t2mxjnsDkXUNTKiYrqUU8
	pmWitTfugHin0azM+ldSPnmnAVG+r3FmprXwDwil/EmKtAq+vKF8SvcGPep9qYs=
X-Google-Smtp-Source: AGHT+IFZ+BTOKCS/fwmhCS7yyEZE+FWRqPHV7tu3vrn5Sle/H3rksFobZHYU3JN8cj+AiY4uqR/Rng==
X-Received: by 2002:adf:a491:0:b0:34a:e1c4:8e38 with SMTP id g17-20020adfa491000000b0034ae1c48e38mr857302wrb.60.1713941675161;
        Tue, 23 Apr 2024 23:54:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id t18-20020a5d6912000000b0034997769ae4sm16338534wru.15.2024.04.23.23.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:54:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Robert Richter <rric@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: cavium: thunder2-99xx:: drop redundant reg-names
Date: Wed, 24 Apr 2024 08:54:19 +0200
Message-ID: <171394159881.43787.9165226045500607522.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240407102841.38617-1-krzysztof.kozlowski@linaro.org>
References: <20240407102841.38617-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 07 Apr 2024 12:28:41 +0200, Krzysztof Kozlowski wrote:
> There is no "reg-names" property in the PCI bindings and the value does
> not conform to Devicetree coding style (upper-case letters, space), so
> assume this was copied from downstream.
> 
> This fixes dtbs_check warning:
> 
>   thunder2-99xx.dtb: pcie@30000000: Unevaluated properties are not allowed ('reg-names' was unexpected)
> 
> [...]

Almost a month passed, no replies from maintainers about picking it up. Dunno,
looks abandoned, so let me grab this. If anyone else wants to pick it up, let
me know.

Applied, thanks!

[1/1] arm64: dts: cavium: thunder2-99xx:: drop redundant reg-names
      https://git.kernel.org/krzk/linux-dt/c/aa79fdba3d42dfbcb10d1bfeb3db9fbc73c4f793

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

