Return-Path: <devicetree+bounces-108564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 929B2992F78
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BEA028623A
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40431D47C0;
	Mon,  7 Oct 2024 14:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="dpYuVUhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E1218F2E8
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 14:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728311592; cv=none; b=RKLlAVY9qwpDYj4jtiO5WqxG5bVs+bbX3+ljxpmosrgG/Niqog0VGsiZcbne43EiAtT5JCY5b1N4gwBOb/A7Kgas5CsJiZjPrKfS1OEFMl0brp66rW2+834dWYPWo+tqTeD0cWey7oCzGNzfUzdNYrkNkcslYmG10e0872ecR9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728311592; c=relaxed/simple;
	bh=LgwjrRVbLWLS421jPg+gSkNc/4jw5e83Cl8H02nncvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gYCJrZT5sPCHxtQG9/bjOZAn8Fz4q0HPzxVNbSgb0L2QoB2sOdJSDy9l+B4FdgyO2xgZ2x/+RASiZvRQceC1tX6MzI9NNCMpPb0YI+iJsSo1vM9Gu+qphJYS3gIDGFSe+0V7aUJA/kJTOAm4F/LWXnINFeu23gQvCEA5APGLuaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=dpYuVUhV; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-37ce18b042fso3393632f8f.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 07:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1728311588; x=1728916388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UMAFoCXqjuHb1lmLD9ke8NMYSK0rUZ7bu48RlZlzxuY=;
        b=dpYuVUhVqc4/LlkCyfGqZCjXFIRMqJoe5sYlOtK13K+rS+pf9j13vuGhQrl1NgNTWA
         gRnlr1g9Eci5EumyR+PkMCumRIkb6b/GzovnO5gmcgPoZGO0hHQf/1oB7nhZTExYaLY0
         lR6A4gpLzkYFNHaRKwht4T0ZLtffBcxD8KXy1WaDf9Ajju9bjZ5TX1Vi7FoRSaRkgXho
         RNRhEhzUX9lJjQwTI3gjiq/2s6KHM+gbAxAVjfNbrHTDePhmwGyXvQ+gEx0axuvDaaTS
         NHErDyJb5NtXA3R8EaZQXwHXgmhjS8542l+YGwL0vGQDKFbUgu5JOAsmqNbFt933zMOS
         9G6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728311588; x=1728916388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMAFoCXqjuHb1lmLD9ke8NMYSK0rUZ7bu48RlZlzxuY=;
        b=xG8sx1LOAcSGO0WtkiZmEyleJL0KN/zoS2E5+nmITN7L7/vOCsKLGyTb6NvGnKcejF
         AdgwV3U8RckEYbCNwRqGpVEVQDVGyqNKu3ZClzhzq/TnK2wqqVn7E6ZNhUYBpu4lbPLY
         St5RU5F5B5/ZfIC8BybOf7IgdtUA8qyUB3KbDeadxhuhPZCK+oXGP5da8E34IrZHrBB5
         yhkTwAYuF4pkNmm+iMMb0GarpP8MX8ZW1SVL7YqPGteQiBMHpi8IsCXwpQsgkJ79E0q1
         R3FUOos8EKMeoB+5/hMxV+dk5neBeF1a0WDA0k417Dg6w3quHXORx7YDxqIXI6EFf5ID
         rFCA==
X-Forwarded-Encrypted: i=1; AJvYcCWvg5Govu4L6QD1marOnwvzF3wuhiNF/RLQsYhyXpbUE/fEstH1nK/Y95hS6frLcbe1K7WxqH5j59EC@vger.kernel.org
X-Gm-Message-State: AOJu0YxHdVGXcrzEozw7kUxjIZGk5s+VorsDEBEinoO/EtCM//yLGWii
	26Hm/Su9yftRJtvMisWfr1ihM3g9xQFNo3D1MHelqXIV/MBKIiz4pR2qeQvCySw=
X-Google-Smtp-Source: AGHT+IHjU4qIU64tLyI9KmgXNtQlDjO7hYL8LHMhQRre1FTvX5v+cM/Os/a9DuMPHr2ZCyjqbSTTRQ==
X-Received: by 2002:a5d:66d1:0:b0:371:844f:e0c with SMTP id ffacd0b85a97d-37d0e6f28b0mr7100118f8f.10.1728311588332;
        Mon, 07 Oct 2024 07:33:08 -0700 (PDT)
Received: from [192.168.108.50] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1691a48asm5824269f8f.32.2024.10.07.07.33.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 07:33:07 -0700 (PDT)
Message-ID: <40ffacc2-fa04-4e6d-b817-c547aa75a21c@freebox.fr>
Date: Mon, 7 Oct 2024 16:33:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Basic support for TI TDP158
To: Robert Foss <rfoss@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>
References: <20240812-tdp158-v5-0-78684a84ec23@freebox.fr>
 <172536721812.2552069.2889737892670833119.b4-ty@kernel.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <172536721812.2552069.2889737892670833119.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/09/2024 14:40, Robert Foss wrote:

> On Mon, 12 Aug 2024 16:51:00 +0200, Marc Gonzalez wrote:
>
>> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
>>
>> Like the TFP410, the TDP158 can be set up in 2 different ways:
>> 1) hard-coding its configuration settings using pin-strapping resistors
>> 2) placing it on an I2C bus, and defer set-up until run-time
>>
>> The mode is selected by pin 8 = I2C_EN
>> I2C_EN = 1 ==> I2C Control Mode
>> I2C_EN = 0 ==> Pin Strap Mode
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: display: bridge: add TI TDP158
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/887665792b99
> [2/2] drm/bridge: add support for TI TDP158
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a15710027afb

Hello Robert,

I expected this series to be included in v6.12-rc1, since you applied it
before the v6.12 merge window opened. Did I misunderstand the process?

If not in v6.12, does that mean it will be in v6.13?

Regards


