Return-Path: <devicetree+bounces-127065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A379E44A6
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 20:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11CDB165068
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07921C3C1A;
	Wed,  4 Dec 2024 19:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VkZoTORc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158CD1A8F7A
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 19:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733340826; cv=none; b=OIc7YlOUf8mjQ/u1N611rYKnwiTu2r8MDxQ8qqvLB6Z4lPwgK/xg/THOtq3iH65EbEekV3RBzTD3fDVjZdwP5I9yCYYhozlAS1UZSBWN9KzChHDS9EAwRUD96ztWkX6paiIF76p2rAZrTGOQIZ/qOHhaciZIh3ix6+nP9YSQQ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733340826; c=relaxed/simple;
	bh=b1Xpy6CD6aMD49xSm64SabOF+AaRJHNJEm1DcSmxM48=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ISYnkbgINVerqOFm/6hhfYYcHvHqBIpXrZ9GweMC0rjtyW9MaI1qIMBULkZqurpPe5M/KaGhtQlZxqi5z0iLvkv0x7rd45Y783PYzjOIUGLclvPfE4oXXSKrKTYJne+hDESTPaDRVmO0HfmjGVPUGMbofySPLS1U1ttzqMAzUbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VkZoTORc; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e2bd7d8aaf8so121061276.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 11:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733340823; x=1733945623; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aNJFJ6pRI65Hkx3S3msz6HnheriMpI4d7aUoNtf1ZHk=;
        b=VkZoTORcjOF/QO7o5Z/7eH11o2WV19FflQSxUGnrBjPp6cm9ifyJkM6OD1nF9LlbG2
         hEYp5cTQDP/ml/k/GHc7NFbVauLJgsfPFCKEHLFYCBxqUCIEZT5HYrRaa+XfwGKreIlT
         /kDm/2ydT93Tdo3JCdISCeGy0K3FeIqe7aEMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733340823; x=1733945623;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aNJFJ6pRI65Hkx3S3msz6HnheriMpI4d7aUoNtf1ZHk=;
        b=NvTwDM5Xj9dt160yV+jyluAlqMbwMDe0Ov07/7p5WcDHKhb6R+XT9NQRkMrcVItpOg
         u+xqzujtRA626vFKWkdsuVU7q+MV3008B33TTDrW7D+pQ0m3VK9L9VV6uNoAO9KeWfKf
         bfeSg2yVaiMf3X6FVyrlbBw959lgun2C2MjUuUgo6pa6CwJ3tpCryJzOMK2as0YqbiOP
         SN1CtOF9vSAOD6ocJMX/gPsmEX1YBjSx0yE/jMxeG8OZ3EtOgbigCCQbBiUnhWmqe3AO
         B5jUhTNJbOu2NOwOkJt6aKqWaP1/lsi7bc8pcm19h7mUeuBgLazfxUphWzjbn7w/iUOE
         d9bg==
X-Forwarded-Encrypted: i=1; AJvYcCVebSj7PsZj7Q/IPWgDBVddZ9e8ofe1pClF6FYM51wMxgUQUsPcyx0gJHj1kbFS0yU1deEHrGbcZiIh@vger.kernel.org
X-Gm-Message-State: AOJu0YxkBKq/OlSdPt4CyqJCiZqJWTYerJZ9ufQpYTkkzyjzB5Ba7qR+
	D0GDWEwOfhdWBbqTU+1PmJFEkkS+X3n0xWFN8w7ENh2lS1gK5qNNlrPRCEQZI1pok/Qcn8hoF57
	m2HXSNGbsmrNAgBr+4Pist3muu3Fv+2AtjJ70
X-Gm-Gg: ASbGnctIuaDr5lLbZvhebroE+NO2qlRsSaFQKlm5yvlIvweiLmSjTSWkGnhWvmCgrYI
	du2cLqB6ZevvfWBrlWI5Ut45I+D9lyPkQ4l6naeeusL50Ads3k55Y4QYn9rg=
X-Google-Smtp-Source: AGHT+IH3lQTfDvoVM5SgtnrmkWgM8tKtP2qmtpTk83iDRH4qhKbofq2v85Sk9lkW6T3GFBZuCLJYvwma2CMebDYV29Q=
X-Received: by 2002:a05:6902:726:b0:e39:8a36:5781 with SMTP id
 3f1490d57ef6-e39d39ee243mr6896832276.1.1733340823079; Wed, 04 Dec 2024
 11:33:43 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Dec 2024 14:33:42 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <202412041839.pjv6awcS-lkp@intel.com>
References: <20241204000415.2404264-1-swboyd@chromium.org> <202412041839.pjv6awcS-lkp@intel.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
Date: Wed, 4 Dec 2024 14:33:42 -0500
Message-ID: <CAE-0n51ZnUnL9Ghc4VV=hH0ju+VNnq4HWj_xV5cOA-Q0B-Au5Q@mail.gmail.com>
Subject: Re: [PATCH] of: Hide of_default_bus_match_table[]
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	kernel test robot <lkp@intel.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting kernel test robot (2024-12-04 03:00:44)
> Hi Stephen,
>
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on 40384c840ea1944d7c5a392e8975ed088ecf0b37]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Stephen-Boyd/of-Hide-of_default_bus_match_table/20241204-123701
> base:   40384c840ea1944d7c5a392e8975ed088ecf0b37
> patch link:    https://lore.kernel.org/r/20241204000415.2404264-1-swboyd%40chromium.org
> patch subject: [PATCH] of: Hide of_default_bus_match_table[]
> config: sparc-allnoconfig (https://download.01.org/0day-ci/archive/20241204/202412041839.pjv6awcS-lkp@intel.com/config)
> compiler: sparc-linux-gcc (GCC) 14.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241204/202412041839.pjv6awcS-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202412041839.pjv6awcS-lkp@intel.com/
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/of/platform.c:27:34: warning: 'of_default_bus_match_table' defined but not used [-Wunused-const-variable=]
>       27 | static const struct of_device_id of_default_bus_match_table[] = {
>          |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~

I will move the array into the function that uses it then.

