Return-Path: <devicetree+bounces-48167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6C8707AA
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 17:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFD52B24E30
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31D66086C;
	Mon,  4 Mar 2024 16:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Xz6yhItV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10DF605B7
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 16:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709571089; cv=none; b=PQ4lXsfmHdv24LTeMOkZ9ew8XnZroCUEqVB4aBexmoFp/df8kEV/HLnf0WUx3H9NPiymMgw/WHD9TJj4RwbuS4324twaZOusj8OkGYr5daMfsY2Ea/1ibZUc6iymv6/Zw2HICjO0ysJN3zAnpP50k19cNWWdxPl6ZIjqTe/TArY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709571089; c=relaxed/simple;
	bh=8YEW8/QYd153IU1YcCsQ5FCqtApBQaAp36ELoAoTGug=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rfEkEPnELTtCMMpDmKdpiqhya0X1pNLo3vtuQwTB/vDAp7QWKpWQrzjprrWOYjCfbSsXE5qEw0VGbBzOZxYZT8IqeLGQn4WHfMjG+KyboHrwJDWcUv6RuQSH/TFNdaJPg9hEzpASVzexZBgDV+eT5rBkXVg5kmPgz/2hxm1/y3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Xz6yhItV; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a458eb7db13so30071866b.2
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 08:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709571084; x=1710175884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xOyMFcdZeiizIIdM2h9cviSaGUWkoYW6H6plPEQ7/JE=;
        b=Xz6yhItVu+bd1OAN+7W4IPdXqG1psTBThcOsS9BGq2nKTtjGKtg5WzzH41d74Rrgf4
         KUIk8doq6pwt4t5ZlWE+Qvsvu5NPKYFluovGINCBMnJcJfaZLEV1xWCG03um9qOHt4oO
         lD96ebXl460RM4ACBsNlXtAgY0EOGG+1BpxoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709571084; x=1710175884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xOyMFcdZeiizIIdM2h9cviSaGUWkoYW6H6plPEQ7/JE=;
        b=Vio1alwsBc5rkB5YkWnng0DiQgMOEPtHczzuLSNY3+gRWpS/AB9hg7P/eRFkCDhTi9
         B1jIyjdjpjjg2e3G0mVp6kuz+Na6gCP5TC2YuQKPa3/hWOGmuVc9JGUGU9QiQYzTlciv
         Ex/fJVYA+Ax6mD6LqdhVBYnfBwKdKynnFsEfByMswfGqEChs4kUcQjo7ZB5Dpi6fsSom
         UFZUdoqViPQQYNU/fVYGIxcDlKkeZPKKyUdEoU0g9D8QYlwqrwSB19pX4j6kZf5RsTuh
         +YXuCkrTB1iNOHcTSQZzYEsGV74d9dpQctTR89O6MxnQE+M8eonlo+fOz3eNSwYbtTN0
         jsRw==
X-Forwarded-Encrypted: i=1; AJvYcCVsND/pWKCZuZd3B10xF7MJLSyFvKyiXpZOOHH/91V6kg75laBKzBjxHaxuFtJJCOpvjGCOSV8bWxuKCaZR0Ra31Z96mJV5C4YEGQ==
X-Gm-Message-State: AOJu0YyFOjR8d3VmMVham6jrbNF90jKaUvy/iS0UBz3WrKd9rOZTNWln
	tWlCKBMQF6svdo0gMD4604j4G99HH5f1OsBwPrFfxGTLRmrUjUsI6rsCgM9EiOjkme7EtuWaWHk
	CZBl6
X-Google-Smtp-Source: AGHT+IFRuUvhQP6T2jkYTPye/7k0pDY0FoCqvH5W+BzFfF5V2PnKujWBZcpEAXgSDoAR8BcaOT2AdA==
X-Received: by 2002:a17:906:f750:b0:a3f:2b6f:6d57 with SMTP id jp16-20020a170906f75000b00a3f2b6f6d57mr6617416ejb.29.1709571084005;
        Mon, 04 Mar 2024 08:51:24 -0800 (PST)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id hj12-20020a170906874c00b00a456a97faaesm903350ejb.86.2024.03.04.08.51.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 08:51:23 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-412d84ffbfaso98035e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 08:51:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXi0rclBWQx6DXB1Ybu99JxETbRKojBD4UO4sCDUUbf85QO7Cq/Mt+7FLbif0yAUiM1xNSFdFaaoyM5IkWRz077yUduFXUnIhAuzw==
X-Received: by 2002:a7b:c417:0:b0:412:dd21:292 with SMTP id
 k23-20020a7bc417000000b00412dd210292mr263164wmi.0.1709571082557; Mon, 04 Mar
 2024 08:51:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240301061128.3145982-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240301061128.3145982-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 4 Mar 2024 08:51:06 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UP9NxfmT8rqLd-HUq8QwJXa5xO7UbrgYHLw4vOKZO7hA@mail.gmail.com>
Message-ID: <CAD=FV=UP9NxfmT8rqLd-HUq8QwJXa5xO7UbrgYHLw4vOKZO7hA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@chromium.org, swboyd@chromium.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 29, 2024 at 10:11=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The current measured frame rate is 59.95Hz, which does not meet the
> requirements of touch-stylus and stylus cannot work normally. After
> adjustment, the actual measurement is 60.001Hz. Now this panel looks
> like it's only used by me on the MTK platform, so let's change this
> set of parameters.
>
> Fixes: cea7008190ad ("drm/panel: Fine tune Himax83102-j02 panel HFP and H=
BP")

Your "Fixes:" tag is not quite right. It needs to have the _exact_
subject of the old commit message, AKA:

Fixes: cea7008190ad ("drm/panel: boe-tv101wum-nl6: Fine tune
Himax83102-j02 panel HFP and HBP")

> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

A little odd that the patch you're fixing claimed that it caused the
measured rate to be 60.01Hz and here you're saying that it ended up
being 59.95Hz. I guess there was a measurement error when the previous
patch was posted?

In any case, the argument still holds that this is a panel that still
appears to be only used by your board, so small tweaks to the numbers
here seem OK.

Landed to "drm-misc-fixes" after:
* Adding "(again)" to the end of the subject to make it distinct from
the previous patch description
* Fixing your Fixes tag

9dfc46c87cdc drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
panel HFP and HBP (again)


-Doug

