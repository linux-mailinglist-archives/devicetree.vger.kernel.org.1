Return-Path: <devicetree+bounces-76119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 089FC909B3F
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 04:31:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC82DB20E99
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 02:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B350F16191A;
	Sun, 16 Jun 2024 02:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="dWa2ozjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F6D53361
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 02:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718505062; cv=none; b=t6iPdLSliFnJWLUjvaJOwu5YFGGGVqxUObZbkUlN8qTCmwkxNZ7yEIdAhVzCuBcOe1F8qlQ5LPowLWl05hpO57uwaWL1EuP70z9CZDQCche4yaT1Zc7EbUWR6JjIQWhonVnWbQYS6OisMejUdc/DxzPaI7ieBpHCudzE+AWXvhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718505062; c=relaxed/simple;
	bh=YrpUnOnBfpPvxcN7Kn3yd+4s9tXe5sHEYq9JyDsAGzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aUk1xLW67MbDUByt5klBxpwqw2JrZA417wP1XDWzDKrAKLKqucbElH1WNv7q55tt1x7TZ0WWR73Xp8ZJkFlJMi82BhWRUrpQVXDwDTQwl8PZjjxvP7kWuxBmPr+DBLCYqzTXCUe9gDzckVZajD3ph/1bJFicN+lZInbOoE/V1uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=dWa2ozjB; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1f7028196f2so28521175ad.2
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 19:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1718505059; x=1719109859; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cVSak/2X/IwDlKdGQQzgvzyVeWSkvN8eQX8+7AouNcQ=;
        b=dWa2ozjBCU6UbJrjFytbPbr4zT6i0w1i2bvcfO98kVSvg7LHJDNxfP9Vh6KgORMk7F
         1QKGrLQsT/kYCrkjVsXqXT/YIBZOdOjC5adq6WDCryn8rIocHBg2G4qHbRWE02xmBwI6
         19RFL76hvuQV/JM475BkCJ7OSo94CVSk2/Suz65K9CFsOYUyZUq4F6xcichXLeBD1vyp
         G8E+L9on0BuSNIQaGoaXZVUM7R7N8NwpPYzmWK+aANNFpv7UXicjP5ejmoc4ixgPePbq
         cYYLxu08fMv2CXpceMU8X3CCd2ER4AcBDUK26MMAbFDjioonzHKUZ3vwanGIED8Kuxg3
         pHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718505059; x=1719109859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVSak/2X/IwDlKdGQQzgvzyVeWSkvN8eQX8+7AouNcQ=;
        b=LyYhWDh96gbuKAMY6mlnMeyT1cQZIyJslhqXDJcnu8YkvIB8aTaFU99rNMYB+J6kYH
         +ESxbRGYZgb5jFItV3qFog+xYCmqg48r0CCaT1QuYchjJt50Gq7WILhU+M5knXyqjHpg
         TK50dWTyIOO37ANwmjVLwM2UcSDmGPd1HDLbwpjRFcdlb6ttU2t9QQG4dNpSCDJ5WR5o
         HGjF/EYOx8DiZW4jZkNkwGmVbHvrqPIxwYaCv2jBQllrp4Qo31jrVbN07SdYeml+RCYg
         w0vxq6J3K9SuvlyDzMUnaBJ86l2cPV6ED2XpBz+T1YhQP9z3jx6+GzOcjjhQyhr+k0Ri
         zn2w==
X-Forwarded-Encrypted: i=1; AJvYcCWEB4QZyD8J2cUyeySEa0aFv6gbFty87to5aEOGgXQGDjoL13ym7v8CaMw6bZc4rzWQ1umZ5a17yWocrPvMK6mJypld4kDRp22bhw==
X-Gm-Message-State: AOJu0Yxgs7SinnciEINcj9bvyxx+9DCHfSrUpsGG9bGp4pnlgLTr1wck
	bt2ZZu6T/6N0eIu5seAjKJK2OQhukDV9+AWyZrHvtxjyvJYtMnqFEHTRqMS1FP8=
X-Google-Smtp-Source: AGHT+IG8MRFHbtUBSzVWOgxiGuIFdTVlR9rAtbWbkR9X+BbLOkQa3sOeajP3P9i4kf5dBJcOkBplbA==
X-Received: by 2002:a17:902:f683:b0:1f6:7f20:d988 with SMTP id d9443c01a7336-1f86280604cmr74376395ad.42.1718505059587;
        Sat, 15 Jun 2024 19:30:59 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:f6d1:94e2:a616:9280])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e55e99sm56591445ad.4.2024.06.15.19.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 19:30:59 -0700 (PDT)
Date: Sat, 15 Jun 2024 19:30:57 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Chen Wang <unicornxw@gmail.com>
Cc: adrian.hunter@intel.com, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	guoren@kernel.org, inochiama@outlook.com, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh@kernel.org, ulf.hansson@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com, haijiao.liu@sophgo.com,
	xiaoguang.xing@sophgo.com, tingzhu.wang@sophgo.com,
	Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH v3 0/4] mmc: sdhci-of-dwcmshc: enhance framework
Message-ID: <Zm5OYfzMSv6hnCdL@x1>
References: <cover.1718241495.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1718241495.git.unicorn_wang@outlook.com>

On Thu, Jun 13, 2024 at 09:42:03AM +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> When I tried to add a new soc to sdhci-of-dwcmshc, I found that the
> existing driver code could be optimized to facilitate expansion for
> the new soc. You can see another patch [sg2042-dwcmshc], which I am
> working on to add SG2042 to sdhci-of-dwcmshc.
> 
> By the way, although I believe this patch only optimizes the framework
> of the code and does not change the specific logic, simple verification
> is certainly better. Since I don't have rk35xx/th1520 related hardware,
> it would be greatly appreciated if someone could help verify it.
> 
> ---
> 
> Changes in v3:
>   
>   The patch series is based on latest 'next' branch of [mmc-git].
> 
>   Improved the dirvier code as per comments from Adrian Hunter.
>   Define new structure for dwcmshc platform data/ops. In addition, I organized
>   the code and classified the helper functions.
> 
>   Since the file changes were relatively large (though the functional logic did
>   not change much), I split the original patch into four for the convenience of
>   review.
> 
> Changes in v2:
> 
>   Rebased on latest 'next' branch of [mmc-git]. You can simply review or test the
>   patches at the link [2].
> 
> Changes in v1:
> 
>   The patch series is based on v6.9-rc1. You can simply review or test the
>   patches at the link [1].
> 
> Link: https://lore.kernel.org/linux-mmc/cover.1713258948.git.unicorn_wang@outlook.com/ [sg2042-dwcmshc]
> Link: git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git [mmc-git]
> Link: https://lore.kernel.org/linux-mmc/cover.1713257181.git.unicorn_wang@outlook.com/ [1]
> Link: https://lore.kernel.org/linux-mmc/cover.1714270290.git.unicorn_wang@outlook.com/ [2]
> 
> ---
> 
> Chen Wang (4):
>   mmc: sdhci-of-dwcmshc: adjust positions of helper routines
>   mmc: sdhci-of-dwcmshc: unify the naming of soc helper functions
>   mmc: sdhci-of-dwcmshc: extract init function for rk35xx/th1520
>   mmc: sdhci-of-dwcmshc: add callback functions for dwcmshc
> 
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 598 ++++++++++++++++------------
>  1 file changed, 339 insertions(+), 259 deletions(-)
> 
> 
> base-commit: d6cd1206ffaaa890e81f5d1134856d9edd406ec6
> -- 
> 2.25.1
> 

I have tested successfully on top of 6.10-rc3 with the Lichee Pi 4a:

Tested-by: Drew Fustini <dfustini@tenstorrent.com> # TH1520

