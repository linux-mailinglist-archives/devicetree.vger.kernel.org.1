Return-Path: <devicetree+bounces-212726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB5B43985
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:06:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0A19544FFC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A402FCBEA;
	Thu,  4 Sep 2025 11:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eNNxGCot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E842FC01F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 11:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983986; cv=none; b=IaYjuXxy2CUB6QTlWvitTV2IBB8qyhzv6ysFnxM6/eOAbQvjAHtHmAaZ4o/+AusM7MpMhSydfrxQ2btQSmz2ThMPGGSmvvGAj7vOKbvMlZ3mIHWi+s7S1TvotjB3exD8UJxwzYd9gPmFF/4d7ux6oc7XeSVpioDk6vFTh6iVufU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983986; c=relaxed/simple;
	bh=5ePcVdkCAP+ESkraZYbyKnHjr7ZHVyyj6qsuO2F5SsY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qX0j9evz0kq7O8jtREIs/TQP1HZkNzBikAnwfS8ogfRCYI2Ig86oetH0q+KiLIX2uLqjWXm0B+vvUy4OJ9W78pwB6OmjkMhccN3f6+Z6bUUX8ozEed+xiWFc2MNmWLWvROShoenRFOCdMW+BRyTWu7giup2faXhM7w/iamCFK1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eNNxGCot; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-724b9ba77d5so10373997b3.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 04:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756983984; x=1757588784; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qqKmJAcNXHCDcjaAnbZVhbmbW/ApAzLJDIUDuK/HU4s=;
        b=eNNxGCotUilXfuyt8TL1JfKDjSU+ol8BSFAjNeoUbWMGFmASGOuEbKKM5PPdJERShC
         rMAmxCo5WcY1ceTbAxL6W+w/mDPVk71mIV7AUQ0Exv6OtU8uQ7kkllq+M2Bxvfb/ofvw
         Gs/SoafXsTo8a3lQMWrVSlBy7OAZgNo5JZc1sAu80kWqFXOz31I/Vmc/Tt/UXeaqyp/M
         0lb9SqV16OeIcCjxd5/9WOP81+n/9nnPUPBSpO3RV6uHXcBVZrx/i4e8zL2Dl6+x43W0
         jNiOBvJcztbLs3u8tvqrh0BKWc0ywi+QwZUC5wxaaslZwajzhfeHb7N+KyfLeS9y1D0L
         BXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756983984; x=1757588784;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qqKmJAcNXHCDcjaAnbZVhbmbW/ApAzLJDIUDuK/HU4s=;
        b=SdtMZraa2dB3seb+3l/MWLFM/AHx7kGeQS4LZ1OD548XXBhoLraXpy5bK+BIzccTV5
         ZGIQjxm+R1RDqATkyqupHo9ln31O0Bht+aoqQK/f350JB0u44LpjvgLJy3dp/DQ8baGA
         Y/cYWK8UQE8yXec9tp9sUD6oWHcC5pRYkry3hL4+aabbF7SCNZ8pb2YiovPty4KZBy7r
         jyODZKqK6t5e02eyjcSb4ukKu9E1Gl6hmZmF7JEiaYoyXvNoOzF8cRkzi0sqeTD81UFT
         MS3UEHwxSz2escV8BuIB7Q9/qvOrMRHIe482DoAPUk/nNSwb1uh9/s93XoAzHYgca7FI
         upRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoQsbpmroHD6+qsD7SK4iaefIMZWZgngCRE4QCP8FiPVYK937JLy2C8/ZUFq49hfZN1o0EMjE9c5Mm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9fFKQlO4LkK2jZsr463dix/b5WqyFKyyoeGHIJY1HNezgPYoO
	sBr0woUDMmKvE1dH8dSm4w23MvFh95KkkGWdG1VP+lj18r55PwELXuPKoqWr8UtPRWJHXGmky0V
	cggW/vXKi+xRkHORQqM1OdUTNwe6sSPq4r8iZ6rY/Bw==
X-Gm-Gg: ASbGncvZfBfZVdmZWZetTZKmD7PB8cBf9Fw+zAqzTrCkxOmK5970KIGX8QOXYyi8hSA
	djBM6tAwOk3gHu+B5J/87KOtAh1F2REzzGmshyRw64U6NRuWkR/nIRJp63qrd4omohuRkaGd2pc
	tNysBOLfbeqGeI0Y7BELm2OHA7Xf2pcTbSX+rmMQb2Cv3ePv4KHFKYr5aJXe6h3XzMiepUgFepW
	Mm9qOY5
X-Google-Smtp-Source: AGHT+IGqecQe5yOp9cR8x9hlAxxhDZsB8TfIupcC0FJtDt5AMK3d6JhTkzzkgdPyrWC0L7dsYj69W3txBCo/Z85TaT0=
X-Received: by 2002:a05:690c:9a8d:b0:71c:1754:2696 with SMTP id
 00721157ae682-72276542673mr206178927b3.36.1756983983654; Thu, 04 Sep 2025
 04:06:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822-pm-s6-s7-s7d-v1-0-82e3f3aff327@amlogic.com>
In-Reply-To: <20250822-pm-s6-s7-s7d-v1-0-82e3f3aff327@amlogic.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 4 Sep 2025 13:05:47 +0200
X-Gm-Features: Ac12FXzzO6lh2XeuKq6zK_9jSCFOJd4db2W5dfvQA3Y4rmF6D3oa47ZB2y7XJS0
Message-ID: <CAPDyKFo=pwb43vZFkKprbBthxAy_YtYD2mKitY6Oe-rMHYCkDQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] Power: Add power domain driver for S6 S7 S7D
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Jianxin Pan <jianxin.pan@amlogic.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, "hongyu.chen1" <hongyu.chen1@amlogic.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Aug 2025 at 07:41, Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> Add power controller driver support for Amlogic S6 S7 S7D SoC.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Patch 1 and 2 applied for next, thanks!

Note, the DT patch (patch1) is available on my immutable dt branch too.

Kind regards
Uffe


> ---
> hongyu.chen1 (5):
>       dt-bindings: power: add Amlogic S6 S7 S7D power domains
>       pmdomain: amlogic: Add support for S6 S7 S7D power domains controller
>       arm64: dts: amlogic: s6: add power domain controller node
>       arm64: dts: amlogic: s7: add power domain controller node
>       arm64: dts: amlogic: s7d: add power domain controller node
>
>  .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  3 +
>  arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi        | 10 +++
>  arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi        | 10 +++
>  arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi       | 10 +++
>  drivers/pmdomain/amlogic/meson-secure-pwrc.c       | 95 ++++++++++++++++++++++
>  include/dt-bindings/power/amlogic,s6-pwrc.h        | 29 +++++++
>  include/dt-bindings/power/amlogic,s7-pwrc.h        | 20 +++++
>  include/dt-bindings/power/amlogic,s7d-pwrc.h       | 27 ++++++
>  8 files changed, 204 insertions(+)
> ---
> base-commit: ffeebf7587f518a3717fad308cf735adbbcaba97
> change-id: 20250820-pm-s6-s7-s7d-950f720aac6d
>
> Best regards,
> --
> Xianwei Zhao <xianwei.zhao@amlogic.com>
>
>

