Return-Path: <devicetree+bounces-26872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDF98186E0
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 13:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62FE8286EC8
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 12:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBDB15E95;
	Tue, 19 Dec 2023 12:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TfiQgIiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73DD1BDCF
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a1ca24776c3so1065512366b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 04:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702987288; x=1703592088; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xYTg9juDWxZcIBckJUEaGgG12ZfS5cBo/+tlYXpzWNI=;
        b=TfiQgIiEroygCBHwAPWpgNdcW/lIaTjzR5Knx8Xis9uI5c3d+gCiv5aW/JavyYXHwH
         6jwt6xrL9+LZWcaLoy7YPpkwLdCzkTzoEDmpawL2VWXpZsQge4HPJVpFaxsUwFSyj8nP
         4ma1xtbiuw+aPb+WRkMRSDbeO3ZLdOBu0AntrPIrOSFtQnei9nOnw3zqWxd2hen2OfH4
         fTsdkMd6sUGvxRe94GbFIp7k12TdvcdRlyo15hwKQrXbYJCat8vD4Wp44iKNYzLrGlgP
         J0z8ywp0vs2UimNRp6KkUyuPRaf0vn73wJpTx9IdzzAGcSb7/2h8BxvzMKrIgu7NT+QC
         DhuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702987288; x=1703592088;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xYTg9juDWxZcIBckJUEaGgG12ZfS5cBo/+tlYXpzWNI=;
        b=CdO+H1tZ99HZqd5XHt0tslqpV6/KT/0y1XNu/rsdqaFVhGi+FB/SDMBJErEH/V4iqj
         uKhGA6GMDolpydRPPalb1DZaINUFWGSDXuUDq9wn5Y51eMOtGkfLG6pxnCzdR4+3lnuG
         dYiTh41gsDLDyKEfFQU+vnt8qTnzpja67vxLEBbxtAz1pksLhBywkcECd+DwuJx8/9pv
         aVbYD0riUgIi4atX9Dn5Ae9/AwHF2q9tuZvZKGZW/2noRmNu5/PxdEuC+C2up0EVnuy9
         phJdj/tCluxIu5v0H5YnZZe09juQNjDVj0LJNRKXQ8rPD8D1+WeLi2e6a3fu1z2Fox46
         K1JQ==
X-Gm-Message-State: AOJu0Yxm92c4XfOVtEtMFfYxViDsc8eH+nQE/lS4fo3CVGYhvyfb6gFK
	Bi74X5i94Ps1B4z6IsWHtdz2yQ==
X-Google-Smtp-Source: AGHT+IGZR13abm6xSkWVYuuhV9Qk7aYDgUNIM6tTPh2sieIdPWD79f7wwxOnWNLPqKuo2dnW88SnOA==
X-Received: by 2002:a17:906:1194:b0:a1c:d8c6:c21 with SMTP id n20-20020a170906119400b00a1cd8c60c21mr947426eja.67.1702987288015;
        Tue, 19 Dec 2023 04:01:28 -0800 (PST)
Received: from [192.168.199.59] (178235179206.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.206])
        by smtp.gmail.com with ESMTPSA id lm11-20020a17090718cb00b00a1db76f99c8sm15508227ejc.93.2023.12.19.04.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 04:01:27 -0800 (PST)
Message-ID: <4b644ed4-358d-4caa-bed8-ca76e0baadb3@linaro.org>
Date: Tue, 19 Dec 2023 13:01:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 18/41] ALSA: usb-audio: qcom: Add USB QMI definitions
Content-Language: en-US
To: Wesley Cheng <quic_wcheng@quicinc.com>, srinivas.kandagatla@linaro.org,
 mathias.nyman@intel.com, perex@perex.cz, conor+dt@kernel.org,
 corbet@lwn.net, gregkh@linuxfoundation.org, lgirdwood@gmail.com,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 Thinh.Nguyen@synopsys.com, broonie@kernel.org, bgoswami@quicinc.com,
 tiwai@suse.com, robh+dt@kernel.org, agross@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-doc@vger.kernel.org,
 alsa-devel@alsa-project.org
References: <20231215214955.12110-1-quic_wcheng@quicinc.com>
 <20231215214955.12110-19-quic_wcheng@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231215214955.12110-19-quic_wcheng@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15.12.2023 22:49, Wesley Cheng wrote:
> The Qualcomm USB audio offload driver utilizes the QMI protocol to
> communicate with the audio DSP.  Add the necessary QMI header and field
> definitions, so the QMI interface driver is able to route the QMI packet
> received to the USB audio offload driver.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> ---
>  sound/usb/qcom/usb_audio_qmi_v01.c | 892 +++++++++++++++++++++++++++++
>  sound/usb/qcom/usb_audio_qmi_v01.h | 162 ++++++
>  2 files changed, 1054 insertions(+)
>  create mode 100644 sound/usb/qcom/usb_audio_qmi_v01.c
>  create mode 100644 sound/usb/qcom/usb_audio_qmi_v01.h
> 
> diff --git a/sound/usb/qcom/usb_audio_qmi_v01.c b/sound/usb/qcom/usb_audio_qmi_v01.c
> new file mode 100644
> index 000000000000..bdfd67d980eb
> --- /dev/null
> +++ b/sound/usb/qcom/usb_audio_qmi_v01.c
> @@ -0,0 +1,892 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/soc/qcom/qmi.h>
> +
> +#include "usb_audio_qmi_v01.h"
> +
> +static struct qmi_elem_info mem_info_v01_ei[] = {
can these be const?

Konrad

