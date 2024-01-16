Return-Path: <devicetree+bounces-32397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5B682F367
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 18:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94B8E1C237DF
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 17:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2488F1CD14;
	Tue, 16 Jan 2024 17:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kytYOVsL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5851CD09
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705427035; cv=none; b=UxBE9DwJ2PXoJGuFGBNs33dmcvnsGz/1Y/S5y8NGZhM5izoZdGVFp6Papo5OxTfBu8S39m5xCWuYvloToa/wpATzU0m/7ULR/YvJ3qo2/3yrZKXSKr3Kfh9yprPgrPIy5yr8kVG8PZm2nN3sfV+htODv2RgwEHrZ+497+BF86GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705427035; c=relaxed/simple;
	bh=/5RHq/YUI+hVWY/e6eVlbHgLBhBZafmQizAWBbYsCwk=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=QojNV4lQmlzwQkVhw+qBsB9V3/+nnTvu2WQIXfUi3vRu9c8wye833TXC1bMpYc8NAEU90kYYjTKU82X4CkA1qnkheRlIZP57hsz5/pZJJhp+FnmTk/Hnv88rwwsiH0ZZTNWnpfqdohd8nAVENBwEhFPdo+SsYneexnHn84ap/DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kytYOVsL; arc=none smtp.client-ip=209.85.161.49
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-595aa5b1fe0so6232792eaf.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 09:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705427032; x=1706031832; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sadTVFX/+yOxJi04GWahAJ/5tRCyZICMzUufzMQzqTs=;
        b=kytYOVsLpgGPnOWZyUS2ZYPnNospG68NYHcfCGdQm4YT4Wemn5GnlaJA9xp3OOiGvW
         pYenBsMEW95zkvgxXtT1KbyU8wsXjDf+b7Ax69cyRYuBBj8BVUcA7rtna+F7qajviC/F
         qlRSXSsjp0lL9+iZR/UAQPNgxLqHDKDEDmKPWDbDIocIIL4LLIpx/m+Leyb7ey3NOwT7
         Fjp371GLQ4p8D9OKuuzskbGSPDbUHFtfmavg9Nc8+Zp1ZvYgsXFSCnkPn/1pT68LA3MH
         ekWFgTa0yj0iqhIMpkOZk1GalDGnTwH7NeT2IQVNuMUiJncrJb9IfrSmXbKbHnYLDwbW
         5qlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705427032; x=1706031832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sadTVFX/+yOxJi04GWahAJ/5tRCyZICMzUufzMQzqTs=;
        b=vUw58eP5H6gOh/wtSDpf0B0udfZOtXJWfx0dta13Yfemhq2VQpDF89aN7VGS1cVkXC
         +VpKMlp3mXixpD99QypkrSz14XDq2F03N/v0kmdqTSeqyfI+/ulP8SGsGG6vsuiMMwOq
         utOX5MG68J69m1imo7ptnNVEPqtPKx6QMfG7NsxIRffA3zP7yCOC9uuEUMkJnWkzPi2O
         ny+rOpZVsCeUtjWO85ppiEQ3up/wJRjHvRAbYhWIzH8AKUreuPIOfbAGiFC/De034McZ
         sHEyOVoLWqUFzPNhHgY5PisHgOBM4IvEf6NmEV4c9V62wVmLzJdlaP1INSf9BGWmtLS/
         45eA==
X-Gm-Message-State: AOJu0YziBqn5OlR5ICjqncAD/y/lUHGXPfZ9MJEMl+ii8WR2j5XPLYIM
	kshJptLhKStxb/llrDqLbsUcjHMUs4TPNMpETzjl9KKvjIxZ8A==
X-Google-Smtp-Source: AGHT+IGI87JfSO1MZ7YpCV7ykS5z6dPmVztVmhDswHZl7XYfkO+o3BgBUIEzwgatKdnzSh1R8Y7xKS2CmWu9HOzK/b8=
X-Received: by 2002:a05:6358:611b:b0:175:77e8:6c31 with SMTP id
 27-20020a056358611b00b0017577e86c31mr4700924rws.42.1705427032574; Tue, 16 Jan
 2024 09:43:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240109114908.3623645-1-tudor.ambarus@linaro.org> <20240109114908.3623645-2-tudor.ambarus@linaro.org>
In-Reply-To: <20240109114908.3623645-2-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 16 Jan 2024 11:43:41 -0600
Message-ID: <CAPLW+4nz9nOYgdkYGc47h2LRnDpO=ZG0vmNgyNXV5YkSQEqE_w@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: gs101: rename cmu_misc clock-names
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	conor+dt@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
	tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 9, 2024 at 5:49=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro.=
org> wrote:
>
> 'bus' and 'ip' are sufficient because naming is local to the module.
> As the bindings have not made a release yet, rename the cmu_misc
> clock-names.
>
> Fixes: 0a910f160638 ("dt-bindings: clock: Add Google gs101 clock manageme=
nt unit bindings")
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../devicetree/bindings/clock/google,gs101-clock.yaml         | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.y=
aml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> index 3eebc03a309b..ca7fdada3ff2 100644
> --- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> @@ -85,8 +85,8 @@ allOf:
>
>          clock-names:
>            items:
> -            - const: dout_cmu_misc_bus
> -            - const: dout_cmu_misc_sss
> +            - const: bus
> +            - const: sss
>
>  additionalProperties: false
>
> --
> 2.43.0.472.g3155946c3a-goog
>

