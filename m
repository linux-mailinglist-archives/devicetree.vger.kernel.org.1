Return-Path: <devicetree+bounces-54678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFEB8921EA
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 17:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BEC41C237CE
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 16:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD0085C7D;
	Fri, 29 Mar 2024 16:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GQJiL3X5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83184AEDA
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 16:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711730282; cv=none; b=PHdkx7SRqMrYowBYQCOODJw2yy0+bLIXyt4IT2Pp0Tp0irEyhEWdAKyBRU7GaLGXwft+JnvhZk5gUW1LvSm5kD3AeZLxoJ4NiYl+E9Db5iaNVCz+hITZAN6PFET9Ml8We8/IOcScDTvTA9IRvyNjieULM1jZJB9GckDsBgZyK/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711730282; c=relaxed/simple;
	bh=fdjrz1z6j30RXRiX1xYuq5+tdMqalfGBwWVnq/Yy5Rc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TKEhfVORjvzdxvnTVzZvFUfKs995ybiTqE6RYFEHQv2NMvNeU5PE1Jt/X7qrwEEoafMGBzlqRe7r1NndJSfizmejkEjlFSIXYtTWsP2BZUZl0jxG1ARvYR4nLBoSdAjoRROVQEg/rjJWxl6rRWZ6qkM2/6h6Vmdopqrln1ndvkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GQJiL3X5; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-41553b105b8so2612665e9.3
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 09:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711730279; x=1712335079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwLmF2g9SeFgO0qE9J71WGfItvHTsnplXOGpXDPoZl0=;
        b=GQJiL3X5uErCHD33DrrAt8/LM1YYBTKXp234NZZ8jiJPpOLYCKRkJyOPU1fvQn7P/L
         BD1iThPXfjzbYZOWAnCZNX4fLSInVJ/XpJotZlsPhWL3j4IU3XaO4pvRhQhg+psb79Qu
         LE4FdKExzj5UNkZUHaUCEb+NppvDp2MUXGrIJVgRihQmDi7X2tSvOFDfRleJN8MgMZ+b
         KmP8Xd1F8rX0H2sqGY2GZgBk/o1YpXkqtkPBmNTi8PnjlGsBQImFoROcsaPl12fnaWkr
         NHQsxj2hziMVBL40NhKUNtBf7k+p8RxaWCVbijdRCuHuXJV7CzIjg5YzHrSynxft75kL
         ahjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711730279; x=1712335079;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwLmF2g9SeFgO0qE9J71WGfItvHTsnplXOGpXDPoZl0=;
        b=lgtRHuEIR4oFN6+rpW+esTTfJYRIkUCICc1rLbbrRYZEMrvaxpVEHzoi56pELVZvwX
         d0VEd2SlLtG7oZApDllvE1qtUx5tpO7RCk1wyLxjvWfvivDib7PUM4zWbs+yM4QjhWrU
         CUVHBgY6EuIkTubm3sX9v68/quP5Gbey4TvO9h4o7oTjXxUutUXERlYgHv8PGTR5gh8h
         x3vwhdkH5gN2ZQLxfTRbsmxa1HhN6wHhvfEgA6JpyZ/5R9QG4l6pl75Rlw1w2SCTOsZ5
         1XywQHiUCPxSo07lcJ5d3tYYBXTGoJhT9dRU4odm6sgWRW5rduIcxx1yvUP3XTIp+ZPE
         zb+g==
X-Forwarded-Encrypted: i=1; AJvYcCXsizC3/NBWcGHXSCQs3yrGzqZqkJBuvgEObD5T7lAVgnFGpE1/RfTF/4Don3Sjy7ufEesnOl8JEl/2JQs/6nzk8OF2LRMMwOb9dA==
X-Gm-Message-State: AOJu0Yz+76RHNQ/HPG+13NzwmrtI8Z0nhxuag8VdMzlctyHJsa4yx5Xv
	S7EV5hg17p+40aZ/s17h+2h6ksEIOqYiMfxt+xqNtfMHzr0wQm0psW+kRWbvUAaFFx8+VRs09rU
	iSl0=
X-Google-Smtp-Source: AGHT+IFxR9kCg8wK1tdVBWU2BipcSmXFIAMRH1mlDRbii8iRl38mOAwB9CBqVsbED9XR994yGHrUNw==
X-Received: by 2002:a05:600c:4f0c:b0:414:85f:1f72 with SMTP id l12-20020a05600c4f0c00b00414085f1f72mr1763054wmq.6.1711730279018;
        Fri, 29 Mar 2024 09:37:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m4-20020a05600c4f4400b004146bcdde06sm5958736wmq.6.2024.03.29.09.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 09:37:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, 
 Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
 quic_jesszhan@quicinc.com, megi@xff.cz, kernel@puri.sm, agx@sigxcpu.org, 
 heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3326 GameForce Chi
Message-Id: <171173027816.1500306.363820748335291439.b4-ty@linaro.org>
Date: Fri, 29 Mar 2024 17:37:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 25 Mar 2024 08:49:54 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Chi [1].
> 
> The GameForce Chi has the following hardware:
> Tested:
>  - 3.5" dual lane 640x480 DSI display.
>  - 15 GPIO based face buttons.
>  - 2 ADC based face buttons.
>  - 1 ADC joystick (left) connected to internal SARADC.
>  - RGB LED arrays for key backlighting
>  - Dual internal speakers.
>  - Realtek RTL8723BS SDIO WiFi.
>  - Single SDMMC slot.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/5] dt-bindings: vendor-prefix: Add prefix for GameForce
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/59237fc04ee1c4cdf62ad5dba18244713970e36f
[2/5] dt-bindings: display: Add GameForce Chi Panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/387974a21a63b1c7efcbc19c48b9930f6ef5ac63
[3/5] drm/panel: st7703: Add GameForce Chi Panel Support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4c4f33be7e4d476566246e7166c54ef175287e00

-- 
Neil


