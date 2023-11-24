Return-Path: <devicetree+bounces-18437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC107F6B03
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 04:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68409281329
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 03:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35E51367;
	Fri, 24 Nov 2023 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NVYiUHSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E4EB10E4
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 19:44:20 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50797cf5b69so2045994e87.2
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 19:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700797459; x=1701402259; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcJej9WUdZZWtLL0jZR7KWhn0SxMMquSiq9yLi1GeNc=;
        b=NVYiUHSdceY35BhmGqSbztoEpyzoDR+SJSappsLbeB1ZGPoGIMuFmgxESiy4A9btL3
         vYFvgGvDP9V+E1aJx2n6cQPTmN9fbLAK7blJFTC/wD8zoL60woQTHaUCkq4oaAeCW5dw
         Qlf7M3YsiQhftuFnEWpb/1R/VtMS4gPVYuTN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700797459; x=1701402259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcJej9WUdZZWtLL0jZR7KWhn0SxMMquSiq9yLi1GeNc=;
        b=HUmk4ecMZKkmSM41o/ObGl33ZwG8w/nbAG9mZDcxUPPF5eNMyUePEg025RnT8jodSR
         sX/h5BG2wMSwiZD32GTf1J7OLEPfQr32ojiG7JIgH574uqreUqYURDTOj6zdayMP/V/m
         cCnBNyxkIwX8CMu1QnNPe4wqZK2Er8jEUk9He6VI1fCRVcN3OpCWgaubXRLXuhcDdTNJ
         8xz9EaIV3yzsyqOSvvkA/MZ1nUhB4ZfaTJyIyCLwYwJjF14g+U/M0/HqeYMw9329zcX7
         utP/fXAU6QDzyWXhPhyOOorEorVbvmdqROMwIesJz8R+TaW3E6NL2NoGIcVH/uF5hXUL
         mFRQ==
X-Gm-Message-State: AOJu0YxurQfGsuUXfO4ga6kbgWUfmAwDSTF+Sx07tvbOLX0Fa2i93ySF
	N3YWu1KIr7YUNklfk322te9WHeunOEOr/3lHa78KEA==
X-Google-Smtp-Source: AGHT+IH7191VcJzspX2lbzBmIE7QpGIGT/USZRwoE7pZJ5nRJbeokYOjJ7hZq8T0ALMqi3yp2bhgV8yGSW2RcGOPhbU=
X-Received: by 2002:ac2:5dc8:0:b0:50a:a9e1:6c58 with SMTP id
 x8-20020ac25dc8000000b0050aa9e16c58mr703080lfq.32.1700797458184; Thu, 23 Nov
 2023 19:44:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231123133749.2030661-1-mwalle@kernel.org> <20231123133749.2030661-4-mwalle@kernel.org>
In-Reply-To: <20231123133749.2030661-4-mwalle@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 24 Nov 2023 11:44:07 +0800
Message-ID: <CAGXv+5EcT3OjyaW6LkARugWZN2AE5TWRx=Bh5TqfVBG2tcs5Ew@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: mt8195: add DSI and MIPI DPHY nodes
To: Michael Walle <mwalle@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 9:38=E2=80=AFPM Michael Walle <mwalle@kernel.org> w=
rote:
>
> Add the two DSI controller node and the associated DPHY nodes.
> Individual boards have to enable them in the board device tree.
>
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

I checked all the address ranges and interrupt values and they are all
correct. The other bits seem to be correct, extrapolating from previous
chips such as MT8183 and MT8192.

