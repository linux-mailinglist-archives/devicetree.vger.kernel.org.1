Return-Path: <devicetree+bounces-59159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFB28A44D9
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 21:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17D131F21201
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 19:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0B1136659;
	Sun, 14 Apr 2024 19:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lfgFGq/m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BAA135A49
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 19:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713122576; cv=none; b=KYRtwYGZqg7+FXKyWxSJDboAkW592Z7cPyCI+AQLi0aYkrfZdyVRzKi8zkD6EXWcaZ33dTOWzbcSK9E/BrafqcJ0AlTC+vKKD717qFjGZ3FpiapC1B+CVOy+230y8HvDlkwIZsxIFJuzJs3t2Ow8e+toMBt1T+Gyleu22jAoczE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713122576; c=relaxed/simple;
	bh=OvwnrIBMRKeoXYHo0BDeY6UGnHtuDlU96YzoLnjNZrs=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=if1ZecIwEXsJw26g7v4N0wfv6AJJB4YQRH8NoutYfRuHJmlHsMOV9d0nKUB+YS83G4Wmbsz/hEtPFJlm66Mj3azRHTUnJxhM+epMzWKhsvDCMh9Qb+2XdTRqv1zjnn5722kQ7W6Xfk1rG/nUC07btmrKAqER8phKCGBpWcM7Xfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lfgFGq/m; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d094bc2244so27540851fa.1
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 12:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713122572; x=1713727372; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TmshS88Y6IrUHYU/lbomRTtK5zd3xyW1MQnmupimvzo=;
        b=lfgFGq/mEwOmoF201MqTFVByqc+W5TIlxlQuJZVkY5534k/E877IOjTVt2mV6upY2K
         mPMq+ujvD7Lm3jmZHXwi/C93asy2Ol29Kwg4LiKMlB/7FrRoPxOGkTJ1F/lzvTAQGMAY
         SEsoyKBE+l+lUBUDzRFNQ2YMJasDkn2IRN6XzCG2z5ga4mNfaEzc/enUH3AmoyqbMdFQ
         bUF9SUCXlWgKYKTQS80ySNDLPDn5a7NACLoKdpObZgM9R+xzpRcfWjaF9vl2YxFIQ0u0
         FKU44hgkvrSWM9ee8FHyEI+lO+znMF0TldP6uJ2iuubrx8J9U6usHKmGF85GXApZ+xiq
         7l2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713122572; x=1713727372;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TmshS88Y6IrUHYU/lbomRTtK5zd3xyW1MQnmupimvzo=;
        b=s40VacUvDoa6qy5+ybOsthwMeoMgztOFugQ4fTIdtg8BR4fY/yns2GBkDyAfUz6Lz9
         7BpNqB7yqrsPSjYlhyBjzN9d4pVfMjJlhhaKV90WSJ4BOOUy23c+rfkOCxUnppsX/pic
         DILqyXZGXT83zpy6za4uiEjbk13SLyI9PtaES8zRYeLS/AD2u0UrnHzdc4DkpeW4Xg8m
         puME5812CTkQjsLimZ1PO90KmZc2bAAw0r1q3vtsxYCRNy0XX6vi9NkzgCqUKKjD2OAT
         3/QWdIRTNYXvoygikmFYB8S4N4ZfcsvPDVzWUEdSpOAh5fI2TdA8OwjE1joU6NsNK57Z
         UgeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtzGkxlVM3x6gWD6hslo+15Nz8MqmEQhrhVF/3pFfn2SmJu/r/UAsIRRUXM9viei5lal7g88naGyORxPCr1Ub7sW31zehCyFavHA==
X-Gm-Message-State: AOJu0YwlfQOGDMoAH09rKbAv4EWRI59MgXQjJZnQG1dFNxFVvojqe+bo
	wEx2Lr41YMOq0lv2jDrJ/U3W/i7mqoOkNbfUQBu7Ue7K1aOVSziQft89ZMbG8vc=
X-Google-Smtp-Source: AGHT+IEw9gTLGXDXfdxms3P2dr00p2RS2x1uRXzTxdk0Y+UJK5njcSM1aQ0t3lo2iQdmQ7BNtlUluw==
X-Received: by 2002:a2e:8555:0:b0:2da:7944:9542 with SMTP id u21-20020a2e8555000000b002da79449542mr517220ljj.6.1713122572542;
        Sun, 14 Apr 2024 12:22:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id i20-20020aa7dd14000000b00570118f2297sm1835377edv.34.2024.04.14.12.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 12:22:52 -0700 (PDT)
Message-ID: <c21f6d49-bd70-465e-a446-fb70838bab48@linaro.org>
Date: Sun, 14 Apr 2024 21:22:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: PCI: altera: Convert to YAML
To: matthew.gerlach@linux.intel.com, bhelgaas@google.com,
 lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240413172641.436341-1-matthew.gerlach@linux.intel.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240413172641.436341-1-matthew.gerlach@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/04/2024 19:26, matthew.gerlach@linux.intel.com wrote:
> From: Matthew Gerlach <matthew.gerlach@linux.intel.com>
> 
> Convert the device tree bindings for the Altera Root Port PCIe controller
> from text to YAML.
> 
> Signed-off-by: Matthew Gerlach <matthew.gerlach@linux.intel.com>

...

> +allOf:
> +  - $ref: /schemas/pci/pci-host-bridge.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - altr,pcie-root-port-1.0
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: TX slave port region
> +            - description: Control register access region
> +
> +        reg-names:
> +          items:
> +            - const: Txs
> +            - const: Cra
> +
> +    else:
> +      properties:
> +        reg:
> +          items:
> +            - description: Hard IP region

Why Hip is the first? Old binding suggested it to be the last entry. It
would also make binding easier, as you describe reg and reg-names in
top-level and just limit them with min/maxItems.

Does anything depend on different order (Hip as first)?

> +            - description: TX slave port region
> +            - description: Control register access region
> +
> +        reg-names:
> +          items:
> +            - const: Hip
> +            - const: Txs
> +            - const: Cra
> +


Best regards,
Krzysztof


