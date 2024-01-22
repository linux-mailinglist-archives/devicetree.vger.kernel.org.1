Return-Path: <devicetree+bounces-33533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E19E58359D8
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 04:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 653F11F2108B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 03:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB4C1849;
	Mon, 22 Jan 2024 03:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="F5I7SrjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CAB4C65
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705895129; cv=none; b=d6BeT7itpLcuMFUrJ96Hs9rBgI58kgeagynotLJCwCpHtOsUn2N/EM3kYHxa0EQZh7kGM4nmtfYOZjbHcCQ1cxzeJO8XJvUI6XkbXeRGnuBC9oHFT2g1PqqJ0kDYlpvNes+HjYNiIryDCYDJU7SpmPWdaX8gXKGkd37kxGb7k8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705895129; c=relaxed/simple;
	bh=eUc28hxFSOjAp6vDpl8grw083rrwKd7v+61OGCuTiAQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EvUGdR9x+hFwHSpN2OVX+JPVABTfyQpsU+1gneGjn75g1VADmttk2lBBvaHDmZcMvT/s3G9I8//AVo5rOrENTJBHw6Vi9wPJ4rhWxRK9FTOHUniG8bi46NAEEwhPI7X7LEn8IK06lc+0zIQ2oi2eOYiChZcYuCjLWPIwgx6A7P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=F5I7SrjL; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-7d130979108so674059241.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 19:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705895127; x=1706499927; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kE8ms7ryFZW9Ht/e6NRcvd7QnzuOU18cg/pk9kEcOj4=;
        b=F5I7SrjLGLaPPAsYkCx9/8CwaID5i9+5U+JShJpY+51D+J6JevwbVfV6gICdt2PrsO
         7p3Zq31/b4LVpOVVPbDytFjXYBdlA7QyAIegJE8qk4v0cyqTIMxZ7VfPWIL2o+cqS+Ea
         Mm+muTw6N7IMiOY7sPjahkIlTKlH5j8p5JMpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705895127; x=1706499927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kE8ms7ryFZW9Ht/e6NRcvd7QnzuOU18cg/pk9kEcOj4=;
        b=EeokpcCRQk9V3RKJg+iZEgoM7dLjUad6P/LB9owIznHrHYq7sTVib37M/dJzSZc5o6
         gvqUdlLJCmM/BOvi1Rqzn9cgnXLc6PAb2+21mLWSAxEwOJV7lwJ4jxmOyLq0BDrLK6EU
         Nk/yqOI+v3FHPmQP89NgyswOrHFEDs8KghS9lKw79Mi6urqeYlWv1Gm5g1m9yU+vnWtY
         oSXkprL65WC5uBj5Dc+HpCd33tAx3KikcGN02/fiiLTcebnfC6l0U24OUHjECPttuH2B
         qSHYpph4quvVR8QkljbNiDfoKnEaLbKdI3t2QrBhzGHcmVdyzkzUoQEZTJ4NnCNTJtzX
         GCkw==
X-Gm-Message-State: AOJu0Yzp4Ca2yxSFkGqLPp/3IJavvY/2XrD+4+QI8qD7lJZqB2sXyKVV
	fCZenWsn7yno5i1UNo1T6iuNg8eBxgN/GY9VnCITX0LFSQw8rRayZRKVE0GKqdd0dpmYUeTMzXR
	+xg==
X-Google-Smtp-Source: AGHT+IG1f4ZxscmbXBrDkCZ4epahK60XM/sgD0fRksIm5m6twkEw4O6YiIuS+HGKgEO7WDM5+yJHnw==
X-Received: by 2002:a05:6102:38c8:b0:469:bc35:596f with SMTP id k8-20020a05610238c800b00469bc35596fmr160936vst.12.1705895127163;
        Sun, 21 Jan 2024 19:45:27 -0800 (PST)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id ic6-20020a0561024b8600b00467639aaca3sm1014069vsb.4.2024.01.21.19.45.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jan 2024 19:45:26 -0800 (PST)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-4b978e5e240so471135e0c.0
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 19:45:26 -0800 (PST)
X-Received: by 2002:a05:6122:410b:b0:4b7:1658:e66b with SMTP id
 ce11-20020a056122410b00b004b71658e66bmr994565vkb.23.1705895125827; Sun, 21
 Jan 2024 19:45:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119063224.29671-1-jason-jh.lin@mediatek.com> <20240119063224.29671-2-jason-jh.lin@mediatek.com>
In-Reply-To: <20240119063224.29671-2-jason-jh.lin@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 22 Jan 2024 11:44:48 +0800
X-Gmail-Original-Message-ID: <CAC=S1ng5v5-LSq6d-R-89N35qiKd7qa8FEo6qakWxrzibYvgSQ@mail.gmail.com>
Message-ID: <CAC=S1ng5v5-LSq6d-R-89N35qiKd7qa8FEo6qakWxrzibYvgSQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mailbox: Add mediatek,gce-props.yaml
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
	Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, 
	Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 19, 2024 at 2:32=E2=80=AFPM Jason-JH.Lin <jason-jh.lin@mediatek=
.com> wrote:
Hi Jason,

Just few nitpicks about typo:
>
> Add mediatek,gce-props.yaml for common GCE properties that is used for
> both mailbox providers and consumers. We place the common property
> "mediatek,gce-events" in this binding currently.
>
> The property "mediatek,gce-events" is used for GCE event ID corresponding
> to a hardware event signal sent by the hardware or a sofware driver.
software

> If the mailbox providers or consumers want to manipulate the value of
> the event ID, they need to know the specific event ID.
>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  .../bindings/mailbox/mediatek,gce-props.yaml  | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,gc=
e-props.yaml
>
> diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,gce-props=
.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
> new file mode 100644
> index 000000000000..68b519ff089f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/mediatek,gce-props.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Global Command Engine Common Propertes
Properties

> +
> +maintainers:
> +  - Houlong Wei <houlong.wei@mediatek.com>
> +
> +description:
> +  The Global Command Engine (GCE) is an instruction based, multi-threade=
d,
> +  single-core command dispatcher for MediaTek hardware. The Command Queu=
e
> +  (CMDQ) mailbox driver is a driver for GCE, implemented using the Linux
> +  mailbox framework. It is used to receive messages from mailbox consume=
rs
> +  and configure GCE to execute the specified instruction set in the mess=
age.
> +  We use mediatek,gce-mailbox.yaml to define the properties for CMDQ mai=
lbox
> +  driver. A device driver that uses the CMDQ driver to configure its har=
dware
> +  registers is a mailbox consumer. The mailbox consumer can request a ma=
ilbox
> +  channel corresponding to a GCE hardware thread to send a message, spec=
ifying
> +  that the GCE thread to configure its hardware. The mailbox provider ca=
n also
> +  reserved a mailbox channel to configure GCE hardware register by the s=
pcific
s/reserved/reserve/
s/spcific/specific/

Regards,
Fei


> +  GCE thread. This binding defines the common GCE properties for both ma=
ilbox
> +  provider and consumers.
> +
> +properties:
> +  mediatek,gce-events:
> +    description:
> +      GCE has an event table in SRAM, consisting of 1024 event IDs (0~10=
23).
> +      Each event ID has a boolean event value with the default value 0.
> +      The property mediatek,gce-events is used to obtain the event IDs.
> +      Some gce-events are hardware-bound and cannot be changed by softwa=
re.
> +      For instance, in MT8195, when VDO0_MUTEX is stream done, VDO_MUTEX=
 will
> +      send an event signal to GCE, setting the value of event ID 597 to =
1.
> +      Similarly, in MT8188, the value of event ID 574 will be set to 1 w=
hen
> +      VOD0_MUTEX is stream done.
> +      On the other hand, some gce-events are not hardware-bound and can =
be
> +      changed by software. For example, in MT8188, we can set the value =
of
> +      event ID 855, which is not bound to any hardware, to 1 when the dr=
iver
> +      in the secure world completes a task. However, in MT8195, event ID=
 855
> +      is already bound to VDEC_LAT1, so we need to select another event =
ID to
> +      achieve the same purpose. This event ID can be any ID that is not =
bound
> +      to any hardware and is not yet used in any software driver.
> +      To determine if the event ID is bound to the hardware or used by a
> +      software driver, refer to the GCE header
> +      include/dt-bindings/gce/<chip>-gce.h of each chip.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 1024
> +
> +additionalProperties: true
> --
> 2.18.0
>
>

