Return-Path: <devicetree+bounces-246961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD88ECC1F46
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07EC63024E51
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0ECD33A011;
	Tue, 16 Dec 2025 10:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CJbUKkcN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAFA29B777
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765880592; cv=none; b=rGZCKPwfwYi87+/zrbqTddvP5Bbe8Ghs9FzdhVLbtIhcmVV9z6Wc16FJzRpkUMIFxT8gzpcJlFCBhERdSDw1AS1GNvfxpoRcr2bBCYQ2YLWQ3LPFHZz2T1QoEXKbRZ+8sLnSEdT8CCyXwrJgG6EbX7cm2VaYVe7IPKlFXcBoWH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765880592; c=relaxed/simple;
	bh=UT9DY5CCLckA8L/X6WyKzdgV+pJLPEZiuu//aLyXHiw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JmVFSQf/ULlyucRK71iTmlwg4v38GxlgjyDn1QEYxtO+K3jA0Eqp9LsmlKEmAZJAAJvd7Rjcw1hM+RhNhO+ZmUtew3EsPsjSRrcmgrnzIScpBFzMp/12FmzEXklLXwR04kgJ2dDhveOPothbCSHwn4bq2teNcA//2DJKdb9r7Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CJbUKkcN; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-42e2d52c24dso2267528f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 02:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765880589; x=1766485389; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7WDtCUommDCsmx+U/Szem2TR0e9IxHNpK+A96g18W4A=;
        b=CJbUKkcNRTeRlqwsQnRtme8/8gEE1C35GonMGxCR1h2pAJUVHbgThQMgMjmwuY/fdE
         BGnePsvPOQFxfQCPAg7zJdthrCYd3xhLUDD6PWAtGUUx0j1bgP54uCyeYoqeBieUZNIk
         N+l1yOnQyzOABPmwG/WDOAhCAR3GOGizRVZ356oEBs3kcpwQ3CVCWRPE5/hT2NkCBkcS
         OZAA6RxwN4MsmIyJoA0dYhE99iReg/vnpHfL13RdWFbAFsmBsQlDoAcCSmNK0mWx5exX
         OTnMDEGozQB3vtLXJI3ZLnceNM7zYRziZKgpWL0Cy3yjpb7LllxvYOkTm/IztD7f2y9g
         8o3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765880589; x=1766485389;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7WDtCUommDCsmx+U/Szem2TR0e9IxHNpK+A96g18W4A=;
        b=nbEXHPKPD/a2oStqAC+pfgvX+XuDoUa4FuHbz1SZE/f6kX77+To0T1+hv1yNLvQ0/M
         ipIKNPR3PlbwOnMkF+25GKwjb6Xr99pwr8YHafXIIy+DuOt2z2vVopYD7QWhh69e3ZTW
         ZIVKD58GpdXPmGffuf3nLki+K6wkNjZdAMLIgh/LB7oeODrkK7n2WNSam5Sy5aBkM+jb
         IbULf/GuHjwkG81BYm/+sUpZ3R+BzGvk3tF4tQ5xrTlNC621+6FQU6ImSnY2CtlcFazD
         Ofj2Srran6uswFRGLMikXXvyGwIMa2inkL5ZgMukmHh/vpOO9Z6K+OAeEEltyySkf9kq
         VvXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOldiWplnzz/bVeke22uh2ov5T+gHPCO3nr816YJNkCptwNVSFCJluPeKfcRW0LwcazxwWnacU+7Yb@vger.kernel.org
X-Gm-Message-State: AOJu0YwJYxb/iXkIgrRzeklJs6MABrVTBheeAnWhQiR0WWi3JEUwkOrA
	NM/jW4R0qJCAcnco6kVBGrr3Z8pdBmXTgu1fOhyHJiR7zvWpcDEZ8od+tekcVsWfDXU=
X-Gm-Gg: AY/fxX7iI8PCz7NcP9kai66ePxPGbSCu5+/e6OHG6YZEUFhq3wi4yBLZsxjL67DFWqK
	HOVfpB/KrV7oiWDMwT9cAFyPSIbAce9mjFmR0Rv+2ONPmVLUF/k2bvUW+cV89gGvg+OVIwSFiQH
	rLcxAMvzltCD1Ozd04nE+6k/KsXFFNS2K8Q7oTMn3J5zjDErc5yTQkQZr3xyAoYIs/Uefqq8LG5
	++S6uJE6tvVHD9ek6aVUDpvWNtZtjY9NTI2UDD5TIbXJUAjH/uM0HRCYD4VEKacH6+Pn8FEftVm
	qw4YgBbeJaULu1ma6tJF2SrxwRMh9TcjxiWofV0slEZtaoAx+aMaVsobzlNk2vOIOBkW3g4Riwn
	buz1MHmxKreeqQ61wqz6ZW8kqYS62Ri63MF18BiJd41ZX/YiYk41q1F87+UsLQ2Rh2y8rAxYvKG
	Av70yWA+7fOc4fzJTbDbFDLp1Za88vfgA=
X-Google-Smtp-Source: AGHT+IE5XhIX7FjwoHBOlG97LHD5zlw8YKyqlXpbrt0WFyJR9XjjoioKL0v+cIUn6C9Jtz+qyGN+0Q==
X-Received: by 2002:a05:6000:178e:b0:430:f449:5f09 with SMTP id ffacd0b85a97d-430f4495fb4mr10395685f8f.20.1765880588937;
        Tue, 16 Dec 2025 02:23:08 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f984a268sm14996292f8f.1.2025.12.16.02.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 02:23:08 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Douglas Anderson <dianders@chromium.org>, Sam Ravnborg <sam@ravnborg.org>, 
 Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
In-Reply-To: <20251110091440.5251-1-clamor95@gmail.com>
References: <20251110091440.5251-1-clamor95@gmail.com>
Subject: Re: (subset) [PATCH v3 0/7 RESEND] Add support for panels found in
 various Tegra devices
Message-Id: <176588058797.2230787.9159942064311142294.b4-ty@linaro.org>
Date: Tue, 16 Dec 2025 11:23:07 +0100
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

On Mon, 10 Nov 2025 11:14:30 +0200, Svyatoslav Ryhel wrote:
> Add support for panels found in various Tegra30 and Tegra114 devices,
> including panels in Tegra Note 7, Surface RT, Surface 2 and Ideapad
> Yoga 11 T30.
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/7] dt-bindings: display: panel: properly document LG LD070WX3 panel
      (no commit info)
[2/7] gpu/drm: panel: add support for LG LD070WX3-SL01 MIPI DSI panel
      (no commit info)
[4/7] dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
      (no commit info)
[5/7] gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel support
      (no commit info)
[6/7] dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/06fb75e2d12ee2b24129acacace044a0ddd2000d
[7/7] gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ac488854890165b55a973dab7247aa2deea9cc02

-- 
Neil


