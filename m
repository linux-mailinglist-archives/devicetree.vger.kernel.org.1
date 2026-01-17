Return-Path: <devicetree+bounces-256323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2847D38AF7
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4226C3007518
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF88B7640E;
	Sat, 17 Jan 2026 00:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OhI+LvMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9EB2BB17
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768611547; cv=none; b=j9W89SSjv1iEwldUy/tJrvwaCNRvGF/UxQs0KY8GkLt+ErkuoZLAZGCH99fNZ6eE2Uip7SGP64QnAMD3Th9LBmRfs+rS9cc2OI9w94y9X2IGskUZw/zS6Q/IGl6/IjPA8jPurK+Oes8oIqClqSzwxtiy2oumY6aFnMzDeJOZNVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768611547; c=relaxed/simple;
	bh=ZveipeIP7Bmtra4tJV836ZoRkFGm7qdMZOJGSTZHv5w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=APLRXs8wY05124UrhjrTqJQQ8V7vIhPPjmH5gpTwelGfFvn0slcj2w6CfOumVmABUrMpPryBUCq76mZy6RICr60Lvg38f18Z3hrDYEpEMIOBnJFZJ6J/MHhA7gN9IbEYnxQa/1olv2RwWbpGiFdJbdOFDKgqCoBWjOqvwEi5uoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OhI+LvMa; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so2285890f8f.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768611545; x=1769216345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8wzbNnTwPY3sl1kDBYO8pjwy7AQ3U6oZDZIuHTJM1cw=;
        b=OhI+LvMaHSser8ogUVoWen08Y4NvsMT4duH30zfQaOucwAYuWbKrgK82rtSCfUZJCH
         atEz1QdpNqqFd+FUzN+IAK+tqA5PES3gUc0sMmuVo2iEc9lX09JPwLNtUZ3mKKS4iTfQ
         oVccuUVQMubtxoukZroBcWgY8kGMMMQe0qbjO24WTOql99gI/wcq3z5k8CRktpbNGjO6
         YJ5R5AbWWKFY93FlYYiOQl1a6Sjp1SQp6u57MwSXNQya1nhBvONMnXSl8xyUp8dm6+3L
         MITX+znpE6JV9HWgcyzS0f8z64h298AL9OAo/bd6j2+97OE+D+IZr5Om6IKBtuuQ18BB
         J9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768611545; x=1769216345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8wzbNnTwPY3sl1kDBYO8pjwy7AQ3U6oZDZIuHTJM1cw=;
        b=IaUNQc1Up/dmjyaln91n3LZ9RHtzwaSg4/plqli92IgOwLsibBE14UnXtCU+1xr4mD
         WZx5oGr5QlkzTOJ2pjM5dHDw3QFOgIuCNXsBmpQPw3Ttwzt3Zz1lPdD0Qra3xVqrVQUx
         /6bfsxXuQqgo+yNgfRmdzr4dIfqYDOxHoP95iqRSyeFwgGCjUuUh4I11AnZXtBu039Dv
         y4llAcw0opFgHR+zhtdnN6PLjQ7Y2BEovTWUZCzbpXntmIk9KsnWx5uFRIv9ncu0kwhR
         xShkWa5cCkueKwGEbX6w9XKjPWxGmXH9TekBNwa2yC7WX9ErGcq/KqbVai8EbTurYMnU
         zEQA==
X-Forwarded-Encrypted: i=1; AJvYcCXhyp7Y4esGB5VJqSgIuixN+19X9IF+o1bdB1UOaX7u1S9ZnHXnaBgc64aSxN+T7mBD/vGAkqiQklsE@vger.kernel.org
X-Gm-Message-State: AOJu0YwSDbsbTUludImT6MkUXDmhmoefElM/pGJGjQEUedT9m5EnwrdT
	mc7GA95mrJMz5uVGLCJEWLq+j88mF6Y57GO3dplTUrU/FAAsJ3XfJjFi
X-Gm-Gg: AY/fxX6G30ItuZmvjDzGEM05t/htEp1eGkbNRuSEdo8exRdqCCNO8VebzQuXcGbTvNf
	ezbNM8Ujr5x+1cQE3nJGrAIb857ml2jRESZy7RiZWyuJ7sSRoxOb1O0070HdwXNego8BNNwD5t/
	wwm6DS5mu5FCFJgElu5vpCypwibZgUyqI//3VJfTNJFjvroZbPXnmU9sqk+J++QVD++V0E1XEv+
	tD4fk2YkqXBRjEK5EkzgAG73raPFa1s46cFhD06O6GNzWPdYI4NCWlYIoR9o3FSlR74kEpShvEE
	AWO6M5jGA3kvTBtWvQfITgMbHWg5P7YFv+5p3iKoZDULNWnqGFJ2jSWfHCZM58gIKpyt180G3vL
	hfUOk1JrkqTitflXrT2V72E3eD4DkHMNOv1B2mohkqFV+9SYIgAflTarAcyinYvK5iCsLpsPo55
	1OMa9QfxjYOAdO3tVvW3SbaqyU36yPGS3t9RK/KBEvpntcPcrO5+FzaIVo+LuWfyyInPS/kc+2Z
	eJs8R06gzykjVH06g==
X-Received: by 2002:a05:6000:288e:b0:430:f622:8cd4 with SMTP id ffacd0b85a97d-4356a082f50mr5383723f8f.49.1768611544731;
        Fri, 16 Jan 2026 16:59:04 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921facsm7885225f8f.5.2026.01.16.16.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:59:03 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 0/3] ASoC: dt-bindings: realtek,rt5640: Various fixes
Date: Sat, 17 Jan 2026 01:58:55 +0100
Message-ID: <176861152450.1947082.2637987844354037789.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260108143158.351223-1-jonathanh@nvidia.com>
References: <20260108143158.351223-1-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Thu, 08 Jan 2026 14:31:55 +0000, Jon Hunter wrote:
> This series includes fixes for the realtek,rt5640 dt-binding to address
> a few warnings that are observed when running the CHECK_DTBS=y for some
> DTBs that use this codec.
> 
> Jon Hunter (3):
>   ASoC: dt-bindings: realtek,rt5640: Document mclk
>   ASoC: dt-bindings: realtek,rt5640: Update jack-detect
>   ASoC: dt-bindings: realtek,rt5640: Document port node
> 
> [...]

Applied, thanks!

[1/3] ASoC: dt-bindings: realtek,rt5640: Document mclk
      commit: 601a821631c55014b02371740c39748d0af916c1
[2/3] ASoC: dt-bindings: realtek,rt5640: Update jack-detect
      commit: 2efe28d11cc19b69b19b9bcdb6f498c1bf842fbc
[3/3] ASoC: dt-bindings: realtek,rt5640: Document port node
      commit: b2788f6320722d6059f849f35a77eb082608c627

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

