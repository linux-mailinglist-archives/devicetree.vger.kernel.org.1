Return-Path: <devicetree+bounces-62676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A218B1F04
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 12:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50300B2AF5B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 10:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC3786151;
	Thu, 25 Apr 2024 10:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ox8ZjBmf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C61F86AE2
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 10:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714040422; cv=none; b=ZEy1ZR2/3PvT+KGD8Mm05vjYHCkTr8NwnYSKsXHahXoE4fJc3SqN3xlcZJOrclFkGvgePqmSL58Iaa/EndMYFQ3EzpmBVmrK7i20G5dp95w4ikY8zcM4UNEfU2Ng0kWvYn/Ow6G0sB7hpcDxPO0ndgAvWq5FRwOi/Vpvjt3aUz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714040422; c=relaxed/simple;
	bh=coFlk6vpPoKDKE/eIhdn/SGcytlX8UEWgALPdd7bzSA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VhMqaPc8NJ9l9KJw9R75Pl7Ziu8SMKSxWVAQ5yKnvj7l0df7AhgOJ2p8Gsl/xmdIodPnRv1BL2MC94agmoCDE9uimJDHAjDkijtRukyRcXZgncI4DdsUbN54qwvs/9yRbcF7C5ubZ2M5dN4HRnV83Tx6GXCj0wrnlL4ZmTecB7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ox8ZjBmf; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5aa28cde736so492706eaf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 03:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714040420; x=1714645220; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRSofvBWjZnGCZ5wbNW26krjGAh8HH8TfOlAU+v/yzI=;
        b=ox8ZjBmfO9AOovTLTWvrjxlwhgBGPybbXZNvExFbbjE+a375pKjhEViUTzvodj0WMA
         H2lDOAQyGJQIRi68ZlOONtnGVVFaiZm2/T+0er1Vf2YGkS+C2AP4wSWRYYgzB/+8hTOQ
         LsXwyG8gn5a7PrXC1k6OXjdUXcZlV89cqEsz8wM/d/Jiqgdw8z2eFVrLF8P9cBJoSOFu
         334DsL+H5moQo5MU32uxpGI2wgWrGKSBnWB9ryC2UgSpoWl6qYwUiBuhbL4UA2zqjeWg
         Zhbz2W3K5sC0q+DqF/0iVW+G1aqFQtXpVeJ2WHFtsWoilsOBIQx+GTRh6DXhC7GJJWIF
         mY6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714040420; x=1714645220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nRSofvBWjZnGCZ5wbNW26krjGAh8HH8TfOlAU+v/yzI=;
        b=Q4qm/NZMUxWvYcSjGVqmffJmMg3o+cxLKJgY3eTKrT5krQYdhAfCKhxFBV0yyuWl3E
         MtkDIMQShbBrvE8D0AK3Cd3jbFP764lpvKIl0DsOlf3Fn9aJCB9+tyyX8hHHXrm1Pd0i
         VGo26mmGeCXjoOdF/OYKtJlyBLZf6uOnR3t8V5xrqtcsfnHl/kq2gTNNIIdavXx1ZpMy
         M65vvOm4EUBqkD2qBSKu+L0HszandRytnMRipDpxJF3DJ11MQQaxbs+6uUyCmFX0G/P7
         T1ZN4ltlHDzi/Pe3eLjmR70q4YiVLu+TUdv8+9ZmorTtXk4Vip3givykufz9Z5Enu/ug
         RtZw==
X-Forwarded-Encrypted: i=1; AJvYcCVVn92ViZpqhKvdh+96Ule4g4NwV35uC1qYAiUUAHtDBSdxRLg0pBJBqQI2D2w+g9GyIH7tKoJ2G0G8E1Kp5x4UPYRxjYKSkexp6g==
X-Gm-Message-State: AOJu0Yx4boiMPA2y2Z041/MosLC7hUfXCQIfasFwFB3hvwkP5yPA5mBc
	s6RwlJxq91vNB3mc/G4SRiZGGjRGmcnERb4Ndf4ZeIPKEeXDpGZxVwP5g6VpzkTQaN7asjlUIYh
	vEPSrT7wE6Alrvx6pmLioBWPRHggqsSAYwPdcUw==
X-Google-Smtp-Source: AGHT+IGzXdN9jQkTN93JYhF62J2Q05oiVeNPbJR1v4bCLwPIyAnVTqlzGOk52nsCy6ZOkF0HDDyk+nkA/ctDRVoz/ms=
X-Received: by 2002:a4a:98c9:0:b0:5a4:aea7:8066 with SMTP id
 b9-20020a4a98c9000000b005a4aea78066mr6630741ooj.5.1714040420650; Thu, 25 Apr
 2024 03:20:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-usb-dwc3-gs101-v1-0-2f331f88203f@linaro.org> <20240423-usb-dwc3-gs101-v1-1-2f331f88203f@linaro.org>
In-Reply-To: <20240423-usb-dwc3-gs101-v1-1-2f331f88203f@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 11:20:06 +0100
Message-ID: <CADrjBPofpRiYc9hqOmBWXRKC7G7LYpLZfdDC4PRw9hmgV3in2g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: samsung,exynos-dwc3: add gs101 compatible
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 23 Apr 2024 at 21:19, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> The Exynos-based Google Tensor gs101 SoC has a DWC3 compatible USB
> controller and can reuse the existing Exynos glue. Update the dt schema
> to include the google,gs101-dwusb3 compatible for it.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

