Return-Path: <devicetree+bounces-232961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 768FFC1D5A1
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 22:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5840188A96C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 21:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A269B3195EB;
	Wed, 29 Oct 2025 21:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dsnfyfkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D0C3161B9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 21:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761771942; cv=none; b=aKmAOTlKIKiQbZa3aHRV1ow5+m+FZIvQKcqYy3TgQ6lrjtUMcHzqzLvZ46txMEvQXHtEP+Mj8Pb6A9Bvt1hW8DVW7xWn2VYrGs8wrwkA6we9h+sEipZzDOlMNxl5oHHrnk/j1z/SPkYwYFzSw6FHXBGpo3/JkL8n5a/Qr8wxB5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761771942; c=relaxed/simple;
	bh=uJ4ecdVVM1k105aqK4/ui370dV5EO8SGRN7iga9es04=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jvLl46VAmdJnbKgJg2jtNhsnH4nnZZEN176VDOd6kgOyRzzznUseyiQFlJS4i7DoA2JSmuG1uCzaMh5VNXwD+e1GVuHS8H9uWUnL33Rg2H4KENdEdbZHDBFDjBMoAWUlR4I442cUxYGotUTYO661AniZC2/VvvyeYJLYwyf46jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dsnfyfkg; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-421851bca51so248562f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761771939; x=1762376739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XTofcu4fJBU+wnClkDXXNYpcQQPdGA2T8MS/AzVhf3s=;
        b=Dsnfyfkg4xL6d6DSAhhfHSv4KYz4hFnbrq5NMal/+uaWk9U9ukZO7JYTGiil9UgM29
         RCmw/yKXUZxGoI5bqawjfSqN5CRthAXPevvkpq4zmaR9Z+1sksAGmdim9g6fLXbsa3OT
         HayslZDB4G3EECYnrqmg/KIOXm5Q0koa8EP/eCLKHWXeL7QLPKAdb4DjbD/+/N3IMIYz
         zC5TAPTAi/3dLMSwE05CR957L2426KHpShQU5jc7DWXyrZxHx+G/qOjlnqqdgsGvO8Sn
         d99dqTjpJPHSP0hO4Hz2EANFDBPAAebFAT8gtYxeDDqf7vImFbSuNf/u11OXJLeQj+BP
         b1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761771939; x=1762376739;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTofcu4fJBU+wnClkDXXNYpcQQPdGA2T8MS/AzVhf3s=;
        b=axlzv6dN/219Johlft/yeLdQ9432l/L05ouVD8cE61fa5qTZKsSdHfGCe07mf1EZ4B
         1+J8W8rCe4bYJm/jEHVMKYlZ/scjBoiZiD0Qzoa8j1kEf75MA9puSjDLugcMpZYGAOJL
         JZI994VPGJSjD/I8XUMB697KtF5pC34RRvqnIYtVXVsfsDNLNrd1160sBxp4PqwzWkaB
         uZmpKHNYGcB2BdpeI3sf/uGAgvRw13xoFdC8KUNmlXI9aynP8tFaesH3h+aexzd8iy6O
         641bQqdV8LDjbzrfyM1410ONrqyGRKoYLpAJVPoP+j1H7XfbIMI1tS3uBKVzLsSqaaqB
         mCNg==
X-Forwarded-Encrypted: i=1; AJvYcCVq/inx2SWE6pItAKB2R5UN9j7LTXnD5du68iHmNaKUC0MQ8XJ9i2DNuNX72m+Ua+bpQ37zPXQmQa21@vger.kernel.org
X-Gm-Message-State: AOJu0YyVkkS0n/Env6Ae3YtVNKyYYlMXxjCLAPbOuzB8T3/Jg0OdmAXr
	fL+cw1Ck7W58zACJO9uBFBEtqE+SwpMKpKGW1ScrblG40EQd4qbJYkVzekCR/6yniOE=
X-Gm-Gg: ASbGncsAsOqi4RPQOLhhQqsCo6mAL53eY+SiPGj4NFc0BQJ7IMwi60imqQ5RbBKgf/0
	aUIhYJdyNpbnYkysVrDfG1n0OXgd4JQ/8n1Uf73ODRFy/dgl9A57TEQL/AlhJ0dExZ5FimlWhZN
	/f2eMS1PWfuN3TVfcrd67129EoM7duf6EZ+SKl40NWwImX8/vi4sAX5bkz+dsHp5rHNH6Ii0rOs
	Tr5hfiZWbKtMn5ELBl1KIzOyT11bcar1MVyM/zsyAS1s9ynQes6NhYzYSw8ht1jahxTwu3FuoLt
	sAKbitmCU6EmU6dZ6V1+qAiVx6skUJdPrZqzpDGwCQye8ka2TxB9Aic5virOA7WjvzmbM+rDUI/
	PdIjSUFnmTydYMHUPrTTuz/yep7dquzD/CtVUp7fZnZ7Nr3OVzYt9/UWp8iwMd0pZnOGIEWU+l3
	T6yfq2TokOYGjBTTP2eUrQXzq+s5bgs/c=
X-Google-Smtp-Source: AGHT+IEXesMK4yi3aw7WNkX0LUl8o2qwDZkqC9YReAIB/Znsz0lE3UE+zV3f3Lh5yILl8ityWjzuTw==
X-Received: by 2002:a05:6000:24c1:b0:427:492:79cd with SMTP id ffacd0b85a97d-429aefd6a64mr3010887f8f.41.1761771938978;
        Wed, 29 Oct 2025 14:05:38 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952de971sm27815109f8f.39.2025.10.29.14.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 14:05:38 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Douglas Anderson <dianders@chromium.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251028-drm-panel-samsung-add-atna60cl08-v1-1-73123789fcdb@linaro.org>
References: <20251028-drm-panel-samsung-add-atna60cl08-v1-1-73123789fcdb@linaro.org>
Subject: Re: [PATCH] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA60CL08
Message-Id: <176177193834.2073083.4758126268960108187.b4-ty@linaro.org>
Date: Wed, 29 Oct 2025 22:05:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Tue, 28 Oct 2025 14:22:48 +0200, Abel Vesa wrote:
> The Samsung ATNA40CT06 panel is a 16" AMOLED eDP panel. It is similar to
> the ATNA33XC20 except that it is larger and has a different resolution.
> It is found on Qualcomm Glymur CRD platform.
> 
> Raw panel edid:
> 
> 00 ff ff ff ff ff ff 00 4c 83 a6 41 00 00 00 00
> 00 20 01 04 b5 22 16 78 03 0b d1 af 51 3d b6 23
> 0b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 cb fe 40 64 b0 08 18 70 20 08
> 88 00 58 d7 10 00 00 1b cb fe 40 64 b0 08 c8 7a
> 20 08 88 00 58 d7 10 00 00 1b 00 00 00 fd 00 30
> 78 da da 42 01 00 00 00 00 00 00 00 00 00 00 02
> 00 00 00 00 19 96 c8 46 1c 5e c8 00 00 00 01 4c
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: display: panel: samsung,atna33xc20: Document ATNA60CL08
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2a6550191adfa20c6f63044531fe21202cfa03e0

-- 
Neil


