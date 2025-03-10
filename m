Return-Path: <devicetree+bounces-156305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8F1A5A54D
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 21:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92DDE3A67C0
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 20:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8FF1DF269;
	Mon, 10 Mar 2025 20:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fdeGd4j9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A331DEFE1
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 20:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741639881; cv=none; b=c8R0XXAq9zOre/rPBsz9yoO89nBIXZqw9vNZ74NHzFCZIlsnheXh/HdE8G96c1VoqvUp8q/wHAoiTZ/dg8LxjTyzCLUDn9F3IF5UzQDZ2f3QEaZ3uEcEAypOXiiTwu5/NqVnPYLl17if/E3s3N2ysepgOLMNQJqOl6sLcTG2Y+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741639881; c=relaxed/simple;
	bh=muuR9vmT98iiYtwswpTs+MU5Qwfio13uvWoszKSnByU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cIpCnB+iH4AzAwzYjnLX/QyBrggynTEaERF9qJVUACPr/gdmLQBB/abF8qddg/evddI0ODEU/TD3JWwNTsg1HLCpAvCzV6UkbcQx7iX9k5JSC7OyiNM4CS69ZHsJlGkUBAp8Xw3GB1wUUQtgf0EYEU9KXNwHZvIQLeHwYgqcoTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fdeGd4j9; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30bf5d7d107so35770981fa.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 13:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741639877; x=1742244677; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kxNF8e48hf51wGrFc06CsODYSc9fXYwI5IwZer2AB2U=;
        b=fdeGd4j97YJz+TWRtdsq8vPeb5oynvgpcfobCuOTBiprYLircq5JJhni196MUWp2jS
         qK8FcrDQFGSVsEgjxSKHK0TFEnlVbZMv7rH8BN4Ww9Pff9zNJLKSKYeuVHRK1zuuwR7r
         FXgTB8xDLLTuWEg1R+rLGlJ34dbaHv99bn+rjq+bTQ5ATCwJ9YmzXRmpTDBxv6pd3nGB
         /rMHokjkqF7RwWdddKf0epDOC72OUea/W4/e0AumdrfEuN8kEWEkYYN7dhKgRGT6XAmp
         kIZyKJqB5EvDSbzkJuyn9E1kIAiisYCY82NkvJeeLOy5c3UPMxMh+lqGk03UxWzyxjyF
         Snjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741639877; x=1742244677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kxNF8e48hf51wGrFc06CsODYSc9fXYwI5IwZer2AB2U=;
        b=PG89sWd8h8SlnaaZUY0HJt1g9DqkWisc1SceDvVz3qxCys7sDNTnNKMURCetqEjKT0
         DuWC+eeAbn9u2SeNyo9v1VJzWRsmS+fSO0Ia2ATUmGlpJ08jr7z8hehqodmI1onax+mq
         vgkqGBflepKvs0Fb/QBlG+fAcKXsJZBCom51ZnqZmS5eYMn8cFlYH1rNQE7cxIoPTZjJ
         55255nBWUUJ816M04YbPThgGFCAjezLHadtzJZ736+OHhBwgnPvIsumabzz80ZOeW6FH
         2lEzAiD7sXz/gyxwLL+ff3/CppTwK1IvoKedXvvXJyTxmYdMIuJ4scQJQzGPOsp188wU
         HB2g==
X-Forwarded-Encrypted: i=1; AJvYcCVG39+DOgu/qReBN9FyMbMLyNVTNVPetUNorGyijqCmfarLGMCCQ5JM1Ddk17voS0pqyJAGY1NJ/bna@vger.kernel.org
X-Gm-Message-State: AOJu0YwxXiur2/HlDTl1dxpRbGK43uBUgBsQJ/VuD/10BJw35605Y8ZX
	0dPUwHu4cWM+P+/FVW3W1xQXfeN99NastRi5QKqOyDbJ5FKEpqPHTiWIKvFvCIg=
X-Gm-Gg: ASbGncudmAUFIVUa7bYdNkTCk4iTrsLidBpec8RUOL+i7CUbLYNcumaP0hwjtJIE93B
	q2zMSSE6xyeOkHs26FTZZcZBa5eF7LEngDr4PLR3Sg4m4DwqaPePR0npglmh16wKLfShTd1HmiR
	FwTKkcJC3g1SMQFZ8qLjJGL00r4nJxfbJCjMFvDjbpTYolV40192EMmz7MdO4RB5SCPoZqYSn9/
	PcAjP5iQeZmU1PDUMwhoXyVN0aNUqhPUeJKKO033rYQBgVS5pMsU23nLa/hxr3JkVU5KFIl7YvF
	PXZwPxMouH5KllBJqTKyCNI+Q3fvUFe+XtTI4NIkpT5hSCbjyKKLnQOBstzylqKkcjKlJ7rIjW+
	BOCR5Zjx1ms0Otd/uW0CcAXWr
X-Google-Smtp-Source: AGHT+IFPbDF/2E9yu0QkgjYjNcSbSQMHb9SKSyVgCW0jWJzt0rN/zgSyXWNMQzVNMXXx8FaEgf2kjw==
X-Received: by 2002:a2e:81a:0:b0:30c:12b8:fb76 with SMTP id 38308e7fff4ca-30c12b90187mr13907201fa.15.1741639877485;
        Mon, 10 Mar 2025 13:51:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be99e81cbsm17438501fa.93.2025.03.10.13.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 13:51:16 -0700 (PDT)
Date: Mon, 10 Mar 2025 22:51:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, dianders@chromium.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, boris.brezillon@collabora.com, 
	l.stach@pengutronix.de, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 06/13] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <mz7qmjokw4b3zk4y2u45ykzgtgqpsu6f53pflhqodyjd6svvvk@7jzggqezbubl>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
 <20250310104114.2608063-7-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310104114.2608063-7-damon.ding@rock-chips.com>

On Mon, Mar 10, 2025 at 06:41:07PM +0800, Damon Ding wrote:
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operations to
> ensure that eDP controller and phy are prepared for AUX transmission.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

