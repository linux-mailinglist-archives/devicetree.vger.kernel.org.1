Return-Path: <devicetree+bounces-194865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 634C3AFFCA3
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 10:43:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E024D3ABE3F
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CCE828F947;
	Thu, 10 Jul 2025 08:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FYLR1k1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7BA28DB4E
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752136950; cv=none; b=ePF9bEYDNgUTJTVDJLseKrfbD+/04cMsTmiHFVnjfUAE1yRC+kr6jyqSFE5bgGBVkrSUDBLns6TQ32JyRbLkSjjrNVduY8Jl8EsC0O11mb2WqAF/UYQhPtsnrmQpN/y8s0RB0FmXSlIm3/b7LXD1RZDA4s+pd7CY32kVpjLq6kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752136950; c=relaxed/simple;
	bh=um4EKtYn3ZwSbNfVcZhtD/u/A8h869sBadoquzfhOCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zv6eHS0I+HJUghBGS0n9j8HJF3yQWG99YoJjWYTcWRe9k9qiwy94HJLHastIm14wMK2xSK0jfkiNbCcbGFgxzxmJgx+9jh0PIVo8YU574G4By0d0Ha5fPqpZm3MRyqjpTf13CaQ4V6JIpQ1uWAbIBvSEhuitR2oJWPgIeVdmmbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FYLR1k1l; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-32b78b5aa39so6205581fa.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 01:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752136947; x=1752741747; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IbMjrJbm+vCEXbCzlc+pe2ZZgUE7LGCN4UW3uV+MEfQ=;
        b=FYLR1k1lIpqAAhHdy/DuCpWlTZYMDf36jK08E4Aiy6e8Qp1WueacaObbssQcodHWB6
         DXw+Ql++9MvFnpeBn75hvozyb2e22FVSopS2/eBxrjgwsjW3mgA9927I6r8Ra7cQrlBs
         MqoFtsBCWA+5CoIHhGjNwkJFO+SqkdLA9F6Jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752136947; x=1752741747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IbMjrJbm+vCEXbCzlc+pe2ZZgUE7LGCN4UW3uV+MEfQ=;
        b=TAr0DhDRSGMfoN4N3CzdAc8dbmxvkbSZgqv1fk0X85JMzkPEZOiS64HGb5c6y7k4qD
         6piZHT8BMnMSzzbqHqr+BgxyUeoWivnmX+zVvO+K8a0wXJjrfdVqmCC31FFxEpgliVTt
         I+o4HSoDTY3mSX9ZVNdu5E6fM5ubMD3I7daqS6RYX+PtJcO/7p4lQFTmGPYM5g8NQEsH
         kzhCj93i7hrxIJKCEYDnHH/vbsdy151axX/lsCkNMrfkVyAImVKQVvsbmnamb/KtCqh4
         rlmII+oPtCR/lRP1Bg1A8sm6LOoJ18NgnC//ZX2K/1RCeyaG+DvWE9z9IWckaKzzlxwt
         5r/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXgHhhA2hb5XCfmfAwAgvrRq6It5ZmwQoUl5g3KNbzT11bYfqKyKt2GWSwC5kbnqHAZXwbljwWkwRvE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq9ODczByTuFiB2BxATSZz5V/nHQKrdLxhxGnpM2XGJnSScq5d
	umgUUGOLNMjj5Xo/+aSuhog+MZv/sgxHUfDHnCP8V+7XpcQHuGLlVy1ZCc/fzJTPYNolzduo/YS
	IF3YBxpp3Gk+Tt2fkB/406iyF/8YByr6nVfDI6uxB
X-Gm-Gg: ASbGncshyaNGM2KnNdgzWqyqfbhTWQChvysypwOBMqZXEvAssfE5B7PLoGKLisfJ7Gq
	kbZ+8uzQf6JGAwTJYSWUePOWTDCIJxrRLDKOu7iXfnE1mpUMJ19crq5Esp4cvbXHsok47ipefx1
	SZX+bvuPyCu5Qm8snADQRs2gSDx4sJ8Ea1OfHW9vgoqpvYzlfw447C47UxDs7Yv38kuEl7pNA=
X-Google-Smtp-Source: AGHT+IH98HyUSFcxzn0ZLDTDXzcG2xAq4tfunT0Q0Flrc8e1qgVm3bYMsY/33vj2EMiqcDSWrQ5h5u7h7vcdWubER9k=
X-Received: by 2002:a2e:a99f:0:b0:30b:b956:53c2 with SMTP id
 38308e7fff4ca-32fab95f588mr5305791fa.11.1752136946822; Thu, 10 Jul 2025
 01:42:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250610063431.2955757-1-wenst@chromium.org> <CAGXv+5HDAZ-MBBMk00O+cdcq55KnsKdEAMD7E2uaAf=2LY=1cg@mail.gmail.com>
 <5ee16a72-01a0-4f2c-9bcb-e4b4b069b2dd@collabora.com>
In-Reply-To: <5ee16a72-01a0-4f2c-9bcb-e4b4b069b2dd@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 10 Jul 2025 16:42:15 +0800
X-Gm-Features: Ac12FXxsLgCZAUA9cokLqBFuaQ1ZCvwcmNm2Lv9LiZZijxwC0ttVDjqCnXtUfEA
Message-ID: <CAGXv+5E=xLJg9Y4OProhrH3ROy12J+3gNc3eiebGeJuEVEq+zw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: mediatek: Enable efuse GPU speed bin post-processing
To: Srinivas Kandagatla <srini@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lala Lin <lala.lin@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Srinivas,

On Thu, Jul 3, 2025 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 01/07/25 11:15, Chen-Yu Tsai ha scritto:
> > Hi Angelo,
> >
> > On Tue, Jun 10, 2025 at 2:34=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.or=
g> wrote:
> >>
> >> Hi everyone,
> >>
> >> This is v2 of the MT8188 efuse GPU speed bin post-processing enablemen=
t
> >> patches. In v1 [1] the change was made to the driver. Angelo, the plat=
form
> >> maintainer believes the change should be made to the DT binding instea=
d
> >> [2]. v2 adopts Angelo's argument.
> >>
> >> Patch 1 updates the efuse DT binding so that MT8186 is a base compatib=
le
> >> with no fallback, and MT8188 falls back to MT8186.
> >>
> >> Patch 2 updates the MT8188 DT to follow the new binding.
> >>
> >> If possible I would like to see both patches merged through the soc
> >> tree once the DT binding maintainers give an ack. This avoids prolonge=
d
> >> waiting for the binding changes to land and uncertainty about whether
> >> things have fully landed or not.
> >>
> >>
> >> Thanks
> >> ChenYu
> >>
> >> [1] https://lore.kernel.org/all/20241223100648.2166754-1-wenst@chromiu=
m.org/
> >> [2] https://lore.kernel.org/all/11028242-afe4-474a-9d76-cd1bd9208987@c=
ollabora.com/
> >>
> >> Chen-Yu Tsai (2):
> >>    dt-bindings: nvmem: mediatek: efuse: split MT8186/MT8188 from base
> >>      version
> >>    arm64: dts: mediatek: mt8188: Change efuse fallback compatible to
> >>      mt8186
> >
> > Friendly ping. Please take a look and see if this scheme is to your lik=
ing.
> >
>
> For the whole series
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Could you merge  the DT binding patch so that we can merge the DT change
ahead of -rc6? Or alternatively could you give an Ack so both patches
go through the soc tree?


Thanks
ChenYu

