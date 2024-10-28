Return-Path: <devicetree+bounces-116492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B859B30D9
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5CBBCB23F98
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4A61D9A52;
	Mon, 28 Oct 2024 12:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J5IkQnBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1C638DD8
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730119644; cv=none; b=QEuQycNAsMq8KJgFMYksS8MZxhZP4TB3yLFliIhORKBY4b/CIZGtAKlAyVp3oVOOj4RKDvZ3AHbYlzcUavdGFyx45zCNQSznh360sU80eRDCPFJ7efF3k/zZHP4I1+p8uVbNFKJ1eXylOFj8b3vU0N+hpk2qCt+v1d+K8ttnLQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730119644; c=relaxed/simple;
	bh=DeYQ+dNxtG99x0aQLlVj5mjHlCA8mn9SpdtFx66tefw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DUuAiGJATF/lUDMck3TtMKYPWT41AJjA/C7V8xArFFuRAxMn+ZDYcmmkGpgmixjKFdYgfcuv4EtPiNqq2oewsXo/XwhDq32OT5qdTQxxT08dp9LaXVGwHMazNZEHOoooG+h/13xdN3RoHraKF1UtxWw9EwDgK32hOi6kjC0lnjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J5IkQnBJ; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso38997821fa.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730119640; x=1730724440; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DeYQ+dNxtG99x0aQLlVj5mjHlCA8mn9SpdtFx66tefw=;
        b=J5IkQnBJDPZvBpq3sDebMM2lVFr3xaNVqqDGAwdh+8gCWO7KBb9BLiA7iMiUbjYj6U
         HC7+yoe6OcTDwDrv0kTiUlg+mKshF7n96lksvF6AkFpgyL6OhjvOTuEVf+/t2BrmqiTQ
         +Utxvs8xa4rR4Iymg/+hfw5EcX7mr8Bat/p8PBaYaZGibJ+kXP7S2tF3ZlGj+I1EqXzw
         mxPi0ALq7dJuw/t+gvJ1M8WusGgNFbXnAElE9XALtNDJ7st1qOiaj9bKxOj45tVgF6f2
         tHSSFiN3KAhI/HYNngucM8l9782e1299uTmFfA+yeXwY8iqATz/6Z8EMtONergQwvcCQ
         fhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730119640; x=1730724440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DeYQ+dNxtG99x0aQLlVj5mjHlCA8mn9SpdtFx66tefw=;
        b=Lcdaz7IuG5uzbcjpClo4lcITnU6ETBwJJ6uUtNdLUfE/YwSDBhKZMADUQCL4KgBZ6r
         pcIyt6atNUINMqPIqKYbi/IrrcWa5TjziQIrYWYZ+rrm9CzTrGrIQ87zEhyzusIEjy7q
         R+May0SRdL9nNSNFPR6Ualgz6ICMcFKC/hzto3rMVrT0JAJtr8KHQ20wWTXh3gpXza4j
         fmKW76fLWyaDRlVr3pTK2e1MpCjGKxw9qztKntHNlD04iLI52qPeAJhOLhf9dG3mHaD8
         OPkcrorCt2lBej3CTe2ehbf5mb+2kbHMG74WcvJ9wzl2CybxM+4RYKO2T+1K0TNN1v0Y
         SIcw==
X-Forwarded-Encrypted: i=1; AJvYcCW3rgMtHt3VufFk4El9UzL9ZBbVbSRP+daHJyGZz8J0TKJj6JCE1pbPai83D/wPEhPxPbAYuSpwqWGa@vger.kernel.org
X-Gm-Message-State: AOJu0Yw26I7x8VE8W3ZhBIzG3MWBH9pGEch/qSleBTl0JsrS2GgRwI3e
	iTrJBpSip3QS8lF3uaOm7l3QFVzsJieyoqjHdvgwvAkMzauJj0fUzFQwdtt0SxWHBhqcSiFytKL
	UgvTqYaBOLChhdJdpqz/EcDFx+vLWm4TM7Mh4MQ==
X-Google-Smtp-Source: AGHT+IHOLCFQLPNhZz+uFzdwwXch/oc0CkWdrvmLFctGLdK8llDYUMinPepdGvS7x3K/TdVsln9gijrEdwd/6GxRpNo=
X-Received: by 2002:a2e:1319:0:b0:2fb:60a0:f4e1 with SMTP id
 38308e7fff4ca-2fcbdfe8db2mr27240591fa.24.1730119640455; Mon, 28 Oct 2024
 05:47:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1730070570.git.jahau@rocketmail.com> <30c154954a4e0f75d90f6ef6f393a5ba8b3ffea9.1730070570.git.jahau@rocketmail.com>
In-Reply-To: <30c154954a4e0f75d90f6ef6f393a5ba8b3ffea9.1730070570.git.jahau@rocketmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 28 Oct 2024 13:47:09 +0100
Message-ID: <CACRpkdZfJqhUFrpv7BmMiuQYJJ8dveJyaKVh9dpVYbz-QDnKGg@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] drm/panel: samsung-s6e88a0-ams427ap24: Add
 brightness control
To: Jakob Hauser <jahau@rocketmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 12:42=E2=80=AFAM Jakob Hauser <jahau@rocketmail.com=
> wrote:

> The tables for brightness to candela, aid and elvss were taken from downs=
tream
> kernel file "dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi" [1][2][3].
>
> The gamma table gets generated in "ss_dsi_smart_dimming_S6E88A0_AMS427AP2=
4.c" [4]
> with hard-coded starting values. The function smart_dimming_init() [5] go=
es
> through the v{*}_adjustments, generate_gray_scale and gamma_init procedur=
e.
> Instead of calculating it manually, it's easier to compile a custom downs=
tream
> kernel with SMART_DIMMING_DEBUG enabled and read out dmesg early at boot.
>
> Selection of the values for aid and elvss are again according to downstre=
am
> file "dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi" [6][7].
>
> The set of write commands is guided by downstream file "ss_dsi_panel_comm=
on.c" [8]
> followed by "ss_dsi_panel_S6E88A0_AMS427AP24.c" [9].
>
> The dsi mode flag MIPI_DSI_MODE_VIDEO_NO_HFP prevents screen flickering w=
hile
> changing the brightness.
>
> [1] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP=
24_qhd_octa_video.dtsi#L341-L397
> [2] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP=
24_qhd_octa_video.dtsi#L214-L254
> [3] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP=
24_qhd_octa_video.dtsi#L301-L320
> [4] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/ss_dsi_smart_dimming_S6E88=
A0_AMS427AP24.c
> [5] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/ss_dsi_smart_dimming_S6E88=
A0_AMS427AP24.c#L1816-L1900
> [6] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP=
24_qhd_octa_video.dtsi#L256-L268
> [7] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP=
24_qhd_octa_video.dtsi#L322-L334
> [8] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/ss_dsi_panel_common.c#L1389-L1517
> [9] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/ss_dsi_panel_S6E88A0_AMS42=
7AP24.c#L666-L678
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

