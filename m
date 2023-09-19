Return-Path: <devicetree+bounces-1342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEDB7A5F86
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:28:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5FBD281A9C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85EA0110B;
	Tue, 19 Sep 2023 10:28:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D20E538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:28:31 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0C19F2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:28:28 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-502934c88b7so9110797e87.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695119307; x=1695724107; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQHjsvNbiZrx4g9lfYTl98XMHQ/DiEm4zN7iWnjsvMo=;
        b=KZGJ6CH4iq25DEmAKzPGRYj0I20z1IFga8p1XZO6WqoxdrcfJBI36vIwCkLgKJuPsc
         8SrRo+dldj9q0wVhuLoeBYUc6yoLgKJLfl2vBiQm5Q3Lqs1X6VtyIVf82+7olN2XMwI0
         +V7HYUHFMSlPlrS09odX8WY4hFwRM/M18Gi7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695119307; x=1695724107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQHjsvNbiZrx4g9lfYTl98XMHQ/DiEm4zN7iWnjsvMo=;
        b=txhJQE1c6J7vVrRvjRtXkhPAn3ZwRZ9GoviVRU8+pnnMxAAs40nNUPaEQIJubLCtD5
         HqSSGaE7dt5uea4gluq9LsS73Rm54UtWSN+0rvpBdgGigayt0Ak1bYLpr8BnnLO9xjO7
         HFSMa64TqflXEOVGx5VcLbCCYTrUa1eyN/1x7asuOKh5vxFo6CQ1Wca28RpLalVhLl1K
         v7DAY1V/J2hj2xCouHy9Go6f5196yfFGA3pjMo+LLh3fdDY9WLfvuvdp+YkQLPJVBx9x
         r51eZHKNbpRbQL0Yk7yLuSGHgzPzkQ8eoUjfyTxWk2Xqt3eEmmUcclMgFTa6UEA8Mus6
         EC+A==
X-Gm-Message-State: AOJu0YxikkaEZRyUFxlRIPc0YzdFY4bbNbrBvc3VLUUOz2aSF6z3zMZD
	2sREJ/ZIuXD/BK9GHUbGeHTGmJMQWkqG+gqo5pLsjg==
X-Google-Smtp-Source: AGHT+IGM6xnlFEOYsGOy4vaMQaQCBEdxtKKl8J/sGO588nMpavoXIoMxtEAICrfWJ2kSxArbOreXBVnaWhrKp8Pal9c=
X-Received: by 2002:a05:6512:36c1:b0:503:3245:6eda with SMTP id
 e1-20020a05651236c100b0050332456edamr833333lfs.40.1695119306913; Tue, 19 Sep
 2023 03:28:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com> <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 19 Sep 2023 18:28:15 +0800
Message-ID: <CAGXv+5Hk2Hd_GPk8WerpyZ0NGtoWOiMPY-LquJxLGbG2Wo6FMA@mail.gmail.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: mediatek: Add phandle to
 mediatek,scp on MDP3 RDMA
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, moudy.ho@mediatek.com, 
	hverkuil-cisco@xs4all.nl, sakari.ailus@linux.intel.com, 
	u.kleine-koenig@pengutronix.de, linqiheng@huawei.com, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 5:59=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The MDP3 RDMA needs to communicate with the SCP remote processor: allow
> specifying a phandle to a SCP core.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  .../devicetree/bindings/media/mediatek,mdp3-rdma.yaml       | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.y=
aml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> index d639a1461143..0e5ce2e77e99 100644
> --- a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> @@ -46,6 +46,11 @@ properties:
>        include/dt-bindings/gce/<chip>-gce.h of each chips.
>      $ref: /schemas/types.yaml#/definitions/uint32-array
>
> +  mediatek,scp:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the System Control Processor (SCP) node
> +
>    power-domains:
>      oneOf:
>        - items:
> @@ -98,6 +103,7 @@ examples:
>          mediatek,gce-client-reg =3D <&gce SUBSYS_1400XXXX 0x1000 0x1000>=
;
>          mediatek,gce-events =3D <CMDQ_EVENT_MDP_RDMA0_SOF>,
>                                <CMDQ_EVENT_MDP_RDMA0_EOF>;
> +        mediatek,scp =3D <&scp>;
>          power-domains =3D <&spm MT8183_POWER_DOMAIN_DISP>;
>          clocks =3D <&mmsys CLK_MM_MDP_RDMA0>,
>                   <&mmsys CLK_MM_MDP_RSZ1>;
> --
> 2.42.0
>

