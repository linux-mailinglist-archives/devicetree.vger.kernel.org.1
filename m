Return-Path: <devicetree+bounces-3624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5C47AF849
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 04:45:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A7FAE2813CD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 02:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF8663D2;
	Wed, 27 Sep 2023 02:45:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6614C80
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:45:27 +0000 (UTC)
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BB5E1588F;
	Tue, 26 Sep 2023 19:45:26 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6927528c01dso1592839b3a.0;
        Tue, 26 Sep 2023 19:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695782726; x=1696387526; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zo4eZj80i7lnqXGQPNze2DYnN/vFdAqsTiyd8wFnr7M=;
        b=lH367FjzaNb/cCTaqhZVZrrUX9Y3Zdmc/6Ha58QzTys2UWbQYsgxNLfJxp6tA0syrb
         WO3ZjAZSMU2+nV19ZHgGOT8jQME51AUi84LMOTs0txr/10UqLyoFBZkXNyV2iOKOK8sL
         1gbOv9GyQehUIeaHWMZmPxyn3A7Px2wmgHpIa8HDuNOW0GKIcttP+7NMfCvCan5rR03M
         fb//qS4aX+x4CTGvDtCk/ZvOopA4YspuCvt85GTRg+LEfZSUBtHQxYSkBMN/0QQT8bsD
         kCZISuxoFP/HkZfg+23fGwLhpAeEqfY8sk27o8TejPy6DEDn5HGlY7+tf1j7IVNN56XY
         9/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695782726; x=1696387526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zo4eZj80i7lnqXGQPNze2DYnN/vFdAqsTiyd8wFnr7M=;
        b=kznuYqtKdiLT3AA3B9DRr8MUyuMVpEf6CjNCYnZBNgsaQKV37+nfQ16Dvf1lHrwl1A
         H5VhFBD5eUH3LAowVF+5lNZjwsZKuVrkdhghO9bZ6UqyR3cQJDb4GVaZ3QaroPjqzg9u
         YR/+BgGPva4xJ7tYeMpc5qKHD4NENzZ3vHHm36tPIrSEGq4wSsvUZFqPuMqedFZBMF02
         3yk9iR2nmXP4/pvgWdsCpcHtfzzTdib3CiBBX71NnWGJlALneg+pM77A+5IGov9XpYUi
         UAejTwZjBHXSUU3ZNWINiHNEMJyeLtDAGAruHOX3lOaHwYtwVlu2W8R3kCr3uGms+uME
         mqeg==
X-Gm-Message-State: AOJu0YzkRMd/YiC4ngmBa1hb1o7UsjXk7ul9XH5Wx0z2fstcfqz+nZmR
	AmhrR9owuv0ZWlL4i7aAN3CyUIfwL9tIN39meAXBPRDtkOg=
X-Google-Smtp-Source: AGHT+IFJwBoarpWS3kZn6qektf8GP/bw3F60AtAYeDyv1lSkI64iQsPlykC+Te7ZnpXbLxHzGbxbTvWQAYCIJEG/Ncs=
X-Received: by 2002:a05:6a21:6d88:b0:15d:f804:6907 with SMTP id
 wl8-20020a056a216d8800b0015df8046907mr846347pzb.0.1695782725738; Tue, 26 Sep
 2023 19:45:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230927023321.3955170-1-chancel.liu@nxp.com>
In-Reply-To: <20230927023321.3955170-1-chancel.liu@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 26 Sep 2023 23:45:13 -0300
Message-ID: <CAOMZO5AnDuU1cd2oLuNd-HSv7LEnn7y4PWjqzRoQdf-PaaU-TQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx93: Add audio device nodes
To: Chancel Liu <chancel.liu@nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	linux-imx@nxp.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 11:33=E2=80=AFPM Chancel Liu <chancel.liu@nxp.com> =
wrote:

> +                       mqs1: mqs {
> +                               compatible =3D "fsl,imx93-mqs";
> +                               gpr =3D <&anomix_ns_gpr>;
> +                               status =3D "disabled";

No clocks here?

Please convert Documentation/devicetree/bindings/sound/fsl,mqs.txt to yaml.

