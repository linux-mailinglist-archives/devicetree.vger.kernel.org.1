Return-Path: <devicetree+bounces-66760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E588C47DD
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 21:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DC4A28616C
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 19:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B950778283;
	Mon, 13 May 2024 19:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xis7omeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3396677107
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 19:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715629829; cv=none; b=uWG/ZbgektVKQ01yWpO+XSHozJXa97Zi/wbsBO2HWBaUCD+IFpwgQHxkP4Oecwu6ubVEbDx2nPoBNnIBiQtBIaj3F91ZaXAQ20P+WG4FFUinzeuA9LQ3u40ibLLOEH82AOw5qTnucgyLLUbSIY2tZ+q4kJnIDGKAa6wG7TLjZlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715629829; c=relaxed/simple;
	bh=kJ+U9abf2mW0eeEE14BP2LpooQOPOgLcaQz67J4MGiw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bUvB0veDC2wW690Ql7jW8tDP9gtIYiN2SAvcrYLXjfkR85c6SVptvQHNFLAsqst7M4JVJphOzG0xu0CF9aTJGvNuuNaBwErGMUnUAo9rlps2laUMVkpXsupetOCqg50uE6JZH0YXbKpDjjS0Rcq7wccIbveIN59uNGDvYEHVxB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xis7omeq; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-de462979e00so5112566276.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 12:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715629827; x=1716234627; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w/qKZTzYNiFMXq0/lcLabXSWeWsLTd94wbNDqyfK3Dc=;
        b=xis7omeqigxkGRwmMY6HO7wSyn/fE87MkTHN8Zu7c4eE+DkeYiOfpwvinrBUCa5Qpp
         5w5lTaZNIxGyY64SayvFTeykqmgKDmhh2vyCUw4zji75pFbbCh5ScdkW9Xkzj45XId0c
         q7qbmWo879L96jakhHmARIRrq6h/DiaoNeukitUG00cuxibwzehuS35uV0qfcgTUyl82
         sV3Mfu04XUbMljz7BaNtyXWEQmD8na0SkUhqlemzE7hP54u/PtAjibdLCFtus4ul2fE5
         Ccd9UPK6wopZeD+PuDSqqIH7YJPxlgFEv53DUdCBjpdbRPfCc02/fCHo1XYIedMejfeN
         kT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715629827; x=1716234627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w/qKZTzYNiFMXq0/lcLabXSWeWsLTd94wbNDqyfK3Dc=;
        b=mPuug7DWMC8WcF9c+fLj8w/heyeppkYuiD4MoFrgJBSuJZ3cUSL14RyAMTiHm4Q+/F
         oq8FAtDBslV+NKQhptgJ54TobNQ8ByXBN3w9PMn96xDkDO51fBZ6bn1+uJu9xkz4M7af
         SlVCmXftt9zZcJS1tZV9+CSRc2fONBdC/TjUPy2CZkSosuETE1yamJUduP0ZTo5ngf0J
         uXh68dhefEt4EQw8IE/XNNgT0da9lRe5Q98Kayu1pKTppm+hs+rO/SKcDXVZpB6UXjAp
         9u3GhIv9tdGFVAuXI2K0TNdDMeg+gO5ga1EHyFbxMRxJMpflP3AHJ1J4CbTvdGY5c1lD
         fqAg==
X-Forwarded-Encrypted: i=1; AJvYcCWHYHjjzuMHl/z1yfco394I5UV7PZnGHhfspZ8webTcB0vHTyhrfu6MKN/PnwpEqUgeYnSgwsA7Jm0NkYNtGhaXPXHr5q6d3BS/qw==
X-Gm-Message-State: AOJu0YxlIWYWAAdeXCMIBK8NgfaDCsZd+J2hJjN3HKvYAboNU/u1pb1f
	HELYIXFv6KFDzDz55fNU6AJ1UUPx6DrNtn/ohvFSggb4bPdiUh+GWPGaARO9rPMhxNicdk33uDe
	9qXCPi1st0+yG00tBCfY/EkcIQQ/PNx0CONI0jA==
X-Google-Smtp-Source: AGHT+IFnaKh2w4CELPExkFDCenu+egk7lmFps6WDdYu5ZgbYKuFj29ldNzVqJvgWYvBt/PEDOb2Sf4f/bh6t4gh8doM=
X-Received: by 2002:a25:870e:0:b0:de6:1056:c9e7 with SMTP id
 3f1490d57ef6-dee4f2f6b6amr9939798276.8.1715629827278; Mon, 13 May 2024
 12:50:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com> <20240511021326.288728-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240511021326.288728-3-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 21:50:15 +0200
Message-ID: <CACRpkdaAUU0NM63ZYRNVy0gBEKG_5Ey1NVJuNOsohdEOuE0i7g@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	conor+dt@kernel.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 11, 2024 at 4:13=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> The Starry HX83102 based mipi panel should never have been part of the bo=
e
> tv101wum-n16 driver. Discussion with Doug and Linus in V1 [1], we need a
> separate driver to enable the hx83102 controller.
>
> In hx83102 driver, add DSI commands as macros. So it can add some panels
> with same control model in the future.
>
> In the old boe-tv101wum-nl6 driver inital cmds was invoked at the end of
> prepare() function , and call 0x11 and 0x29 at end of inital. For
> himax-hx83102 driver, we move 0x11 and 0x29 cmds invoked at prepare()
> function.
>
> Note:0x11 is mipi_dsi_dcs_exit_sleep_mode
>      0x29 is mipi_dsi_dcs_set_display_on
>
> [1]: https://lore.kernel.org/all/CACRpkdbzYZAS0=3DzBQJUC4CB2wj4s1h6n6aSAZ=
QvdMV95r3zRUw@mail.gmail.com
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>

With Doug's comments addressed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

