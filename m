Return-Path: <devicetree+bounces-57752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F59889EABD
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 08:21:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1DA5FB214FA
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 06:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD0129D11;
	Wed, 10 Apr 2024 06:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vF+OcpfN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F6A28363
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 06:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712730097; cv=none; b=OUj4jE1hr9mXaQWgp0RJNZ5yfaGwNqz+CV1fgbCrA/Hj2+vnYzYF8sJnB/Qg0RRAFC/rVOToiR59jzmuo+RCG7JYx0e+i8mHVbkHsg3Q4UUksNWAPR/CJq9/jiqxAruhEmeZb1f5Ah7YtkbNeXx/xlOe2FqWDcmgjVRMxsukYH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712730097; c=relaxed/simple;
	bh=v4e8o14myh7wf61QZuVMQrKqTrmnQbZDF24k8mFtbYQ=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Ehf9ZtoF+C6D16CFETicLu8jtDdzyjA/2ThiLZpvqLrZR36lLemsTq5qQejVZO36cGxgN6CSTSWLRA3nsGbXvTWK1HbBaekPSDC+TrW35BUnntYjEDquGDkXwB+6xdVHodXBm+K8yu3mda4uJf0vtrxvMQGKaploy60vXqU2dwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vF+OcpfN; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d895138d0eso25172151fa.1
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 23:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712730092; x=1713334892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HaLNjF69LAH3JwIuB5L2Epv4qMXG9JbH2p/HGQZ2ao8=;
        b=vF+OcpfN38JdMY8SWvVQEakK4CQ88voseQEzTHnyq2l7b4+y6wMVPSrm+WM2QeJM0k
         hIsoW48DZyOpsujh/zG3O7JwVP6po8OzCiRfe+aDdVahHXHGmmnEDG3N4gGT9wMBHUc7
         RVNc9ZF2VE9Mi/oY6cUCiZpEolGpHRP4qGf+exZr1Ds22rz/PG7R3Ytm4Ir0wgKWbZOu
         dz1UUm8NKztaahyQ6ZCJOekhX1y4ygt5hTDIqGOM3dSxHUfrYHhHMfMwURpHsf0yMVrv
         v1ko81Tkn6c3iqO42k6Zxiab/l8w/7u2bqD5jbUWqOtGtgmUror8otUHwBu2zonhqO/T
         y22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712730092; x=1713334892;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HaLNjF69LAH3JwIuB5L2Epv4qMXG9JbH2p/HGQZ2ao8=;
        b=aCvU3Dq39mS240nPXeBeR+abEVXre8NVvSRb3VRpr21tSCuxL1FrFNEg31SkZPn9G9
         gEDyeYp2BhLDMMTt9CWHnGTOVEiBkZJWSocV058LjY05uEr+L0Qpoq8h8VYHAnWA5m/E
         tg/5pLsqcxc1lAkGMFQAL1DXkNuDw9ps+WiqwgBQpZMIVwwzibGg607dJATO/yRfxwQd
         rhObY2G7kO9yUR+VKOw5PsF3+sje38hGWNF1v2SaaQVLvbwqqSCVyU2d1dXTtldARL/B
         PCIZ9bSgLdKOf6Jqrkc1AEq37qEgemKnYk5UcAMUvIzQMRH1HreXf3Ja3yFjwWd0D2dC
         BEoA==
X-Forwarded-Encrypted: i=1; AJvYcCWm4vyh7HxaBMsHPRYbosl1ODUZuO0+M/pl5n+LQs4+i8Z63hU/QPNDQQXJIlwaj8M8z8QQOWPvb9LDDvmTtWslwic1yAmqPrNcaw==
X-Gm-Message-State: AOJu0YyFLwSPdPDi5/KWn78uuUHzFXq8zhHTIwenBnGyayPJcKXyZZ8s
	tNgmfiK/PJz0WAdx+55UhK8V/bjB3kPWJaDdSlPZFNAkiMpWOSTP5XBtOXVyvKQ=
X-Google-Smtp-Source: AGHT+IGkWQid6R5S/wUjG4+J87Xg+G2EL2/Pxg8AVQEkeKGXBH35sE4CI3h7dddtFSUPD3GVzb/Rrg==
X-Received: by 2002:a05:651c:10a4:b0:2d8:1267:320e with SMTP id k4-20020a05651c10a400b002d81267320emr1128115ljn.5.1712730092442;
        Tue, 09 Apr 2024 23:21:32 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m28-20020adfa3dc000000b003435e1c0b78sm13179938wrb.28.2024.04.09.23.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 23:21:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?utf-8?q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>, 
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240208105146.128645-2-krzysztof.kozlowski@linaro.org>
References: <20240208105146.128645-1-krzysztof.kozlowski@linaro.org>
 <20240208105146.128645-2-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 2/2] ARM: dts: ti: omap: minor whitespace
 cleanup
Message-Id: <171273009074.5833.11343122189258141028.b4-ty@linaro.org>
Date: Wed, 10 Apr 2024 08:21:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Thu, 08 Feb 2024 11:51:46 +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before '{'
> character.
> 
> 

Applied, thanks!

[2/2] ARM: dts: ti: omap: minor whitespace cleanup
      https://git.kernel.org/krzk/linux-dt/c/71413bcb66e018e54afec47a9ce1199130d6fa38

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


