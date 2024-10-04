Return-Path: <devicetree+bounces-107762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 425E098FEE6
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8D381F22591
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF96113D2A9;
	Fri,  4 Oct 2024 08:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LvxkU/gT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C99213C810
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728030292; cv=none; b=oQHXdnQxbNVDHWetcINr9d5qbbexR50YDEXXgwfLxIUx5F4Sz0b+LKCGyDTv/Bx4/kr799GdkAXkmqO4GXAydf/1N0tTCffmDdGWjI3Qnnvtjsg4AqyAfKpSZEu5WOfhPD6MeL2kvmbW48zuGkWHctDOhY1rr3pjvKx3wI/bVr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728030292; c=relaxed/simple;
	bh=HUcJoHr6ENwP47f7Wut9FgKSjqccN5f/YJP3DW047Ew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hl5cqEoiB8b8hDP54UJMKmPdnNoB1RszGOxrfm+SwT+HnU1giXRWEuc/PtHPUZ7XHpj4KI2qQkxzvnCpB45f0lwZqcBXscAUVmnsRxd8QUwCaNjWHQtGAdyxk5iXbu6H8q7t4TJWJlqU1b5XmggqDuLay+D6zxYpELX/+u8BJxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LvxkU/gT; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4a3a5cc3903so460049137.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728030290; x=1728635090; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9oxZyp3eZ8k8zuivapL9rT1F6bBI1eaH4lwdCzl24o8=;
        b=LvxkU/gTRNZl37xXtno8Ys0vir+Gm5XQF6vrGN5ginSIjsTbjsoDe9qhYhqu1dHOdj
         sGeQKIx8JKxeLNiZQTwXHkIojrWO7pcov8EMsgiTNp6bO8KpiiAa1XUFEuGdheDouylb
         Zbkmsqj/OMpITfEK2L6y180se9a7D17zEnC3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728030290; x=1728635090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9oxZyp3eZ8k8zuivapL9rT1F6bBI1eaH4lwdCzl24o8=;
        b=VzoIL6ZUcEvufb0r7tvaL0sZCMAD21RUYjTLc1qdlDjLGRrxBeOuB/mBk1og/H7ROj
         Fdt03uH68ZDbv+ik2r/DxZxePys+soLn2Xlssd3/XpT+xsRuy63G2T4MgbpyzrMZMjF2
         wEgemLZPD4jxbWvXlyTGnfE49ADw5GYIFY67B2WLCCtaV8ATE71lYIvQGodv4THsR3R1
         TfntMQ5MUH0N2Wa3/0uSPJ56L3lpb9SMHfrBNeVw7vknnmTDpFYl1Y3/rBkG7XrutK0Z
         XpM0TEaClwPXrt1R0k9nYUyorx3GYn6a8g+7Dq5F0SjOahvax3/1ksZCNUR/M0IV1QYl
         jOMw==
X-Forwarded-Encrypted: i=1; AJvYcCV2t/1iksnTlNFqQmVXmZDTnTGxdoUMVhZs5tFHE81y61O3TKKu2jRqotab2aP857GyafGT9V8+O7SJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwaGDMC0mdmIrfupbzcabIen3WB6V3JAd5TIfbqqitaHIgDh9ye
	pO2IeTtnI9biy8tBu+9+JkyoqjoRSSBC2gjbSp4zQzDLrjga45c3J7mpJTi5GV/7nU4CrRTY9nM
	JyA==
X-Google-Smtp-Source: AGHT+IH7yeOWKbQdgC8UEa3QPmB8ef5zopY2bAbhQmw5DoeC8p3FZPOJVY+BblflehJ8QD0/QcoNFw==
X-Received: by 2002:a05:6102:3711:b0:493:31f9:d14a with SMTP id ada2fe7eead31-4a4058efa34mr1132234137.27.1728030289760;
        Fri, 04 Oct 2024 01:24:49 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a40b179e07sm67025137.26.2024.10.04.01.24.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 01:24:48 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-50abb0c511cso571623e0c.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:24:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVGfO0NrQG9ni9rXFnouJvOq+G2DL/nQmYbDX50IwTGZFAu+I9sIFygPeAWgWcYuffvgzJsoq0kSF+i@vger.kernel.org
X-Received: by 2002:a05:6122:78d:b0:50a:c19b:e712 with SMTP id
 71dfb90a1353d-50c855597a5mr1192054e0c.8.1728030287686; Fri, 04 Oct 2024
 01:24:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241004074938.6571-1-macpaul.lin@mediatek.com>
In-Reply-To: <20241004074938.6571-1-macpaul.lin@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 4 Oct 2024 16:24:10 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhW7ervk-b31mxtx_c-KUeLuC0P_Yr=9jtumUXAm6AZ_A@mail.gmail.com>
Message-ID: <CAC=S1nhW7ervk-b31mxtx_c-KUeLuC0P_Yr=9jtumUXAm6AZ_A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: mediatek: Refine multiple level power
 domain nodes
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Alexandre Mergnat <amergnat@baylibre.com>, 
	Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>, 
	Macpaul Lin <macpaul@gmail.com>, Sen Chu <sen.chu@mediatek.com>, 
	Chris-qj chen <chris-qj.chen@mediatek.com>, 
	MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	Chen-Yu Tsai <wenst@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 4, 2024 at 3:53=E2=80=AFPM Macpaul Lin <macpaul.lin@mediatek.co=
m> wrote:
>
> Extract duplicated properties and support more levels of power
> domain nodes.
>
> This change fix following error when do dtbs_check,
>   mt8390-genio-700-evk.dtb:
>     power-controller: power-domain@15:power-domain@16:power-domain@29:pow=
er-domain@30:
>     Unevaluated properties are not allowed ('power-domain@31', 'power-dom=
ain@32'
>     were unexpected)
>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  .../devicetree/bindings/power/mediatek,power-controller.yaml  | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/power/mediatek,power-contr=
oller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-control=
ler.yaml
> index 8985e2df8a56..a7df4041b745 100644
> --- a/Documentation/devicetree/bindings/power/mediatek,power-controller.y=
aml
> +++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.y=
aml
> @@ -54,6 +54,10 @@ patternProperties:
>              patternProperties:
>                "^power-domain@[0-9a-f]+$":
>                  $ref: "#/$defs/power-domain-node"
> +                patternProperties:
> +                  "^power-domain@[0-9a-f]+$":
> +                    $ref: "#/$defs/power-domain-node"
> +                    unevaluatedProperties: false
>                  unevaluatedProperties: false
>              unevaluatedProperties: false
>          unevaluatedProperties: false

For reference, I sent the exact same patch and it's been acked:
https://lore.kernel.org/all/20241001113052.3124869-2-fshao@chromium.org/

Regards,
Fei

