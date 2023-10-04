Return-Path: <devicetree+bounces-5809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D0E7B7FC5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 578A22813C0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8793C13FF0;
	Wed,  4 Oct 2023 12:50:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8691A13FE3
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:50:51 +0000 (UTC)
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76C5BF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 05:50:49 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-57ba2cd3507so1184125eaf.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 05:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696423849; x=1697028649; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7JJDQBnBL5OpSHnZeFWSOHsKz7Vu0XjLjDoRLw0uoAM=;
        b=YmRMP2yQEuuV2AXCkQco/qsJOe2DS8UElZVEJVlXoRWcKkAtU//IrZkBqhj95IgsNX
         3KZKTAUKKq6vMs1CtoUnEtFzuT0N3lqiU6ph9l57kciaQntsuxN+qhIC8MV/RKHEipzt
         JZsQOKMJGbEghNsSW/AB7CeFJce/Vfhk4B8WAM8SH7RwYdvwI65r4QEr6n4FaOLcRDtl
         Reai0cgWBoJ0qTJ4ACcTXLFjIPHTTIRLN94VvohL4zc9KvqvQ4yxYLNIufdrW581xsQv
         klumqYjk6WCskr0VaApq5iPaiQY6frrtlUb9EcNKtK8J8EQtpdMK0EO5I2oIQOOq/lLn
         zSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696423849; x=1697028649;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7JJDQBnBL5OpSHnZeFWSOHsKz7Vu0XjLjDoRLw0uoAM=;
        b=F3P/lzqdxPT5g9T3ycD+DOz3ghtCvcFA1nNng2iTSwZkigkI4/Vb5Gl38j0Gr7UQh9
         495L720JZvaBEceQ5hbeI/vzhdVbVeDKeatLgkLARX6Mu4FxhjyUHYcxWc2TwjAjNSgm
         vKrCiBTw745IfOehZRu7ay6rPJsmwk3qed4p8N4k9a5Ig0qkfTRtn0ulU2s1YwLnAK+0
         4bWqQpqVIE5MM45CyS+7c2rCW9on8MWw5fKhDYzb7BplEpnEpF2py2GxjGb2Hzn5F63O
         zFAVvFXtSRchLscY4ZzGZ8A7b3nfI1QhkFa1rYPU4KhE2LQhCVns6Z2Zg1HPkMmSsEB4
         yhdw==
X-Gm-Message-State: AOJu0YzR/R1z/ABo+JXd7ZCRDaxCN5gSIVqmLic535MpV29DYZXz+BGd
	aS33Oe13efMH87UK4OpJoWDcO1xqHzVIMx1MsSM=
X-Google-Smtp-Source: AGHT+IFP2VHVG8ZZhl48jAMzQt9MI4WSt35NkKpkfiQ7hhc4V4Gf4yGHxHUIi3UsX+H72PGVDWgCdmXe+EnAB8G+0dU=
X-Received: by 2002:a05:6358:e49d:b0:133:a8e:6feb with SMTP id
 by29-20020a056358e49d00b001330a8e6febmr2061553rwb.12.1696423848474; Wed, 04
 Oct 2023 05:50:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004122935.2250889-1-festevam@gmail.com>
In-Reply-To: <20231004122935.2250889-1-festevam@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Oct 2023 07:50:37 -0500
Message-ID: <CAHCN7xK=2RcJX4GhKOOD=AsTHP810Ndd3-zF-Dkg781ApzG_QQ@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: fsl,micfil: Document #sound-dai-cells
To: Fabio Estevam <festevam@gmail.com>
Cc: broonie@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, shengjiu.wang@nxp.com, alsa-devel@alsa-project.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 4, 2023 at 7:30=E2=80=AFAM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> imx8mp.dtsi passes #sound-dai-cells =3D <0> in the micfil node.
>
> Document #sound-dai-cells to fix the following schema warning:
>
> audio-controller@30ca0000: '#sound-dai-cells' does not match any of the r=
egexes: 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/sound/fsl,micfil.yaml#
>
Should we add a fixes tag, so it gets back-ported to stable branches?
It seems like patch 02d91fe47100 ("ASoC: dt-bindings: fsl,micfil:
Convert format to json-schema") may be appropriate.

> Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Adam Ford <aford173@gmail.com>

> ---
>  Documentation/devicetree/bindings/sound/fsl,micfil.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/fsl,micfil.yaml b/Do=
cumentation/devicetree/bindings/sound/fsl,micfil.yaml
> index 4b99a18c79a0..b7e605835639 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,micfil.yaml
> +++ b/Documentation/devicetree/bindings/sound/fsl,micfil.yaml
> @@ -56,6 +56,9 @@ properties:
>        - const: clkext3
>      minItems: 2
>
> +  "#sound-dai-cells":
> +    const: 0
> +
>  required:
>    - compatible
>    - reg
> --
> 2.34.1
>

