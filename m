Return-Path: <devicetree+bounces-10848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B877D2E2C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:27:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BE0E1C2074C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2239812E46;
	Mon, 23 Oct 2023 09:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hQKRLjFS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44BC747A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:27:06 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C89CD65
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 02:27:04 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4083f61312eso25047265e9.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 02:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698053223; x=1698658023; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uzKn9ZeksQ9p/OpB5UW9n5bh5oNl306T9AasHql+ieA=;
        b=hQKRLjFSRohTvqyN1cklNJ9zYjHyG2mWcRWq4hLD/dYSBYINXEUYpaC7ZURLLQafMN
         brw4UarAHqBfKI6E1ZEfHu6oUG2S+A0V6q7BQ32VbEufRz2R91OetHqE5VSQKoqiwcaI
         euQvGwSQXi0W9hdtf045wq/ni3LCb+Ck7QHaqOge6ubzK3iMUIB62hbYVXIOiTVu67h3
         xpxIyVzGkHfkzJLayHV2saAwKMYVm75ef+pk2rnszniy+UWO8VDZLkpC5/kWV2XSmvzV
         uvx7HqF4GS5tl8LVdSzpexfv2lE96IwhbdL79//7MFVQblKH52xKQP5NjtWow1XBoRfp
         CJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698053223; x=1698658023;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uzKn9ZeksQ9p/OpB5UW9n5bh5oNl306T9AasHql+ieA=;
        b=gN04vQHfF8V20Qfwy4twoDtzUfTE1iz7ZMo3wE61RcYnyQUnKqqd3js/lJmPzV3WsX
         /4/yis50Qyjboc2/UusRowCytOPB3uErYtQB4aaD59d8P/DcrQzRUPWhaaBfInoXG9BK
         klEhaDawMmcCQW++NYPAy9nSGSOzo7ao/VHZrMzUsEvO+v646mGlyJz86KuMpYyYWhex
         drCL3u/qPPrhvKzO2bsZL6E6wNLomumLS4v1JBlS38NOvWo6J/UdAxE3Q/a0yiLvrsxc
         aQ6afOjocSAdst8wMIOf5uG9D8/I0pLB2ghtZc4rycwP/wI1JJTQ2DczlQMdbjxDYFFW
         +0Cg==
X-Gm-Message-State: AOJu0YyHB+C8PJyvJydb42ryJbKbMNqY1AoD/pwbRFskz22PZyWgwUC1
	sTVoGDIIJgdISXMox/XkmmBKzQ==
X-Google-Smtp-Source: AGHT+IGJi4MiDraW1b1J9l0aoIiVp3+7EUrWyEd8qAyuHc2ztqQUDlj9GWIQdtfDIG8AUg0BWEhPtg==
X-Received: by 2002:a05:600c:4588:b0:409:2f7:d771 with SMTP id r8-20020a05600c458800b0040902f7d771mr1362277wmo.4.1698053222655;
        Mon, 23 Oct 2023 02:27:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c418c00b0040773c69fc0sm13481557wmh.11.2023.10.23.02.27.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 02:27:02 -0700 (PDT)
Message-ID: <27fcdcc1-b29b-43b2-8b1a-c648dd9e696c@linaro.org>
Date: Mon, 23 Oct 2023 11:27:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/5] dt-bindings: soc: qcom: Add memory_dump driver
 bindings
Content-Language: en-US
To: Zhenhua Huang <quic_zhenhuah@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_tingweiz@quicinc.com
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-2-git-send-email-quic_zhenhuah@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1698052857-6918-2-git-send-email-quic_zhenhuah@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2023 11:20, Zhenhua Huang wrote:
> Add bindings for the QCOM Memory Dump driver providing debug

Bindings are for hardware, not driver. This suggests it is not suitable
for bindings at all.

> facilities. Firmware dumps system cache, internal memory,
> peripheral registers to reserved DDR as per the table which
> populated by the driver, after crash and warm reset.

Again driver :/

> 
> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
> ---
>  .../bindings/soc/qcom/qcom,mem-dump.yaml           | 42 +++++++++++++++++++++
>  .../devicetree/bindings/sram/qcom,imem.yaml        | 44 ++++++++++++++++++++++
>  2 files changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,mem-dump.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,mem-dump.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,mem-dump.yaml
> new file mode 100644
> index 0000000..87f8f51
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,mem-dump.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/qcom/qcom,mem-dump.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes.

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> +
> +title: Qualcomm memory dump

Describe hardware, not driver.

> +
> +description: |
> +  Qualcomm memory dump driver dynamically reserves memory and provides hints(id and size)

Again, driver, so not suitable for DTS and bindings.

Best regards,
Krzysztof


