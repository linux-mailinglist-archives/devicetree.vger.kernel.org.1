Return-Path: <devicetree+bounces-105223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 361C998574D
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 12:44:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E01AB22E42
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 10:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB8C17A5A6;
	Wed, 25 Sep 2024 10:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RhP9G6VI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9624616F0D0
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 10:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727261056; cv=none; b=V7T7hZa4kiZuxc/rJUbdXhtScKwBcyg/4m8cxUNCwJifpRlOVaftzrFfix5A8Th3Sff7MwA26X0FjNj8Djg7PLLaLdrNDgzt75qSB8O7siYE/NMWY+OveoT4KLVlnQnUwoVLcjhyBNjEAu4+6su099LuQAESptKwfWT0mqwDAgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727261056; c=relaxed/simple;
	bh=6vOHl1VdYn2VePnbuw0FDYDOxo/fTsYaSPfeyzNpL1Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F2/3CDDmaLqB1tVchgssR5Z/TAW7BUGzK3oo2IJTlUa+HiB03ZsOMWi2narAIeRR1nYUfWCdHGKnA/g9iNy7HZ4apFX0ZTCDHCCO9G+wIH55eQiUWDtkShOSs9l3xF17kHd7JlMdFtpdYF1iJhie8JFIrIAWaYoIJRwYW8FuCso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RhP9G6VI; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-710d8cab1c3so4815076a34.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 03:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727261053; x=1727865853; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p18jL2hLutiaep38fb0ejRXREkRooHh3eI3tmn6pG+o=;
        b=RhP9G6VIw+NResls66q8PhQPz8eP4a0DhBiTjxZvVUdUz0Sh6SjS1XyvxzbiiLuZEz
         baXqJ8OxK+/ZFMlUCzH9IwixZwbwj5H/WJDeRNKyfibmwdhgpEc4CBhM6hPQqM7YIZ87
         AnShkv5OmABC4EOJ9UsrUIUp0IsVLxX0egdmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727261053; x=1727865853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p18jL2hLutiaep38fb0ejRXREkRooHh3eI3tmn6pG+o=;
        b=GhhqvH1bpyBAWc8kaR14mg0z51jNpqB1v8oVsJcYkC/fb0Sr0tlZceiLzK1uyV/5k2
         ckh9pWO0L+xbvc5tq6zUpbI/zOIoE6Vc9B4xtYAH22bVoTCnuTJapnOPDpI1aRhLGAMz
         KzRgIxi/1VxtbWDuDs+GnIGQ4L6aAK8/ZOL9f+WjycRCXVI8XC3e35Kju+IbpeLJra8+
         Zc0KZLRyYNfin6SRjTITe2LQL4+DWBMMmbKS8W9m/NukpwZttA99OWoOAD58X88QD8iD
         1PBmtgiIp4mGQbI2/bDMuqHXqYBP31Zoco1REcUU4STPoVbAHI89RHUMQ7WxUptM/blg
         XoJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgqBUQWLZ8MMXyK/LQUQem0RXLPdOC0Dov2TCcoshNA8MELZfDdzMdOJy7D4DID+Yry+eJ/D573ImD@vger.kernel.org
X-Gm-Message-State: AOJu0YwgC9PdpeGhQgf4niqsC0/Mft8Uob+aT82yUihIYZe3jk1rWcjD
	dbtAod/jU54pWsibCtjuulYxaf/unDaBblj6QG1K45ez316kWkh6ZmSFYWAMEl4JZhcquwx6iqd
	K3cAoPyHfZqukPsmYIm9BZ/KODDMNd+b93CeI
X-Google-Smtp-Source: AGHT+IGhoxWoyLCZ1aRxjjHIcUx8YFuna6OqcImZMuxL9OA/2tyXvCgmuAskMzvWBQ9WRNUkhBGHynShOaLw7Va2Cdk=
X-Received: by 2002:a05:6830:3894:b0:70f:6f4f:e8d9 with SMTP id
 46e09a7af769-713c7e2e146mr2486302a34.20.1727261053556; Wed, 25 Sep 2024
 03:44:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919094212.1902073-1-treapking@chromium.org> <172676985046.765320.3471835988677145017.robh@kernel.org>
In-Reply-To: <172676985046.765320.3471835988677145017.robh@kernel.org>
From: Pin-yen Lin <treapking@chromium.org>
Date: Wed, 25 Sep 2024 18:44:02 +0800
Message-ID: <CAEXTbpeATBYmHpCYAGhiecVeH=+R8=E0aLLscnKV4QyVbfrWJw@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: mediatek: mt8183-pumpkin: add HDMI support
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Fabien Parent <fparent@baylibre.com>, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 2:18=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Thu, 19 Sep 2024 17:41:49 +0800, Pin-yen Lin wrote:
> > From: Fabien Parent <fparent@baylibre.com>
> >
> > The MT8183 Pumpkin board has a micro-HDMI connector. HDMI support is
> > provided by an IT66121 DPI <-> HDMI bridge.
> >
> > Enable the DPI and add the node for the IT66121 bridge.
> >
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > Co-developed-by: Pin-yen Lin <treapking@chromium.org>
> > Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> > Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> >
> > ---
> >
> > Changes in v3:
> > - Update commit message and fix formatting issues
> > - Fix the label name of vcn33 regulator
> >
> >  .../boot/dts/mediatek/mt8183-pumpkin.dts      | 123 ++++++++++++++++++
> >  1 file changed, 123 insertions(+)
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> New warnings running 'make CHECK_DTBS=3Dy mediatek/mt8183-pumpkin.dtb' fo=
r 20240919094212.1902073-1-treapking@chromium.org:
>
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dtb: dpi@14015000: power-doma=
ins: False schema does not allow [[76, 7]]
>         from schema $id: http://devicetree.org/schemas/display/mediatek/m=
ediatek,dpi.yaml#

This warning will be addressed by
https://lore.kernel.org/all/20240919112152.2829765-2-rohiagar@chromium.org/=
,
and it comes from the dtsi file this patch includes.

Regards,
Pin-yen
>
>
>
>
>

