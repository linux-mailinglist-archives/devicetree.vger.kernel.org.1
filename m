Return-Path: <devicetree+bounces-246960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 281CDCC1F34
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1460300BB94
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A038C32E143;
	Tue, 16 Dec 2025 10:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d9i9zfq6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8DD319852
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765880591; cv=none; b=BtdebudaqnV7tlorXmMnu1jVvvT6PZyfAfPGVQSUG92DKZVqwyj12qLdisdWD/UAbIjrGI9yDr73lU25Zl/eGJilX3VqpL8Ui4QZzz5l5XVKp66mjCOwibFNiLCySToCv4TOONxQ64oBBtKtu1b1KJZts6nADWrVJiENgnfSXiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765880591; c=relaxed/simple;
	bh=Dvmr/QNqhE/E0wa6WZQHpZU3lnvizMSDqcgLKup3gdQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GIzTEcnt1hg6hR3OcTcoywu0iJrC+LlLy8afTlL1A1PGCoRqB/IRJ35SkLsPvyFaPAqSU3PBcZlEguBfIITOHXFkyE6n8+YK7pTiBLFY9+AYnPOzUTqlZYgfYJJoRfko2LEVWm+yVc1ZUEcN7Ym+7cmQMRmFg/T5/tNtjiNijRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d9i9zfq6; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4775ae5684fso19435075e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 02:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765880588; x=1766485388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NX/BjIYz9x7aAJdudv3dAY9wtSDhtVkvwARFOcwrepA=;
        b=d9i9zfq6+0twgQ4LIkOBRJz9vEZTE2BpVfy5CNviFiAd8REoiU9dhUBfpwgBqCehqE
         6MVjrNafpJsQ7IWLDZXzfkcJI1cMz/7414Her7r+JeWe4IQYWCWdnoRKrZHv1nCw/OY9
         wG/+ErKwyWKFMmYNIpSAdEAPxllK5VIXOb4+pHOnWBoXIAPZr/hUxKSV250mHuBHYhce
         UY5VMVt/E9ujlu4AFBKLbziFIElDrOjtj6wawx/ZAH4VabXhq6qaF6EsFhX/04M5kzsR
         4ed8NMj/ZCMWCSEWcXLWXniW40QMBWTvSmxRtTsWF0GeK48kRUdSe5fsedCbwb3/L8De
         Rxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765880588; x=1766485388;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NX/BjIYz9x7aAJdudv3dAY9wtSDhtVkvwARFOcwrepA=;
        b=ScMuxdcP8JJDVxkb0cPiIEjIHfCgFZwfEsJH/SvYXScx/kXS9m0gPoWYOi3feOT9r5
         Xh2KQ5rhuMREvkg2L3WzsmNW5H63qHOC8HIKpis4cQTf10fkHm4+a3koYJlJZgpshg1p
         rHfiYDT94wKP+0bE23OJF76rUM8AI9QFThNvlagqS8p33vNBaDHeEADbtBl6V++oxEAd
         mn2CMPdxCEPmARqm8fh+rbg7GsfSItST7SLQKPdqjd6cLTMWJa1BlP5LAWt3N9ZQ7o2r
         NTTUwvHWF8hQz/6lpZxXscVnC7pPQfB4jGxEnlWMFRMWIP/aANNxWZZwO6ijV/tnW65f
         QB4A==
X-Forwarded-Encrypted: i=1; AJvYcCVkqOQ3z7vjMzdqS7cEnwtcf1yEYitRJWOSKOybLxQCj5N9g78I1qP9id0v4YHXSaE88z1kPbLedIZe@vger.kernel.org
X-Gm-Message-State: AOJu0YwwoDj+2dQlUa70n8Y/94IMXsU1heqkaR6v+zlRvnOHPp1zGPgO
	3vDjzKY3T6qlTQqLtkX1qx0IBxzY5DqEf+Ey/eTL1ZheEXAnLfk7V/h5wHVGQt47AaY=
X-Gm-Gg: AY/fxX7zA1qx4C5zEI8oP5Kmpor5SrKPImQF4EpJy9u/wsDQpxSTYHa1nOOC6g8atcb
	K60hRzHA5rySN2ei84RxNTCH1XNID9a/cJmuETFyORRhpRKqiOze0OkY0NmTNNDln9fxk/PATFD
	uQ+EwYh506dCPRaxFAH310D3WVQ7An22UCsOQ6TgCAP4AzsAL9RrAIalkaQUQbEFP8lUs1SK8GJ
	923bALpT9wEirxS0Gbyji6uif6HQyDQUSTVCeAG+PMFMR8T2k2JqZX0/Tz6a9bCK3lsP4mjqy/r
	Lr9nMXKqpaBCipwy5N2HinbVp9miBaAnRi04YOEE+AzlPcGas8/gKSYmq4x8su/sEVTJ46YzykX
	vLSacNgjbDXtSQib01uikDuLys4JxTV/gQQ8roe8Xv36RRLt5FCYsA0AfFXSMPqAqbShZUNolpD
	/2AJW8tysCuFP0xAXgjxDg++K/PYO09sU=
X-Google-Smtp-Source: AGHT+IGiEubYcTgOYBi8mqSAy1isygDjzTiDJgnd7uGUl77AkoVoZN4wTT6z/CWXEpGiH8gd5MBpTg==
X-Received: by 2002:a05:600c:6290:b0:477:55ce:f3c2 with SMTP id 5b1f17b1804b1-47a8f8cdc9dmr134843895e9.14.1765880587826;
        Tue, 16 Dec 2025 02:23:07 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f984a268sm14996292f8f.1.2025.12.16.02.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 02:23:07 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251106-dt-s6e3fc2x01-v2-1-deb87727152e@ixit.cz>
References: <20251106-dt-s6e3fc2x01-v2-1-deb87727152e@ixit.cz>
Subject: Re: [PATCH v2] dt-bindings: panel: s6e3fc2x01: Sort and remove
 unnecessary properties
Message-Id: <176588058666.2230787.17118306826413529829.b4-ty@linaro.org>
Date: Tue, 16 Dec 2025 11:23:06 +0100
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

On Thu, 06 Nov 2025 11:53:40 +0100, David Heidelberg wrote:
> Properties are now sorted, reset-gpio and port property dropped because
> they are already accepted here as part of panel-common and usage of
> unevaluatedProperties.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: panel: s6e3fc2x01: Sort and remove unnecessary properties
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2c96689038aeea99c18a95b66dd5a171a07eaab2

-- 
Neil


