Return-Path: <devicetree+bounces-106422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A886989FCE
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 12:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5175C1F20FB3
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABED18CBF5;
	Mon, 30 Sep 2024 10:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eZSo/vkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953E518C014
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 10:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727693518; cv=none; b=ey7eUmJE5YzxFzlbUreQeeD7wPXTGuLAebP30S7viHeSFdnWWMbkdfY0dqfrIFOFTPYd8ROuJtY9WTt0XufAi6ybDCa4JIqZrTTcwDPypcuA6K/Ol8gi4l/0j4cGl4bczofIqsL9O8xSBXY9qaOKMo/0BTtL/J3dTeafFDgBJd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727693518; c=relaxed/simple;
	bh=qs7ZJEUvQkDuGY/NdNPSo7a5/3b+K7XWq8qcKl9g+0Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rOaIzlxIvNHwZIZw7OUkggnNEhT/VIQqAz+PPJOxV58Zo8Odw2DF/mjuDpTHum8ehrvCMU3CZu0NRQUftcruWtzoHyDwGLxSLV9Sq7YbAauyQoeuVQ+487hgBuX/5PTzKrHmW9Br4yAlmLxN+K+pvRI2RuVY7wm2BWfcVTbPj9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eZSo/vkJ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42cae563348so5864695e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 03:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727693515; x=1728298315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NrpcGzq2X7FUeooo3oK/NoZGdoCws8o9zjwmd3SwC4=;
        b=eZSo/vkJNw2QUhTp47vWhqDHAXDX5Ph+nFm7KsItW3z3SZ0GvjtKtPMFetYX8sUfBT
         GoBdVqXSuZZjiY0uzgcuHNw/uw+ncDn71HZGcqe5c5P8mpffUckUsMRggzExSHs4MTvI
         aouGbHhxbkD64ErVgr6rbAqnN5UyElu6oXyFZzll3ty3MmPqPTCcUUWC84iGtVPjpIVJ
         1xhtnwmN8GttYO2tfUw3RjkDAVS9HitI2V31ACqbP5vblH3YCjqiRtObQyuTbkBlH7vD
         S7BWNocvGQXDPEmcmPodixFUaN4ZKJ9zSGs1H180n4a1ff+XIyyvQyfvC6xOv4ynaSF/
         WU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727693515; x=1728298315;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NrpcGzq2X7FUeooo3oK/NoZGdoCws8o9zjwmd3SwC4=;
        b=WtMwBHGES4u2DfnEfH8BIlbYVjglqi/ipwI3+qbxFBv7A28GSm3ty8TIFwNp6NiPnW
         nd1UvOnY9bpvmTeJna4GqskNF3KUGFSoztcvqaprgUWtzlUSR8v0JuK4xr9zrUFBBlty
         3a6DVGfoL3C4csg+V2r//7cN3P95lSCddI31CtgwmTSYQhHzs+HOxbhapHuEubtGKSip
         FO4KhRou8ncl7x09DL1rfNjt4IT738qKUujzzoMaB2saRU3WcPwWPobt0fGtC1d886h9
         TEIHMJ6KEmLnMIR09BugOGhW6zVOfXncQDRmmbBd15G9wy/wkm96oVIzBNWPaK7ETl/E
         oNRQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+4jxekbKsPQbeUufGOXNrJ0axnseFrduBdYGsFJv3CzBGlra/PtYzh8/m2D5RHNOKgmMc8w1Lubhd@vger.kernel.org
X-Gm-Message-State: AOJu0YxaT2NUB3ALGdh2Y8GH//FkkHb73FPZuXq2sv0WVzwIVl5Tj+iR
	UM7ZHiUbg4ZeSrTgqOZ/U3o1Deif6yQJpi4iHaiQzYenxzdASFaRrJ3Q5OYrLgA=
X-Google-Smtp-Source: AGHT+IEOO29rsmHXOq1A8VX2uRLf7D10lSyWawJH83ILxagvL2rZ5u7vPabfYAr/tIknh/8GVqnDTg==
X-Received: by 2002:a05:600c:4fd2:b0:42c:baba:13cb with SMTP id 5b1f17b1804b1-42f5e37365bmr26702885e9.2.1727693515024;
        Mon, 30 Sep 2024 03:51:55 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f57dd3106sm98632815e9.7.2024.09.30.03.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 03:51:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, Inbaraj E <inbaraj.e@samsung.com>
Cc: pankaj.dubey@samsung.com, gost.dev@samsung.com
In-Reply-To: <20240917094355.37887-1-inbaraj.e@samsung.com>
References: <CGME20240917094449epcas5p37c2593fe8f181d6b19a9a1b290488186@epcas5p3.samsung.com>
 <20240917094355.37887-1-inbaraj.e@samsung.com>
Subject: Re: [PATCH 0/2] clk: samsung: remove number of clocks from
 bindings
Message-Id: <172769351330.28623.202959929040095252.b4-ty@linaro.org>
Date: Mon, 30 Sep 2024 12:51:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Tue, 17 Sep 2024 15:13:53 +0530, Inbaraj E wrote:
> This patch series moves number of clock from dt-binding to driver for FSD
> SoC.
> 
> Inbaraj E (2):
>   clk: samsung: fsd: do not define number of clocks in bindings
>   dt-bindings: clock: samsung: remove define with number of clocks for
>     FSD
> 
> [...]

Applied, thanks!

[1/2] clk: samsung: fsd: do not define number of clocks in bindings
      https://git.kernel.org/krzk/linux/c/a86ffa40a64bd4d119c260a99e28f2a71f86d9f4
[2/2] dt-bindings: clock: samsung: remove define with number of clocks for FSD
      https://git.kernel.org/krzk/linux/c/2d3e0135cefccbcd8459112a8afe260e7b51ff6d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


