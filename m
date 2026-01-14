Return-Path: <devicetree+bounces-255203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D95D21214
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A7E330123DD
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 20:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FCB352C24;
	Wed, 14 Jan 2026 20:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AyMh24IK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CED333AD86
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768421151; cv=none; b=P5SMTxN+5DbY/Du/NzduDC6kDgEVXHPwLqoYPNGOyKMusUf10aLDlM4NyM9dUvkSpgLzyEw8ZCOanThDKo4uLgSHV/pJNhOtRxS8PpI64lOTDXy9ZqPwaDRHCgg08nETAqylCEiKwaz0SK/XuHdOxBeHyQfmFKdI7YjjDNnU9Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768421151; c=relaxed/simple;
	bh=jpI70LQBgeMY8PyQlFNom+Ptt+/a/oIMAHQDDzPL9P8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P49vHM/hbNRr9/7J9yTmRR7Wq07ZWda7Ztm4ZtZovDphYfL5UCeNAjef/J856uOiwlbZXReEhg6kq+ytXtdniW7/febjeKrjiJAp+35BFYYQgxrq9oN8UkTfhfYYhCSU0r5XFKbd3YghjbchSuprBH+y89g13j8F4VxWQNF8Qek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AyMh24IK; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7c6da42fbd4so120817a34.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768421149; x=1769025949; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpI70LQBgeMY8PyQlFNom+Ptt+/a/oIMAHQDDzPL9P8=;
        b=AyMh24IKD/GoUZOrVoEPR4tOkT7S/Ghan4swYmu9+5bE2vjZdGo8sRDG5Bjd+bqCHB
         T5Vbcmrk7r1aEzB+XFpgGFCp7uU/WqkrA2b2onRwCD1dLnbSjfyzvHx/snredCDmKUvZ
         5c7uFJWv8Knv3MU9QjRRLRsdCc9q+Esb28DAhZlKQ3SO/w1qhe1V+iPfz560NVKZQwGP
         KNXinYzfjvweZXNkdoJHfS6Eg/mdn424V48BBtvjrDeZAdvghPNVCrtplRETQW5jftbW
         K4qj+4hp6wfKTnuAZVLWhkaYnho2f7rjtonED0hfrGo//KiCynqh//pjwk5kJc409t+k
         1eng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768421149; x=1769025949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jpI70LQBgeMY8PyQlFNom+Ptt+/a/oIMAHQDDzPL9P8=;
        b=MU5d14QXXr4KAFjQOLPvLvmvLhvsvW42F3qjLGJ1ag+EqulF0nn1FwjAkssHCzhI23
         3cePsCA+5JTO6TNcalh/9QHwZzDcrZ5pJSD3Xhkmo5edXqP168Um6023/G5dGbUazisS
         r4U+lVDu2fHlNHvsVVvnPLHHfZk2FhBlwgmhS4IUoGL5MEFs8DDaEG2SwVLVLuXdTll/
         Hl5e3KPaBpCx559R1EzRXOX1/D1JHg70YU2vEZ/u8717uAiRjv2RYHSmbNLXssZyHX96
         /25KMNEIDf3U++XNQa/7KxtS/47LPtA6OSQfXO7y6+1pmRBIHBTN7kvN/z/CRRHbyaTD
         58Gw==
X-Forwarded-Encrypted: i=1; AJvYcCW4Oo5nz7TvrhqFRobGeh+yyWgcVr2Nt6tzZaOZn1heyoqU+bFRlSCn9GeOHtDczjUYcoz/rWLdqjEX@vger.kernel.org
X-Gm-Message-State: AOJu0YzbwH11B8kTwEgLJIPpc8gYXWROrBRLdxbHp+6L/v+OO+hxZomA
	bQGnqk4KgMFF1E+CBTxM6VERmXjSCUthow/4CGsMRD3rGNBQjSeGtiavy5qCDsciVIM4bIrg4lL
	02I1aoYh6RqZ4tgpwWjQYU1B3UBv6PXY=
X-Gm-Gg: AY/fxX57BN+KqIbNTYWubNd6d8hrHsM2Qx0AiHfMXMNXgW/PIe30DW9+/k7vzqzXZyB
	SQOnb3fVC0GGKB92lb3uYIv4clQZyRe3ZB5H2RvUXTQ6wj186j9MjcCEBff7kNjnkdlqnFgElnL
	z4LC01rJS3EA7B10JyKrpMRID4yitC+eeeLzUXt//9w/enV/8iED1FmV8j8gaQ/17RBDg/mxfWI
	ekI6hmlo67fEbW0Ca+kegk37RN1ri6JZEBqXXRULGgFT6+YJgQPZEq4frIgMkmWhPVyVLkA9T7K
	rZbZmOHRwJ2YdjORD9LFVZ+0OXo=
X-Received: by 2002:a05:6808:14cf:b0:455:ee1f:e1c3 with SMTP id
 5614622812f47-45c712d9f7amr2252612b6e.13.1768421149141; Wed, 14 Jan 2026
 12:05:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Wed, 14 Jan 2026 21:05:37 +0100
X-Gm-Features: AZwV_QiNaJhK34f6ekkGFZ78RLn4lnhtsyV7ZC9RQaQvGZSgSd-F3HF52fbRTD0
Message-ID: <CAGJh8eDTeLgmnzVy0Wr-NjQ=7Vw5zG92FDO2pcj9UWY3m-8yhg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Fix sd card support for RK3576
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, 
	John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Shawn,

On Wed, Jan 14, 2026 at 2:47=E2=80=AFAM Shawn Lin <shawn.lin@rock-chips.com=
> wrote:
>
> This series fixes this mess but only adds slot-gpio support for RK3576-EV=
B1.
> Other boards are also missing slot-gpio support, but folks are all cced f=
or
> checking the board they are using.
>
> Please review and test
>
>
> Changes in v3:
> - remove of_node_put() (Heiko)
> - collect tags
>
> Changes in v2:
> - use for_each_matching_node_and_match(Heiko)
> - add fixes tag

I tested this v3 series on the FriendlyElec NanoPi R76S.
With the addition of 'cd-gpios =3D <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;'
in the board DTS, the =C2=B5SD hot-plug now works correctly.

However, the separate problem that I reported in your v2 version still exis=
ts.

Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>

