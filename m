Return-Path: <devicetree+bounces-225792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 601FDBD106E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:02:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D0AB33470FA
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3654F211472;
	Mon, 13 Oct 2025 01:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="byjPXSG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F201E552
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317306; cv=none; b=kdtXot/6SX5sy7FK6B79Lv5g80O59Q2zB+w0VE6+rgNtePs/d/IZj3NFKw8h3G48yi8zDejPBaIg1Wuh63E8Fo/aVGCgVceYvGyci8LpFerA39trvFTiFWi9cwEt4uLrbkPRNa7j6lnm05CJH+q8CvRPR2pgtmjHexpCKqHczJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317306; c=relaxed/simple;
	bh=Q0pn8oeo+EcdQqzzyFQGfHXmr2LXraohVV8PKC0lDGU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=oSvxjSCzRBMKFs3u0eWBO2pYmmr0YBxzQT4Y8peAcC23u4VjmtBZVrfvjkbaIDnqK0uyh8uvyS4SPc9lpCkKiOjrxzvKi7hDx/IInNNBLcn9rJB6VOM/KN9m+WbQC1hrdZq98ccDKAzFmQzIEIho33KVs840oIducJeEcvJ9ZFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=byjPXSG5; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b63117fb83dso120541a12.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317304; x=1760922104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CPXC6v/EI3bevjgCYFAPjzae6a+9JFnCELYN3lWtwW8=;
        b=byjPXSG5DmeyBXjGLF9BmBwYji18r8Y1BYQsWCY0sTULTGJbpnfsH1rXH30Wp8nARs
         AHrhVk9XZI+bYGIIJzaao3fljaYo8P19baeQVbkRGsfORD1evZNr4x/ssvjnEe0yT0Ig
         DC+1oDU5HWfmxJX62cQhJeq+4l+tpCRq/u7CF2HU3X1y0Y1vTIZcKUKmqAbX2MVxSyZn
         XO71bngpNP6ha9GcbJpzPZCou9rVklghvg7uFYbKQYTkuPsoe33CocP/QHBzISamkHNV
         sYAwQDMM13nO4WWT/0vWpneUnJ24yjtQM3+qYwXNbs8a1E/Un5WupzlyG1gY2uMHy141
         FPFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317304; x=1760922104;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CPXC6v/EI3bevjgCYFAPjzae6a+9JFnCELYN3lWtwW8=;
        b=IR5PEN4wFC0MQcnHtL2hnUpLsRg9TFHBxGK7Lp5b9LHRN7WySsyQPGe6ekDgJLfbV4
         kfJObiPPNPna89uu+5ot4G7yw2j5wFHaLsRf1wfypz12IGjpIR/Dyi6J53qsTdBbnaRB
         Zn3mOhPBs466seNM/aEoKw+bJHXEAK1tdxF54Opvw2fMOVEG6rh75C7oG5y42SHh4lcc
         NDhbIYjVgCXQ1rmXaHcaObEY1Fb42qDUZYID1houO1egsCZHRpOlT2SiF8+eQPzSh2pK
         RVFlC1m3FB4CpC0WnS/jAz/1rcVL7trwmbvwIeP+0qrdO7hKZj49qMKwggg3BrPXO2DX
         9MlA==
X-Forwarded-Encrypted: i=1; AJvYcCV/NeMPgidOi1E+pJY0cueZToLLsrj1kazFhv9Rn0kQYeXh50Fk0J+QEHsCj1AwEhA2eFkZ4PZsdybh@vger.kernel.org
X-Gm-Message-State: AOJu0YyAJTiGcayzg+g0INRPeMmm+Tb0B1VtvSDcB7pXd4exby3VmaQs
	CcHREhM27Smx+A1KHXSL5gy0lbyZxNUZGh8YceYqhYOTawdaOTrX1HP+qE40Z/tBNuQ=
X-Gm-Gg: ASbGncvqg00KevWp5g3EeZh6FKRS+n0x7xt1CPu1DVT0JO5HDS9UidKaQk4fkdIbbLq
	I9LFSPh+lvVBlmXnEvSeXRCFbsqU7nSAPs5xWja2fKvtr30qR59hUubsnHSMNIeH8FDUo6voULk
	TU6RPZV0ZIDa03BfwgvEJ8YZEWc9noMDD6y1GCYS9DGVEcUx1Xqf4U9ZGRl/xNYn3idrc/cVcKc
	NT2KJ/5ANjRrFM0ISvWC6DKjZT2a46gkteV7ZSq+q6TZjpGNkTQJSsCH/kvWWnzmLaCqWuvERqT
	0wmEqMswPOsBcI5dsBvV1EkvChRSJkNyNOdxtPLwnmzjbWJyaqPrmuyRRMvNsZZHBh+PasKt9/b
	JIj+aLOQ+7S3EmBEoG/HBLc/26sx7hBogWy42yTEzwIeTmeLJYKmBQIvQfKOz
X-Google-Smtp-Source: AGHT+IHGK6ykX0spOQKYWsRpuS2oCY34wte5d1qjAZUxv5DNXPyTnvUCU5Jclrwq6RaUGeZTRY3rkQ==
X-Received: by 2002:a05:6a00:cd1:b0:776:165d:e0df with SMTP id d2e1a72fcca58-793827947fdmr11943201b3a.0.1760317303940;
        Sun, 12 Oct 2025 18:01:43 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:01:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com, 
 shin.son@samsung.com, Raghav Sharma <raghav.s@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, chandan.vn@samsung.com, 
 dev.tailor@samsung.com, karthik.sun@samsung.com
In-Reply-To: <20250915095401.3699849-3-raghav.s@samsung.com>
References: <20250915095401.3699849-1-raghav.s@samsung.com>
 <CGME20250915094515epcas5p3210f5c66a24a7a7f23a04075e7636a89@epcas5p3.samsung.com>
 <20250915095401.3699849-3-raghav.s@samsung.com>
Subject: Re: (subset) [PATCH v2 2/3] clk: samsung: exynosautov920: add
 clock support
Message-Id: <176031729821.32330.18319569352723802430.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:01:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 15 Sep 2025 15:24:00 +0530, Raghav Sharma wrote:
> Add support for CMU_M2M which provides clocks to M2M block, and
> register the required compatible and cmu_info for the same.
> 
> 

Applied, thanks!

[2/3] clk: samsung: exynosautov920: add clock support
      https://git.kernel.org/krzk/linux/c/ac5d829873c737edae220ee654e423d383163630

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


