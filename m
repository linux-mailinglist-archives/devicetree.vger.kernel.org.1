Return-Path: <devicetree+bounces-2173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C4B7A9CB5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AD83284F9B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2783E513A6;
	Thu, 21 Sep 2023 18:34:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4F0513BC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:34:39 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F13CD7DA2;
	Thu, 21 Sep 2023 11:29:05 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6926d5ad926so141271b3a.1;
        Thu, 21 Sep 2023 11:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695320945; x=1695925745; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kk1JuLAjBu8ARQtDEROwDNkOvY+dM0M3GhfWzBga4AE=;
        b=YyPFpjyON8esafdqgcUggal6BrniQvLlzi3Wv6URa+6zJ46wxdfx2fFuPHi1WqJVeA
         bcctB2k0rAytFwrhBI5MaW9tXnPYSBr4wF4t24riYQ0WaSCCLdxoTiGwzHvLFXRXVfyd
         fs8mrqVxRx+O1xns2+oDY1IyEpo7ShR8Yzm4/0tUTAy1SsUaLf+hy0YU9YoO6MSXDOdQ
         cporG1AoFPqvyRaBXOfX3WnncEd5O1HkkJV7FJSiXQ9YVEzgmHdLbRXawxxthIg7w1oQ
         7AZ7sdFFTl7RntfPWsO1a6s+sEC9COxj5ttQvSagC7osRg5oAYr3oZNM9xfAQqB3u/ZQ
         20lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695320945; x=1695925745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kk1JuLAjBu8ARQtDEROwDNkOvY+dM0M3GhfWzBga4AE=;
        b=KUUdoFcdsnn0z2kRkMZIbX+79iPUIrz4CT7q6S6fKCbi57YoCeZ5m4tFxi+ubgxuyC
         NuFCCrVh6V2DLsSqK0Dv7gxU/NgPwJfpxCiheOmyI7YCYInbQzuqaAxi+ML8XAtfCjJE
         NeCkj8smGqhmo88v7JFFRkIX1ag365HpDPTUnR1+Rv2dTeZUNg2JkNELe0t1e9d/sipX
         ife7E0VK+9VB8zMn9dli5uAXyCbg+pwU5Nm1EgQ9Bab0zFmxOXF1jcIXbqlZAKMyjYDo
         xw3+UtTXcS3U2X5muUD6rixKcf4OXSFik9c1t1py5IaSrmDWmlM//yJbpeI+Uwp6Ab7T
         2rDg==
X-Gm-Message-State: AOJu0Yyeb9MMd0L1jXxKY7/Hj3L/woE4Eycj+zqNcaB5QnLcyMUsVWlP
	31H3/rkxUUVilWaqfXmgYdeIlAtRFe5/z17ZNEOnfPQi8wQ=
X-Google-Smtp-Source: AGHT+IFNWk1poEMYgYBY4CnqAzqr8kgBCYMunEAMtsTlVAjK8hjBA3rjeNZ6xE1SN0XX1vOBFdD37+4K2TOCGtNH9bc=
X-Received: by 2002:a17:90a:7562:b0:26d:4312:17ec with SMTP id
 q89-20020a17090a756200b0026d431217ecmr5103689pjk.1.1695300837233; Thu, 21 Sep
 2023 05:53:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921005258.184705-1-festevam@gmail.com> <20230921-75ba68806e21c96531ea2d70@fedora>
In-Reply-To: <20230921-75ba68806e21c96531ea2d70@fedora>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 21 Sep 2023 09:53:44 -0300
Message-ID: <CAOMZO5AYTe1mJTvR=2zWCVrYqVVdmP7A9fCCrCPqgisXYQpeYw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: mxs: Fix compatible list
To: Conor Dooley <conor@kernel.org>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Conor,

On Thu, Sep 21, 2023 at 6:14=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:

> Dumb question maybe, but it is not mentioned here - they are actually
> compatible devices, right? I see that they have some different match
> data in the driver (relating to some DMA erratum on the 23 seemingly),
> so it's not immediately obvious to me.

That's correct.

imx23 and imx28 are SoCs from the same family (mxs) and they share the
same AUART block, so the same programming model.

imx23 is the first member of this family. It had an AUART erratum.
imx28 is the second member of this family and had this erratum fixed.

This means that using:

compatible =3D "fsl,imx28-auart", "fsl,imx23-auart";

is valid.

Would you like me to improve the commit log with the information above?

Please advise.

Thanks

