Return-Path: <devicetree+bounces-133909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3859FC439
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 09:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4122218839EE
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 08:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F319786341;
	Wed, 25 Dec 2024 08:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jRGv1uqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF5585628
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 08:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735115555; cv=none; b=rcemYGh8SGxSdrirLuamoCmkkz4IQdH61lxsADPUjwl9baoOnDrzPtQnPRqtqUFdJTKVaCPSZBfnhLiGq1DE5koNVt+gLoHiOihzUfFbiWv7HBWhXksNgNnkuMP+Kf+nGO4P7EIWWyFl0T94hzeggDFxLh4IuqVSZGsQ8RfU0cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735115555; c=relaxed/simple;
	bh=4GCZ4LdwqWc1KeMIB1Cx+yxeYgXOF9BY4KlE6GCbw5I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IOaNJULzw8o0AkgXAw0KqDS1S7xr/8h29nnvyhnwsDu1ztezf5KOshFl0nnk1kx41PeXbGFXlXxTy+l5ngEEille2Tmv3CuqOhDtIraCaICEj0ThrC6jWDvtFWeQ9iaW8GOXXcvNaAYeCHoPZh2VCzz62/4MLGK1/WMNXVTwuos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jRGv1uqo; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-467b74a1754so71674351cf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 00:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735115553; x=1735720353; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1nEzKzP9fnaPc+6XguAwC3CAJwIrK5wz/gyjqcVyfA=;
        b=jRGv1uqovUn5p6xqANxTYV+b5v/ww97J+3nEaqiixQhlm0tV1/rMJeIpFHKOEDQIzk
         TODeHfSVPJmiKM2xkgNkM6qstBGmtQ+PI57VXM2DyWCJPeuxw1271LsQD6SmD8kPeax5
         5BMU2uKkZXN9utWjTRlT5Fd/+OburT0QUvr5Uk3GEPPwP+1qXlpZoaRK0yscb1qSN74R
         X0EIm/PQP3QDLBIZyC1UIcaLt2CGlcDss+qvALmqXvbZ4SFzjh6Xhq7BlYj3coTWirR/
         DV6MfYPbFm7vF+pqMsPMVH/6JVUwwaGvsKwlkKWtesGqPcgrh7ka+Ygl94hv4ckIjctT
         CmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735115553; x=1735720353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m1nEzKzP9fnaPc+6XguAwC3CAJwIrK5wz/gyjqcVyfA=;
        b=Wnz+gmnSgtNaa2P5OJFvfQ/RVEf+VVLKAD8o/qJgam1WRDe0fImwkuCft+wajAajdJ
         eoljWacw/gfJoId137gLhu5B/DsdPBolRulTa5UWhA3ERK0EI5NjgzDzfRaf9RzuoCJx
         6Njn6XKEHDpa3SjzWFoJ0D7vpm2qxasrnd4PI004K0SHdSLoGRy/qIpNIkgz7xda0hdt
         3UNtw0GgpBYHcWw6dpO3ROt2PMCF0BViasp0nwaBNuOgHnCXxEz6qLPGeA9scBQmZId7
         vhScZ5/0qnL1wkx04NldGfUupKXMscfXOoeeKSNlm99oXfc+kYv2GaWC6et3S5fUtPxo
         crQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQipJDetMgZM4l4vLa2kMf4qnWe/AqrDU1QWev/5Ub+eMrOXRAQsLWqLIzjdbwVNxasdzucgIuoQLG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwrpl2UJG6Rx8s9NYBu4iYLtMHnHr4yLstHPtQzeHrQXrVS0o0
	8fGMRA+PXiKkDlWf+Od7bWF0OtXePYUtZSDwskh5Uf+CfIu295l9qKzWoEzkUM8znhH/GTIi8NC
	/6kAE2aZwfazKTU3PqIbwu3dYfNc=
X-Gm-Gg: ASbGncuWR5qq3EEdZinS+wxjGuNuGlODtucWOz6RGNqKB6mVmwF+FjlQXWuDnmtAN4q
	Dc1PJI1r9ttfZD/kngONt03otJyoCbktML5WOXRgd9IxuQArzgq3o4S23nygIh6HKAgqycDo=
X-Google-Smtp-Source: AGHT+IEybtIn3hEEhjJmY/GfM4Hfr2cLLyij9gXsk/wv+yCVO3Ezi2W+Ire0e3/x7nHCQJu55UtQ6Qk7xp5EYcK5vNU=
X-Received: by 2002:a05:622a:1a28:b0:46a:3709:6780 with SMTP id
 d75a77b69052e-46a4a8dcbe6mr335774091cf.19.1735115553207; Wed, 25 Dec 2024
 00:32:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224210912.2121-1-naoki@radxa.com>
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 25 Dec 2024 12:32:30 +0400
Message-ID: <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, 
	liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com, 
	sebastian.reichel@collabora.com, tim@feathertop.org, 
	kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org, 
	dsimic@manjaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Naoki,

On Wed, Dec 25, 2024 at 12:22=E2=80=AFPM FUKAUMI Naoki <naoki@radxa.com> wr=
ote:
>
> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
>
> This patch series introduces a shared .dtsi that can be used on the
> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
> ROCK 5T.
>
> This patch series includes "arm64: dts: rockchip: Add USB-C support to
> ROCK 5B" by Sebastian Reichel[1].
>
> [1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163=
615.120594-1-sebastian.reichel@collabora.com/
>
> FUKAUMI Naoki (3):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi

This one doesn't look equivalent to the existing ROCK 5B device tree
after your changes (I've noticed in particular that fan cooling levels
are different - but that's just the part I remember well since I
modified it earlier, there might be more differences).

Would you mind rearranging the patches so that the split of ROCK 5B
dts into a common .dtsi and per-board .dts additions could be made
one-to-one equivalent without functional changes, and then add ROCK
5B+ and any other required changes on top of that?

See what Dragan did where he prepared parent .dtsi for per-variant OPPs [1]

[1] https://lore.kernel.org/linux-rockchip/9ffedc0e2ca7f167d9d795b2a8f43cb9=
f56a653b.1717923308.git.dsimic@manjaro.org/

Best,
Alexey

