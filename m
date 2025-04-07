Return-Path: <devicetree+bounces-163873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ED3A7E5A5
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:07:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0EBBB7A2034
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886CD2080DD;
	Mon,  7 Apr 2025 16:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kcS6x+aT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7E62080CB
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744041900; cv=none; b=gJk2LIHIn8o4BAIzEYOukh+63xxo27dbNUhZOSUZwmK1lL+SJIknwIFcCMeYGzUUPNyuKkJDOQCCy6d/VVM4S52TuUW8MlzOte3ORenWfKU0ka7A8ofcoUOjqT9GPS8AoVQcoRDA16u0K7MTwNX8pSs0FnsHIFa88kwBBJt/fTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744041900; c=relaxed/simple;
	bh=EsyAkb+E/Vx2Pf5QNAmePM6Wum91PuEAZobvU/Trbwo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KCbNx8gchyXOt7+y9a/0pH11nUXcVUU8pjrSdw2NpEs4bvPOcBMucWewJalj/nKJHflMnEqTaPMVMqC8EW0XsGpDnADDttQuyt8VTCgsBadwLdJJd/sgYa8l6TDoYrWsl70Qei4Ckolw9Y7gnVg3rdebwl2hSLMu4jKUV7lsHq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kcS6x+aT; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6f47ed1f40dso34171697b3.1
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744041896; x=1744646696; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PRtsR6xVM6ZICvsMHRTNEQJgU7qZB7aRP4KnHCrPc+w=;
        b=kcS6x+aTkHj/AVvOgI2CTNrRZAoECZtH0huKHm5sGQYXCgKKbHgKJUu7xUdHmJsPXw
         kqnncFElGFcyq7YSWVENNY3waCz7ZLqPwziALeSa5vNgSVfN+D3N3fqS0Ym4ITVgZQcn
         I4MyRy2MiE06UqJFk7hSQ/Z8V1mxx6wJHRN/8/Gny0rETsUQ5ju9Xb04FNZOQe0Lcu5E
         hGHeGQHDWhh5ayhTIEfSvWnwYscPFOTi4d7VofxvjxKieaEYQcxxoxsi1umVqaVw0oWk
         VLDmLgF6ocM3s5Jxy+25dvnD53ZvYBxSOAMkD8JJrEPDQEiDyJ/RtoGQ22A2MdBSxL4W
         69AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744041896; x=1744646696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PRtsR6xVM6ZICvsMHRTNEQJgU7qZB7aRP4KnHCrPc+w=;
        b=W/dZXjFPEfrNKcNTuZ5XLzjVtxdMKXENaaqlrAbwa4F+T9tMr3dlruJ8E8vgRVIthe
         9ZvHQL6JFD11qCdRnYyXMfxrVpZh6Idq/o4g3YMW/iyXSLTB2Gd31wSLmNxZCvq2dUc2
         hewC2KGJxXeX4rlo/sPGf+E3/ZZTAvaCZhfqriJQ8yKuLN+o0RdqpIZ5Vyakg+m5SoID
         FFRrMs7H2SMfqUnrdPLY8/HomXqswfkjENn0JJ5+u1/v3738raD0ycIiHjel07FIqYM3
         NuYolqZL+W1nMIW6taSaWnLBz8/8fuZDb22ldQGkcE/WJKKeAxPGBqDl0OXNSFzKwmo2
         74vw==
X-Forwarded-Encrypted: i=1; AJvYcCX117U1i2hH7qpZVXseDmyn5RVH+xg1Y3hX9iC67oCYY2TqVJL1jGGGZovViIznmYoA1Md71lGPSEHT@vger.kernel.org
X-Gm-Message-State: AOJu0YwzhQq/GjIFl0+RCvONvY6Gyqg9EWqn7r+RNs5RUMhJrpvzYAYd
	1puH7+HcJyx5mhA7O4N7uHsU1DiDZJj0JbBjr8+nVhTvgVZlUh5Dz0JaIe18dko2GkbMY6JRiBA
	rLDKFe9i6aDBxwU0A6Zs1aTanNrgjCe71gLSNBg==
X-Gm-Gg: ASbGnctgIE/P6sOFcp6ThKdsGv2Nxjb1Lp4C3Rab2/iLisvYu6gpNxpz9tNYF2cG2oj
	DkEXdvmbeTXujfcDFonzc5k68WO6LJ9SITwckfsFUjhabonjOHIq7jVduV11r2f8QUbYqP3pT8y
	CoGm7E4n2y3i3FEn5g1iEh6kQtPX8=
X-Google-Smtp-Source: AGHT+IEgtyhHcw5Jpgfae/63h0KNZCvI+qxXPeZypusFjvmWFk+cO1XtdFw/5d+hW1tCksobHOcrVkCj/XZ7Ug4xyF0=
X-Received: by 2002:a05:690c:3686:b0:703:ac44:d37e with SMTP id
 00721157ae682-703f42fc111mr168754697b3.37.1744041896281; Mon, 07 Apr 2025
 09:04:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320211922.1135669-1-robh@kernel.org>
In-Reply-To: <20250320211922.1135669-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Apr 2025 18:04:19 +0200
X-Gm-Features: ATxdqUH-tbXCaf4ePanPkHh6DiK3ftNM3BoL1J4Avf3yLjwSBSY2qumPHOTnSI8
Message-ID: <CAPDyKFpzxK3AaEPsWjkgmPCjCO6u8NeWdZiStWst_Uzdda9MBA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: Remove redundant sdhci.txt
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Mar 2025 at 22:19, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The properties in sdhci.txt are documented in sdhci-common.yaml, too.
> Remove the txt binding.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci.txt | 13 -------------
>  1 file changed, 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci.txt
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci.txt b/Documentation/devicetree/bindings/mmc/sdhci.txt
> deleted file mode 100644
> index 0e9923a64024..000000000000
> --- a/Documentation/devicetree/bindings/mmc/sdhci.txt
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -The properties specific for SD host controllers. For properties shared by MMC
> -host controllers refer to the mmc[1] bindings.
> -
> -  [1] Documentation/devicetree/bindings/mmc/mmc.txt
> -
> -Optional properties:
> -- sdhci-caps-mask: The sdhci capabilities register is incorrect. This 64bit
> -  property corresponds to the bits in the sdhci capability register. If the bit
> -  is on in the mask then the bit is incorrect in the register and should be
> -  turned off, before applying sdhci-caps.
> -- sdhci-caps: The sdhci capabilities register is incorrect. This 64bit
> -  property corresponds to the bits in the sdhci capability register. If the
> -  bit is on in the property then the bit should be turned on.
> --
> 2.47.2
>

