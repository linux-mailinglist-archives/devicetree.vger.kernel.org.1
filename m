Return-Path: <devicetree+bounces-10776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E441C7D2AB2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 819852813F9
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5656FCF;
	Mon, 23 Oct 2023 06:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ozb3DVnZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8234C8E;
	Mon, 23 Oct 2023 06:50:16 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D872DDF;
	Sun, 22 Oct 2023 23:50:14 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53de0d1dc46so4572055a12.3;
        Sun, 22 Oct 2023 23:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698043813; x=1698648613; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Et1ceMauq9RGg+8QegxgCeUJx8ynnyIAZn/AbNiuNvM=;
        b=Ozb3DVnZPRftlgOOLm+PsAoAgEhZsvv6HNg3W95DF2SuCsoA90XFpQFFwjmfMHGyAj
         ONFHx/WNNU6+ztfZdgMGLl7ZD5CYUVlrZKuPx4hpXH4vaWVsbSnlUEM2LMYxXzN1Ydti
         VjfmJXkuxcUP4jAXB9c+0DkZm2S2/q7J3iNwI9bKxM6sOU4MDUNlPjqwlYpKPldqBHYo
         Mc6HF/mOP0Vj0WWFx7K60KVnuxJKfBZ5F6qtKk/n/noVjVoBvEFCUNEK0bHi+wPzHZw1
         U4A/mJAUVLz4khsSBDQy9NE43vPGnkQJrQqrKFZEXU9XoA07clv4JOWaydV/By0S/LEL
         jGow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698043813; x=1698648613;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Et1ceMauq9RGg+8QegxgCeUJx8ynnyIAZn/AbNiuNvM=;
        b=bIHNdGKyGRTK/HCkPj3/dLEPL/Zjyi/qYkzikA89CHfQzOAuQSKjNphXqOryvW7tBe
         3MPXEfHSFgBukwICsRHHoSZK4s9A5goUS/uyfnXsnZBaFm9mphP7pzpPdz+jZovOmGHd
         SFP/MImcQofh/kUJsIsREWKrrR2zkJx1gORHNr6lEDnNhhnTo29l97qY0r9gKvDdnkKC
         d0tz5AIlYPzxDjP+n9y1U4brgzewD55ood7bxVsvrQCYrxGsddg3fH7ZFolYNXf1ivWn
         kDGUZyVlVxT4zkvTdOchL4NcKgOehuJij4/pNxBB6ZW/7d4PdNhmet6BYWqNZGZS+Rc+
         EiqA==
X-Gm-Message-State: AOJu0YwZPYPdnOOyTGGK1T5anMYTp+QLJIvh2pe8+EMCin5DT9S+0m8+
	2URvw9Vw/dlLKv/TR8IQvB1Lz5EHItm1QKx5aT4=
X-Google-Smtp-Source: AGHT+IHFBjM2mm+Vjg6OhrOFmLuguRPo05w4rH/nRzNrASWbESRX0oDzxkxPbBO+Z5GYz8LmxFMtCgbIBLDEg595g7M=
X-Received: by 2002:a17:907:7b99:b0:9c4:6893:ccc5 with SMTP id
 ne25-20020a1709077b9900b009c46893ccc5mr6132413ejc.57.1698043812965; Sun, 22
 Oct 2023 23:50:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231022173811.8229-1-lukapanio@gmail.com> <20231022173811.8229-2-lukapanio@gmail.com>
 <3307fcb9-1697-4a9e-b4f6-c00c2b10ba89@linaro.org> <CACi=Ov58mGYT65kE2eHVx54v1g61Kpnn=pw4ETPmJBWuiJ3aOA@mail.gmail.com>
 <2c3f95e3-26de-4911-a89c-c69690e0f370@linaro.org>
In-Reply-To: <2c3f95e3-26de-4911-a89c-c69690e0f370@linaro.org>
From: Luka Panio <lukapanio@gmail.com>
Date: Mon, 23 Oct 2023 08:50:01 +0200
Message-ID: <CACi=Ov7OiKSFUSjaORQU81P20cvOxX3GkNkk+bu_uaopMk_NAA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial
 device tree
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

>Did you base your work on these files? This would explain the license,
> but then please include original copyrights.
No, but the sm8250.dtsi that I do include has that license. Same as
all other sm8250 device's dts's so i thought mine should not be
different?

>Please do not trim the content that much. How can I know to what you
>refer here? What was in original code? 0x24?
Sorry, indeed I did mean 0x34, but I am not really sure what I
can/should do about that, in the and only reason for it is to make
bootloader happy, should i mention that as a comment?

Thanks,
Luka Panio

