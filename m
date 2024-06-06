Return-Path: <devicetree+bounces-73380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA42C8FF296
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 18:35:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C5691F2587B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 16:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B83A196D8D;
	Thu,  6 Jun 2024 16:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Enrdja3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7161953A4
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 16:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717691706; cv=none; b=TdGqLYcBwi3LXDal2pYGbCbSjtcfxXg4Vr4mKAoGA9hOEpwpe/g5CmmPdPy2XxworJO+He+icjKVURZiJVdZu11icyOlQcmDFC8K6BODcOItOm+JSdDwms3jqW2IpiCWY1upkiYvkngqe+S8it53p5ikJ6e2eRB355TEHtR5vsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717691706; c=relaxed/simple;
	bh=GUKmNZpn3zsHemyx1l+YGwtbXsNGMjPMyctDvtv3eEA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=E2mS4YbF2iU8QS9H8INSCbE9zsvbfx7FvNX0Q554okaTBiZRFChKmEj3hX2F+zeDCDJdsFjCJMwMcmO1jcQHC9hSHTMJMOXP9im4ufFH3q7W/5+YkG8kby2TWpLJGA5TVla00CkJajB0Zmwi7g19Nf+AlVyEj3EisSRGDZOdyzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Enrdja3r; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52b9d062526so1344540e87.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 09:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717691702; x=1718296502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LYeDvpyslmhIzpGI3AD4w6L+ydSsr15MY3+gnoMDLT4=;
        b=Enrdja3rtFCiN4/PyklT7JanX3haEHQbmxNPPRGbdFufsvT/r92GDAE/qUuRmxvtQJ
         8TYY/FQwTyvc7JpQKOF81R79pM0dV+A616u9ZuCUGCv4CO6Vnz+tQRsqv4NwPbM87Bz6
         5KOxg7Sxidnz50/PFChtdkGXHmfBeH6dNGMPUsGcduggeSDSZV81EL/2ywJrqPHGmRIt
         ADrRBzMEIwu0+45ZeWwLW/1aAGfLvqGvb4jop7dIkw+kZnyuBTCFQavfANw32pUqK9PO
         y0oc8dyGYJ5ClFaf5VyMDgNACUAmGXhyhXXANvBfOCL7xyeNrmrt0Y/sMrBZm2PIKcqK
         0ZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717691702; x=1718296502;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LYeDvpyslmhIzpGI3AD4w6L+ydSsr15MY3+gnoMDLT4=;
        b=JhGT9Lj8lEl+MFOvkmBkPCmB+034tl0cgGeiJqAZGxQCaRsqLw50ha+beikMh5Xb1a
         NmN4mhTwuiRW48BDvznxvGPQi0WdLGh55I/lCwdPARVZ0CURSya0zpp2WZ1TUM62vCpe
         lNf8Jf05WatDQtAvOFAjtWthcSw8sp0i9rE/chPtcmQ0JlurT1DyT98k3muBNH2cv1gN
         nqRgDBvQwV5KokFZvJjeJPcnMIsOMzoAVcFkhXhlyCB9ilZxRESqK9/gSrpwlmKNzaP3
         wFIuuMf0iMdyVt1ZqF7ZEXToQS3EePM95DJH4RvzSJSnxQAS7qykYPBduklJ3tGaIu4T
         fVxA==
X-Forwarded-Encrypted: i=1; AJvYcCUVGcBWPU6x8UJCCLQP+ig1s+9ZIxsFPFCaOBG5zEIIoUvIClu9N1H8kpOKO97tAX3b2VAGI7jDur9ZPNY6U9orrC20RgEcgHsGpA==
X-Gm-Message-State: AOJu0YwcrecKPLAj+TVZICqS4X3byCsNcun2Us/vHDmQU8R1nlPZhbeQ
	nEvYzr81pX+4cUWr/eo6rjLbBSSDI7ZarbB6oEU3UQi0vDUKHg9DK9sK/io7/V4=
X-Google-Smtp-Source: AGHT+IGDBTuayGV8M0B3zpRufQXpsAV+fc95GA12jvvP2cyoVpIgQSgJJR2EYut7ZdDXNJCfPEUKNQ==
X-Received: by 2002:ac2:5042:0:b0:52a:e538:e563 with SMTP id 2adb3069b0e04-52bb9fcc4e4mr87450e87.44.1717691702501;
        Thu, 06 Jun 2024 09:35:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c19d5besm26783755e9.7.2024.06.06.09.35.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 09:35:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>, 
 Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel <sre@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Primoz Fiser <primoz.fiser@norik.com>
Cc: upstream@lists.phytec.de
In-Reply-To: <20240606080104.3663355-1-primoz.fiser@norik.com>
References: <20240606080104.3663355-1-primoz.fiser@norik.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add PrimeView
Message-Id: <171769170166.322973.8720705983345725480.b4-ty@linaro.org>
Date: Thu, 06 Jun 2024 18:35:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Thu, 06 Jun 2024 10:01:02 +0200, Primoz Fiser wrote:
> The Prime View International (PVI) is a LCD panel manufacturer.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor-prefixes: Add PrimeView
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3b37a419b710797138c31c0f41c2a7d8aa9f62cd
[2/3] dt-bindings: display: simple: Add PrimeView PM070WL4 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d046611a6187379c19c58d928f342c6884fcbbe7
[3/3] drm/panel: simple: Add PrimeView PM070WL4 support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/8d1330d24788e1e28f6939779391ce835f19fbd2

-- 
Neil


