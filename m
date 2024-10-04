Return-Path: <devicetree+bounces-108000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E936991187
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 23:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D09F31C21818
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 21:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64ECC14831E;
	Fri,  4 Oct 2024 21:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="r2Zt/cjE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F194C143C7E
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 21:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728078058; cv=none; b=AtJNi9JRwozpUu7ET4RhUObsLlIn7Ql7EJNk9gc+dVaYeONMG31pToK969qnKmquV1DDpbW3VwyQRjwwKr10fc8bepoFUTB7GmZb6Gy1pO2M55NqI90RK5I/G9tGpEYDMZECXh6kmfHuEgMwWasMLvxcRULUuMZVENAihrnaqgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728078058; c=relaxed/simple;
	bh=UoYyHSaGN4evXNG/TbmwzxroeUm+2Gmv++PjScBOvoQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=t6Xqv32WYXU7+qnWTvUDZGuTEbyU3PWSsYEW0E9/kdt48izy5lBYwmZiluTE5Tfz0XoVf738vhwbl1WZC8JFKWoV/ObaL6EOLnarD9WG6Bm1sQ0ES/ZrmgGOTrPiMP/TSJGG/qQdNJ6ksadKhuXrsCd1r6XGQ/9HVrvhdOrtFPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=r2Zt/cjE; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71df04d3cd1so417867b3a.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 14:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728078056; x=1728682856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tXUbWLYJR3U+zEjSbqk0pk+6bVLw22kfGamouLUdmc=;
        b=r2Zt/cjE3xn30hPQCxPePWk2SdFuQyE8ptxtmGs/Hkfj3+ONDHbFHz6FEpZPysk8o4
         T4+No5jlW28IwB+HbP5kq8KgADrnubILnFA4RamQpGGTCYFeO7IKNhvMXgAd8Vrd5KJV
         86yfKodNCASQa3MHrRmks7J/K4BR+/o+M2IxuTt3wyy+N7HTpgFLwf0Uyjsu4US/k3kJ
         2IjRdGfFqjkzZL2aq6SNFcoQ0HcTBEztqFiSxVpyVoyJcmiafQie2//A+2tnOmpSB9jS
         wSngk5OmxozMGUDYQ4EY2XyGE+EuTvY9BOxxwjlJWvv4ZXxPHcB50hTNhit57IUaxnfR
         W5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728078056; x=1728682856;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0tXUbWLYJR3U+zEjSbqk0pk+6bVLw22kfGamouLUdmc=;
        b=JLrtNHRTACRxmLuuulr7Zbt0f+WDL/Lez23TszB7A1XQ6m96XevKK7mPdxpu+hmbo7
         yHJaqlpEoc7ZbULDbcMNAePLfZp9/f9rpw4oO20MijhaonVNoM8qgZRtc6ON+khR58aq
         l1oh9SV2wEDtri+bWFPVxoiZDKY3157MdpZuqQZ+kXgGFX3fVLsc5ZjrCZGFhBMyIOQq
         5ibVdRaqE/kkUaOleB+yW1nEtzW7VxOghaasWwh6sDEt8XXA6wiflp5RwAXdFN6SbVYN
         xEfiDYdRSkmPSlfe35V/03aCbNPBnvYz+AF/KTQggf0/3kmYON1B89hR5M50pb9VuXeo
         /nnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqP5DDRCYLtxgGJJntrIY3TcDn+2mss6cB9ZpSY6af2ZhvEk2+Z8UgiLFWoysiazsSHZfvChs39G6E@vger.kernel.org
X-Gm-Message-State: AOJu0YwW3/vT4zMzszgcZswcgXn2FZsNv3AY1c3U4x4jUecl8g7zs2A8
	Gu731eDPS7y+KzcQ9YJQyjt32jgg7tb6uLeYM8D/BxP6uUSzWnoApLUyLLdWL89mIb2bhEmbnVM
	e
X-Google-Smtp-Source: AGHT+IGaTO9NlECH4L11tO3rmXARCrwfZWwkyx8BS6wAVI9KvFTpdxilVZxd5eG3rkBDAnNyLMXExg==
X-Received: by 2002:a05:6a00:1a8c:b0:717:8568:8cee with SMTP id d2e1a72fcca58-71de23d01a4mr6922378b3a.12.1728078056364;
        Fri, 04 Oct 2024 14:40:56 -0700 (PDT)
Received: from localhost ([71.212.170.185])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0d7b9d6sm330093b3a.187.2024.10.04.14.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 14:40:56 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
Cc: Paul Kocialkowski <contact@paulk.fr>
In-Reply-To: <20240915193527.1071792-1-andreas@kemnade.info>
References: <20240915193527.1071792-1-andreas@kemnade.info>
Subject: Re: [PATCH] ARM: dts: omap4-kc1: fix twl6030 power node
Message-Id: <172807805572.806523.7110616698781538712.b4-ty@baylibre.com>
Date: Fri, 04 Oct 2024 14:40:55 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-cb14d


On Sun, 15 Sep 2024 21:35:27 +0200, Andreas Kemnade wrote:
> dtbs_check was moaning about twl6030-power, use the standard property
> instead.
> Apparently that twl6030 power snippet slipped in without the
> corresponding driver. Now it is handled by the standard property.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap4-kc1: fix twl6030 power node
      commit: 59caaade193003e4dcbc92c82e66906ab7558951

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


