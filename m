Return-Path: <devicetree+bounces-45694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBDC862B9E
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:13:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95CD5281A6D
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2561C69C;
	Sun, 25 Feb 2024 16:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eMacf//O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF47517BD4
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877478; cv=none; b=ueuEah7+ykcprRvmudyXjkJrjH7kfeiRwlMrMPnJcMNRghvjq9SDwBKnMZ35d762JKsCaUxXXA5KPK9b9BDwX+Z+JMrroPHAoNW/xw2/lWB+5W/+AikFJSbmmyVSIy0/+CYloR6QyoNSFgHJkYbTtrmHUPJxJjCmhsVffRMVHWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877478; c=relaxed/simple;
	bh=P80jgCoJx97whY8RZv7ltxiyxidW6ExA+D1/++A5684=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CU92rntKjLfMQExU5seO/LzMP/uyZpB2bUPBXWsXMSdtZ0yme13ZYWh1ZuMQE0XvOfOTtgVHewspGLDlqHdjbMe5yF3tvCOCROoOfjZcS5mHNbelbN1weRH3JVfJlY2xsfud6FNMlxqf95vYIQMpO3Ugd6IsqNhMvq0FHptrPjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eMacf//O; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d09cf00214so37503461fa.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877472; x=1709482272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PzgKojf3trYLunnGeLiGp/WQF9mJK3e1ky7A6J0BwN0=;
        b=eMacf//OK2/Z+1jPCjCNCQs240fETw+moV7bNsSpyW6U7it6+s5eEDQ7cTWPw8XTWs
         NaFADShrjMOGiJXAmeyzAjytIWN6KLe4wMZ2PdgMxjbG3GxJ2l3Jyz2l+vRws/SN1xjr
         EHcGcjTsj2+KVWDBWnhYNwUvC0f7+j6FZ5GGu6GJV3ZrcITTcUZLRzG9uy+gcd+I2FjD
         g64gurCdvbHmmZAz3sGm1EIHq1PFFlMXnIIpSRmI+SshgcFlBUVc8Agw9QKo5ttEHMhU
         SBytp+SKRQIc/ahwkunEwkraN50+u6wGXc39CsIMOlF9o7aq8r66P2NGwlCXyFchhN11
         wfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877472; x=1709482272;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PzgKojf3trYLunnGeLiGp/WQF9mJK3e1ky7A6J0BwN0=;
        b=HM1UlPBDYUP53h7LNimcZWRW+GuOLlbMhlME7eqXNX6DubSptKSibnP5l+QHQ21ndd
         LWLegdXV+8+Wq0lWI3ZpOiqqH+uhOUhn8gyrV2qo6CXZ/6RvlO5vBrGvqNroENvjBW6a
         8wpvv1ZssMkKJWBDfzVhe1evtqHnk4LorZu53cqA1hGc2T1XCokmS8UHXT9/tuCUTCPD
         7fMd3Fn4BOMDXSKjK1Q3Q8KSW5L5M5ej3qA7v4awrQt+jzNPGrIstDsGdyi2mzyJk4eF
         gY/TLQg1iZdp/3f0/9rqfvz9ZJiFXIxJFg0gEU4CMuD3cv/Tf/DNdaXvjFqGNYSLnib5
         WkaQ==
X-Forwarded-Encrypted: i=1; AJvYcCW06Y6jyJGwgJb5YCedRw3CofNny7zdeajN3X7ZeDEf2NTOvQi6DFot2uE9rjBq//o3H1F4Zu+BCNWO4qvDwjsK/iwEq1jYA9NQSw==
X-Gm-Message-State: AOJu0YxnAVI0x5RR8VmRVIcNpyyNDw/6w+Q6M0EHdzCPx6HIkZNlbvv2
	IW70fB61a/tQQyA97zikk6a805cS382jlwLKj57a5MsMUbc4pdUxAgf6q/ARX8s=
X-Google-Smtp-Source: AGHT+IEaAI1AU10HJTP05nLv6Cuo24RSPsM278RNSVdPqNxpfxcrIfDk93zPcr82zgNkjNqS+LG+7Q==
X-Received: by 2002:a05:651c:2211:b0:2d2:8814:e3fb with SMTP id y17-20020a05651c221100b002d28814e3fbmr1056659ljq.49.1708877472590;
        Sun, 25 Feb 2024 08:11:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:11:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240224202053.25313-12-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-12-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 11/15] clk: samsung: Pass mask to
 wait_until_mux_stable()
Message-Id: <170887747056.215710.9176001640764201554.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:11:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:49 -0600, Sam Protsenko wrote:
> Make it possible to use wait_until_mux_stable() for MUX registers where
> the mask is different from MUX_MASK (e.g. in upcoming CPU clock
> implementation for Exynos850).
> 
> No functional change.
> 
> 
> [...]

Applied, thanks!

[11/15] clk: samsung: Pass mask to wait_until_mux_stable()
        https://git.kernel.org/krzk/linux/c/152cc7478677dee6a11685585fd17efbce6e9db5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


