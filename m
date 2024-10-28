Return-Path: <devicetree+bounces-116355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAA49B2A40
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C09E728294A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637F81922CD;
	Mon, 28 Oct 2024 08:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VYnUt+y2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7ED3192D61
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730104110; cv=none; b=a3Yer1qVe8mAXdLqr86PQJPbXgO0F5TkxSaCYJruv6SvDofNzGRu9u2QchqGD6E1oGZznIGTpNpBnFtvO2vs00CV7Kgb0piSXfqHLOBNiTASNO78us58mNFDZnUOdERAflXl9DXoR43pnZrkJrTCUupwtWxPidl59KCUqCesve8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730104110; c=relaxed/simple;
	bh=NVqXPS/L5BH4Gj7hbSyrhwDNjVwxjaH3REBBB+8AaVI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=p+jPu6wKDEYbQ+bLxlZL4ohwH2upFe+SaTV+to719Az5jiLN438shuYN84ZV2UYvpOhqFiayuHuaQ5b5GGkzbOkj+OieBYf0MxziCcPR37GnJl0Vz1hzT3c0b0wJzzXQBdRUFlLsARUYtMIflPyoj2XSEou0ZDb/8dx89t+5Qpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VYnUt+y2; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-431481433bdso40673725e9.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 01:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730104105; x=1730708905; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ed5R3HTvhdD4zg/QXCYj0XYDAVw0ReLkpicM5ODvyHk=;
        b=VYnUt+y2J2UqCd3KEGC2bKFxEHJykiYChANRNLcSWGIU+8xKi1TFAAAD0JXLMIk+ZB
         399v9ivPFwk+lZ7vFXeisuYRUAuLHbSrWRaqKsQ3Po61xdZUmuijWPd2zbeSc5EBM9o+
         pzbUrmAwWnDdClJhl0ty1ap7Sb7RW4v4yQE/Er6ZfDKpmKOcGPHbC886hQpkMh5i0NP+
         f4BMcID62bhRUfOKIGTT0OowVjs/zAjTcaR+VfSj22QogqrNKgOTHj0PtGF95WH39UPJ
         bqZSjfxZzdcDhohzS/eMqdyTVRivo7NUHNHJzUI6GE4gf4LX3Fh2vPUJZ8Md+zqABQV9
         nBEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730104105; x=1730708905;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ed5R3HTvhdD4zg/QXCYj0XYDAVw0ReLkpicM5ODvyHk=;
        b=N+AxourGnHeg9anEPGYkoB/ZYu3KZLyHS/6ZujUDwNVFLRNMXwZ3VSQlKdDTP6cWZr
         pRby+s180jz2yLsX+i4JaDBa0w6IpKJaYK+6VaiFi1ZytUGFkD3w1yMbKzAqTi/fhvBg
         8ECV9NsRTTLDY9vba3eR8u+HoNWdfXPM6x/Kkr9KyPwSPJwotlKxtnC6uEeHQernYZ0B
         b8LZia90ayekYvgO2gbKpcEY5QPOk6b/um/t7IawsmgZYqn+Ngd2mSmgUhujI4SmNji1
         L+ReT4pBPInxQMRj1bNr5oLrJMk20GNDtHlcj68x1HCEdpfIwFDuhhhnntDRfy+ZZbLs
         CrcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfn32dP3vqrsEo0rtygk/XrtZw9P2uG0PNts96X4yKDkOAp3z4En8gNwmZIKRpuRhhk2LuRXovsvb9@vger.kernel.org
X-Gm-Message-State: AOJu0YwKxhYS34cmll7jzTzq1QsRZt2QizF34Gbxk/A3p64h9rvJ1YZ8
	QrHSPgLY5TFsP8d7/AY7iKvvP3f3iMM6aYjqXeQ7SBO1zUOUrIY41OAh03ViLrI=
X-Google-Smtp-Source: AGHT+IEYWIsUxoaKX8/fpnoCrdG/jrvGQXwhIqgHw0yNtoMJow/Z0Cqr6QdJVulUYioxSRFShPxQEA==
X-Received: by 2002:a05:6000:10d0:b0:37d:30e7:3865 with SMTP id ffacd0b85a97d-380611a3e4amr5808602f8f.34.1730104105211;
        Mon, 28 Oct 2024 01:28:25 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b1c4cdsm8808039f8f.24.2024.10.28.01.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 01:28:24 -0700 (PDT)
Date: Mon, 28 Oct 2024 11:28:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Herve Codina <herve.codina@bootlin.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH 2/2] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <9a16ee73-cdc9-47bc-88f7-2fed5fdad2ff@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241024095539.1637280-3-herve.codina@bootlin.com>

Hi Herve,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Herve-Codina/dt-bindings-display-bridge-sn65dsi83-Add-interrupt/20241024-175758
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20241024095539.1637280-3-herve.codina%40bootlin.com
patch subject: [PATCH 2/2] drm: bridge: ti-sn65dsi83: Add error recovery mechanism
config: csky-randconfig-r073-20241026 (https://download.01.org/0day-ci/archive/20241026/202410262052.CRR7XezU-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202410262052.CRR7XezU-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/bridge/ti-sn65dsi83.c:360 sn65dsi83_reset_pipeline() error: uninitialized symbol 'state'.

vim +/state +360 drivers/gpu/drm/bridge/ti-sn65dsi83.c

caeb909b9ed830 Herve Codina 2024-10-24  330  static int sn65dsi83_reset_pipeline(struct sn65dsi83 *sn65dsi83)
caeb909b9ed830 Herve Codina 2024-10-24  331  {
caeb909b9ed830 Herve Codina 2024-10-24  332  	struct drm_device *dev = sn65dsi83->bridge.dev;
caeb909b9ed830 Herve Codina 2024-10-24  333  	struct drm_modeset_acquire_ctx ctx;
caeb909b9ed830 Herve Codina 2024-10-24  334  	struct drm_atomic_state *state;

Almost everyone has their compiler set to zero out stack variables these days.
You should set this to struct drm_atomic_state *state = ERR_PTR(-EINVAL);.

caeb909b9ed830 Herve Codina 2024-10-24  335  	int err;
caeb909b9ed830 Herve Codina 2024-10-24  336  
caeb909b9ed830 Herve Codina 2024-10-24  337  	/* Use operation done in drm_atomic_helper_suspend() followed by
caeb909b9ed830 Herve Codina 2024-10-24  338  	 * operation done in drm_atomic_helper_resume() but without releasing
caeb909b9ed830 Herve Codina 2024-10-24  339  	 * the lock between suspend()/resume()
caeb909b9ed830 Herve Codina 2024-10-24  340  	 */
caeb909b9ed830 Herve Codina 2024-10-24  341  
caeb909b9ed830 Herve Codina 2024-10-24  342  	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);

This macro has a goto in it.

caeb909b9ed830 Herve Codina 2024-10-24  343  
caeb909b9ed830 Herve Codina 2024-10-24  344  	state = drm_atomic_helper_duplicate_state(dev, &ctx);
caeb909b9ed830 Herve Codina 2024-10-24  345  	if (IS_ERR(state)) {
caeb909b9ed830 Herve Codina 2024-10-24  346  		err = PTR_ERR(state);
caeb909b9ed830 Herve Codina 2024-10-24  347  		goto unlock;
caeb909b9ed830 Herve Codina 2024-10-24  348  	}
caeb909b9ed830 Herve Codina 2024-10-24  349  
caeb909b9ed830 Herve Codina 2024-10-24  350  	err = drm_atomic_helper_disable_all(dev, &ctx);
caeb909b9ed830 Herve Codina 2024-10-24  351  	if (err < 0)
caeb909b9ed830 Herve Codina 2024-10-24  352  		goto unlock;
caeb909b9ed830 Herve Codina 2024-10-24  353  
caeb909b9ed830 Herve Codina 2024-10-24  354  	drm_mode_config_reset(dev);
caeb909b9ed830 Herve Codina 2024-10-24  355  
caeb909b9ed830 Herve Codina 2024-10-24  356  	err = drm_atomic_helper_commit_duplicated_state(state, &ctx);
caeb909b9ed830 Herve Codina 2024-10-24  357  
caeb909b9ed830 Herve Codina 2024-10-24  358  unlock:
caeb909b9ed830 Herve Codina 2024-10-24  359  	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
caeb909b9ed830 Herve Codina 2024-10-24 @360  	if (!IS_ERR(state))
caeb909b9ed830 Herve Codina 2024-10-24  361  		drm_atomic_state_put(state);

Calling drm_atomic_state_put(NULL) leads to an Oops.

caeb909b9ed830 Herve Codina 2024-10-24  362  	return err;
caeb909b9ed830 Herve Codina 2024-10-24  363  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


