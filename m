Return-Path: <devicetree+bounces-50323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 852F887B053
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0D3AB29E17
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 18:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D58764CCB;
	Wed, 13 Mar 2024 17:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FNQYJolC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655713399B
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710351456; cv=none; b=I2VmKfWBeKxn9ixKS+jnecKOpIICOcI8SQx4SIyFn6OEWDGh76j9pg3mScncwfEEdHfnVDeD+RIUOWhhicQI6kaw6lGoNK8NKM04A2sAo4zVxnvgFWWMBBzfr+VDkeVRdCuFfw2xxnh5vuDWYwz74ecnpseWscDhnSbNOakhp78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710351456; c=relaxed/simple;
	bh=kZVeTZdyc7DNpCD6W3Il/ao8ZvlQxa4aFunI7XmCshA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iV17fLwJ9XqSAlQOWV64wSgWlSC0nZbqEIA1pGhwhX67mJ3CN6zPy6c0tcDQmle3LaWnOyzZiiiBk21QdGSwAMEABcaN+Jh9fIsnqRUOIpVa3Blk6R5UvweiH/NrOWvYHT9Q6xphECOL+PC7Ps1cgm+n7kp9Pn+MN3IbDtbyjXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FNQYJolC; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5131316693cso173429e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710351452; x=1710956252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gZH9XYoarv6NevCihCH9rFfZ6985R1tiEG+VgEsvACY=;
        b=FNQYJolC9iua/11Va/+AKxmmo6sPGqTuNoBWcr5YWPmrpgWTyEx6Ldt+B/eYhSnc0p
         Wfep4SbRynz6ePNwxR6Gv30v3n5MjHI1s7HHn55oNFN9o+cC0abyGiUpw5+F8uj2z+aG
         MqYmAXoIjN7RRWIouSNquaqfljD6WnfyepsRmgGyQpV6gGrZrT1KtNIFYy90U1ZHFVfu
         gJ3RGuue9finEkWp/qkrcYwxBeUX9NUvsprbcuZNZ5G9Y3+HHf0O6yV/j2GnU9HsMbnU
         HT3kDLEDbDjFLvatKtfzgfxytdSs73vLrnPCuNRtLgMpl9aBtxWOBcjDXU6G1Odbruir
         Qp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710351452; x=1710956252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gZH9XYoarv6NevCihCH9rFfZ6985R1tiEG+VgEsvACY=;
        b=kpV22B8f3KpkXNHowId54iBsMN3w5psqyiC3XZm9v7D+1poTK3HpxFOdO+mt+SIzzx
         efy1mDBhA1LNL87F9SZKEcbP60JZHa0UvLiZBPcz6aNJxu9QkvFODqoe/fmFY2sKmEng
         oNAKoPXFtFG0XjfLjcxG6ku8kxD0baxzNOjhxPfhRTgvesjL6Jr01fb+SCzIEaOHlSE0
         abKzbJ3zx6Ikgmr6+nIHeRXcZlJz5PXCGZ24tLiio2tccdxFa1jIcbdgoQx6OJOETgCv
         jHKUvzrVNyq8YrFXJ/DlnfAMBwOTGAY+UbJOrJG3WD6qA8WmqoJ9i6x3+Fs2CN8SKuR+
         7kFA==
X-Forwarded-Encrypted: i=1; AJvYcCWTFHxRwxnBBF9MY7Z51hwksIaFLyuv1U96Aa+ryDJKuWMq/i47//7ChdkwqGHZVuuhqK7ZtAJUO2qikbIyr0lIKxEF8aizikvgEA==
X-Gm-Message-State: AOJu0YxjNS5cVD6zxYohMGps8lTQDUgK+BcbjqpMav44Z3YDXhIt97DO
	/R1c+wSWIfVPuGKqvGdZ7GIFBvH/R2GJC47uJbbOGMAcN+0iFejxc3TU2ZKRls0=
X-Google-Smtp-Source: AGHT+IHv3EW3Wedgv4ApGXEq9qn0lh8eu6xUuhVYlrdISwb1sQOV5/zXUF5PZNcsezYZHMn9OKwzhw==
X-Received: by 2002:ac2:43bc:0:b0:513:4706:1c0b with SMTP id t28-20020ac243bc000000b0051347061c0bmr4853708lfl.20.1710351452415;
        Wed, 13 Mar 2024 10:37:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o18-20020a05600c4fd200b004132f9cf053sm2889617wmq.33.2024.03.13.10.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 10:37:31 -0700 (PDT)
From: neil.armstrong@linaro.org
To: Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?J=C3=A9r=C3=A9mie=20Dautheribes?= <jeremie.dautheribes@bootlin.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Yen-Mei Goh <yen-mei.goh@keysight.com>
Subject: Re: [PATCH v3 0/3] panel-simple: add support for Crystal Clear CMT430B19N00
Date: Wed, 13 Mar 2024 18:37:29 +0100
Message-Id: <171035143128.792807.6928029048259684930.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313172016.387277-1-jeremie.dautheribes@bootlin.com>
References: <20240313172016.387277-1-jeremie.dautheribes@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Neil Armstrong <neil.armstrong@linaro.org>

Hi,

On Wed, 13 Mar 2024 18:20:13 +0100, Jérémie Dautheribes wrote:
> This patch series add support for the Crystal Clear Technology
> CMT430B19N00 4.3" 480x272 TFT-LCD panel.
> It also adds Crystal Clear Technology to vendor-prefixes.yaml.
> 
> Please note that unfortunately there is no public datasheet available
> for this panel.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] dt-bindings: Add Crystal Clear Technology vendor prefix
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/fe67bfbd23b0ccfaaa5de9f9176c6283c628cea1
[2/3] dt-bindings: display: simple: add support for Crystal Clear CMT430B19N00
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2fbb050335f8195b86ebcdf498a6c171bba10f8d
[3/3] drm/panel: simple: add CMT430B19N00 LCD panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/751b58418250a56329d35de29329f547c43e7c7f

-- 
Neil

