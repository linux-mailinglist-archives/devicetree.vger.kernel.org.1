Return-Path: <devicetree+bounces-253727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD713D10DEF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3777930869AB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EAD33064E;
	Mon, 12 Jan 2026 07:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LKKwR3TZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54747314B72
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202919; cv=none; b=LfkaUo9z77R+gSK0PPGkVtylo8UjEHTyijGN85oygZavmCr3/YBrdm/9qfbiKWzkYH2DC/WSQjM8zrGRMRVz8vQIJMUBiPwP2YPTC8lsINllnMwO7b2A+0HBqgpI6hwwyz6IjtWzSmwcBMiyHyGkrDOuDzpZY3LbsyV9bbGwXZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202919; c=relaxed/simple;
	bh=/al0P732L/og3jdqGor9t3lBoCQ/uX7BhVeOm6+zIlw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ppQLWDC3t+iLTOfuIkBMXaHn6tJV8jwuqTtNMTCL01KmwDvbSBpZy3/5OOpn1rstnZU3zgkH3FiSO1QbiYuggORo/UWjsE9GkJZHjxPincIyFG9Sxy9meTHN57D0XqNmU0tQs5eF6ZMoCHRBH/lNJSYqa7tT7YWeJZ4LRDuy/Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LKKwR3TZ; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59b6d5bd575so5427579e87.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768202914; x=1768807714; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/al0P732L/og3jdqGor9t3lBoCQ/uX7BhVeOm6+zIlw=;
        b=LKKwR3TZ2rltwm58gfAW8j/D2Dr16LLECdwVNq3xyN/2aYIOPr/zW7ylhPWBnuKOUM
         JOF9KG+3bQnYm6lfgli/YEwLTcA7WMfZ5KFsNOvgr7Vnp2e/2umaCR2lPDS90ofVdzuq
         TBp1+aj9t6szuaHC4fSD2XyYy8Fy1gE2BXeFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202914; x=1768807714;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/al0P732L/og3jdqGor9t3lBoCQ/uX7BhVeOm6+zIlw=;
        b=W1V5ZUd9cD7ZWBvyLnEqBj3qHMZNboHmSLCLAQ31QlIhOTaj4+hBl+DtsneDggEEOP
         7P8oGAR3bxfeLstNay20YAvHZsVhEasn73dlx/nwdoxge3+qLwdZW+1iOB1p5/Zv6v5S
         MIr1ZYFHK7OlbHzVLMMD8KzmSlR3aSM7RsMwG9DNbaCIrCcewrOAW06lsUmvmuTpq3l4
         UifKxtJbuqWhKf5kD7BbooxoVBJbf2lyQI1t7I9KwoNwEZ1RUIjyIibSHXNwtWWel61L
         6DhdIm9+Yau5jwfGV+QE6KPctaAymjK5D0cEuKFyGsDYZKnU66DnXvULvkZeu2gREg3r
         TV9w==
X-Forwarded-Encrypted: i=1; AJvYcCWtr7NDekVWs3rHiQrzvU8LGj8DJ1+1UcarjMUs7wfhcgHIoRJe/klk6BDp8J/IRUir158nSvujHPZi@vger.kernel.org
X-Gm-Message-State: AOJu0YzXzIR/3b5FpoePb1cmcId2dhLinZjHKCdFVZuBtP1KV3CfPCuD
	atQ+2o3JZJV31CUBAA4wIywWJvEbiSGOsXRIkYo/ts3wJIZjyFFDGLglBN/rwNUrAG6mtfubUCo
	c1nljll4/j3KwzG4xQ/sm9Xfa03Xhne+fGCHQVj0OGcmFN/QhcSKx9Q==
X-Gm-Gg: AY/fxX50rJT2h31TjQEpRS0fpQUVt3c6ug3R8yVwJ1ctDZVpCdk7zSxjobP5D73rPNH
	KFYKHwMyHWoW7FHMBTjwsmp9F+eIHTAz+vP3R77xzLyxAlLNRsXdpsAaTyHCGqErp7zAjbdlgHD
	Vf678iUQQHLqnMimgoYkfyhotkBMzqod/1xY20wUNbkh2hYsJhMhfKxcCzgyZ26SNHrT8e5V6pW
	FbmQKKl7idXo8wP78ayuDnpw6h0VkZ/JiuOG/i5PQ0rx2qiNus6a9pkqpehEPUgTvnGYOAdUa5E
	tCj/8p98TwHbLuMK8vdL+tkT
X-Google-Smtp-Source: AGHT+IGMwy6DQKFlVywYqY1p1e6uprSqkxqICel2tbPSMKWFuPJXPyRbKkq2UeKMJs7PxPYan4+ENRZ4rgeXEWRIvrQ=
X-Received: by 2002:a05:6512:3b85:b0:59b:7b59:a4a3 with SMTP id
 2adb3069b0e04-59b7b59a4fdmr3780571e87.17.1768202914583; Sun, 11 Jan 2026
 23:28:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-7-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-7-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:28:23 +0800
X-Gm-Features: AZwV_QiB5ptUV19bOdXdm9RPLXnLOlfR_HO5ST_wuq0ulRnSOTzymqRKhyICJhE
Message-ID: <CAGXv+5HtoJbt3QWK2+J5wP38EfnQZGB_KUtc5MBDN5UL6xpJZg@mail.gmail.com>
Subject: Re: [PATCH 06/11] arm64: dts: mediatek: mt8183-pumpkin: Fix pinmux
 node names
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	hsinyi@chromium.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Change all of the pinmux main nodes to have a "-pins" suffix to
> satisfy devicetree bindings checks.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

