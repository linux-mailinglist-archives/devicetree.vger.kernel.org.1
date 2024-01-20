Return-Path: <devicetree+bounces-33399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C68858334D0
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 14:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBBFA1C21AE0
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 13:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC7CEEB1;
	Sat, 20 Jan 2024 13:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J7DHFNYf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDB5EAF0
	for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705757545; cv=none; b=FG0DGJnTPyx4iQ95blMO1LnIcdI3KlEZbxil5jQeH+y6vJ+FazRnwYG599Sfu7s68RXTPgMYY+7U4pnSrVDuDOj84YDh5OwC2eOBkanQkIiADON4d61LyaNn5Fb1kFkk+f7etTAt2zeDbzXCyo4lPF937FDL6yk//qJX1qqGUbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705757545; c=relaxed/simple;
	bh=lElNdA4O1Vhu7Wz3Hp5Ehc9WjZMxUA+6LbhPKIrLjKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k4o6OHKrYT2L0s8U0W2gQqOlOGItIGxzGi4K6eR7qFuY33ZNzO2E+XWzmjfZrg95Kg4cnObbpebbQC6Lrt0VW0C9KCXO6t+u8MZ/DTdSOjIda9d/+a/uetwQisSjYOe9+ms4FVFc9/tN2ozFUWEIlOGlXNAi6WboKgdXInW8g3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J7DHFNYf; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-558f523c072so2000535a12.2
        for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 05:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705757541; x=1706362341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gdl+eaC94A18YCEzspCuqusdm9Y8Cc++l96S1kvmWe0=;
        b=J7DHFNYfUPaHzTlg0jHziyFGSgoYUho9k/D7dxh9138wWr0OA27LdoIR8M4lHTJt/E
         eiGtiQY52YS+/xscB+Ny/i0kreb2OO93r12ohSPHrgaEWO6kTsM5Lz4AQED23/scDcHb
         qRCdERv9isolWIqn8kuA4PiFSj/6mXRKQtFjv5yPYQC3ZEyA7nWPr8GpMHeomCWOxAr9
         bRmAJIf6jY/lJ3Ynn0GRMIDZavxw54Vp1G1oTgFtZbx9DFerv/Lcb53a9rWfmuzjlIG6
         TT2irQ19+DjkcRB3B1A9aoiT3kFmPuDQzpiz3Z5oW3alZ9a452qcK1YCX83hYDRC3Tw2
         boHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705757541; x=1706362341;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gdl+eaC94A18YCEzspCuqusdm9Y8Cc++l96S1kvmWe0=;
        b=CNZHvCg9In7MkbxlHaAiqGvoeLqVeHEEXejQZjanv0JXL3oo/1HGDKMTmq42+SLi30
         wZZ5NWk9Z66b0CpbwGENhsX1qgtUIaPQ7J52/3FYLTbSdsuMGDrGQY85dzMAPpRkv7uJ
         Qv1RJktUEL8BjHybAmSoesMxUaJDF7tyE7sPfVLePKcWFDrlaesLQIhkbpKS5jtQpv03
         U9j5AUoZFWbzVvo+NDRWLZvbDFnoM47kwETGqIC6KX3EDJq0jB6+z7xJBHea79e4UmOZ
         GAVsnDl/k2QyzJXMpprDx83cSvpnr4cX6VC7gGS53WhdpGf/Ese5wXlGMRtZwvG9Cp9s
         r7VQ==
X-Gm-Message-State: AOJu0YzpuCvnfxiZ/3VpHxtGovqqeaR5GfFgGW0cDjEcMUpmG3fvlHhO
	KRj3KF3vWgAz6lJpi65V+N5SQ/JlifIwWvQWD6GhJ6XCkFf4Gc2NUCNBmC+kUuU=
X-Google-Smtp-Source: AGHT+IFDNfw6KMYR4rsAEpsXh7xNpZE52txeShlcME7Xi5L4CmB0j8AbPv5AjaCYVPvvt+sTd/ZXDw==
X-Received: by 2002:a17:906:fad6:b0:a28:c638:40a0 with SMTP id lu22-20020a170906fad600b00a28c63840a0mr440740ejb.77.1705757540754;
        Sat, 20 Jan 2024 05:32:20 -0800 (PST)
Received: from [192.168.231.132] (178235179218.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.218])
        by smtp.gmail.com with ESMTPSA id f13-20020a170906048d00b00a2a43568cd8sm11316055eja.186.2024.01.20.05.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Jan 2024 05:32:20 -0800 (PST)
Message-ID: <54426665-90c5-4355-a174-f512004e11e5@linaro.org>
Date: Sat, 20 Jan 2024 14:32:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: hwinfo: Add Qualcomm's board-id types
Content-Language: en-US
To: Amrit Anand <quic_amrianan@quicinc.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, kernel@quicinc.com,
 Elliot Berman <quic_eberman@quicinc.com>
References: <1705749649-4708-1-git-send-email-quic_amrianan@quicinc.com>
 <1705749649-4708-3-git-send-email-quic_amrianan@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1705749649-4708-3-git-send-email-quic_amrianan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20.01.2024 12:20, Amrit Anand wrote:
> Qualcomm based DT uses two or three different identifiers. The SoC
> based idenfier which signifies chipset and the revision for those
> chipsets. The board based identifier is used to distinguish different
> boards (e.g. IDP, MTP) along with the different types of same boards.
> The PMIC attached to the board can also be used as a identifier for
> device tree.
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> Signed-off-by: Amrit Anand <quic_amrianan@quicinc.com>
> ---
>  .../devicetree/bindings/hwinfo/qcom,board-id.yaml  | 86 ++++++++++++++++++++++
>  include/dt-bindings/arm/qcom,ids.h                 | 68 +++++++++++++++--
>  2 files changed, 146 insertions(+), 8 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml b/Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml
> new file mode 100644
> index 0000000..807f134
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwinfo/qcom,board-id.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: QCOM Board Identifier for Devicetree Selection
> +
> +maintainers:
> +  - Amrit Anand <quic_amrianan@quicinc.com>
> +  - Elliot Berman <quic_eberman@quicinc.com>
> +
> +description: |

The '|'s are unnecessary in both commits, IIRC they're used for
preserving formatting which we don't really need for non-styled
plaintext

> +  Qualcomm uses two and sometimes three hardware identifiers to describe
> +  its boards
> +      - a SoC identifier is used to match chipsets (e.g. sm8550 vs sm8450)
> +      - a board identifier is used to match board form factor (e.g. MTP, QRD,
> +        ADP, CRD)
> +      - a PMIC identifier is occasionally used when different PMICs are used
> +        for a given board/SoC combination.
> +  Each field and helper macros are defined at::
> +      - include/dt-bindings/arm/qcom,ids.h
> +
> +  For example,
> +    / {
> +        #board-id-cells = <2>;
> +        board-id = <456 0>, <457 0>, <10 0>;
> +        board-id-types = "qcom,soc-id", "qcom,soc-id", "qcom,board-id";
> +     }
> +
> +allOf:
> +  - $ref: board-id.yaml#
> +
> +properties:
> +  board-id:
> +    minItems: 2

I believe some older platforms match exclusively based on socid, so
perhaps 1 would be okay as well.

[...]

> +examples:
> +   - |
> +     #include <dt-bindings/arm/qcom,ids.h>
> +     / {
> +         model = "Qualcomm Technologies, Inc. sc7280 IDP SKU1 platform";
> +         compatible = "qcom,sc7280-idp", "google,senor", "qcom,sc7280";
> +
> +         #board-id-cells = <2>;
> +         board-id = <QCOM_SOC_ID(SC7280) QCOM_SOC_REVISION(1)>,
> +                    <QCOM_SOC_ID(SC7280) QCOM_SOC_REVISION(2)>,
> +                    <QCOM_BOARD_ID(IDP, 1, 0) QCOM_BOARD_SUBTYPE(UFS, ANY, 1)>;
> +         board-id-types = "qcom,soc-id",
> +                          "qcom,soc-id",
> +                          "qcom,board-id";

So, would the matching here would be:

loop over disctinct board-id-types
	check if there's at least 1 match for all of them
		use this dtb if that's the case

stop booting / "best guess match"

?

[...]

> +#define QCOM_BOARD_ID_MTP		0x8
> +#define QCOM_BOARD_ID_DRAGONBOARD	0x10
> +#define QCOM_BOARD_ID_QRD		0x11
> +#define QCOM_BOARD_ID_HDK		0x1F
> +#define QCOM_BOARD_ID_ATP		0x21
> +#define QCOM_BOARD_ID_IDP		0x22
> +#define QCOM_BOARD_ID_SBC		0x24
> +#define QCOM_BOARD_ID_QXR		0x26
> +#define QCOM_BOARD_ID_CRD		0x28

Missing ADP/QCP/Ride (if they're separate)

Konrad

