Return-Path: <devicetree+bounces-253739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6AFD10F4C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ED873005BBB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC1D319859;
	Mon, 12 Jan 2026 07:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Wk08hKiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3591318B8E
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768204161; cv=none; b=roemVOfk6Ewij07dfwOoCu3dZQNsCprHdPtdKmPmQxjlDhn+ol2Kek4V+AqGOinnM1k42+DzCSU3MZruUT4jbp0hMlvE3zueLU4nw8Kh9nOqFhdbIjjgtA5sQX0PhHDfuyPZg+zUoxj3TmQuD6xdD4sUpvysx9GKz3sy9AjBizo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768204161; c=relaxed/simple;
	bh=q843BbUtJQ5rRObM0g7RDMsq3CNE2QYZBbQOnOckkE8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mDtZfeBk3U7yyDqjlReJoCgjhoFb7zFY7ozcy6E60+ErMS3kZewAdg2883QZOSth/GyFitgJAZKL34/cGIOi24HunODM5sQVbfR+/kUp2Y3bwBb2gZGoPLnEyCd6qoPOBpD3PX9754ForZ4QTcql8/ehqTdr3ggWukCRBzuxwCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Wk08hKiv; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59b8364e4ccso3032245e87.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768204158; x=1768808958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gYDs2WdHiWHfUSPlGjz43iM5GtvJMWzLlC06mLGN8Q8=;
        b=Wk08hKivBaQhsMwLCzkThTUCH0NxkwZ0iAo46meN7hzlz8QtGBSs4xRQtJplpUH0V3
         sxOOUt1cONv+/thlNn3KWaTO2mO4s30v6z/sMDEptNxEoBbztxkSmC1wlReWUop0CxJk
         3isomJUHtqTYO/bfRMMSEjPlmztuDW/8PVNmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768204158; x=1768808958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gYDs2WdHiWHfUSPlGjz43iM5GtvJMWzLlC06mLGN8Q8=;
        b=VcpAOlfqzWv+NixtRjJE3VVxzyQqdHi5LVS+t6UN8zj7JojTPx2OqmCGyeI3V8nkyJ
         4cDRTk+sGsM1eWFO/F48V8gUeIcvYSxsiMgyRlL1cszC7at2IZdbn4JRa1XWNf9YeU/x
         VjOtHtRY2OsXpQJ5BmbAcsU6Gmvc4fr27duK8v+Bkd4j2YRd/wM7MtzcCMfXXvWb2K+z
         OzJ8rEVPx7VuXlGunT/S009C4zwLCuE+bi0I7QyqfKNKCAdM5u/F8aewZc8Es+FeBXrP
         B65gDDTaeSI8m+X0XoC9gErNrQujse6uXpKG8L5dyxUxyGUNmdUPuQDgFhtv1UTQWknk
         akRg==
X-Forwarded-Encrypted: i=1; AJvYcCUEYnduSeJX0JCuDNmjLbxdFquXfZMLfAaTW6j4JPzFNlPwzm0NKcdt7cXLoSyy4Yvw5Oo0bX/h7Zcx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdbl8fproms5wW4KVX/87hOK6l/MHbKR9gWFdMQmgvpA4O2msi
	mQ1WE1yaXrcflC6juFb3hyRhwCufTml/UmfgAk0rVIvJLCHonItgqo+lHoc0unZxKkEU0v+lluy
	LQmcoRjq9gqUBmZdkifFNJmTC4oldLtgi/Bayn5z6pKBecVMxR0PBrg==
X-Gm-Gg: AY/fxX7fxW3FFSPaUZxaY/Ed9/UuNkKkew9qGyOwdDbsuBvwxEzm1pieNibfJTl0ly+
	VswxTVbwdwbjiRkZDjGXNOlEsq22wFzlumSP/ppFaSd9WZiFqkbPXO+iJu2C09I/Vocc1fUe7Nt
	I54ne6UnU7MRQn/257Ox8X2GEQLn9AsgrZ6O2pL7eFxzoZiKlbcMum1IyJNqq3GF7wz78C5cLRl
	p8uaJg0/bRGKhROXabeji1EJeMV0viz+3O4lZfiQEnGBbNWuHBS/l5ZakgKEWWDDztbOzrAqr5g
	auQIJc5cPPooyM4JyJ1UMUOg
X-Google-Smtp-Source: AGHT+IEPf+ctffeJf140aoBJ00YAyEVGjUL3Nj2MAQoRL4lkX+em1WFVdY04W2EZPfOEZSq9xL+BIPkSo86C36EFZlU=
X-Received: by 2002:a05:6512:3da9:b0:59a:1a4e:c098 with SMTP id
 2adb3069b0e04-59b6ed134b7mr5017113e87.8.1768204158184; Sun, 11 Jan 2026
 23:49:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:49:06 +0800
X-Gm-Features: AZwV_QgjsDK-32UNI1Kj8KhdJKQno21ayqzxpgGCeVRe3qKhTwXnm4PxxIOLkUA
Message-ID: <CAGXv+5EvWVhRXoxLbsV5G7DEWLnVGRMCC1Qtd02fD8jh35VRqA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: mmsys: Allow single
 vdo/mmsys endpoint
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 10:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The hardware supports using just a single output while leaving all
> of the others unconfigured (disabled), but the binding did not
> really allow specifying a single endpoint@0, because in this case
> one must either:
>  - Call the subnode `endpoint` and not declare any address and/or
>    size cells; or
>  - Call the subnode `endpoint@0` and have at least one more other
>    endpoint(@1 or @2), and declare address/size cells.
>
> Allow specifying a single `endpoint` subnode, without the `@0`
> implicit suffix to suppress warnings happening on this kind of
> valid usecase.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Looks correct to me.

