Return-Path: <devicetree+bounces-92203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E30C894C383
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 19:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4800282309
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 17:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE084191472;
	Thu,  8 Aug 2024 17:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bZp9c6Qt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8E189B8D
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 17:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723137580; cv=none; b=K3uubyay1rwT2L8VowaFKOjWIYDxVDA4DraeLbD/nvMSx40D9rUJ/aDLcyETAD6QaOd/+fUo6NprUJ/sY0THviJib+XvCPr1hj9d4eNhYKXWPzV8aAK4DVQEEUNsht6qkqVP1DkOoSo3npgS/fINSPu+TpqaS9Bo6A0ICk4R7rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723137580; c=relaxed/simple;
	bh=lsuG+EZA1Vx6q/Fv+7s0/FIoUtMR0zl1+rBKVZ9ncjk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GYvE2oDBOBkaevPB0qZDfWkj0PSn3ZKCBwmDqbie4ZxbnoiZlqwZabxka0t2jTsIoaO3+OW1J/MWF9Y4VaxU9H5avFbV16bRuZvwmNF/SLK/0F3a84dcR9/nV9jyvi/iXu8qAzsVplV9CQg1wKztIV4sxOR7w03hYdBbEig1hJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bZp9c6Qt; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a7aaa77fac4so24544166b.0
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 10:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723137575; x=1723742375; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lsuG+EZA1Vx6q/Fv+7s0/FIoUtMR0zl1+rBKVZ9ncjk=;
        b=bZp9c6QtpORumTclXinNRiYaz0ROAm62mGh630hTVFoGHz3rx7pc6pRo3kTO/3qad+
         UYBymmfFMQZTwQwqih+Oz6AaMAb5uAc7LMd1DsVPEeFBL5aTHengguotNgW6cC7WVAvF
         uoE6L7nUUYaj8gblwWug7zDRV3zOL1nwoVgWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723137575; x=1723742375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lsuG+EZA1Vx6q/Fv+7s0/FIoUtMR0zl1+rBKVZ9ncjk=;
        b=MYK+wChJoS9hNypyTTPYP7+rxwH4u4lxOj5o0BOoa8BWr33HN8nbmn4jwXLeP8oQMb
         YvAy+O6nJsJWyG0dITARs+DAvK9zVwUocOZ0qlgKSl3Hl7yW5qo3qcj7oOyhVxhQF8/7
         NznrP3usYPm9mRuCMmiEaJGrhvFvFjgGjFMC3mlzujo0/loVHXrAbLqJoVlYH6LiNIjx
         s8LbwBTb+ol4pVd1r3mjIjN47wycDYozi6N6DOQH6nCHGGhlyniMW7KBd6+3lWGSA2bm
         sjlrSLcdlTe76dVp8XjNr79NIO5+jrx+Rsy+mgumYuc0dspYrlBymQ/hp6IZGj4UxHyh
         wOWA==
X-Forwarded-Encrypted: i=1; AJvYcCUV5sRHssfuLnkLdO7tQnbEm046/W/DyMh58O9gnIy5Rg+J1BL/2aYFF9+kxYWf66EeRwLstKv2thgs6SC42t2mvV6GedSmaLO50g==
X-Gm-Message-State: AOJu0YwMK0sttIMKhRT+8wantrbw2THfD1FPBRdIZAjBkokMkvhSKQ+4
	1gLs2aI5ELDHnl0ZdHUihPpu5zp5lC/9KVZUJ/toLOIw7BYv5bB28gw8goOaOO0C7g+UqkVXxB6
	DSw==
X-Google-Smtp-Source: AGHT+IERh2NtlsQSxlscJiwLy8qMMwzgQq71gOuVCIKZny2AZptIN1O9wysnnmJzWjFSqH/A7kmPZA==
X-Received: by 2002:a05:6402:1ed6:b0:57d:669:caf2 with SMTP id 4fb4d7f45d1cf-5bbb24584f8mr2571302a12.25.1723137575566;
        Thu, 08 Aug 2024 10:19:35 -0700 (PDT)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com. [209.85.128.42])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bbb2e5c8fbsm855779a12.79.2024.08.08.10.19.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 10:19:34 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-428063f4d71so405e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 10:19:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUCcqjUYCUedC8JNl0ZlaHTersBJ75aOnR8gQe8sPnQUKWNSSWhHXT9JszvKLmJ6p6ufhtcBbRALi/icCJy4eK24GaQ2H70X6pKNw==
X-Received: by 2002:a05:600c:c14:b0:426:6edd:61a7 with SMTP id
 5b1f17b1804b1-4290aa8f28emr1775535e9.7.1723137574029; Thu, 08 Aug 2024
 10:19:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240618084455.1451461-1-charles.goodix@gmail.com> <ZnlGDCcNch475wWA@ux-UP-WHL01>
In-Reply-To: <ZnlGDCcNch475wWA@ux-UP-WHL01>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 8 Aug 2024 10:19:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UkHaH_oUojLCozh-C27GUaCgr_6V16_0XKJw86p5wmFQ@mail.gmail.com>
Message-ID: <CAD=FV=UkHaH_oUojLCozh-C27GUaCgr_6V16_0XKJw86p5wmFQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] HID: add initial support for Goodix HID-over-SPI touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: dmitry.torokhov@gmail.com, dan.carpenter@linaro.org, conor@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org, 
	hbarnor@chromium.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 24, 2024 at 3:10=E2=80=AFAM Charles Wang <charles.goodix@gmail.=
com> wrote:
>
> Gentle ping...

Looks like Dmitry had some small nits on patch #1. Maybe folks are
assuming that you'll send a v6 or at least respond to him about the
nits?

-Doug

