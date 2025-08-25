Return-Path: <devicetree+bounces-209121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FCFB34AA0
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 20:50:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CD5A16ABEA
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 18:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A23272E61;
	Mon, 25 Aug 2025 18:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="MHQ2MJE4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866CA255E26
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756147813; cv=none; b=PyEMOqm7qppHnsat9iLd8RBdsSo5Br/uBenQF+5f9w+D4XkavL/fnhvpQpc2QosLlJe9pYfjQzPxuUPiTyc7XJ1oP5LAWnj9MELc7ABBnmc6dEKIVJo4RDUVRDdk1zi+Wf0cVZf8hYm51hEWttXQVyzLkMla6QTMrI4gwJaM4NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756147813; c=relaxed/simple;
	bh=ohKWsmb+LZ731g39Z3VfHDe8WpmeRLW7LmRh6xv29Jc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YbL5fIUimyY0PDfdhOT4LC44fAEOPODwe/Z1Mnrwi2oXifaRzpNTfmhTqtLDEeL/w9HE1G2yWHIKOIlW1lwLkGWG9vMam1i40cngaWvTjxrpd6f/ZPoYK9pTJRGFbaTWTJdn9Xy5RG9zRKwFE9SFC4+7wxY5Ci1gVG+SekfSk3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=MHQ2MJE4; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c980bd5f48so1168656f8f.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 11:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756147810; x=1756752610; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEpDfvIqm/r9GFqYeso7+4c/opy1VTygOrM8Fx8oKUE=;
        b=MHQ2MJE4DNQD3X9x9ayYSCyn1qZnn28S8hPQv4EIFGJVVjr2WxYOovp4ESVghoHRlU
         e2LAV3Cg/LYVqM6A2OvxdbcOZSDdn4Sk+2mLo59PoP/TN6zhv8BmuOusQrkRG2Z/8ot9
         h6nstKoST+eGVmYprqyMuCdsuD7JzVVUDRdAf7PCdu9JZ5iHGZYabgAvBsSAGTJhY4v1
         MMSHlJ2RoHrH8I8fwZsI5Ryjgt59y/laa2NlC4zVRmCdRHqJYl8lb5H6aO2aharqSOG4
         +ahyyVRz0CNZIiRG01VoTylQTKzdPkvDUegNnc0AT3OwoRj2WRDwMjs15kZLfq2EUWq2
         GpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756147810; x=1756752610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QEpDfvIqm/r9GFqYeso7+4c/opy1VTygOrM8Fx8oKUE=;
        b=Vc03gzctAunsFQwTC15IgCyeIbki2cXzWWZo3QU2Hvm7z/5JZlCUHhclncK+2r32HC
         TwktAM5ShHdLB/IdWmVHA6Foc8j1C4M6yRNsiuUNt2voTm7sLJWBf2HUY4PtLuct+gwh
         Ng/alvHXIK0X/haTsZ9szsgcOIjYrn4KOAOqpt9rnI7ZB7X7RyM4Qrk6nKL9FfnMgDie
         fcyvQKuwG1EuxuO4gydrnBbS+PCcnPAdpU4lT/8yE+XoobfF4Q1oaogr5VZNfDMMEhvl
         U1+43rannOg7VXA8lP90iiX/bfCHAq3qkNxNUeXBjbk3cCZG0VPRdK8lpRWfmA/wVr+x
         HFXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZJYR/C9bz742UXZHQyoiwOOuugmfCxB6lS8HUtgvg7bnPjqGctRwk1uKX7UXuppDf6Q1cmXNCqpAz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4MIMfTuO9Gr4Fy/gvMtBGTKD2dkEJkbGiz7EadECToSO+QmId
	Aw7YcavPsRX2ZAtf6lFs+dbCaE1lhaqkgflK6WyYsvSPwdy1QBvvgPUMt/HvcTKgrTs=
X-Gm-Gg: ASbGncvkefyQYRf3V3Ocgn20pOq3RYB9NHWibXGW0yGA0c3gNo1Pg6vSeiOrPNkr9gk
	VozKSQf2aAXwNGni/WqhAG7LbmOWyBpdUE2PH4lMmF81jeQqk9tY/RXseedZW0ScDf3n+0VImp7
	SFAcZxrB++2v/7LNqBSHIt6W3+fQEPzOE+FWUH128yL2sPjOs9LBpJJb/oRh2x8/LCtfi9S6X/5
	A/czvfMiqosf3a8Zw4XOnX1CyIPwQBeQZUCGOIEa3t1GiJZMPGjq1JltHg/lTsuGKNAsTY2omPB
	KFme3IZsjK7GuG6iVs4kBp2cpcBbpmJUl95t46x0HoLcy4v8/H79dHCFnzEPFztfwoxyHYgi3SK
	UI2JoTDbFexneL5ObrdUVBgYWOwUzMJmJ1kZcjvTVCGc=
X-Google-Smtp-Source: AGHT+IF/cd/3ldg9ZjLjZqDL50QxuBb1hA0sAhbeVdWvKKfysm+KbRVo87tAylxcuiKBSmMeLuiwBw==
X-Received: by 2002:a05:6000:210a:b0:3c7:2491:a2c with SMTP id ffacd0b85a97d-3c724910c10mr6332166f8f.14.1756147809705;
        Mon, 25 Aug 2025 11:50:09 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:490:f8af:73b:7a00])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c7117d5977sm12813311f8f.51.2025.08.25.11.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 11:50:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Imre Kaloz <kaloz@openwrt.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] gpio: mmio: Support IXP4xx expansion bus MMIO GPIO
Date: Mon, 25 Aug 2025 20:50:07 +0200
Message-ID: <175614780274.8817.4717113656972710108.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
References: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Fri, 22 Aug 2025 17:46:25 +0200, Linus Walleij wrote:
> After Florian reminded me to do things properly, here are
> fixups and additions to the MMIO GPIO bindings and a
> tie-in to the IXP4xx expansion bus memory controller.
> 
> 

Applied, thanks!

[1/3] dt-bindings: gpio-mmio: Support hogs
      https://git.kernel.org/brgl/linux/c/545908a9fb9c01e1bd7afe040f5623f561d50ea0
[2/3] dt-bindings: gpio-mmio: Add MMIO for IXP4xx expansion bus
      https://git.kernel.org/brgl/linux/c/1f3c076063f03999c351c0725adf744ef5660733
[3/3] gpio: mmio: Add compatible for the ixp4xx eb MMIO
      https://git.kernel.org/brgl/linux/c/38623d532c99ebd926f4eebb7c7de19cb7e5aef4

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

