Return-Path: <devicetree+bounces-98257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDFE96588B
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:31:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24251287877
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6340116ABF3;
	Fri, 30 Aug 2024 07:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MPyl7tSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EAE168C33
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725003022; cv=none; b=dlgipw1XJhUKF9qQMPRA2HcWCE2ZW30BmtnO0xOfBE30SgjHnzPOtQ+l01t0F5pM9CXrrECrptytdzYXwl/hJTf66iDqDD3ioIKFMEVa5LGpyG/NJUhMQ3q8HXHyIIemI0MeY4sVHqvejzxAUAFQ9uj4lYzTM7m3Ph6qwleJBXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725003022; c=relaxed/simple;
	bh=yhfMD4VFDQXkkrB+tbFzAxl3eBexU4lxfpbAug5jqdo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bJxM05F7OMnzNFKpqRr2qjvU3pvtxqwSngqH//tBrbbJYTxapgZBzWTm78KsCrSQiCTKXcG7BVA/C9c7HcmO+cVG2LyFV9gcqxVG4orFeFddgJenmoSHhRHUzgQ/sXeu2f2ArbhCu3jGUbTsLC4xAzE34jK/wcDXJiZ4XrZM7yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MPyl7tSx; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f4f8742138so16269001fa.0
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725003017; x=1725607817; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hK/z3ANaQGQJnKs6pBYOhisqBo/ZdGjqqcQLuiy1+l4=;
        b=MPyl7tSx9ncebDeEOv8dim67FvQA8aUvlAjgLYpqLONQQRczeL6OmGT1H/BhKh3dv0
         Qr7ej908KHVMcaKhdsHdQop/atYYYcWKSST+PBkAyJO1BHLBEYhg5+CQWLKFZ3OzCCI8
         r5sPvebc/6RFrneone0uzOhyuz9cfzq/Q9IQ/Oa1rh/ZkT9c5Rg1XLbKvln9i3LSWDlm
         umzLokyddlaKkBlUAffLoagrpz0hjgBn/MwtjmPPhDRsZq9r3Bzf4S1hW3rasrMWpPJl
         YuEBQoV8lcbdDOwWt0ZEkJUzBUuiYGE1/FfuvU4/2DoWm8XdnA09aSeoJL7m+yDxy/h5
         KAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725003017; x=1725607817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hK/z3ANaQGQJnKs6pBYOhisqBo/ZdGjqqcQLuiy1+l4=;
        b=UdYA8LQuMuFErk43Ll2rzHMBKYxDNu6iEpfhnDTNcSLL9bvgxSLpEVWWVTdBQuNpPM
         pkgoD/j30FjUmHBplFjZiKaAkOxeu/APc9Vw3StjUTmGzAxsxI/hKDkOr+5ObnUjpCZ3
         H+pTir35bq+2g7tQt5CKiVsbXORb1ILw0ggTMoObmI091+2nvo8gqPPXZR7znGFR2ZLD
         2SeN4RzdxrS0x8HNhfzYGnun9xSXceQd/UzJ0PkZWD363AOnVwWv0VXZ5aNv2pYuNNQV
         6mgnzhPma6cVQPhoe5xgKkfEG+D6nXgUlkFDBH0O6WTBl0j1UUxH8dsmy8lLnkn8toLu
         7O/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXO3zgKlxDibP7eweNTgOsYZOjNlC4sEbDUqjNkP8F/qk9e04FDyjjDKAGKnxRONj7/1AAdW7arNQNe@vger.kernel.org
X-Gm-Message-State: AOJu0YwqAObH0zz0I6hiJqqWjpVDIkYqeQNcJG/+u2/ZNEErlka+3DNZ
	Qwq2urXVMpQGW6ZE8BCh10Du6PafBWJqOntYMTRsXRpjBo4nC0S6v2xYYB5XP50=
X-Google-Smtp-Source: AGHT+IGpHT9ZiDbd9DpDdKj4d4QW2YhnYAdYiJQlOV3Nr8+Q5yOJVjyJSNNAG+Lr/36aIlpMAf6yWQ==
X-Received: by 2002:a05:6512:3056:b0:52e:fd75:f060 with SMTP id 2adb3069b0e04-53546bd2352mr531170e87.61.1725003016734;
        Fri, 30 Aug 2024 00:30:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084024fsm471986e87.182.2024.08.30.00.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:30:16 -0700 (PDT)
Date: Fri, 30 Aug 2024 10:30:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: andersson@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_viswanat@quicinc.com, quic_mmanikan@quicinc.com, 
	quic_varada@quicinc.com, quic_srichara@quicinc.com, quic_gokulsri@quiconc.com
Subject: Re: [PATCH V2 1/4] dt-bindings: remoteproc: qcom: document hexagon
 based WCSS secure PIL
Message-ID: <fi47k3icrsgrxwecdsk4ernn7ummi64or4v2sf2njigcjohox7@r3ubyrnev3gu>
References: <20240829134021.1452711-1-quic_gokulsri@quicinc.com>
 <20240829134021.1452711-2-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829134021.1452711-2-quic_gokulsri@quicinc.com>

On Thu, Aug 29, 2024 at 07:10:18PM GMT, Gokul Sriram Palanisamy wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Add new binding document for hexagon based WCSS secure PIL remoteproc.
> IPQ5332, IPQ9574 follows secure PIL remoteproc.

What is the difference between PAS and secure PIL?

> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---
> changes since v1: Addressed comments by Krzysztof
> 	- expanded the acronym WCSS
> 	- added 'maxItems' to property 'firmware-name'
> 	- renamed sleep clock name 'im_sleep' to 'sleep'
> 	- reordered items of property 'qcom,smem-states' keeping 'stop'
> 	  first. Addressed the same in example and in dtsi files.
> 	- ordered required properties in the same order as property description
> 	- dropped unused label 'q6v5_wcss' in example dts
> 
>  .../remoteproc/qcom,wcss-sec-pil.yaml         | 125 ++++++++++++++++++
>  1 file changed, 125 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
> new file mode 100644
> index 000000000000..98206b403681
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
> @@ -0,0 +1,125 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/qcom,wcss-sec-pil.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm WCSS Secure Peripheral Image Loader
> +
> +maintainers:
> +  - Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> +
> +description:
> +  Wireless Connectivity Subsystem (WCSS) Secure Peripheral Image Loader loads
> +  firmware and power up QDSP6 remoteproc on the Qualcomm IPQ9574, IPQ5332 SoC.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5332-wcss-sec-pil
> +      - qcom,ipq9574-wcss-sec-pil
> +
> +  reg:
> +    maxItems: 1
> +
> +  firmware-name:
> +    maxItems: 1
> +    description: Firmware name for the Hexagon core
> +
> +  interrupts:
> +    items:
> +      - description: Watchdog interrupt
> +      - description: Fatal interrupt
> +      - description: Ready interrupt
> +      - description: Handover interrupt
> +      - description: Stop acknowledge interrupt

Does it make sense to make use of qcom,pas-common.yaml?

> +
> +  interrupt-names:
> +    items:
> +      - const: wdog
> +      - const: fatal
> +      - const: ready
> +      - const: handover
> +      - const: stop-ack
> +
-- 
With best wishes
Dmitry

