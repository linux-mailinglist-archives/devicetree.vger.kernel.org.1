Return-Path: <devicetree+bounces-17155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD537F162C
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 758951F24CF7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6347F13AC3;
	Mon, 20 Nov 2023 14:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EJkBVUr2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D70183592
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 06:48:01 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32dc9ff4a8fso2854767f8f.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 06:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700491680; x=1701096480; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tJJwbkqvfCRGn7qw4NUfbsptbvx8KM0jIDYK6bPqbHI=;
        b=EJkBVUr2+c3RAcw3VxduyTHIuIf1REIdnsgjfdk7u9UZ0PWKofiZsx2aypG+vLYMKC
         mLx39ZH3p7Q+WkVjQZ0n2kA7JQFaKv68JvR9/ceABCzsIQa8qWEdukoyXdBtonlrinnx
         MZTsPFhG77igmZLOI9Og1zd7SblfbOfPoSVuBf2SQX33rfveXiw9jX9AmEnr77X6Inb8
         oEhBihbNzSa2G2sZcXLFs3zqC3qeTRvWT2onn9mVFz3Kbi7JYtcFD3PyqgS5RTt7V73d
         hiPH1P617/9ILHoet9GDWOd9WjajxZvlpq63l7lx/UtSy1bSUm+LpTcAfTFHlIZEZFJJ
         l06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700491680; x=1701096480;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tJJwbkqvfCRGn7qw4NUfbsptbvx8KM0jIDYK6bPqbHI=;
        b=UrpjMfBQQBLCW/IpjLunuV9hshD+yLf1NLeK4rLxH6YxR6k+BEP7nSg8/BjPjLmpDe
         4ykkLoZ64h57wSPSTN9ke1ELeaYkqzzNuCpVBqwdoRz3rNvatNwaSjZXwndXq0R9M6gj
         4/VwQPKdAftlN0jXTWKbiPJU2PxALb523lvBnL4xktTjCuLoOYSFFvZ961nigcGGLXPa
         V5z1MYmO9yyqRF8lC+8+m+nog1/ZnRTdn2ydwZe/ULbrx4inP8zdhoOsR6Gr+Upzvl18
         2uNBVpP6EZDOp0o54MISTU7p5zZp1LgdRTCg8s645slTVmWRgBafmWa2FXrAX30ckAN4
         2GVQ==
X-Gm-Message-State: AOJu0YzOTD2GqvjmEnuzq5tvSMGEw8aJLNKIY0bL4cXs/YwhqOQOseQE
	SlWxBqCgHWDJv5JZ+/NkrOF2kA==
X-Google-Smtp-Source: AGHT+IHn58Rb64JPIzwX0eVZAztbDRegFkKUvEvegsNvzVuqU2Md/M8OBOctHAEzcu9bHb7VRuEF9g==
X-Received: by 2002:a05:6000:2c7:b0:32f:7cfd:4522 with SMTP id o7-20020a05600002c700b0032f7cfd4522mr4655078wry.70.1700491680256;
        Mon, 20 Nov 2023 06:48:00 -0800 (PST)
Received: from [192.168.1.7] ([79.79.179.141])
        by smtp.gmail.com with ESMTPSA id j3-20020a056000124300b0032f7e832cabsm11385126wrx.90.2023.11.20.06.47.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 06:47:59 -0800 (PST)
Message-ID: <70402702-84d3-4577-9fd2-9e87add4283b@linaro.org>
Date: Mon, 20 Nov 2023 14:47:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: Add base qcs6490-rb3gen2 board
 dts
Content-Language: en-US
To: Komal Bajaj <quic_kbajaj@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Naina Mehta <quic_nainmeht@quicinc.com>
References: <20231120134754.9526-1-quic_kbajaj@quicinc.com>
 <20231120134754.9526-4-quic_kbajaj@quicinc.com>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20231120134754.9526-4-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20/11/2023 13:47, Komal Bajaj wrote:
> Add DTS for Qualcomm qcs6490-rb3gen2 board which uses
> QCS6490 SoC. This adds debug uart and usb support along
> with regulators found on this board.

Hi,

I understand there was a lot of previous discussion around these two
boards, sorry to be bringing it up again here, but I have a few more
questions.

How similar are these two boards in terms of design? If they're derived
from the same reference schematic then I think this is a good
justification to de-duplicate the common DTS parts.

Dropping them in a diff tool [1] it seems as though the only changes are
the modem reserved memory for the IDP board, some minor regulator
changes, and the sdcard on the IDP board being enabled. However it's
important to differentiate between these just, being the same, vs them
being based on the same reference design.

I left some comments on the parts that differ between the boards below,
but basically my question is: do these boards share enough of the same
*design* that it would make sense to have a "qcm6490-iot.dtsi" file with
the common reserved memory and regulators?

The IDP and rb3 boards would then inherit from there, avoiding a lot of
duplication and weirdness where some boards have certain regulator
properties that others don't with it being hard to tell if this is
intentional or not (this is the case with a lot of the existing upstream
devices).

On a related note, should we further split the rb3 board into a
qcs6490-whatever-som.dtsi file which may define the SoM specific parts?
This would undoubtebly make it easier for other boards based on the same
SoM to be bought up and kept up to date.

[1]: https://quickdiff.net/?unique_id=630F6851-C750-839E-1651-4CA6D997A74D


[...]

> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> new file mode 100644
> index 000000000000..f023dcf768f1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -0,0 +1,410 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
[...]
> +
> +		vreg_l7b_2p952: ldo7 {

The IDP board defined voltages here for the sdcard, does the rb3 board
have an sdcard slot (if so which regulator does it use)?

Is there a reason not to define the same voltage range for this board?
> +			regulator-allow-set-load;

This property is set for rb3 but not for the idp board, even though this
regulator is unused, should this be set?
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
[...]
> +
> +		vreg_l9b_1p2: ldo9 {
Same question as above
> +			regulator-allow-set-load;
Same question
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
[...]
> +		vreg_l19b_1p8: ldo19 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <2000000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
The IDP board has the regulator-allow-set-load property here, as well as
regulator-allowed-modes. This regulator is used for the sdcard on that
board. Is it used for anything on rb3? Can these properties be the same?
> +		};
> +	};
> +


Thanks and regards,
-- 
// Caleb (they/them)

