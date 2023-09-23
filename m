Return-Path: <devicetree+bounces-2736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4711F7AC4AF
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EE8432821EB
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BD702111A;
	Sat, 23 Sep 2023 19:12:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C5233CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:12:33 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7080EFA
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:12:32 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-59be6605e1dso48410187b3.3
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496351; x=1696101151; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tparx3l0ikz66NK3tLBEl70hjPdpPsu27P74LAY5v9Q=;
        b=AEc10IFPK4GcoL17hM5QOSS+c1s4ExOX8JoSteGPobW1CAz+mNEHA9cfbgP0cilTuK
         GXMUvpVxBxHWMP0Bm7ZbHcl3FDApi13lpZVuHYjQNoFXHO33CWYEFtKMv1q6trQv+UMe
         0L4tVQylD0MJ3tmrbUau0jWtObUmcyLlmgEpF/OEmEbdVTHF/dTl9swPhcy80wT6Gj9b
         Yr43A1q7By46u1D5e7ryKBBVZbBSUaZnkvApvGXBJ8nZUjdYtSKJaqi9PfCnu97O0Y+g
         t56AcQK54rtX0IyH93J1ALiJNKxetgUSPTT1LiExtvrCnv9nMQTeL/LfSjvFZJiKJBWG
         yxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496351; x=1696101151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tparx3l0ikz66NK3tLBEl70hjPdpPsu27P74LAY5v9Q=;
        b=RKlCzNhbIX3rgxiLatt+kwsq7en6z/joWUV5mJsQTrjNPVIEyZzQaZRsJMIFi3QOyY
         N+RuebZO6023YB6qkwV34TBTKI5oWFYo3kE5j4gW4RBNZTGPVqswXJpTET8Tsj0lwQb8
         ROEWdWr4dB9qI2IiqBcXEw2y5f2SZPcRfZap7OEL7a3V6/bUbUiYXlmCIzxZr+U/CLuL
         a9mqR/8qTWUj17ueBNL+sKbcT3AFkZf+7vZ5dq1Hr30lso6lUGvsEK5zKXha3nzb+XnN
         Tx3mXcKKk8Yo4Lwb10RPFrXt9ihokMJ3YX2p+wnMn3P0A5H5IWfu/kCCAj/uWn5uPOyX
         hxaA==
X-Gm-Message-State: AOJu0Yz+eDjBvq0rKZXdd24+l47wWXeW95nkhw2UzlFMNfqShDMwPa24
	KxWm4JALeJON4sTulegeSlAlGEPGzz+MwGUwzXdWsg==
X-Google-Smtp-Source: AGHT+IHMs08AvAYu12BauPYVcMNwepKA0e0fxEUVJUaQmQXlGMsK6TgJkoAuEjnNJ2FmgCL9NOrejGX9+oJhlWeihSU=
X-Received: by 2002:a0d:c546:0:b0:594:e439:d429 with SMTP id
 h67-20020a0dc546000000b00594e439d429mr3163907ywd.37.1695496351669; Sat, 23
 Sep 2023 12:12:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922081026.2799-1-quic_tengfan@quicinc.com> <20230922081026.2799-6-quic_tengfan@quicinc.com>
In-Reply-To: <20230922081026.2799-6-quic_tengfan@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:12:19 +0300
Message-ID: <CAA8EJpq1NAOZTOmBUUnkeLDThvxosj=MzNHo=5VAXnRPQci68g@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] arm64: dts: qcom: sm4450-qrd: add QRD4450 uart support
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	tglx@linutronix.de, maz@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, geert+renesas@glider.be, 
	arnd@arndb.de, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 11:13, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Add uart support for QRD4450 for enable uart console.
>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4450-qrd.dts | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm4450-qrd.dts b/arch/arm64/boot/dts/qcom/sm4450-qrd.dts
> index 00a1c81ca397..e354bad57a9e 100644
> --- a/arch/arm64/boot/dts/qcom/sm4450-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm4450-qrd.dts
> @@ -10,9 +10,24 @@
>         model = "Qualcomm Technologies, Inc. SM4450 QRD";
>         compatible = "qcom,sm4450-qrd", "qcom,sm4450";
>
> -       aliases { };
> +       aliases {
> +               serial0 = &uart7;
> +       };
>
>         chosen {
> -               bootargs = "console=hvc0";
> +               stdout-path = "serial0:115200n8";
>         };
>  };
> +
> +&qupv3_id_0 {
> +       status = "okay";
> +};
> +
> +&tlmm {
> +       /* Reserved for other subsystems */
> +       gpio-reserved-ranges = <0 4>, <136 1>;
> +};

Is this also related to the UART support? it looks like it is a
separate patch, which should likely have the Fixes tag

> +
> +&uart7 {
> +       status = "okay";
> +};
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

