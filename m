Return-Path: <devicetree+bounces-68690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC028CD07D
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D5E11F23D9B
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B38B1411C2;
	Thu, 23 May 2024 10:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BEYa+G6O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A65140394
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 10:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716460877; cv=none; b=ZBPDDD2n4uJ/3eKhVG5c7vAspFsg3q1CXiB54dh6zh3FBQRtRuZ9L82b/FFzEZebXBvwnQ8Bkmoj3lN63lq9yWmXeAerLVlz2Nxw78JzslMiCE1pDhNiot1vudR111MIaaFWT2lQkS7Zjp58MC/KfV/tfjbMdvETWEZsMGGlfLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716460877; c=relaxed/simple;
	bh=q06YPbRgNkgxbn7RemtS9UbVzl2I7UzZ5jwZDFiVGoc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NC9P0gWZ72280ZIvEBCKFaBbVJ0D5IIm+CHJU+c7aBudZFHTuCMXP2A2yuez9/QmgBPnVrPvurRzmQ3NpFSZyBQvl93PUtm1N8IyTsmiv5qL84VLkoXyZPsYbxwTuEQHk4GAEWrJC2xQlDn2ZjVNw6btn6xddenqE+60+KEXu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BEYa+G6O; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51fcb7dc722so1733417e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 03:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716460873; x=1717065673; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BL1+X00ACKL/bv+6PDk9L99Rw1muN1ABKKcgYAgwe5Y=;
        b=BEYa+G6O4zaXbqCqlaCokQfaIxUXw6GqwtJjXo9w+edzRqpY63WkUeHTfiM6LAACCc
         xB5Nju24Grvg+uF6cJbJGPRXDHsVbSg51fM5be4PEYHnuOTuKJUHj09p00J2EeEbtXDS
         mellnWYrqlTqIzx1i5bzvlC2sBCVzC16xLEyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716460873; x=1717065673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BL1+X00ACKL/bv+6PDk9L99Rw1muN1ABKKcgYAgwe5Y=;
        b=Li6kgECql39UGpHt1+M1LLDNvfNAm71MfPKKatNK6hG9fpjadhzchSgwa/SOyBvbaG
         W2uYxm7yBRqmGipOjiMaExB3h2CMyy2P51fsdZE/sMSwoPx6usk6n/kYCx33iVuIyYQQ
         SmkPq1FdTZMamzvgi0oiSrKjqWR0QYCSWmveEoi0zI2CYGSSJz0hT40cCjXb600gKmt8
         M27uk7xIi4v04CtK4VqYVXY4BPsrG+l6w0pjGJDQ+TP+x7eaePWBMP93qMuCjmfkhZ5r
         hb8fjhETgiEBY6ekXczUWAK3hbrseA/xDsZljPuoPF0IjPNLQ3aa0oNimVmLvtZ6kIY4
         E5VA==
X-Forwarded-Encrypted: i=1; AJvYcCVpbz7/JiZzQEMpCCN8crMf3xx4mXSSTIlEew1tFEEF/gBkfD5vrSFd+22saQ/PjqBnx5L9pu/uEB1TAMkTRygDkd7ewS/TBe0SGw==
X-Gm-Message-State: AOJu0YySqOpb2GamSc62PTTGaGypRaYASWLcWHFEr4eG+UKcaRTIHXd/
	q+P4He7whxj2gcy5PuMS4f22GXix8JTdNgulRcNdw6UVZm/5IhdnM4fBEoNTsQht2ITT8ClGvmZ
	i/pNq4BP18gzA9K1kJ25rZ9m7FyYW2qQX5nVX
X-Google-Smtp-Source: AGHT+IFqTEnp78PCvWoQDhZCseLpuI/oZewTrl4O4PyV0liWJOGAHT0/ixjwOP3rlpfNlPgDIVcGQNWnWwCWzn66LzI=
X-Received: by 2002:ac2:4e45:0:b0:51b:efc:df39 with SMTP id
 2adb3069b0e04-527ef4f5d09mr587927e87.10.1716460873562; Thu, 23 May 2024
 03:41:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521075717.50330-4-angelogioacchino.delregno@collabora.com> <eca4d113-ba59-45aa-9224-22235fb09ddc@bosc.ac.cn>
In-Reply-To: <eca4d113-ba59-45aa-9224-22235fb09ddc@bosc.ac.cn>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 23 May 2024 18:41:02 +0800
Message-ID: <CAGXv+5Gzau7qFrsOrKsm7yXNX7AKadgNM5S3SaTNNu57=5-8EQ@mail.gmail.com>
Subject: Re: [v5,3/3] drm/mediatek: Implement OF graphs support for display paths
To: Sui Jingfeng <suijingfeng@bosc.ac.cn>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, chunkuang.hu@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com, 
	ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, Alexandre Mergnat <amergnat@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 22, 2024 at 8:32=E2=80=AFPM Sui Jingfeng <suijingfeng@bosc.ac.c=
n> wrote:
>
> Hi,
>
>
> On 5/21/24 15:57, AngeloGioacchino Del Regno wrote:
> > +static int mtk_drm_of_ddp_path_build(struct device *dev, struct device=
_node *node,
> > +                                  struct mtk_mmsys_driver_data *data)
> > +{
> > +     struct device_node *ep_node;
> > +     struct of_endpoint of_ep;
> > +     bool output_present[MAX_CRTC] =3D { false };
> > +     int ret;
> > +
> > +     for_each_endpoint_of_node(node, ep_node) {
> > +             ret =3D of_graph_parse_endpoint(ep_node, &of_ep);
> > +             of_node_put(ep_node);
>
> There is going to *double* decline the reference counter, as the
> __of_get_next_child() will decrease the reference counter for us
> on the next iteration.
>
>
> > +             if (ret) {
> > +                     dev_err_probe(dev, ret, "Cannot parse endpoint\n"=
);
> > +                     break;
> > +             }
>
> Move the 'of_node_put(ep_node)' into brace '{}' here, if we really cares
> about the reference count.
>
> > +
> > +             if (of_ep.id >=3D MAX_CRTC) {
>
> ditto ?

Maybe we should just add a scoped version of for_each_endpoint_of_node().

See https://lore.kernel.org/all/20240223124432.26443-1-Jonathan.Cameron@hua=
wei.com/

ChenYu

> > +                     ret =3D dev_err_probe(dev, -EINVAL,
> > +                                         "Invalid endpoint%u number\n"=
, of_ep.port);
> > +                     break;
> > +             }
> > +
> > +             output_present[of_ep.id] =3D true;
> > +     }
> > +
> > +     if (ret)
> > +             return ret;
> > +
> > +     if (output_present[CRTC_MAIN]) {
> > +             ret =3D mtk_drm_of_ddp_path_build_one(dev, CRTC_MAIN,
> > +                                                 &data->main_path, &da=
ta->main_len);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     if (output_present[CRTC_EXT]) {
> > +             ret =3D mtk_drm_of_ddp_path_build_one(dev, CRTC_EXT,
> > +                                                 &data->ext_path, &dat=
a->ext_len);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     if (output_present[CRTC_THIRD]) {
> > +             ret =3D mtk_drm_of_ddp_path_build_one(dev, CRTC_THIRD,
> > +                                                 &data->third_path, &d=
ata->third_len);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
>
> --
> Best regards
> Sui Jingfeng
>

