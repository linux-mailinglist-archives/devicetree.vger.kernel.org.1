Return-Path: <devicetree+bounces-254353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAC3D177E0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:07:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D755030524C8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B3E3815FC;
	Tue, 13 Jan 2026 09:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wlyv04j+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00963815E5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295169; cv=none; b=a72fP+/YydppR310wFrYvXtPGPHVsjCT42ZMyWR9Umcb0j7EI2spP/bJIe1nbrg4pZfCblarVFUe7aR1uIbXOKWnikLY5MhatHXKgm/MkZWY0VV1Lng1+PAFiR/9/KfBRLuyWaSah5yq6jkogQ8kx8kJ1Xc9iuezI44rbRvqJSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295169; c=relaxed/simple;
	bh=bQ9suiMEOGkOzWpBF9UrQIbL0FguRigKVKzhBdibr+A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RwHAFETthzbuYzmp+Rpv8FEgYe6DhMhVhbHdwjLoSwls5OflmRCN205IeuEe/mumly4ZZKCvaPh1NTtz0fkr+PSIv1XhOFPL3cPW3FLdITmwMkxCsg14l9T3ABvvfJsTb3ljdI14wg8a/6+A1FmBHHLQeqjWVWh0X2Wc8R6d168=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wlyv04j+; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47755de027eso41891365e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768295166; x=1768899966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GwNEb3LQLMo8imJ7VMEa6yN/R9/2JX2cEE8MIs3WRVg=;
        b=Wlyv04j+k6RdEm2q6Vacll5lH8nx2wWEL8firS1sBEnX/VXKrv6BBsQ+bhGcpLQ5YM
         lkQHqqyt70INDiRYxnjB4htFOlQ31uOWYE/hiQQ/JdnTQYY9eYNLLL0wkoy3JOXyL2yI
         y3gMXsDlx1jRRF5UQQZgCR6oGex7d+LBtA692gjwdnK/dkQrDNb6NGt4QE1kTNM59oPj
         7pdBZAqTOXCC3FabP36X1j+gA+uKirdN5HIRB4nJmq1iuWXXXsjMk2D0RVwHLtbuF8BW
         Me73dT1zzur76GC0JDh36sX7+2l3kYJLSeNlBvsNK/DBnj3ppvVgaALL8n/naFVhBAfi
         lzyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295166; x=1768899966;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GwNEb3LQLMo8imJ7VMEa6yN/R9/2JX2cEE8MIs3WRVg=;
        b=NAwuDaueh9H/Bsg1Xc5iKAdMEnw8Jo4v4vOMiVZQnY3J2H+cfM6kxu3w15s3b/mTCD
         SubhkMZpENtFbp3MfYL6cpy7MD0Id+SNjPYClzuQlqliF2281CGvqT7pCd+K0UvxtYEs
         OgkcBj+CLuCnCKgN1m4cIg0ZFvSPoe7somrJndh4O2WCDA5X2LquRKtvrCa5whHJ8gqK
         pmmQ3FzC7UQunTjkIsYVgdP7hU1VKR0pEZeyf328daenLYEakYRoIt3Ny1jdeHghmWkM
         E7JmNbYIx9HfHXWEWOd/Qur145ZantGDYARqY0Ew7tF190oxusjcka37fX3/C1flIfq6
         6/Vg==
X-Forwarded-Encrypted: i=1; AJvYcCXJ0ewKqT+S06ZvowYDCAgPPWdWIOEftLCCF5hnOeKa5sRMrvNr00B7Zz+SNGYwRIp2XFVfvpMQLilg@vger.kernel.org
X-Gm-Message-State: AOJu0YzNOxnXPo/oKtAhBsWaGQL6kFR6zw90x3aA5UfJnmb/wUBsWOfI
	5qWQiCM+dWjpJ4f9VztELQNYfbJ2bEPVunh0T11i4ZyvQpq1IA74KfF1zLIN4xHEpqobHOeciiP
	GRGEP
X-Gm-Gg: AY/fxX4z4ktpd4z6/cKG4GyzlyurDHjAgIumaR3eZ8uZoZ0pfMIljByWgOmEhZ8Ox5f
	OuLKP5cSh7Za+vzBCzV/CUGJrGbGu4oHavMka+cp0YsxUzDUQawKs8pPdtSXDPVoiEO14Tssyty
	HA9dRVLd9Hzs1oLZzXdaPrQDw8HlCs6GeViCCl5rs4T71iBso8PLJhZASA1QXZKiVuLBMTZzpAt
	imZPgJHQP2cI8hAIYbHY7jwUJEWXp51RKSr+3JyC0LsbiD1yiNL2hKIf7VXYxUDpPaVR6wPKSgQ
	/E4kDJMUQclU2jomCthLJqxuN/Pf6s64HLeZAyBrTIoOpwTuE+GSh/y/g6BzFDc0+lLjW3hq+s/
	6+2CSIr7M+6g+WHICsXj5mkk3x+GlsFDu4Tc80OhbW3Ucv0ptGVSTkqZzuIuoWRrqEv07yFvSHY
	19PVSnlVkVijZLCudleCY=
X-Google-Smtp-Source: AGHT+IFTsSsAvkGISPTEuC38L64Wym2rKYPexAbnCwSYfMjdchJnY/RVyoVWKtIiVU7s2aPS+Ux0tw==
X-Received: by 2002:a05:600c:a102:b0:477:7a53:f493 with SMTP id 5b1f17b1804b1-47d84b32793mr208905215e9.23.1768295166202;
        Tue, 13 Jan 2026 01:06:06 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080::17ad:35a9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ed9fe7ac3sm11118635e9.4.2026.01.13.01.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:06:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260105193220.3166778-1-robh@kernel.org>
References: <20260105193220.3166778-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: panel-simple: Allow
 "data-mapping" for "yes-optoelectronics,ytc700tlag-05-201c"
Message-Id: <176829516546.3839584.710833770035842126.b4-ty@linaro.org>
Date: Tue, 13 Jan 2026 10:06:05 +0100
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

On Mon, 05 Jan 2026 13:32:19 -0600, Rob Herring (Arm) wrote:
> The "data-mapping" property is in use already with the
> "yes-optoelectronics,ytc700tlag-05-201c" panel, so allow it in the
> schema.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: display: panel-simple: Allow "data-mapping" for "yes-optoelectronics,ytc700tlag-05-201c"
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/94ccf742309be5373314a865a7d6512b9665eae4

-- 
Neil


