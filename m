Return-Path: <devicetree+bounces-197515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE1DB09BB7
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:51:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08B1B1733A2
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 06:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9AD1FBC91;
	Fri, 18 Jul 2025 06:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="JAGrEzdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43F81FF1B5
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 06:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752821465; cv=none; b=A2jzchHmReyiqM1E+nYAONWqT7phrCFNb2l1gCYIdozxNha9mJDlbRLauyFiUcyTsyyrIlHvzf+MKfKG7SehAwa+07ZFgDRMvn4Xkva5/kpmW7mXMv+rmJgMg4qNLVYv6NlWKRuDAZsIZad+e5uxQupJF1IuwW0FlG0CQGITV7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752821465; c=relaxed/simple;
	bh=g/bQDA1SnPganh7SgBzzVaHUvhqJSHOBmAGh77R65Yw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GT7MdJFUdltbIladpQhabncUAzqBAXTS0Fu9a5DnBZ1eD+YYoC23P3E57kCFnHD1m+OK8IUhgn1GDmozNEzNI9AOAlkF5muJxkzWvVqOJa6RWeBY3M9e1Yl1FizKAi4O8avLEB+P0CiMG3JdTEmfHkbF73bl3RiuncnRCgVk67U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=JAGrEzdb; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-70e767ce72eso17858167b3.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1752821463; x=1753426263; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g/bQDA1SnPganh7SgBzzVaHUvhqJSHOBmAGh77R65Yw=;
        b=JAGrEzdbtOP0h1PRv0Km8fAsJvOctpoYha5dO1N/Tq95l0YwCGsR8vbz4vnI7Lkp/F
         vuSIzqEdp55gI1ifAzcgS7kB9QhS+xw8avwIhZsdQe436XfE2CKQmlkXySKHkBDR2THo
         9Wjp3jjWnlEZOaQuXNkt0Jvqtnq5ABktCQh4644+kc8+LjztsLQsY830rp91i8Dyee6q
         awW/ntnCGPJ9fqwt5t/F16c9ejRrzP/bLHQgohHSF5eLz1HR2Sb0cuw1qegmjqp7nWdb
         mJJmcjVvEIM+IiLJ1YhNItdb+Gh6cUGlS17YwxzBy30ctwCHaHx/ExFg+lve1nlZ0fWY
         JsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752821463; x=1753426263;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/bQDA1SnPganh7SgBzzVaHUvhqJSHOBmAGh77R65Yw=;
        b=DWLeMhjXodi42seZ4jRxMrxSjyW2YoQbnfKCFoZ5q9hr5fd/6eM+uAkh0L0Czhsxhe
         lW6UCZichD8HwpzXwe3C53Y0v509JvLjXc9s/74rUwSSTEdchpX9kz69oUnzn/RJVaLm
         3IuPIg2TQiB+QcXLiTZ9rDor95NyNxGPxn/w9pI64kkzA+F6xy5v0ZFSe653oCaBgSEm
         +O12gh4wMfxtMvlUbnvXn8tdJBmU5uS3eHvka8PzlVcOcwVTC5c9FkXffA/6AQ6z4+qE
         ddua7fyPqrLq3CJM6ppeGMUNBr3Ijz60YpvLZHh2Ush7g20Dg4JgkfiHIJdiMXHwXuY9
         590A==
X-Forwarded-Encrypted: i=1; AJvYcCVvutHE+EAtgUerHGK6K/jbyLhsP08LWhb2bXkwMMY26dnslXfKeEzltVw2sjYYavdbyAwIHrz4sySt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8qh7QlHQXJQ1GFDLi8BV6CVLp+SbzW2IYYHV7gHJPzdTBD32M
	AltzU4ytxGkfFveLLmETUWrLgXisQOdTtHl2IMq24CsoWGmtv9Nk+oss3LM/W0CqYquUAHq9AdN
	Qxh+s9/wL97Qo3KKNUlMQoPDYuYG2S+aZRMcQFkw9XA==
X-Gm-Gg: ASbGncvCmmF45+Tf912PogSMGmLdwHHIOx4s2Cmsr8WorUFHLpuzwBrlw7cwaFYCbqX
	hRFb3qA23UGyYmB2M2xFkfaV6mv7/bwlFsgwnmFWx0z8xCYW5tzjejlEw7RRLC3NMAqMmsIbeZv
	W57o5YWCB9eiwA4ADtmYr3iijSdjrZlZh+pQFB8VvA1GdTb8R3XBZLuyX6ObQS1PW7ivhApTry5
	zEutj8bmoDws08At9nhg0PkUqVXwFqYvz0MPsILfw==
X-Google-Smtp-Source: AGHT+IHB4qPnBvPHuDyr/eRkdonIFJaeMa7b2rimTenEZDBBnypTUT8n4v6UW2cImWERDStmN+Jv4as8F9bxbMRxZ4Q=
X-Received: by 2002:a05:690c:3605:b0:70e:6105:2360 with SMTP id
 00721157ae682-7183747508amr140109917b3.24.1752821462689; Thu, 17 Jul 2025
 23:51:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250717-leds-is31fl3236a-v4-0-72ef946bfbc8@thegoodpenguin.co.uk>
 <20250717-leds-is31fl3236a-v4-1-72ef946bfbc8@thegoodpenguin.co.uk> <175277045533.3779995.9523277801474945480.robh@kernel.org>
In-Reply-To: <175277045533.3779995.9523277801474945480.robh@kernel.org>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Fri, 18 Jul 2025 07:50:51 +0100
X-Gm-Features: Ac12FXwhPQLDpkdyogiRsJ5pr_q3LrxdRNUyRuWOgCuv_ynEzoEm_EA_gQ4kNk0
Message-ID: <CAA6zWZLyUt9X4+dAgYBVGqdNchasJorWhNH1O1Ti=UBO-J6q9g@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: leds: is31fl32xx: convert the binding
 to yaml
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Pavel Machek <pavel@kernel.org>, Lucca Fachinetti <luccafachinetti@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Lee Jones <lee@kernel.org>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date

Hmm interesting, I did run it, have yamlint installed and see no
errors. Will upgrade dtschema and try again.

