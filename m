Return-Path: <devicetree+bounces-155495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BE8A56E9A
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 18:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7D423B7692
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 17:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B95E23F296;
	Fri,  7 Mar 2025 17:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sq7UrRkB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8229B23F27B
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 17:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741367045; cv=none; b=qbyyGd1UbddWdZSTx9JxoT1OZ8u92ZGf0iGG6nMC4j5Iv0WM6KN5KpAH33j/anZ8LS1Z9aDEdeld/A62IZ+CIfFYVtLJUXQSjsRhZnubMvljwoLBTli1PxaF05opyc2spZ1PIqUQlL0mt/2G/4xLwdSaTUGpF6Zy77Gxn9vTCC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741367045; c=relaxed/simple;
	bh=xIk78eM7xp6OoVG9TVOMJfTHgwK83vjOapawq/HRb+A=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LAXXXj9WqB9BybZ73itzTjnaNYSPNTeWJxQZOcOW0MDONz+6srloY8ls2qqPborAJ76j1YCVNW0AdEFGxjX67kd0+v0f7musEUM6mivu9i9Imv2h5RuvqnvRpXCdCN+4f6P3xK+Wb64vM41GDqMvxWmniQe8U+XTdhBuAPuados=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sq7UrRkB; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ab771575040so602776366b.1
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 09:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741367042; x=1741971842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SHN+uSouj0jmGUbo4WMlUEXMpe1K7sqb2jQWSJPop/Y=;
        b=Sq7UrRkBK8A3MN5G9Ta/4IdCflsq+KLlXzWgrkWC+lnFRPOm1hIR3FRjXVZcxlHIjg
         bcRxZu1CszYB8QwT7RuVppHIHo+7h2Wlp9cBkgIzfW0oEw9bcELFRF7gviP8GOuyFhyy
         01Es4ZwDxThiRLttRoaoJ2AK5iPC8186nCBGlUc7+7XUzOZTwWfSTuw+XKeOf5Us98Al
         /kopQUrVc/X1kNlmsbxpECb7oyaw4BYgkrJO9quwswlFE7N+wH+ntbmalaSXe+QTy7KE
         4XYy/FZi6ewC7x6kEArd8bHHs3ocAGCFXQGHexZYViIiiEHOPXg4lkrpQhcBVKaohZuT
         k/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741367042; x=1741971842;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SHN+uSouj0jmGUbo4WMlUEXMpe1K7sqb2jQWSJPop/Y=;
        b=Ez4233Wcn2fsWt7afutIgZjGykeCuSaKlfxuv7umn7OzcQFptGFBeTP8AWCCcZqRVE
         eiWTFp6PqlfWER4uq0L0+AP+G5OZFkMsU59HnJx/YPs1HthjZl8mDwRiD8ULZt1eTHmU
         +EYjucL2PZ/iKpDJL9+wlMImZl+NK4iKd1KQ5uGEJZQ7h9D8NWyT+SZBHgnlol5GWkpf
         GRiHuqF70PDFsIEUGCT1iymZxPhZGXu2j/K207GYFkV46kJaeLZuANsQCkbQa0OOTD7m
         15hjElf68W6RBXmOrCrFiWZ0qx5uMoAF3jihWEsX5N8S301spc0xYIFLGJfISL/4+g+N
         wzuA==
X-Forwarded-Encrypted: i=1; AJvYcCX9Z5myg9cqdAGsWd8mnWSBFC/cVZPxmSiTAqN08gde/ZtESdQPpfQcTrsPdQPtMqE9FYhkM2LIjz7b@vger.kernel.org
X-Gm-Message-State: AOJu0YypBC5p2ZGwhwp3xF2du5fthrFk3sqC8eEsVYPuZk6zz/BG7+FP
	TOjJcpDv/nMKd2aN5JkEYvDT9qIVQYd9t5T4y+7QaGFE7wXKS2wL0MANiJXzrX/eV/PGGgVmDGN
	K
X-Gm-Gg: ASbGncvm8M0pfqazzNyt8b+A5oqrHSAAQ/bTB8oMa8T2e5Spd+Ka3p1Ez9bWC3X5M8C
	6PeSxrbf60Y51deeOYC5MErbHwhZ7ZNUHZEXUnATV7JrUmYa6eyD8xOuIDFrIRw+g0R9jeCAfYJ
	vXl0ZwwYFlgTBz6Fbv+25dKjNGPVqM3FYiwf0QwfObNYnHrIQyIwTDt/hZLFfjqJovJITfnD3Qi
	hIFzSR64638qOKLf1wwSS97xlflsUgIYn+MtghDVOp8QPklp2Xc+l0SctNjVThXH4gjrdB9cJYi
	ipbz6llWx2FIlS50vIz4kYfqgpvOYBLyHkx9fLrezBT0TRE08TNboFuSGzUiA5I=
X-Google-Smtp-Source: AGHT+IEQmy+3snTFo6XUAi3Z68EdUMwf32SGMsvWTVT6oBhepCzGFS3Q+CYPLOO5ESXOew0JzcFftg==
X-Received: by 2002:a17:907:6b88:b0:ac2:9a4:700b with SMTP id a640c23a62f3a-ac26cac6df1mr27808766b.16.1741367041604;
        Fri, 07 Mar 2025 09:04:01 -0800 (PST)
Received: from [192.168.68.113] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394825adsm308028366b.56.2025.03.07.09.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 09:04:00 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, daniel.lezcano@linaro.org, rafael@kernel.org, 
 amitk@kernel.org, thara.gopinath@gmail.com, dmitry.baryshkov@linaro.org, 
 robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com, 
 George Moussalem <george.moussalem@outlook.com>
In-Reply-To: <DS7PR19MB88836DC6965515E12D70BB2C9DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>
References: <20250228051521.138214-1-george.moussalem@outlook.com>
 <DS7PR19MB88836DC6965515E12D70BB2C9DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>
Subject: Re: (subset) [PATCH v9 0/6] Add support for IPQ5018 tsens
Message-Id: <174136704062.10922.6561617829094107048.b4-ty@linaro.org>
Date: Fri, 07 Mar 2025 17:04:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Fri, 28 Feb 2025 09:11:33 +0400, George Moussalem wrote:
> IPQ5018 has tsens V1.0 IP with 5 sensors, of which 4 are in use,
> and 1 interrupt. There is no RPM present in the soc to do tsens early
> enable. Adding support for the same here.
> 
> Last patch series sent by Qualcomm dates back to Sep 22, 2023.
> Since I'm working on OpenWrt support for IPQ5018 based boards (routers)
> and Sricharan Ramabadhran <quic_srichara@quicinc.com> in below email
> confirmed this SoC is still active, I'm continuing the efforts to send
> patches upstream for Linux kernel support.
> https://lore.kernel.org/all/63dc4054-b1e2-4e7a-94e7-643beb26a6f3@quicinc.com/
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: nvmem: Add compatible for IPQ5018
      commit: eb7eeabf64d2b2ea3ae562e85f09fb2593a6da2f

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


