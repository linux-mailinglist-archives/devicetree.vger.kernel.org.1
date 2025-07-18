Return-Path: <devicetree+bounces-197516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9E8B09BBD
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:53:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78A6E3A90F0
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 06:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500F61FF1B5;
	Fri, 18 Jul 2025 06:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="HMgO6kY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65E61F866A
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 06:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752821616; cv=none; b=runLE1XUIHEZxUutGdHX9MXWeXLG0HOhc5CbH0gwyv3z9y3KIGlE6Vdfvp3ivIoAGAaSBUqY/1QMGOEn4NVFIep9/nvLUzxII0l/936Ers2nQxcD2EIQ6XBA60EmCyGvxxP7ay7Fzfvs9CYFWWvJcIQglAHTVy8WYKmkeHL2Kts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752821616; c=relaxed/simple;
	bh=ybAswk9vrSD8WcUdO7ioNsJSz4/UhNNPszfHVPjePD8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V3a4nVeGxBqS21eb3NXvILrhTTQ77wnna69MZcPUrg4YDeB9ttDltuNS379UfWkHikBUSFPJMSaQngLOh58addLaXc/gynAykgzl8BESFoJ4I3gMKh/J9E4tamZy9EFI2gtKlVtfZ/0uEl83tFdIxbf5RzZdf4Tsfq8gTQ6UmRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=HMgO6kY1; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-710fd2d0372so22402547b3.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1752821614; x=1753426414; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ybAswk9vrSD8WcUdO7ioNsJSz4/UhNNPszfHVPjePD8=;
        b=HMgO6kY1CuOLjnNzL+nGkL1VOPU92B9lw1SRLQ10W2xEO+/Q88MVbhz7mHo4wW9flv
         iYQvkshSWBle+esBdrJZVJvDbdC/P7W8Jz8TcraimHMTeEzIyA3y75oVQfxdhkNf82By
         RdG0LaEf8UbU9icAulHMrU6pL4calEuKlRSitk8DZ6kpPkPp37QrjvT6rFwI8Hpcu+tb
         1XX3yXgXWIk9d1p+E9ijvuMjkUXn+0tXJqTBe5H8BwU2Hvd9uvcni5odG0EYkh5FbOb+
         O2jBwJBNTBE2AW05+Gf0+W+dnHFTq0WqUtdr4Hu6BkLouaYb5E0oW3WYJo2ZbUlUmzKL
         Sqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752821614; x=1753426414;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ybAswk9vrSD8WcUdO7ioNsJSz4/UhNNPszfHVPjePD8=;
        b=WVrG1NHhJ7XUCdv6gZOXxIsElH46sR9Jff0/0EvV4pQ9LbCpLRcSv5G8GXA/+EXZCn
         QnmunV3AFVs2ZzysqQL/VJuOY0smeUSN7UoZU0tW3jVdLEGNsoLome/T93Lvp4ct46om
         Mo4kGGm+vbkErk5w3w4oTsMA3dRzMDX2kdURZuk1xkD9Zn6Mh7s9ovBCHu5gduIzDRbE
         sLXSV5iR0FGZXo81+1LCDmeJ7ZINA0DeFq8ioNWlTZ7lFuCT2QAbyF30qW3P+t2/+57r
         pjm5yMzUCt0wTH4iUsKkVYhlNg0p1nYqMvusOg7p1acWzpEZdtqj4qGQ15YnX2OX419i
         JxZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXT22IO3Pxkd1OOaeT7yxcRzkeJiq6+Tam4MmzvS6N/gmAnTGlL1UH4tBGOywdZMgfAu3WJuq5idY3f@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm9lBudWV2ueg04/F7ER65GiaNffi5Bvv30isdGFn1WoIVKsA8
	Ugq48+8wa9evPY8i6owZU4MiVkxoo4oDROZ1RLvPAb25BIArIABLynXG/IJNmYmOK22lSkwmhoX
	SqLKCMn/QX2rRjnlstHiSU/nEmbd73tiBhIlfq6I4SA==
X-Gm-Gg: ASbGnctPHJSM4Q9aYnZt9PzM01Xim0XMwyKxw/EEWXpkLm2WPpZceCXJRNOLygNvRrf
	xKjvH9+NVVnPD2NhL5q6S4bFCYjHZjgNl1oAfuR/YI8voiQr0uueWla7dZOvLj03ATIsh4COb2W
	A/sITqNhk2xeAL+GXK9tMQlTW/sfUte4yy44MrJzhIq8cgGH1iimlMB2fixRNpzMqjyWc484Vcn
	MSt+he/3++iq0lMgYVCKJDyDCG2RMwg+MZnXot9tQ==
X-Google-Smtp-Source: AGHT+IFvLgiDoFdyL34VARsxW+rGxmiWW9QMSci2UPUIkg/0n3HOf6tTiCSKpVsOiMnEC0d1xu5Uz8jS1p4UQRTGt6c=
X-Received: by 2002:a05:690c:6513:b0:716:5fa6:c3e0 with SMTP id
 00721157ae682-7194cf5c6e5mr39124737b3.18.1752821613946; Thu, 17 Jul 2025
 23:53:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250717-leds-is31fl3236a-v4-0-72ef946bfbc8@thegoodpenguin.co.uk>
 <20250717-leds-is31fl3236a-v4-1-72ef946bfbc8@thegoodpenguin.co.uk> <20250717193118.GA3988681-robh@kernel.org>
In-Reply-To: <20250717193118.GA3988681-robh@kernel.org>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Fri, 18 Jul 2025 07:53:22 +0100
X-Gm-Features: Ac12FXwbQ2naP0VaM-2jRM9KQR9PuTu6W0JfEaf7adOYalfSuSBdpeibbuvgG0w
Message-ID: <CAA6zWZJ8-V40qLcRbRJXaOo+mLt-v1aqUg9X39mqhJD5M2sHnA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: leds: is31fl32xx: convert the binding
 to yaml
To: Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
	Lucca Fachinetti <luccafachinetti@gmail.com>
Content-Type: text/plain; charset="UTF-8"

> This is already false because you haven't defined the property anywhere.
> Though this property didn't exist in the existing binding, so why are
> you adding it (the commit msg needs an explanation)?

Ah forgot to rebase - this should really be in the next patch !

