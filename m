Return-Path: <devicetree+bounces-215343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B318B512DE
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AC284E0374
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3595314B85;
	Wed, 10 Sep 2025 09:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ecgLE8LF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2EA314A78
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497280; cv=none; b=JXIZuwgYDC02BF2Y2rzRXfugA3IU3uMTFNrrH/JksY+FtbzaTxCp/w0KZ/t4wGLw+v+ySbYs5ULuMxNn27Lpvb1xQ7YZ6cqTDbF8Uj6eFLvBGJm1/NKEUarnVZGD6ZwsPBCrC1/3ndLW/XZiVYb4g99LeW0MdeJXKpwKpsGFkJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497280; c=relaxed/simple;
	bh=e/kiWQIK0YAP/k8eC5ojOTLdahChMbymRDPSoa+l+lw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p5Dunpnbf6iOrecHMzInhKEtgsOsG4BngS9hY6rDhd9X0oS+/l0pSHUo+R2zyvtSsx62LZ5olrX1RIyuZ/6lJLsCGDEC03WJp08sAsAsC8fuz9VNCJ4DYTWBBjJUheEt9QZM+wEbbItQFTlM7Q+I67X2cMj1NsBD9Flx9haFh84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ecgLE8LF; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b0419ea61caso79587066b.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757497277; x=1758102077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+pt4wmXkU07xSJDhWQaMnUt+2pOc32GfIf3u3taNxfY=;
        b=ecgLE8LFVWZBvs43abCu5vIIy0CbrhXheFdt52h0+Z6X/3lfa5hpqWOzeuygD2hHiU
         iuMxo/9s+UR11GqZCpLe5lAdEzq+hDrgOcxJAj+Eh5Ar9UU2TtLgzbvK3ghwk6I3lDe3
         01slapou73yz5DESjE9Uh33Fa1qaEXTZt0kUjwR0iVdEFcWoSQlLf9A+O/4OkxRGI4JG
         DY7vAn7NrVeiNtarquuHfUcjGQQwxoxbaFBLvpIWtMXJveENLaQih1nEJQkW4MnszP4u
         cBTdGclpg/qTSJOBMQsJ+Xum6msqlKgDJm7zAo/5ASpi0ezOEb9cHOC33absZfwG0vJ7
         x5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757497277; x=1758102077;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+pt4wmXkU07xSJDhWQaMnUt+2pOc32GfIf3u3taNxfY=;
        b=EKjDIvviUOdwA+oYPW90uZyWXFL82g2of8BYH5a19gZShZD9Om/ZOLQTuu5tWAHBx1
         xrK2MbAF162zHTsYvuezzWT3+0g6IS6EKakiBvn5hAcSaRNXQlj3Xt+MClUzLs775zig
         dnrSUTLr+nlKdVtXqrZ8DY++0IV+Tt9IZorHdq+044nsNFTU6drUHm6PhYCqIN179N6D
         u8DRrb9iwcO5u8rfjbKNk3U0pOXp3RmVH/ES3LA6W+u+7jQ/Bu26O7aaTt32CuwPS75y
         gfi3ByDzp3XdDsz2nT2mFOPjK8PiSBfGfa24i9u0Q0tKy9uk9eARzC5mzTos66cyYpt4
         6EBg==
X-Forwarded-Encrypted: i=1; AJvYcCUoYgLmK+8T3A51qrPIK6KIR1+89H+H6XUmgo3nTe5kEUGkVGwaGKFMCKj3RhgKSr8QbwA0BUvZZWBh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0QGuY//psqylM0p8gy7bwCHe+/bYoIKeKqZ4aBrBKG1Ilg37h
	YieJUb3vcjZoPJP+XR3co15u0sB+yqVzgUJRO/VQcQblOkmT9UvWaiWR5KVaJjcTK84=
X-Gm-Gg: ASbGncvmyNlTsz4h5ywzwL0X4XZHkDRPuUg0SbQ0CwhmcsHHO/bmSSzk53pRr/aqC29
	e/pHUIvT78Q6W8XxDdYSgP8m4F3IFK017oxxjlul2c8I36UFW2XriGPSuimLBvzKcD05YckNhqW
	0y3l600Uy+Z8WNTzMNfT3lw7ZN4ccADhqOz1uUx2J9SHTRBdlxFdQOSJocptdU5kxupJBVtJ0Gh
	33oVbG6IZvNoZe2+wiiWpjInqG2/7mC5BQcUZxUZLEOb+kV+cK0rso/QsFXkUBGGoLBsV6rxapL
	gX0/0M9o8/Tu3LNMsjumnKsYkbBQ5CwEAaSjyTUlSXDhCczO0GPXaAGnA5fneRfWvJ6M5plTrCG
	xgcceBbQPg/Uo5hXu3PT6SDAgmODjeZyacPRrL7c=
X-Google-Smtp-Source: AGHT+IGveog/Q2RUQ1K2kmwHRA0crLrj7yzg10nc1PBAbCu+y27ReaxfY24xmgNZqJ6GerxKvTkBkQ==
X-Received: by 2002:a17:907:7fa3:b0:afe:7575:df0e with SMTP id a640c23a62f3a-b04b1737c20mr799525566b.11.1757497276998;
        Wed, 10 Sep 2025 02:41:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c01bdb7e9sm3021590a12.48.2025.09.10.02.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 02:41:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Dmitry Osipenko <digetx@gmail.com>, 
 Aaron Kling <webgeek1234@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org
In-Reply-To: <20250906-t210-actmon-v3-4-1403365d571e@gmail.com>
References: <20250906-t210-actmon-v3-0-1403365d571e@gmail.com>
 <20250906-t210-actmon-v3-4-1403365d571e@gmail.com>
Subject: Re: (subset) [PATCH v3 4/9] memory: tegra210: Use bindings for
 client ids
Message-Id: <175749727534.29308.15110527994326578124.b4-ty@linaro.org>
Date: Wed, 10 Sep 2025 11:41:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 06 Sep 2025 15:16:54 -0500, Aaron Kling wrote:
> Since the related binding is being added, use that for the client ids
> instead of hardcoded magic numbers.
> 
> 

Applied, thanks!

[4/9] memory: tegra210: Use bindings for client ids
      https://git.kernel.org/krzk/linux-mem-ctrl/c/3804cef4c59742cf695e7b41a9aabe8d5bb25ca2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


