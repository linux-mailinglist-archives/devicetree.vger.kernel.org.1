Return-Path: <devicetree+bounces-240365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 06506C7042D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6B31B349ACD
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CDB52FC897;
	Wed, 19 Nov 2025 16:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rl9aOhWs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E767C2F5A2E
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763570953; cv=none; b=ZBoBzcxc72BqQvV+/OquVsNIVAa0HiRaD7KVGGDUyK+YLDOEEGve32J3xklsyLl2MY6+9hdmuTfvYnlryaA1Q+WiZB3qQYTllnH5OGA3Lk+erhiEYhTOaxXp1TihL1dQsFuaBnLp8iMN6GY+PicgSpWd7MmsnOC9xwS3ISoMyXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763570953; c=relaxed/simple;
	bh=Coj3/A6wrsaQv11Fd7xE5dxbyVspCy/iw/Lsh8dg9U0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FOb1l6s8pM4VjOBkRieOusEaCPS+Y+5bfQJEdPQ1fgw1Wyy/ydPobW52Phv4EoXUchnjNepzF/8Ud7auH/I3x/onsLLMOX4Y3yqk/E561xyPlmX962vOCB+63F8PoRZoYXBa9fM9f888qGD1VnnyiWK0Wmd2VtVid7U6DxD4mco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rl9aOhWs; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3c5defb2so4731718f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763570949; x=1764175749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6AOLChH/q7xFQ5th9G1DIz4KNOULF7t5D3A23AyCZ4w=;
        b=rl9aOhWsiQXSMNuiY/WjsDwMtpGlvuRVxNgi5Oceba52AyNefJhCUas45w+KXmS16q
         TNTLYF5Ol0+VbOipA/ycWiOHHuqeuLJsjo5zIJs8dkH0zLuwoXJEVe7gdl20w5opCeUs
         XRQP9ZcEdiU0HbDcA1v6Nvxcvh2Rm8Eni0X/8/Q12QAaETi2bKuhDPsHqxVolkuTZsYN
         1POBG14bjC84Ie31LWAIA9IH05u6wqSGZdIW7AnhWqeCqkjpI1Qg28GyW7bHK1H9TV5a
         y/9KR9K/l1IBJErsapkwYtai8Mmpod9twyLzWo8yPtFh3WTu/YKkTEw55emCA3lTNNpa
         dM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763570949; x=1764175749;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6AOLChH/q7xFQ5th9G1DIz4KNOULF7t5D3A23AyCZ4w=;
        b=khkx/7K/K4bPyQCpbkbxnNIAr1eymVDIJZ+3kaTB1/i65sheyDdQgfAnD8YNr1yTrb
         6MT+T/b5+3OoLgE4FleSNlDK7QgFzBb57xX11cdQx18L8qM4KmKSkrY+/zdYKFqEqlMv
         u/fjHu+/n00wDM5kWEjIIT23odqoT/NjldD040F58JNf/VKWyNh4VGmuLMJYLHHuAQiu
         Kvr+TL7toMFxb3SG0Sp7GFPAkjOtbKH/0FOZ50ikj3UGGhnVdUINbFeYtIJF6go0l7kL
         06BiFzGKc29ePIQgpT+V3sFJ2lTdyNXgDyjgqYVYuVv8Db4/kpIdI+u3abX+aI8luZzI
         bz8A==
X-Forwarded-Encrypted: i=1; AJvYcCWkyPX+vY1GsdXqygFRQSz7EC+dpjbildsrFnYS4jRTw1S2YIDzcaOKsgvba6fjntroRDFVLUs6aOw+@vger.kernel.org
X-Gm-Message-State: AOJu0YzX9e8vKSPg0JPrMvKjivQLz4Cvq3/aL1avPDI7geXf3W/ntY4/
	02+4xOkVpA8eRYta1n+fdm2waY6DqWuHwAK5DfkiGR8XBUcl/eoq80uOMIrZvrTMtWA=
X-Gm-Gg: ASbGncuXNjNgSL/pUwpZ0U7eejZMttjrUZGpJeWitr1owC7fST6XYCeanmH0JYxDfFz
	5L/gLT6rUTInDCZDrR0aNODgUSJGh+BYoKRux6nH9qAhQL2bQk5HM3Pmd5AnBMvWK3ClWFGXSln
	57UCJOiPcSVO1Jf85D6Z875epRqSlVpSDL2kr9Eu28NCY81IuOhHkG/cv7Lh/sY3M3JVYCeBPym
	X2ytKI+CeqkUtj7vMZXn5nvyRkNPi9RAQn/uBmGo6DV+GQ4yaPhYyiHV2Bn5iiiOcYMzgBGJkUu
	in9bINJs4fcixrL/IQ2UyykHr03oEMA29qwTCTNGx4oJpYaWc0xLVvYN3QllwPiBQcskcbIaccE
	ki4dReWcweQGqqP7NgbC9hyC9vUTiW2B/0gHGE/zatkaAU2mUcvC1BbmordmHU42Ip+epuyQ/Re
	a5AAKIG+ZQobsMFVoNwqg5kku7c3ykIK38sc4zUWAS7Q==
X-Google-Smtp-Source: AGHT+IEQBWB0Eg1zUiaC+C6Q6xYJagNpfFV4B79UXSjGVI8G4Xbkzgsvf6WhQGX2JHCRNzTrOV+mmw==
X-Received: by 2002:a05:6000:1ace:b0:429:d33e:def1 with SMTP id ffacd0b85a97d-42b59378443mr21197697f8f.29.1763570949083;
        Wed, 19 Nov 2025 08:49:09 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3592sm117957f8f.21.2025.11.19.08.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 08:49:08 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251106020632.92-1-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
Subject: Re: (subset) [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506
 VOP
Message-Id: <176357094817.280640.17849339974679922280.b4-ty@linaro.org>
Date: Wed, 19 Nov 2025 17:49:08 +0100
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

On Thu, 06 Nov 2025 10:06:23 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The VOP on rk3506:
> - Support 2 lane MIPI DSI interface, 1.5Gbps/lane.
> - Support RGB interface.
> - Max output resolution is 1280x1280@60fps.
> - WIN1 layer support RGB888/ARGB8888/RGB565.
> - Support Gamma LUT.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/9] dt-bindings: ili9881c: Add compatible string for Wanchanglong w552946aaa
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/15e794bcbc9527736d33c96412ce077bd817d9af
[5/9] drm/panel: ilitek-ili9881d: Add support for Wanchanglong W552946AAA panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/89b34ebed02ee39ae02069dcf2e5728aceec9deb

-- 
Neil


