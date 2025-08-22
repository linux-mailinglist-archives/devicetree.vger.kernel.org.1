Return-Path: <devicetree+bounces-207808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 328ECB30E42
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 07:44:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93CCFA080D0
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFA42E265B;
	Fri, 22 Aug 2025 05:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="N6KSbXwh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2812820A3
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755841414; cv=none; b=Lj0x9HfvqJvywtvPnKT9N0OVLkZb3bwF4aq7yhgtPllnnjzrSxrY12Jlxm2AR362YoeT+loFnkaLkdWqePNbTTFy6uxbuuO3b+khr+ze7SKMj1/9MeiiQJkT5ejaTkbp1KYXfO93ngkAvN8K4AlVnK4xHdrajpO+eckQTQh01RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755841414; c=relaxed/simple;
	bh=nO2U9VG3vDM0Ed6fA8bpfu9wUGd9SkPGGleuZgl0xxc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WLuzBLRk0s6RX4cGlH7VdqS3oTdKx884cAPUZbKWizVhg5YKK0lc6GjuWF/F4YiCpSZqLhswd1IvV17tDZqXVMrprAzCsZDP6J/lX4nMgc/XsQvtJqGj5msG7woR6tEOYoAU90UuxGvyxwEPPPYe4V3yQaPK9b63uHQeEUjcza8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=N6KSbXwh; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55ce509127bso1550990e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 22:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755841410; x=1756446210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+GPy/kVr5xy7hBpohKijiQplg8+R4/OMAuZ4Oz2BeiQ=;
        b=N6KSbXwhNOtbLJ2vzqOZ8Ky0Kpx9aabVC87pxDBN83XJITWLz4IEs0JFTXkjTptX9P
         ynTNWrD+HL4kLlrTyo0wTzxFFm8AEAs1+e095SCxHTBgigplc35wTDYoYJOtdCArFxlT
         oGFBTBsGPABUuYvAy0ZxadDTZHjrS1FiBuRzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755841410; x=1756446210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+GPy/kVr5xy7hBpohKijiQplg8+R4/OMAuZ4Oz2BeiQ=;
        b=Q+KJvf4ov93aixBXc8IgbuyzkwrJyUHfHJNzesRXnCzwsMkMXnuqhNzDmgCrEneTRe
         z0EilIqHUatjWs0BHQh+lCgekQb00qrNKNlklcV7ACjthmeuUd8WguH2ctrrvLoq7D/d
         xf/dOMoFCVugE2uGns6RC7HikhLQ5E3zZ/7odGpS7OUaHHB36UGJmjm8bN88GIR5Z30x
         AMgz8iYQ/r6zWDYG7zW004PtSTLzpGfevUzHWrRSRAoiAug3Ml7CYtgySGJq/UYHgQSu
         DvZjtH9u9M5I4euZpAZhTS93zw13VGC67gCbiLgWC4znOKZZJWIpAqLDCwurWlbYHT9h
         NViA==
X-Forwarded-Encrypted: i=1; AJvYcCUjIN7aB9XiQckzdwnAPXoV/Zwid4W70BuNnztje0vq00gVrM6EdAU/0QBaqhGaKMb16WMO+EniOiBX@vger.kernel.org
X-Gm-Message-State: AOJu0YzugZe06QRrnxlAnpd1NQkkXtqaEFBZt4uHpTw82ya/G7zAfts7
	kHuknrSW48nPUL3tT0mBKU3FY5QrFATIn1vrm2GAYqNdUx0sc6p9XPlcDTKCWj1L4TE5/y7So5h
	Qgk1h5Xl7grWHaT43PsVslaciYZMYo3LeX4Cg1uA3
X-Gm-Gg: ASbGncu+gleq221KSh1ZqXBrJ3jCAxo8lvCHoivioNkMjwARWjc6xKBcY7oVxRglD78
	6vqe2VLZFtjw6wAA2dkgl9p9QgzXtCVwrSojJJ2of7/d9khtdtbQnSzgTo5EeBXsA3ZlJtSWoak
	CkVgKauaGIP4DHvG7BB7v8da++HBZLoMvZcutqTsxXkV7OatoLSBvnbirjqUAs5xX1ya4RX88fs
	71uzSp9rCmaUxQfjJXoc44O/ukYGvxd6hapCXqxijOzuw==
X-Google-Smtp-Source: AGHT+IFh5F3sidBrknoS9iUxLce5fNJWzSFlFRbwYLI9hnCBtdEdWgKvCBxO6tc3R2KJHkeILhOZP6kccNtfJIF4ra4=
X-Received: by 2002:a05:6512:2399:b0:55b:7683:110e with SMTP id
 2adb3069b0e04-55f0d38200cmr562995e87.46.1755841410309; Thu, 21 Aug 2025
 22:43:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822021217.1598-1-jjian.zhou@mediatek.com> <20250822021217.1598-2-jjian.zhou@mediatek.com>
In-Reply-To: <20250822021217.1598-2-jjian.zhou@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 22 Aug 2025 13:43:18 +0800
X-Gm-Features: Ac12FXzfrL5PN_m3940D8QUKJ9xD917EzZ80ftFHhvgwSSGeG17u4a187tR07YY
Message-ID: <CAGXv+5GaJdWPFigVs-XyDZms_0Yvo+58p7N5e+-jwnyAhsO7bQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: mediatek,mt8196-vcp-mbox:
 add mtk vcp-mbox document
To: Jjian Zhou <jjian.zhou@mediatek.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 22, 2025 at 10:12=E2=80=AFAM Jjian Zhou <jjian.zhou@mediatek.co=
m> wrote:
>
> The MTK VCP mailbox enables the SoC to communicate with the VCP by passin=
g
> messages through 64 32-bit wide registers. It has 32 interrupt vectors in
> either direction for signalling purposes.
>
> This adds a binding for Mediatek VCP mailbox.
>
> Signed-off-by: Jjian Zhou <jjian.zhou@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  .../mailbox/mediatek,mt8196-vcp-mbox.yaml     | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,mt=
8196-vcp-mbox.yaml
>
> diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,mt8196-vc=
p-mbox.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,mt8196-vcp=
-mbox.yaml
> new file mode 100644
> index 000000000000..7b1c5165e64e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/mediatek,mt8196-vcp-mbox.=
yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/mediatek,mt8196-vcp-mbox.yaml=
#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Video Companion Processor (VCP) mailbox
> +
> +maintainers:
> +  - Jjian Zhou <Jjian.Zhou@mediatek.com>
> +
> +description:
> +  The MTK VCP mailbox enables the SoC to communicate with the VCP by pas=
sing
> +  messages through 64 32-bit wide registers. It has 32 interrupt vectors=
 in
> +  either direction for signalling purposes.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8196-vcp-mbox
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#mbox-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#mbox-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    mailbox@31b80000 {
> +        compatible =3D "mediatek,mt8196-vcp-mbox";
> +        reg =3D <0x31b80000 0x1000>;
> +        interrupts =3D <GIC_SPI 789 IRQ_TYPE_LEVEL_HIGH 0>;
> +        #mbox-cells =3D <0>;
> +    };
> --
> 2.46.0
>

