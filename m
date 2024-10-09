Return-Path: <devicetree+bounces-109354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF480996198
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91CF62840FC
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 999EF188CCA;
	Wed,  9 Oct 2024 07:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xUzYTU1S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD496188737
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460566; cv=none; b=WA5UeFbZq4oIJHj/oSHG8+Ka9EtvPHsVbZFgyLBxmA4caRvTEn3N91qDhAtPQqN8yqSJNktZCoxu1/p57s7kESKWa1CrHTMyR23y4rt0FVDw9KwjgF7tCrqIM9fUWON5uGIebJmkGItSB4t+fOv6Ljjc5l7DFj5nLxPrILkxuVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460566; c=relaxed/simple;
	bh=zyQXw4W+dACj8pIpi4uJhjlBxNwkyzSfLPJYrZ67arc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=d/olkebPh6sKE5ov9W9OCaJOya56oXJI+tjSC84rfne2oXuGEhnQdPJwMZy2AQd8Ze0iU0A/FiD/6lYMZ2vYi0yMqkVVdr0tpEeBjgSGUad3Q/sWDu5NgqFktvsap4riE6zSTyGf5aUHYc5Dh5rsBbCIhEPx57Owpa9hJO9MdBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xUzYTU1S; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42cae4eb026so67204845e9.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 00:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728460563; x=1729065363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0kmMlDXGibAdqKrNC/s4tQOqEsl9CbNvY/ixtgVngYk=;
        b=xUzYTU1SKg0L6MZ74eRYVUXjk/s9Y7HoEyvtMdtK/mB4868YdSdyGSaQZRRCrHf6I2
         RYNOajwoIgz4mXxhIaccyvPt2g1o1u0/TVMHs8KGQLR4Z4jll0CnhtV2kH3bZ9Vjpr8X
         CNraHR9vWADhWj2CG3CR2DNr8zYgxQfqiJCsfIRQmEUvQKm/M+jGbSo818tqtk7k4CYA
         ZEW8Sk+6qeB2jqD9raOHExW/3KvWc5SO7Jd5LKwrikJ/1kw9ROgiABYm0AQx59PYzGxd
         bUkGLpRokbRj1W0w1sTPK7M6P/IWvTjtaoMlSn3MtJPT7ITfC8PiukQ+4k4z5UuTyME1
         nD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728460563; x=1729065363;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0kmMlDXGibAdqKrNC/s4tQOqEsl9CbNvY/ixtgVngYk=;
        b=VpNm8l79q6yMHgdvgdL1i8aT9oOIG2KPIzyvZDr0yuOhfm7ldLhHvFfPUtJX1Qxj2n
         9fZJxchmqfgyZoK3iMQ3dApzy0U1YwouRlmIawIUSmr6gQCRqnYQsOgWszz1QqB8uL07
         qPRym8a2dcr87lQWgq8UQWPNlfAdlG6aEqnwJ5ESNHnrryOeiye76oFUOeSW8tGCLTbw
         BnDVbSs7rg+JAq0DTBkba0jwAxruzT35AUQwDh6mW1Ve7Rf7MSZFfMkWsssnNHEPDmKK
         ImBl5KQ2ecp81VaRLGztgSOUafnrH/0UKRQfc+dzgOLd2uBB14uZ1aLiO6n14yG5hjss
         HvDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWL1nSXENf/3i//mOyBY3VoWwOBsyjzUp+XFCtYwT47mcQRouZy3e4k4roToZYSMTNo4BiOjku/YpV+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqwgj+M2zdmZFpob40P1an/rgvS+oA1eBflWV4hThbXCJTb9nj
	LloVmNrh3GF+uf8NbWixesA6UXFOMqvPRc+p3n6b/Vi0G56bynCEwjFgayA35KU=
X-Google-Smtp-Source: AGHT+IGVnsvhJt5/bGGQd1j33k6EUf41BaTJwb8mSb1jF2UGlQuMTXhFJYasWIvOI9vvkkF34p+yOA==
X-Received: by 2002:a5d:6990:0:b0:37c:cc60:2c68 with SMTP id ffacd0b85a97d-37d3a9b532dmr846334f8f.5.1728460563207;
        Wed, 09 Oct 2024 00:56:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d16972fd9sm9660342f8f.104.2024.10.09.00.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 00:56:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Danila Tikhonov <danila@jiaxyga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, adrian@travitia.xyz, degdagmohamed@gmail.com, 
 linux@mainlining.org
In-Reply-To: <20240930202448.188051-1-danila@jiaxyga.com>
References: <20240930202448.188051-1-danila@jiaxyga.com>
Subject: Re: [PATCH v3 0/2] Add Samsung AMS639RQ08 panel support
Message-Id: <172846056170.3028267.4886940070722840412.b4-ty@linaro.org>
Date: Wed, 09 Oct 2024 09:56:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Mon, 30 Sep 2024 23:24:46 +0300, Danila Tikhonov wrote:
> This series adds Samsung AMS639RQ08 panel support used in:
> - Xiaomi Mi 9 Lite / CC9 (sdm710-xiaomi-pyxis)
> - Xiaomi Mi 9T / Redmi K20 (sm7150-xiaomi-davinci)
> - Xiaomi Mi 9T Pro / Redmi K20 Pro (sm8150-xiaomi-raphael)
> 
> Was tested on sm7150-xiaomi-davinci and sm8150-xiaomi-raphael. Based on my
> analysis of the downstream DTS, this driver should be fully compatible with
> the sdm710-xiaomi-pyxis (unfortunately not tested) without requiring any
> modifications.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Samsung AMS639RQ08
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a62528aa539a405f76cc3478f6fd3f842e7c6a4e
[2/2] drm/panel: Add Samsung AMS639RQ08 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/bd07dbb929f6c5bbda60d52a0003246e53f48c29

-- 
Neil


