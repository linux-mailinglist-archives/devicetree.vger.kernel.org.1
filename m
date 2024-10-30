Return-Path: <devicetree+bounces-117237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFAF9B584B
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 01:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 468E4B215D5
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 00:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8831FB4;
	Wed, 30 Oct 2024 00:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zDypYLKv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6E15C0
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730247021; cv=none; b=DMkN8lboX9D4cK7oVPAFNmci4ZF+nYL0SGW/veL0/0auULvQEORTBDZe0kb6SnbpvvMAeJB899zk/4TYg1XPA4qamjxc9z0YZZnk2IWSwhnUwLskAUlb8+0iU/Z5gc42cPzgugYR7do700TKiGBYjHj0tJsOBaZHFMiXUilZYeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730247021; c=relaxed/simple;
	bh=Um1BBdzOLBgVZV7AowBomIclS2RaECeu9YVyftjDJds=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MHBjAktSnPN6VoSpRmR+uUrbZT7lWml27XC2p0HhibFZW3S13sD8YacwSAc5cpj4x4vNTTUhNVEqzpyYrTGwLEH51ZES3gq7HsKDQ0kO14Kk8OlQxUnqrZbT5WGCBcS4hd2PayMeqP3TpHii4ND6v+rh2DIlkFzAAmYeLeZPTv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zDypYLKv; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-71ec12160f6so4373188b3a.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 17:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730247018; x=1730851818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yx2ZtyUjWj7/jT4VUlObZ/DUJ3gJnbsgf2IN8Ct+yA8=;
        b=zDypYLKv0Lw8h4o4n+tUvBG+M+AVoI9Xn07hegrTI4zKvYmqKEcbqX12uJamzrcVjk
         iVWDkZk+ivk+oLSKz+d9RYZa+FsZzVbe6N5mwO80lXaWc7Z1GNuqmK1qXhVnv5/XZePa
         TDbDjGb632Ep9wb1cv+T68E879wzDSYhNv/aWpOD1Jm37YFgxMTIBHcQlLHE6E+SRHlN
         4kXRX8tRau1+WJOpsPFXf6Jc2wWGZ2+I1ziU4mtYKOvcs0MZKr7TmB6j1MzpAIUe6KHn
         4MY2UvuHFkz1Yc0sPKxFiKEnka7Qyx50z4M04IqYvlggfyMT98xIfHupUnWrxxzHdrx0
         cYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730247018; x=1730851818;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yx2ZtyUjWj7/jT4VUlObZ/DUJ3gJnbsgf2IN8Ct+yA8=;
        b=XCoktY240gVzsBtKFoRRP9dbpt74+EgW8MuSnb5fNscErLgFRyO0lmhgllZBE1kdpo
         Rk1UtfPrI607NWxNZaShMDf/n5YgLTXtCvGU8VQUCPbvOodZ46GhVF/Jg5frCXgsBDWg
         jgwChJXGRDZQQfPCmjSjMh6vMBb0kNAUYnuLez4zwaLN9GdcFieveq0wYWtkJIN21GY3
         4NJkhkZZf4p3darixj5U+9XjmX4+qUxgJUe4Ku0UmZm+EWm2S7c7PPdc9lWorN6gq3cM
         VVPqJB/aVKULKy0HH3RdfZvJ+MeQ10UzPVTI3hLam566J13P4j3FbibhNWTjEu/cLJ8M
         itTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBo3DssUxKA89VUb19NVWJiBkZavPROtRHvdI/UVaOqg/Jo7Ol+mRIU9wWvYdswKZ8fDzUIhoIJVQ8@vger.kernel.org
X-Gm-Message-State: AOJu0YzeKGiRoakhW3h2nmjZXw4H9q1eLhaXgPcqocwW/TWC19yDUmSy
	3t1CjGse7AFs8DundTptAjK4ChMDGV2vahLDZA75tOsPoykWjj9wQnKgS5M4xt4=
X-Google-Smtp-Source: AGHT+IHUR50UflND4vAKgFx9zaRoDHs1Th9JVXI+GeYW6r8aL6K4pUKlg3OJSUCPF0WTXr9SGTSHqQ==
X-Received: by 2002:a05:6a00:3d0d:b0:71d:ee1b:c851 with SMTP id d2e1a72fcca58-72062f13bd9mr21012618b3a.7.1730247018424;
        Tue, 29 Oct 2024 17:10:18 -0700 (PDT)
Received: from localhost ([97.126.177.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057921863sm8176627b3a.33.2024.10.29.17.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 17:10:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, aaro.koskinen@iki.fi, 
 Roger Quadros <rogerq@kernel.org>, Andreas Kemnade <andreas@kemnade.info>
In-Reply-To: <20241018214842.275194-1-andreas@kemnade.info>
References: <20241018214842.275194-1-andreas@kemnade.info>
Subject: Re: [PATCH] ARM: ti/omap: omap3-gta04a5: add Bluetooth
Message-Id: <173024701720.1375433.423261408152684119.b4-ty@baylibre.com>
Date: Tue, 29 Oct 2024 17:10:17 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-cb14d


On Fri, 18 Oct 2024 23:48:42 +0200, Andreas Kemnade wrote:
> The GTA04A5 model has a wl1837 WLAN/Bluetooth combo chip, add
> it.
> 
> 

Applied, thanks!

[1/1] ARM: ti/omap: omap3-gta04a5: add Bluetooth
      commit: d61ceb5a520162e1f321369a6aeeea28eecab6c4

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


