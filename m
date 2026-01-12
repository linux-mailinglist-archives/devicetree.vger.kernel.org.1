Return-Path: <devicetree+bounces-253720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B06D10D6F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 373CA3011B14
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8045B32E6A3;
	Mon, 12 Jan 2026 07:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j4v9lxWn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D697832B996
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202470; cv=none; b=DaaVn2kZIWjeI+5gK5RUdUPCjRIBcdsliVzogJek0prHdEhyI53joqiPzXcKm6apqEQH/6CwacNRA9pLI9P47PsUn5+lEFwQpb+EB4xMdtz12cS8LNx9F41SXfzK27LG7ydr/LXgem6fmnly3fkZ5G25uMNkzkF8nffmgVSjhyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202470; c=relaxed/simple;
	bh=HBaom7v74+gHXWd7YrxJuL0o3qS56NROqcnQWMlUGCM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mQLRZI/g8K8j7XcKhD7NozaWFROpuYc/omBlIWJnqsys5n3ejQQOpkuJcBseSseABJEHUZbk54dZ3aqMvl+vLoWu0AzZaHSStqKXT0eBHUD+psH1vBxgONS3By287ZvnJhdKsJkm7h7hmoq+i5JuCcReghzEE4BHBXxVQj5+fLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=j4v9lxWn; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59b6c89d302so4958419e87.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768202467; x=1768807267; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBaom7v74+gHXWd7YrxJuL0o3qS56NROqcnQWMlUGCM=;
        b=j4v9lxWnpmgEg+5PrVdN5C8fEMdFE4Y+VdlfAq2IRBmLoUJmt/glxkJ8xWz4xL2w0L
         ZE0tRBCjoFfiQD0x3SEr1+eDNNeJwg1UPag6aSIS8/aVo8vjrUY/brWb3jEka/bS/zpB
         HRl08gYhC0RZNa4xoSquqJgSfLSYfTVbYyAfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202467; x=1768807267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HBaom7v74+gHXWd7YrxJuL0o3qS56NROqcnQWMlUGCM=;
        b=FctGZme9l1vLI0THXmopGA3mR5UjmXFZ90ZDlvssQiTDQHorzmXk620xO8OwK6SUeS
         0BWDgHNb0rV4vE+0VZKHEJNPZlA84pnRazuOdOgw6kSYyQKT0I5POpshSRIO7nAw43y2
         LEbVyiL0rt40xM+X2Jce/RRJenDGpCWVekT8qctPy2xpoYbP5eB+RNKJPGRutRsWeoL7
         O15QDOgq+ydUQ5lAtyCO9AbzxFbjjYWOhhp5NP+eksUFrVS17h5ll0Kv4U/+bzJvfOTL
         V9wChlVgA0VCllnn0e99zOy7U8nKMObJVpFl0yNZP7Lpc3/dUIRXV6RcUFSHhEy0M5t7
         2I5A==
X-Forwarded-Encrypted: i=1; AJvYcCVIjPbkvWh7CN8vz/rpfkKY89mnNrFFfPlt4wt2zrXA0VqVq8a+G9LC8M9NR7/CnDvsT4eo2W70kTa9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq17qQ1A9aVtsBLA+N3yHP5pUy/hEP2Kz17k0DIYjnyQoLbmk8
	fJ6yCznRo1J/3Nc5gbyWBoA43g0FJ3v2Vx3PYCOjJz1L3hLKze18IgX0m9czKJCDI7LGRnGwXxe
	wQkTGCU8JzEnDlBbBCgOmiZWQSGTM4aU1fRxt7p2+
X-Gm-Gg: AY/fxX5pdk+lBw1FLyOuM/5gbx/UF7MxINKh5+0qw9cgbt/Yo6GaTFBTjMpAo3ZYjfH
	Um3D+l620AS00YxLDO4mK6XVVM0FWvKjULI++jQLVBTBQdxIb59Wo0PhGKaPPmmZDrjmqmsiFWN
	s8facdPao67a9r0od0QoNMN6f+wZl+dgkb03uuyUSHpZVwIQz/Jy2YlYYDTGQomZB4K632+7wRP
	5gkcBB5CTeFzUChBSMAUB96cenMYpVUvnyZSi4YaHt2QT0c76c0eySO5ipchNYWBEcsJHU2wnSg
	Lu1XDOMlyO4w6COnXTEJZTBl
X-Google-Smtp-Source: AGHT+IFHBYZnjE2UIMYyCZr1lmpvutyhqNd7MN48WeOyKPWqQYxDJZuAlIZdNeAX4+9N0k+bGMB+CsiFpY5ooLKHPQo=
X-Received: by 2002:a05:6512:3086:b0:594:2f1a:6ff0 with SMTP id
 2adb3069b0e04-59b6ef1892amr5277756e87.9.1768202467013; Sun, 11 Jan 2026
 23:21:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-4-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:20:56 +0800
X-Gm-Features: AZwV_Qh9NvJukEMC2ZGE9lVW3yo6iRXBbDejhBCVijUHZb39tsOJnyn9JZhLLrA
Message-ID: <CAGXv+5Ea9bWvuQJuYBgvwrn0nRT-utdLLLo5e=hOzFY21kJYxg@mail.gmail.com>
Subject: Re: [PATCH 03/11] arm64: dts: mediatek: mt8183-evb: Fix dtbs_check warnings
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
> Change the Murata NCM03WF104 node name from "thermal-sensor" to
> "thermistor" (as that's what it is, after all), and change all
> of the pinmux main nodes to have a "-pins" suffix to satisfy
> devicetree bindings checks.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

