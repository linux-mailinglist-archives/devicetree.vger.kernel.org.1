Return-Path: <devicetree+bounces-54949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7AB8935A4
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 21:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C38A61C213A7
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 19:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D271474B7;
	Sun, 31 Mar 2024 19:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n7Ob6lcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8DB290A
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 19:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711914650; cv=none; b=VtgVFTnYILjbhb1gOegW/tUeZCI74aGP3cpNJAnn+Y+lhhRGaaaMSe15kkXutMxHM18bmvbpd7upmt1R5axAxAwFXuMz2NS3Oy7JFv/OSU23DYNVIGJYXf2w2gP+QVhTCXFh2JB3SxIMC/FA2Wh26ouctF+gfzs8ObToqSUlChQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711914650; c=relaxed/simple;
	bh=olDlnNWaxZ+Q6JxOUBf1m3IK0XC+lV8zWmnq19eEL4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PCwb6ldoP7vn4zSb7jc60uqrrEanNZIHCWe4qow2ipH07mcZhdCNqp/UsZ/1sZt/PpnshNVwWFWLslsSiMIZdatauPRMUsE4CSYHaWp1vV72/voy5DGOw7mVmOIAb9E29j1nr6zYRILV2WxzHvhmq41HBFd2iS3gx2fSKuodZf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n7Ob6lcH; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-513d599dbabso4388469e87.1
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 12:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711914647; x=1712519447; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Mv408eiOFJL43mCJW20ls45DY73nM7/9K+nAGuogfxE=;
        b=n7Ob6lcHATlqlyRbspISIhH+YYSQhIiDf13IvamW2ZSQDUCRa7ouyAEw548on2TGv9
         1vlX5e3FMmFlJLhj0NHEYQpsNMwSyASzZOYm7ygHRWVwpuM+7v0ej7go0mjC3f8Vr87L
         VY+xcWR5DdHp4pZXFK3XrKlUXbLT1aiA5uUc6DWL1wuypfghMEhCohZXqGZmbloYn33N
         ahfXfyrcAfS82LsbUyy7r4nuZTpRHNJnaAXADYFhEOBS2VyDYBp5CprfvGmvzqmC0lu8
         hYv+cVaQzyo32nEk1pgMd7qGlARXOY/YVUlaoscMr+dlKWPlO3zyqRu3xMNrY52rFb8C
         6vbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711914647; x=1712519447;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mv408eiOFJL43mCJW20ls45DY73nM7/9K+nAGuogfxE=;
        b=xRHAV4XC9IJd6wzLmN+ih9c30+5/dKy36KrK0ZNM9GTIvcqvYVtPYjba0xc8NA1BOi
         z6WPv7TogNHmZrmwrWMENaPyddTLpDaTtrE5a/AOWtMp3BXyIX1N0PFQ6rj8A4wl51Dq
         e0USSgOt5ZWpf+Aq4Qpy2fNkGO1bMlEAwxw3rrPjeYRnjhdfL6dLT3v3u0eiYw0Itpgs
         XY4b94z4QuChqvSuTuPsoJFMeUxbWAn1/BXZcmgIarwtbXpcncsvKZBCB1XnW9pSqa7a
         X3K8y2xKD0V42eLgxXHZa0KUnnopwzLx5qp6YmBVvOk19SfB/gt9495/lHvJSl9vSZOt
         UvsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWa69hdI/ljYvs757ymg5ji4v+RnDXmlDgZJfcQ/M+QvXKGvrNYF+14vMR9tXwym8F8+bsOMhc16DT0AiO2MyDP79ZN3IBCdZhrDw==
X-Gm-Message-State: AOJu0Ywyldo1OBnkp+Vg2LuYxTXqEIIqH6DCn+Lwo/L4jgh3ldn3dNXC
	ljjrr+kKd5tCVRo4xMH+B9Lm4oax8vsb2AwsiR+z9H4bYamvHN8o7GHuMrbrE5c=
X-Google-Smtp-Source: AGHT+IEgzJSU7esQjbZNDXfiZ7a4OGn3ue6VOHaIiZkp0i93nfVf1Xro233OSfxtwOFAcJq9nxBpxA==
X-Received: by 2002:ac2:558a:0:b0:515:cbf1:9fda with SMTP id v10-20020ac2558a000000b00515cbf19fdamr5694144lfg.61.1711914646518;
        Sun, 31 Mar 2024 12:50:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id w20-20020a170906481400b00a46aab70226sm4480758ejq.180.2024.03.31.12.50.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Mar 2024 12:50:46 -0700 (PDT)
Message-ID: <ad63db04-a0ad-4dd2-b61b-4c47deabc0fd@linaro.org>
Date: Sun, 31 Mar 2024 21:50:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: serial: actions,owl-uart: convert to
 dtschema
To: Kanak Shilledar <kanakshilledar@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 Kanak Shilledar <kanakshilledar111@protonmail.com>
References: <20240331132811.12060-1-kanakshilledar@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240331132811.12060-1-kanakshilledar@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/03/2024 15:28, Kanak Shilledar wrote:
> From: Kanak Shilledar <kanakshilledar111@protonmail.com>
> 
> Convert the Actions Semi Owl UART to newer DT schema.
> Created DT schema based on the .txt file which had
> `compatible`, `reg` and `interrupts` as the
> required properties. This binding is used by Actions S500, S700
> and S900 SoC. S700 and S900 use the same UART compatible string.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I explicitly asked you to drop my tag. Last time I raised the problem
that you implement some other changes and do not implement what reviewer
is asking for. It seems this continues the pattern.


> Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
> ---
> Changes in v4
> - added `clocks` property to fix warning of 'clocks' was unexpected
> while running `make dtbs_check`. `clocks` property was not defined
> in the original .txt file. `clocks` property is removed from the
> required section.
> - added `clocks` property in example
> - extended the devicetree with clocks node

Please keep the reset of the changelog.

You had two other versions, what was changing? Why this is not even
correct? Your v4 did not add clocks to the example. It was already in v3.

How can we know what you changed here if this changelog is totally
mixing everything from all changes?

Please read this carefully and read the feedback carefully. Then create
changelogs which represent REAL CHANGES, like:
https://lore.kernel.org/all/20240210-topic-8280_pcie-v3-0-ee7af6f892a0@linaro.org/

If someone asks you to drop the tag, you MUST drop the tag.

The patch is fine though, so I would give Review tag now. Keep above for
future and no need to resend just to fix it. If you send or resend, then
fix the changelog.

FWIW

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

BUT, your patch won't be applied... because you decided not to CC
maintainers. I have no clue how or why did you come up with such Cc
list. There is a guideline in your project, whether this is GSoC or
mentorship or whatever, how to send patches. Please read carefully this
guideline.

Standard form letter:

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline), work on fork of kernel
(don't, instead use mainline) or you ignore some maintainers (really
don't). Just use b4 and everything should be fine, although remember
about `b4 prep --auto-to-cc` if you added new patches to the patchset.

Best regards,
Krzysztof


