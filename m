Return-Path: <devicetree+bounces-8928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 635597CAA80
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC0D1B20D79
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A2228692;
	Mon, 16 Oct 2023 13:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ZGfXHDIE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E6427EEE
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:53:48 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 484A6F9
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:53:46 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-53ebf429b4fso2024466a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697464425; x=1698069225; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOvRSIBCKDO/EoG06SNXpskpBSv5uHfI6z7Qbijhh84=;
        b=ZGfXHDIEVPsrSdi6s+cmpqGpouYUKTMnHCS0XjgyskuNwWucIDjhMF7sJdA650u0aF
         F6LffFSACGmJSI0ChVpnRRmsvDqaSedds+h4Pq2bhnEXceocq6j1uKfCv5VZk5GxK8LQ
         QGlBpWwk0qLq3vPnL4ILlwUdvrCcYNkzABzYzs1HEiKVKwYFehlXmDnkLhGVla1K6qq/
         5Dpoa8QwjjfdotnmCzsEhOl7rplTtfTMuEPnT6YtISlME/pEkSdm5bxTXeoB7YeiOgHN
         TGDg77JFPEL7UTIhgBoRUTcVz+P0KCmntScaYclCQVXVL3ZqPWrlU5GndpHBd/CXgr9e
         Hq7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697464425; x=1698069225;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vOvRSIBCKDO/EoG06SNXpskpBSv5uHfI6z7Qbijhh84=;
        b=c+14VeURSE1jDq+b3lkREQbWkvsEDm/YOwa+zQhYSmqDZEiinADTxsxnxQg+oXSgN7
         HFisL1M9iu3UcdSr3c+WvR1k86FCxLHHC/9ZD5iyyW1ZsSMGfP7gceC1NvgBIP1uYxfO
         xpj5hm3eiNYIXW6ymhF99Z3WhPAxFUVPTkwXxR2IXm1sGVG+rMLPPFAdu7Co5WBS+m/6
         GlpFZpmSdiVhRz0HVYVCrvNTTSkcM9dxdEQ0HPY8jya85TPUur1NrGayCFgNnoAkCirn
         5s9wYBHD2jcvYs/eS9f6bQvAN1yxYafOrws/pjvi9gSkIQjzW260m+w/Vds7bPC+nwLT
         0ZVw==
X-Gm-Message-State: AOJu0Yyu3nQ8XztGgvPM7DBLodxkUQTEpibqke5wiM1GZ6PyxKT5I68D
	mudSS6/IeTFnbFMP6OCVPP56wg==
X-Google-Smtp-Source: AGHT+IHoxPW8PwdZUvfviYS7QdbDikx9yohEhHLS/XOTq3T9uH87ZFiSCdLJimiupbVDzkcfzqrchA==
X-Received: by 2002:aa7:c549:0:b0:525:6e47:10f6 with SMTP id s9-20020aa7c549000000b005256e4710f6mr29895269edr.22.1697464424717;
        Mon, 16 Oct 2023 06:53:44 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q18-20020a50c352000000b0053e9352643csm3015296edb.62.2023.10.16.06.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 06:53:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Oct 2023 15:53:42 +0200
Message-Id: <CW9WX2BFW95K.2PHV8UU363BFE@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <phone-devel@vger.kernel.org>, "Rob"
 <Me@orbit.sh>, "Clayton Craft" <clayton@igalia.com>,
 <~postmarketos/upstreaming@lists.sr.ht>
Subject: Re: [PATCH 1/5] iio: adc: add smb139x bindings
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Nia Espera" <nespera@igalia.com>, "Andy Gross" <agross@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Jonathan Cameron" <jic23@kernel.org>,
 "Lars-Peter Clausen" <lars@metafoo.de>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Kees Cook" <keescook@chromium.org>, "Tony Luck"
 <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
X-Mailer: aerc 0.15.2
References: <20231016-nia-sm8350-for-upstream-v1-0-bb557a0af2e9@igalia.com>
 <20231016-nia-sm8350-for-upstream-v1-1-bb557a0af2e9@igalia.com>
In-Reply-To: <20231016-nia-sm8350-for-upstream-v1-1-bb557a0af2e9@igalia.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon Oct 16, 2023 at 2:47 PM CEST, Nia Espera wrote:
> Bindings for a charger controller chip found on sm8350
>
> Signed-off-by: Nia Espera <nespera@igalia.com>
> ---
>  include/dt-bindings/iio/qcom,spmi-adc7-smb139x.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/include/dt-bindings/iio/qcom,spmi-adc7-smb139x.h b/include/d=
t-bindings/iio/qcom,spmi-adc7-smb139x.h
> new file mode 100644
> index 000000000000..fe163cd8bbdd
> --- /dev/null
> +++ b/include/dt-bindings/iio/qcom,spmi-adc7-smb139x.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2020 The Linux Foundation. All rights reserved.
> + */
> +
> +#ifndef _DT_BINDINGS_QCOM_SPMI_VADC_SMB139X_H
> +#define _DT_BINDINGS_QCOM_SPMI_VADC_SMB139X_H
> +
> +#define SMB139x_1_ADC7_SMB_TEMP			(SMB139x_1_SID << 8 | 0x06)
> +#define SMB139x_1_ADC7_ICHG_SMB			(SMB139x_1_SID << 8 | 0x18)
> +#define SMB139x_1_ADC7_IIN_SMB			(SMB139x_1_SID << 8 | 0x19)
> +
> +#define SMB139x_2_ADC7_SMB_TEMP			(SMB139x_2_SID << 8 | 0x06)
> +#define SMB139x_2_ADC7_ICHG_SMB			(SMB139x_2_SID << 8 | 0x18)
> +#define SMB139x_2_ADC7_IIN_SMB			(SMB139x_2_SID << 8 | 0x19)

I think you should expand qcom,spmi-vadc.h with the 0x06, 0x18 and 0x19,
in the ADC7 defines somewhere below ADC7_REF_GND.

Regards
Luca

> +
> +#endif


