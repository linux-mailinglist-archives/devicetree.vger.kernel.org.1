Return-Path: <devicetree+bounces-202098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E4FB1C0AE
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 08:51:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E88B7624B25
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 06:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F7C214807;
	Wed,  6 Aug 2025 06:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FP7ljyqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163AA20B80D
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 06:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754463083; cv=none; b=klqccC26lK4d42mzAEEZVrHRF+qC7E91BEF14E17LK0rQXA+vY2CQsGPAut3WiZNQfkZCaa+V3Aqeup0QswkZP/D1oKkocEq6iH36lIZa7lJejlcIKoudbAgymy26K7i+bCwAyaiJpkMGaul/E5mXZky4rw/rf3HjWPJPmZ7uS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754463083; c=relaxed/simple;
	bh=/ZbQ8govFSIUs2bOQIpdvVW2jnxoxMQHhP5MEZyw3/Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pX0TN8ADOIIAFIVD4sZnBH9VSauj8u29uUdFWJgS7/Nczji1siMQ8Yj1GV7EuquOEj3nNBH9ECRGVdFPTqw+9LpY/5dplk/JgvN7U51l6tO3piQ8g8C4iYohsKwBGOt9a6DLsEAG5gUoIlf74jWZmyKmzNadUPpxjW6QgrXQ3dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FP7ljyqD; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b7920354f9so5787166f8f.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 23:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754463077; x=1755067877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3ZtOO3KoPZ/I7NSmve3I6N3iSKvHF5Yby7yuHTTKwU=;
        b=FP7ljyqDaffVTZ+Ofp/nsW+5kCNZFkn9Menxb1D1ulgO5opfeNJnplNz7YlCg8BvIM
         E6h/FFXaL2DdQZvNmylv3Hs9jYW4aRzKnyyyc3bh2F/sz1OcpGbP/wGDX9DRLJyBhPqZ
         ZE2u/KDCAX2SSD+V+yoE0DeCoY64Bk6pL1Dsd64N3/TaC1bLSGmRpdJFUCbJR651XinX
         LbFhdRr/NUgVH5IpsepFPLNr0UnCiTrzLmOCXmcZBM7E9hXOPq8AfX3y21cSXVY5LGJF
         z9wMvPc1UauhKAS0FPw+1FCbSFPzMRs6Tcd3WulKHfaf4KVVIzkK/KsKN11o2i/dRseR
         /BZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754463077; x=1755067877;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i3ZtOO3KoPZ/I7NSmve3I6N3iSKvHF5Yby7yuHTTKwU=;
        b=OuOY6ayWdQ5kS7FFUb4LQhqR7MkVm3NxLnj9jgYIM8LV1Rh+SCB9q1iC7nzUcAy4kq
         Vf/SvGRLF3Te1/ACCePHaovJ5ZNlMEe7bMHYxJiJKFMBdahZjgCoR6WbDohOxHY6cT1v
         Q5mKyNv4zT9Q/uZPDpefv6CXyReOCkDLgiTC8P8ml+ztOLM+aNqlzI1FCic9uMxyRWYO
         AFV4Esq1DTNWryVYXUtuj3QOIf3I3VPzcbM2Js8Tp85yb5p1xaWZsD35iRJ5GEWpH2qa
         poNLPWQJX5F/X9ogXk14IgrDSge0cF7I4odMsRK1d4F5KMp1nGxHQblb61pxuO/EvL2C
         5CIA==
X-Forwarded-Encrypted: i=1; AJvYcCWODk3KCfd8ySi0hV/kkoUkbbQEw5n/MGsg6lUECdUVY7N4y0uaaPHIvgmTEzKZPmul5OJTQEZduZsL@vger.kernel.org
X-Gm-Message-State: AOJu0YwwMez+49wnSWGFHOB6ZJIDM30JXjC65eUOZw9Wj1DBIwJoTq5V
	mOVluLsRDCOua6KNNKW1+lQJ5qFfZIiqMJqIv1NJJUOm2rS3VNulsjotgY8nNSNxbBM=
X-Gm-Gg: ASbGncs3Vsh8t7BBw4gdwmAfGr9NvpNuOUfUS/A8RYjOAgOBM3I2cy5yWE9qx4WKQg8
	Wtzu+mNOwWoBYaUCKX+jcXVTEP0VKzU1Qqb3frnzRZtOmWjwT+Tear3VNn9Jl0k1WOFXdy1Yep7
	Z2rMIBhYXp+6fWX0W5CWWgRJL2jGT3qy3i9oG8n/BmOVZ5l5zroY6TxHYtwbsHgtgIz6OU60nUa
	6YRKkadQMhbc5VZZw8tftjGqEhNrixfV4gjPR1a9NN5Qqs2uo1VnRc1bnL1U54ATm3SAIdOJRPX
	E2yIgjN8DnZzD53YPvtbdtDeVuTkf29M+UFrg+erkftr20vKFmWZ4XalWaUhzvRcuWq8jbhHrTB
	tJZMBcp19WcXVR2HphOQKgUQUmQ9KHZNs3uO1hgjSl0E=
X-Google-Smtp-Source: AGHT+IG5UAFATkP0zvIQx/j+Nr2FUYN6xi4uYKLlr2fwfvsMlDwmnESJC6grlroi3YZEydZFk1FwVQ==
X-Received: by 2002:a5d:5d10:0:b0:3b7:83c0:a9ab with SMTP id ffacd0b85a97d-3b8f41bf22cmr1375079f8f.55.1754463077196;
        Tue, 05 Aug 2025 23:51:17 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3abf33sm21932550f8f.7.2025.08.05.23.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 23:51:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Joseph Guo <qijian.guo@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, victor.liu@nxp.com
In-Reply-To: <20250806-waveshare-v3-0-fd28e01f064f@nxp.com>
References: <20250806-waveshare-v3-0-fd28e01f064f@nxp.com>
Subject: Re: [PATCH v3 0/3] Add support for Waveshare DSI2DPI unit
Message-Id: <175446307628.1715407.12942298107316209335.b4-ty@linaro.org>
Date: Wed, 06 Aug 2025 08:51:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Wed, 06 Aug 2025 10:33:31 +0900, Joseph Guo wrote:
> This patchset add support for waveshare DSI2DPI unit.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: display: bridge: Add waveshare DSI2DPI unit support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/01048738d6b618fc1dba564b38b3df06b0937eb0
[2/3] dt-bindings: display: panel: Add waveshare DPI panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/80b0eb11f8e0a504078c3b405b54cddaf535ff97
[3/3] drm: bridge: Add waveshare DSI2DPI unit driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/dbdea37add132a0f5d96006ea01fa73280984b88

-- 
Neil


