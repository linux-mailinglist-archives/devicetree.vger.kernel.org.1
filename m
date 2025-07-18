Return-Path: <devicetree+bounces-197548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 122CCB09D24
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 329A6A847AE
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BD7299A80;
	Fri, 18 Jul 2025 07:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="gi4GnIon"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469682989B4
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825387; cv=none; b=QUsghxq299E4pEmHjbZf3r7ArFKxg6gtl0wIHXLSncBHmfwfjWN741g/c8FjvJEDH4sWRBqUIsDmniBEbekF0sM+xZaVcEpYhqNA0iUN89uwq2iPSNx12scxyRuFIhf8GXBrjHXTW7GWYyeBqn85bxDH9hdtkdp74WS55+8RUFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825387; c=relaxed/simple;
	bh=lpm2+edJa87Cx9epc57JEOOqNv1u0nwKEPrxDjWFGM4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iHvDrqVNIuR1q+kyF/hika8tjJ31GxmyPHeQ/Va6nL5y5FOiqxvhnRT7rUgv/5FZwI7MQWlI5ula/d0YDIxdnPr6epgrJxUoLj6kQjj+Gpim5GAvfMUDSdr02llQZlqgEC+KvQ4zuGfiLxqQu8A/SleoeTjriEMPRkhRGIi/RCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=gi4GnIon; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a575a988f9so1029098f8f.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825384; x=1753430184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0c8fdFMr+UpHuCUTudUkRscMjxr1TXKDDE9fIOozpk0=;
        b=gi4GnIon/kSSt7Fr3XqPhEGqEv2lPFCioUK/D8CosdcEYAnXbmRNqeI9uEK+Mu4qoV
         5+/5KrIi/A4dCFxVf5XC+QnnJTh2suLl9t76JKQLzNcVFjFrOLCyFwK90nmTeOwpjaS8
         JJ1U7qfGc+/+wsNwlL0WLZ4MlyMwId0UeKG2qTZlDNeEZ3EfPXzTMziTzLX8aUzfHm1f
         dSyZImwyEoW5lfp8AMcgrhXU6KKrEnOhanLSg2Lvw3sSqF8oCBcFuHhzjxxMJUeoYoMZ
         Ck6KnMkmEbkSku70Z5B96SNZilXrY3ZdkMfJz++j6cq43+goS0Ryb9snB2ADCqWxA4M7
         o/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825384; x=1753430184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0c8fdFMr+UpHuCUTudUkRscMjxr1TXKDDE9fIOozpk0=;
        b=rgboYYvC7bji3Kz+gWyPbq0xjRm8xfFkkNWTMRV+7hHiz8GzZOin7srC6bHvehO1k1
         ydWo7zLdrzLm3Ihc9jy4R+Up1uQXTA0Bh2+Q0GMuVOdeP4tPillalrEehxXnYjnBYIfu
         HYhJ7lPgGN6A4sUQdJzhiheeYDsQJ9nXmrIcdQlW0kSxJJS91UQ9o3C7KskZOKEiNirF
         5R3Y6svxMpjBgqAbvIkoKYJiEVioS2Ob301D41wZuuKBPBiWjA3M8CuiQWZ6V0rGs9zs
         WRb9VBMcUrYoXXMnMSAkyFuXmbkcPEnPGP4K6QnIouFtA10xt3DkvJlzJqJJnbjzkXfj
         Sp4A==
X-Forwarded-Encrypted: i=1; AJvYcCV2yb9lrW3T8dAlMWQrf4ErzBCc/ibc6pr+yXVLUC+xNUlSU93I6JrbEbWa4Lfud5HvlQLRxiDWsFWf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1JBOL6w1FomgA6KY+gzWiVq0HxxeCn0lAnVWu/OkF1qsQm1Ai
	WpySnv8aNmACUWZieqJa63oThg/FIpoVwpisOF0urTgN+M1exMwjbVbC9p/ZODPkoVE=
X-Gm-Gg: ASbGnctx41JjP7TvZ16vOy4wwzLl9WBAja8QFb/IGVAocgIEtnYEWVY7jZHzM8f/Vh9
	r+ciDECgGmasjnLehB01I1ctBqwbV9izYaHPxUJPn2g6Sq2sqKMJPIfyTGt/+GZlztxLINvKXDj
	MBQcQdiy0oBkOF4TnB2L3zY2Jz/GFRkExcEusGVSnqzE0tYBf3sAzBnKGAlYit7TWrAsGn2YReO
	G46wS8JDPmaJvT9ezMIVzD4TGrYtDAop2szCrwfTuNOPprddOlkFktbxzwh9XxMvCHltrI1W9d1
	s2uvQezwaUXBrekSsGyGr8a6q2AN9aZyRDrqc6Fw87NpENCVAG/e5YIPmpZ2c7d5rLY8FQjXmhr
	mD25hHwOPjQ730jHqgWPH
X-Google-Smtp-Source: AGHT+IEEuT+p5IKgXfqrVBFf6P2douSPhQsT/o2MEkjNdOPlGK3LK33AdLMJCbwxmACcgn2BBprRQA==
X-Received: by 2002:a05:6000:2705:b0:3a5:1cc5:4a17 with SMTP id ffacd0b85a97d-3b61b22299bmr981616f8f.42.1752825384413;
        Fri, 18 Jul 2025 00:56:24 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	John Crispin <john@phrozen.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert lantiq,gpio-mm-lantiq to DT schema
Date: Fri, 18 Jul 2025 09:55:54 +0200
Message-ID: <175282531513.45055.16088789806778358341.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202837.3011521-1-robh@kernel.org>
References: <20250714202837.3011521-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:35 -0500, Rob Herring (Arm) wrote:
> Convert the Lantiq SoC External Bus memory mapped GPIO binding to DT
> schema format. It's a straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert lantiq,gpio-mm-lantiq to DT schema
      https://git.kernel.org/brgl/linux/c/71b660010bde67a0e0ffdee67d30e62672e6d393

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

