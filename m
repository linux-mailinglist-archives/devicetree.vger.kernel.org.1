Return-Path: <devicetree+bounces-233247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D076C202CD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DFF154EAA7E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55E193557ED;
	Thu, 30 Oct 2025 13:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DaoE6Sqf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C35C355044
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761829802; cv=none; b=cjZ9+id6IeCHaF58Ss8UMtPfuvMmxaa+/tUee92Y4UEmvTn6TgksF0RLac6K3OrpeiiegPl4eATTEqcxz/ccojC7h4LGyS+pnOieafz3FGBmLZrxbM0E0CWwQtPiqcX0CcDtreDrQ6P+PqiqAORxJA6flspdOU2LxrtBRL77dzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761829802; c=relaxed/simple;
	bh=LN195ehH6mkaeBMWFVU2UiSTlFySjfIXc7oLwKEdmC0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kp2LMaaf+K2j4tpjBbXtz68xTywdUluzytSHZ8+ED8+9+QbY9CQxXi3Xx2wNztcW79Y3uLaeFdIEhuQp8qrcjJyC+Ryfm3JkqLSmRXLYlZEl8yoNYSSV1H9+XOEhsnF/lxnvMqTq8W4mKjcPAFmMZa8PTphyew/ajQ5om+MBTJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DaoE6Sqf; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4710a1f9e4cso8546735e9.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 06:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761829797; x=1762434597; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LeBRI/u8xeKdN9TEDvF4M3sR8Wge/buOtQAIlYrKrEk=;
        b=DaoE6SqfHmgBfYcla046bIyaqD38SAvYl4eKvrQZmtzVnGULTRMC0e4kOQPjX8Gep7
         QvC3wqPThxOu1ZykJLlsRQNo8yinTIQVdXdcm461Irg7hiht3joEb+2DoI3rYz4Nks2z
         dPRIRawxM5q2IB8NcE+3qVF9Ej1s28slopw9jETbKsxsjkNxwlvSHnyFAwFzUH0cdnvx
         tbaBEGGPb0lRl1u85HgknjWq+WMeUXqiqkXMMhlCsj3F9JMecBfnXQLzfHMoWxk36xx1
         8jwZV2hcvDAIWI8dLOwswoHBrSYPzDx18Q0fGnRZTERD7XstC50Bnu+eZS2D4zEMJUhE
         QkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761829797; x=1762434597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LeBRI/u8xeKdN9TEDvF4M3sR8Wge/buOtQAIlYrKrEk=;
        b=IvbTh7MnUND8nRZ261KC5ezwC+7hR1pfl2WHUFH6bEi+yFroBP8I6QcSqbhBnAhDXk
         dWYtpVLaVD1JCELkstUBycPwZiYWH3fJWWgTC1YPD3IzVK6T1UALD9LwIDaB7jurjD0N
         5YTsETO3PSusdmbh1WQaWkmK+VkOp4EffipZc/rmvgz5A4/DtoOyrRUjmo+jUin7TsLM
         PzSlfe96B880uU1HbGLZnHWCwlVgM9JU3O9yq9JPxq4u41OPsXXNrZ6h4XmteKEBHHnU
         POZGjlA/dqfAWn9D8cbvLeO+1XXtzwDWwMk8zwof/JByiwndbsh8u1L5Dq02bc5Sy5Mt
         o62w==
X-Forwarded-Encrypted: i=1; AJvYcCVNywmo4coTnSW+N231PtRRPggmyq0uulDkONEQC48ZRfktt+5sq+zhpPzfFrG3xofnSdfA+cylHfmx@vger.kernel.org
X-Gm-Message-State: AOJu0YwT43ZQ5J7+z9s8IcrGZrCPda5/YWjk0dkVFsewtac/b2UQslQX
	yHw546FVaR80XSzklj2FZ5yOszXkh9PodigrQ77h0mrw71p09a4fzV986DLegJYa4jU=
X-Gm-Gg: ASbGncsBB1wlAXQ9RRhvGCTl0ac59MXTvEtB1OgdXRLnskxSU8l1rrczprAl7SpyZF/
	wnHIyw/5xiEIkMaNwAyy4PUmtwv/pqm8cnof0ATbB+WLY5/Si6P0yaCtYMGuQ7FvGUK7O7Gk2c0
	ff8NHNgS2KPjolYU8kCjpJ2rW19FxG0SHKORGcv04p+fwoSNBC1zNO4A2rI1yGJfl3NnWo4aYZw
	7WgllCcG6HunkM/u8mPxyYFUsEOgzVmhMjBvz1/9a1WrQmloBQ+jAjMRrXebR5diZXp9hL3p+i5
	2OIvWQ9TYj/Hn3aubdTvLZXc++8uWgxigjPvWv2julcyhjaA/JpkjiaXDPVaT8tmLAtNyS/dsZ+
	gL8efzHayc0NplM73EKPeVrBj57T+0CVJmiAMt7DX90WpwArNPwejo/l4ZCvmC2AMKqFbx7bSfD
	rQzv2njw==
X-Google-Smtp-Source: AGHT+IEuSEP7qxS4NaQyAdw06cnpw/gsltQisUNaoArx9BRmGnIGEWxBTAwt7g3x9+pa8EwuF/dyJw==
X-Received: by 2002:a05:600c:4e4c:b0:471:5bf:cd02 with SMTP id 5b1f17b1804b1-4771e180b6emr59383185e9.11.1761829797084;
        Thu, 30 Oct 2025 06:09:57 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429952de4a1sm32637772f8f.37.2025.10.30.06.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 06:09:56 -0700 (PDT)
Date: Thu, 30 Oct 2025 16:09:52 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	John Madieu <john.madieu.xa@bp.renesas.com>,
	Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>
Subject: Re: [PATCH 0/2] mfd: syscon: introduce no-auto-mmio DT property
Message-ID: <aQNjoM3fgAW6kxUz@stanley.mountain>
References: <cover.1761753288.git.dan.carpenter@linaro.org>
 <3fd4beba-0d0b-4a20-b6ed-4e00df109b66@app.fastmail.com>
 <aQMUu08phVPqfgEB@stanley.mountain>
 <dbd5558a-90d9-404c-ae98-a8c04cdad08a@app.fastmail.com>
 <aQNccP-lHqgygmsu@stanley.mountain>
 <CAGb2v664ybgMVCFWcDK-5cJZegC1HJmCg4-qJdgZ=7GAL4jOTw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGb2v664ybgMVCFWcDK-5cJZegC1HJmCg4-qJdgZ=7GAL4jOTw@mail.gmail.com>

Yeah.  Let me send this tommorrow if no one objects.  Pretty simple
solution in retrospect.

[PATCH] mfd: syscon: Return -EPROBE_DEFER in device_node_get_regmap()

These days we can register syscons with of_syscon_register_regmap() so
if we can't find the syscon that probably means it hasn't been registered
yet.  Return -EPROBE_DEFER so the driver will try probing again.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/mfd/syscon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index ae71a2710bed..e5d5def594f6 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -183,7 +183,7 @@ static struct regmap *device_node_get_regmap(struct device_node *np,
 		if (create_regmap)
 			syscon = of_syscon_register(np, check_res);
 		else
-			syscon = ERR_PTR(-EINVAL);
+			syscon = ERR_PTR(-EPROBE_DEFER);
 	}
 	mutex_unlock(&syscon_list_lock);
 
-- 
2.51.0


