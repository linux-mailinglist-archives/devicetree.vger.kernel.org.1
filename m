Return-Path: <devicetree+bounces-57095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 815ED89BB81
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 11:20:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E04C7B241D1
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 09:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC2A446B7;
	Mon,  8 Apr 2024 09:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I+6bMY6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08E540867
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712568006; cv=none; b=ra4xmQ7BDSAIy8seTBkL4yYaQyDKofhlTBZ3koS3lzZUWZ5A3SYM2e2Zengc7x9B0cStgkVvZ35gtJbgyW/C8MTQttgyPlHKbWWVkV3RyCwCrSfA/+4cPDgyL8ShFu4avxp1If1R1Zbb1Qhi9kurXMhp69pXfbzfqK6cGmpg1eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712568006; c=relaxed/simple;
	bh=enur1LOj5KqyFC0kP8B0ViXTcPnakLNndi4E8TWOHLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k/M9HkE9vnXwfx8LseFiLnSxD2voeWy/ZNOXSHYt2HatfkY8DyVOnJN5UD6OxEarrxKQlbn2qbttzdLarxMHKXxMFdzxhdm+MwcP9B+ziOArJfSBLde5e7hiVu0MH6Leww6V0oagpguy3/J2oEyLMIfH2jagXypKFM+uVHi0OVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I+6bMY6e; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1e2232e30f4so37030765ad.2
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 02:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712568003; x=1713172803; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQ7k7b7gOG5IXFP+GFgEExqu4kGvcRryxWmlkgqGSi4=;
        b=I+6bMY6enUVIznq93nZ1kaNzmIoLtm9lQS8Qxz38H3S8ivFcEJzy/+lgQp3nvzVe5j
         s0wiGWNkGwsFXgK4KeRs+M3yxnHTODKgYPswnlNbqsZ+eEKB7s1To4vQ1RARj1bNorjw
         aEs1xvTtl7xPAc3whfsWxV0CaSw5VY4ncUOeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712568003; x=1713172803;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BQ7k7b7gOG5IXFP+GFgEExqu4kGvcRryxWmlkgqGSi4=;
        b=xKPPJpgc/YVsiu2E8er3HRljtZD0n57lAj2887yCz284S8wOFX8JcjYVIXedOo9Mbn
         f0jmrSCciQTRazG3gdAqXh5tKn97st1CO4R1e47lhqAEdPP6llmd4Xnv0gDCWIUWIv7r
         rQh6OdOm0gdJB2Kkugo1Rxiz/ptlL0rmTVxmTs50qQgvzYmhPm127p9MlVYlBZQLU6ga
         uMuj9esXOXHSHizhdwCIngz63uKNPxsWYzKuMt8xE8zoBQXgT8CsfnxQCetqG/dzkE3B
         faqIOuC6jeERC8umi2v9Dv4PIlhI87OQcPwEMiZ5xkRifvgEiHyZzsIj25LzMKGpoEZC
         25Yg==
X-Forwarded-Encrypted: i=1; AJvYcCXyg0CVhkAsG3+XGmusnGIjxI5+vEhtBicw7izk9HLj54p7LV5yrpzXnCfgM2M/GBCIPBiyr1xMDH2uPoIPkQ1RxP+FLQ2zJRVkkA==
X-Gm-Message-State: AOJu0YzqmHQQZTZHl+BF5FRgf4EmNXE7xeu23oKlmqSqk1DR0bxUeZ5T
	dXl7K3GqR7fe37ys9Zh+znGl13MTjoFOhXeAbsTi4ezzC2zMi8LfycKt9euLOf2hs3Wy27y3sDQ
	cMQ==
X-Google-Smtp-Source: AGHT+IFij3Vh8magY88/vOS1mQItYYJdQfgiurJgFVbPLttrvb+7vdw7S9hwXUDg/tDgUU1m8jwoKw==
X-Received: by 2002:a17:902:e751:b0:1de:ffbc:8d95 with SMTP id p17-20020a170902e75100b001deffbc8d95mr8183395plf.67.1712568003471;
        Mon, 08 Apr 2024 02:20:03 -0700 (PDT)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com. [209.85.214.175])
        by smtp.gmail.com with ESMTPSA id n1-20020a170902d2c100b001e3cee88212sm5102776plc.230.2024.04.08.02.20.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 02:20:03 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1e3c89f3d32so235275ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 02:20:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUzWVSw2Q7MRsJjBRIulsX6/Rj3BsPjG2Ok1n19uzV68+1fU00P61aKjJJbwq1O+2KCnjHIxY3kFM2CtEptrngzi3FWP0q+NFo/lw==
X-Received: by 2002:a05:622a:6085:b0:431:5aa3:313f with SMTP id
 hf5-20020a05622a608500b004315aa3313fmr266078qtb.11.1712567529634; Mon, 08 Apr
 2024 02:12:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240327085250.3427496-1-wenst@chromium.org> <171156080808.3681700.13600868771478432605.robh@kernel.org>
In-Reply-To: <171156080808.3681700.13600868771478432605.robh@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 8 Apr 2024 02:11:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XqHwS9csZaY7fa1p55gFPBbdq7tcf6exjp+qjLGb32RQ@mail.gmail.com>
Message-ID: <CAD=FV=XqHwS9csZaY7fa1p55gFPBbdq7tcf6exjp+qjLGb32RQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: bridge: it6505: Add #sound-dai-cells
To: Rob Herring <robh@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, dri-devel@lists.freedesktop.org, 
	Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 27, 2024 at 10:33=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
>
> On Wed, 27 Mar 2024 16:52:48 +0800, Chen-Yu Tsai wrote:
> > The ITE IT6505 display bridge can take one I2S input and transmit it
> > over the DisplayPort link.
> >
> > Add #sound-dai-cells (=3D 0) to the binding for it.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> > Changes since v1 [1]:
> > - Reference /schemas/sound/dai-common.yaml
> > - Change "additionalProperties: false" to "unevaluatedProperties: false=
"
> >
> > The driver side changes [2] are still being worked on.
> >
> > [1] https://lore.kernel.org/dri-devel/20240126073511.2708574-1-wenst@ch=
romium.org/
> > [2] https://lore.kernel.org/linux-arm-kernel/20230730180803.22570-4-jia=
xin.yu@mediatek.com/
> > ---
> >  .../devicetree/bindings/display/bridge/ite,it6505.yaml    | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Pushed to drm-misc-next:

325af1bef5b9 dt-bindings: display: bridge: it6505: Add #sound-dai-cells

