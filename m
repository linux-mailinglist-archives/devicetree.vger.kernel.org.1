Return-Path: <devicetree+bounces-77396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A790E80F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 12:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB7601C21CC1
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 10:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECB98287C;
	Wed, 19 Jun 2024 10:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZdbEWY+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6676824B2
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 10:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718792015; cv=none; b=s+CUZ+csQ2QZ/XBwdapSfmQBRK2zM4Skkm0056j8aajNMV5rRSG9uq9gMyu38oaP6QLeYxy81E7p9E/H3jDWRO/tLnnN8LZAZvwUioIdjWno/K3lfo/0LR9mkz6zPVrfeNJMJKgfzFGzmc8yhXJUzvF7hjYrp8IKcOgteejvhPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718792015; c=relaxed/simple;
	bh=MbUeaa2LZLaNTE5kZ2SLNoA2hdABUPU/FjsRj6mUvFI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oZ9laIk7IdGXgBJzJ+qHCPqbnT1xrepX/C1SM2ZnZZ3wTW2OLYjIsC7VZ7lWmTQdbY5UgcK9S66LSrDzKLEGSxE5Jvuojwli/EvatPhzIRrvGLTiqoXqSkH8vtCnC0q6XQYpYqNehCXFw/FF/u1+7ZsgVBuFJTtudxFvFw5Iv0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZdbEWY+Y; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-80f50feea7cso402558241.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 03:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718792012; x=1719396812; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KE8h2jNNZ6vFW2z7uotyBC53nGYQN5vB31WOkuARonw=;
        b=ZdbEWY+Yc3jGQLHjhuE1sIPuPTXsprZWIf1rpJCVw/VIobbvQCK2HpEr/xBHACOOWN
         FXl7QK7CBquWFUxfH1Y5Owziwql7lrMpdRS+kupqXxp7BCH+NHraJhVN9irByvq88aKV
         MlJguyHzT3Axz+pLbPK9ASqRL6pVcrTYCt+cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718792012; x=1719396812;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KE8h2jNNZ6vFW2z7uotyBC53nGYQN5vB31WOkuARonw=;
        b=IGKIaofTycAK4xYxpRAOm3vapmZxj81vDcjeWV58Aiyo1Sy7pYH8qQdH+LaZVxXAbz
         RomNP04asbwuCYtl+2yU3WdkVlUpoBYrvrFnD6Js361mKKLmMR8eIPcDdBizewd0hMz5
         71CKh9L1KW0s7O2HAN5cDwMNcinTPkjIpCXxRlCyyGCA++2/pHvdKN1vZy4Y7KP3u1qt
         0Dulf4snjEzYXoZEK2pyzrrMkTwKAMptwpxX2/+DnhKeTKX/rdugK3utNv93CrRD8TKL
         DjiAoiUVImX8gPpYLc4sTtJAMa2K7eg4NlL0x4pc6C1y/2KjZN8eO//Z9/X1wIxBqP5C
         59RA==
X-Forwarded-Encrypted: i=1; AJvYcCXIco36SSLsSAYM2QHRYwF15CLYn1s6fNlHwuw6eLLsV8pPSZ83yp2pbMOUUZT67pwTZGNYpdq6hhsBq12zX7/8cL7+B9XQoMQgYQ==
X-Gm-Message-State: AOJu0YxvMqR/PsXgvcnftBympGKzQrxGm9rObeJN1ZuctpRjc0AzzORl
	WVcThs+hpkVngbzyya1CaM1m3nvlZl4bdJKhy14+Um4uBs+mUL4u3lyheDSYzGTEGSZGNeqKKUI
	=
X-Google-Smtp-Source: AGHT+IGSImI3dQ2VaDa9L7GMryrVPp0sFuzxRr/AjfECxHAEzIVEoomu6D3X4s/lhADlMnxhdNANVg==
X-Received: by 2002:a05:6102:3659:b0:48c:436d:7bd9 with SMTP id ada2fe7eead31-48f130bd64amr1842515137.35.1718792012303;
        Wed, 19 Jun 2024 03:13:32 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-48da448431bsm2598885137.25.2024.06.19.03.13.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 03:13:32 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-4ecf9ba11c8so1963821e0c.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 03:13:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXg2ovljr1nZKQK2gVKGdJvmpLWYc2SAzBXWG2EdPPopFci9lGjYh5kdLdMjcjpVTtdwqKKGQ38iuQPfPvSrLd/HVciX/91lDY4GQ==
X-Received: by 2002:a05:6122:250e:b0:4d3:45a2:ae53 with SMTP id
 71dfb90a1353d-4ef27845548mr2420871e0c.16.1718792011586; Wed, 19 Jun 2024
 03:13:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322092845.381313-1-angelogioacchino.delregno@collabora.com> <20240322092845.381313-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240322092845.381313-5-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 19 Jun 2024 18:12:55 +0800
X-Gmail-Original-Message-ID: <CAC=S1niC5ZePFFbEM6Fhr4q7kNqv45uSQNnTp1U8pesfe5f_Aw@mail.gmail.com>
Message-ID: <CAC=S1niC5ZePFFbEM6Fhr4q7kNqv45uSQNnTp1U8pesfe5f_Aw@mail.gmail.com>
Subject: Re: [PATCH 4/4] media: platform: mtk-mdp3: Add support for MT8188
 MDP3 components
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, mchehab@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, amergnat@baylibre.com, moudy.ho@mediatek.com, 
	hverkuil-cisco@xs4all.nl, sebastian.fricke@collabora.com, 
	u.kleine-koenig@pengutronix.de, chunkuang.hu@kernel.org, 
	p.zabel@pengutronix.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Angelo,

On Fri, Mar 22, 2024 at 5:29=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> MT8195 and MT8188 share a similar MDP3 macro-block, with minor
> differences - as in, the latter supports a subset of the number
> of components supported by the former, but are otherwise handled
> in the same way.
>
> Add driver data for MT8188, reusing the already present MT8195
> data where possible.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../platform/mediatek/mdp3/mdp_cfg_data.c     | 280 ++++++++++++++++++
>  .../platform/mediatek/mdp3/mtk-img-ipi.h      |   1 +
>  .../platform/mediatek/mdp3/mtk-mdp3-cfg.h     |   1 +
>  .../platform/mediatek/mdp3/mtk-mdp3-core.c    |   3 +
>  4 files changed, 285 insertions(+)

Reviewed-by: Fei Shao <fshao@chromium.org>

Regards,
Fei

