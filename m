Return-Path: <devicetree+bounces-182628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B164ACD848
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 09:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6886E7A3A76
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 07:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7436C238C0B;
	Wed,  4 Jun 2025 07:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b="x83A3Ox3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18CD233D7C
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 07:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749021205; cv=none; b=aPwFj/01emVkBi+F9wzIbPchSgNbhYC80RigEE+T0dZcD/m/prUwYILT5siyrdDjpuzrMdI30ovufIww4EOXv6CwmsXo8jHyeSTysQDTJSQ7UjkgvW/eaG3Rh5Ap/eNKkZ8VoCqhxJZq6kA0zla47XQIXoKKq1swaAQHPF90+c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749021205; c=relaxed/simple;
	bh=3AVbLqlURSjEvnMOfjuDeMBo+P0IV4Xq272XRqwuuOs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SNPJGu8Hq+Lgo4JqiP6P5TCUsV3WLw+U3WzjoPh2MJ3+FlvIs5v34A43B7kDgO3w8obtzoKtAQU/oqDMCFKZxZQfn0d/7xZdTIU2kgtzm97MGFrdRqB9m9sd9Xo0XaOTiGMwF+WwHNGUyXbqdmnX19RF0fpic5Ul0W1E5a59hB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=tomeuvizoso.net; dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b=x83A3Ox3; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tomeuvizoso.net
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e7b4ba530feso5650809276.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 00:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749021202; x=1749626002; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egAKscK3QoP1kYQu5KkN3aoibVnnNSd6rVfa6InXH/s=;
        b=x83A3Ox3gy3vG6dzlMUWol32yCgOi7ep1cSEAVIg1T3RgOJWY0Tu2phiQ/8rK6I30x
         xk59yLGfacN39TAuOT3hdE29jQ54ouo+QCo2pKewPMGFBZ0EhTKBDPtW0Oxbmma0dQe9
         GmTiYjuMqe1EoKBQH5WYQ/e08Mr8poFIY9wXKOlDlkK5ARgAA5RcdKyhbHsQ2G1ASiA/
         wQ8XPcIk3nWOPJc+CkegYB2F+j0ZEJZ2bdCvc4mtEXW5DS8dkT+5ant+GD4M9GOS7nok
         q9nAwu0Ff824mNg/9hOOlwF12L/pzXYwmnOiqF/3j630et6pmIfJgVZwOFvl3WkgwDbk
         ZR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749021202; x=1749626002;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=egAKscK3QoP1kYQu5KkN3aoibVnnNSd6rVfa6InXH/s=;
        b=YonKXvv0twFeeG67Xie7bew5Pun254wqzmnGtUTw43SK2yYR2w3eAGCdt3MRruGEUJ
         96SheQgGGHMkses+EMLrdMV8bhTI0DpSJfGAvzstyC42qvxDh/JG3wEF/klbqB0GIA6P
         IVVsB9ozNoecnQ1Kv++Jxprae0KaiS294ZyQn5o1DWlcbfcLM+UKX66rVMi+gtAZjMD1
         RDAwljof5soPUDlnlVtGNEEW8c6JyW9qyNjKgLSmDmcd2cDV6CwHfK5HLZFZUaa73ach
         SLc12eY0HijgpEgA3M+XXDO6Qid5iO/W6wT1JjlLQfDkDVPXgPzcdh4kUKT6W6WN/nhQ
         91RQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH9aBxBEy6Au/KgvV2GoGWHSCjzR3N/DPsc64uEPPJStpMbal6IabBLfNRdVj7VkRR4uFMcn93miWX@vger.kernel.org
X-Gm-Message-State: AOJu0YyhH5v4+Bs62fX5dcyy78T2/4D9LHZfJisUe237R6elFZv5k33B
	iYSsglhcUXvE585zdoCORwCDwfgFERmbMe38/tY+tfldiMxnHvUbB0YzDHxKb8fqd0HimVAT0c/
	lat46ORHavA==
X-Gm-Gg: ASbGncusqcagmJt7S/oaAQ2oD+Mpu9v35tbzpyqS+W6S+c76oQOi5vKU1z52UGz26Wb
	2T/DPVX3+HG7KDnHomaji0YPZdXurm5COCdJCcQlhuh2Nx8GYVmpwwv2WD7d793uPbokTvtlu6k
	cCZxxhO1xgsMr68+wdurIt6B/mnOtq+yucP3SS1FgNbXFli2ShLc/GO8WVxcKLYPkCxpkg5eYzs
	v8f1FwVKpKIEaenYMnCWgxfT/ce4Sa8LXpYa6SRF3FBuZvIfyfoMZs7wMC/DiGmbWzf3c6iKNRs
	OdAR7GJedB/yTIvtqvfwcsvpbi34tyx1lKu04uLk6YVckmA48bwgyQZjhW6DLNpc8tSgDD2oOe9
	S/op2dLiclWki8uF/1MBuFEVlDgwEAg==
X-Google-Smtp-Source: AGHT+IECH36FIWR3WtlVbi9pIVrUarBTvW9M64iPEf4vW1z/5lI7aXueUFIWtfoUkZsSo9xn+ErQqA==
X-Received: by 2002:a05:6902:448a:b0:e7f:7352:bb30 with SMTP id 3f1490d57ef6-e8179c2e503mr1883481276.18.1749021202551;
        Wed, 04 Jun 2025 00:13:22 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e817b41605esm188431276.0.2025.06.04.00.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 00:13:15 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e733a6ff491so5910113276.2;
        Wed, 04 Jun 2025 00:13:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU+r8Gra7vRQAyzegetNBGr3mYOPT300RRMyy5GnrKsFOzbgaDpbek+mxYL5qWetvi0LJBut6ioRpUw7WM=@vger.kernel.org, AJvYcCU/f+WRphs1kEiZtZ95sZ+z490KMzrN/2F/HxpqnLlu9cqz1rGJLnKopqkeA9mAKaVODenI9dqNtN0amUs3@vger.kernel.org, AJvYcCUwqT0UUCxwjrObguZdH7XL31LEyb5pYyKnnWTE+XeRBr2fxrHb9oEtK9dawR2VMqoVu42ilpesjyuu@vger.kernel.org, AJvYcCVcQZTBL5+Uq5KFTiapfho8yVoStiIi8YJhVXejaQo4MKBm4Tho4Y0dwY/avvFRDY7T304W3aaMCbE8@vger.kernel.org
X-Received: by 2002:a05:6902:1009:b0:e7d:b06c:709d with SMTP id
 3f1490d57ef6-e8179dac9c2mr2086427276.37.1749021193915; Wed, 04 Jun 2025
 00:13:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net> <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 4 Jun 2025 09:13:03 +0200
X-Gmail-Original-Message-ID: <CAAObsKCUusE68Bzce5fxukpOJ34M_w5vt7+gLSHZuMC8KXqtLA@mail.gmail.com>
X-Gm-Features: AX0GCFujZUaEEoiRSaHh2B6hjHyNEBOF25EbCsvQFur0Wj0AZ2p1QcOal7DajJE
Message-ID: <CAAObsKCUusE68Bzce5fxukpOJ34M_w5vt7+gLSHZuMC8KXqtLA@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 3:41=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, May 20, 2025 at 5:27=E2=80=AFAM Tomeu Vizoso <tomeu@tomeuvizoso.n=
et> wrote:
> >
> > Add the bindings for the Neural Processing Unit IP from Rockchip.
> >
> > v2:
> > - Adapt to new node structure (one node per core, each with its own
> >   IOMMU)
> > - Several misc. fixes from Sebastian Reichel
> >
> > v3:
> > - Split register block in its constituent subblocks, and only require
> >   the ones that the kernel would ever use (Nicolas Frattaroli)
> > - Group supplies (Rob Herring)
> > - Explain the way in which the top core is special (Rob Herring)
> >
> > v4:
> > - Change required node name to npu@ (Rob Herring and Krzysztof Kozlowsk=
i)
> > - Remove unneeded items: (Krzysztof Kozlowski)
> > - Fix use of minItems/maxItems (Krzysztof Kozlowski)
> > - Add reg-names to list of required properties (Krzysztof Kozlowski)
> > - Fix example (Krzysztof Kozlowski)
> >
> > v5:
> > - Rename file to rockchip,rk3588-rknn-core.yaml (Krzysztof Kozlowski)
> > - Streamline compatible property (Krzysztof Kozlowski)
> >
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> > ---
> >  .../bindings/npu/rockchip,rk3588-rknn-core.yaml    | 147 +++++++++++++=
++++++++
> >  1 file changed, 147 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn=
-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-cor=
e.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..9eb426367afcbc03c387d43=
c4b8250cdd1b9ee86
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.y=
aml
> > @@ -0,0 +1,147 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/npu/rockchip,rk3588-rknn-core.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Neural Processing Unit IP from Rockchip
> > +
> > +maintainers:
> > +  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
> > +
> > +description:
> > +  Rockchip IP for accelerating inference of neural networks, based on =
NVIDIA's
> > +  open source NVDLA IP.
> > +
> > +  There is to be a node per each core in the NPU. In Rockchip's design=
 there
> > +  will be one core that is special and needs to be powered on before a=
ny of the
> > +  other cores can be used. This special core is called the top core an=
d should
> > +  have the compatible string that corresponds to top cores.
>
> Is this really a distinction in the h/w? If you change which core is
> the top one in the DT, does it still work?

I asked Kever about it, and he confirmed that the core 0/top is
special in that it is able to relay register writes and share data
with the other cores.

Regards,

Tomeu

> > +
> > +properties:
> > +  $nodename:
> > +    pattern: '^npu@[a-f0-9]+$'
> > +
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3588-rknn-core-top
> > +      - rockchip,rk3588-rknn-core
> > +
> > +  reg:
> > +    maxItems: 3
> > +
> > +  reg-names:
> > +    items:
> > +      - const: pc
> > +      - const: cna
> > +      - const: core
> > +
> > +  clocks:
> > +    minItems: 2
> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: hclk
> > +      - const: npu
> > +      - const: pclk
> > +    minItems: 2
>
> It is odd that the non-top cores only have bus clocks and no module
> clock. But based on the clock names, I'm guessing the aclk/hclk are
> not shared, but the npu and pclk are shared. Since you make the top
> core probe first, then it will enable the shared clocks and the
> non-top cores don't have to worry about them. If so, that is wrong as
> it is letting the software design define the bindings.
>
> Rob

