Return-Path: <devicetree+bounces-79276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB9D91483F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97BB4B21393
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BA713848A;
	Mon, 24 Jun 2024 11:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n8oNNWxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DAD1369B1
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 11:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719227640; cv=none; b=Djyqs38syjdHdkmIg+Fnr5wvXMNp++HKAryiDA6+4Csr7HYqBymmXAzkExpGuwqcuLjx1RM9azFizaZBJdrxsmes8yfB4wE92dt7GEjWZfxhdsflCY+UzzYBFTHs+xEba/DjK+TEGQVJ5jOr8sRGqCajTQ2pOq/b4c57KlvyNko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719227640; c=relaxed/simple;
	bh=meeWBmILHEqJWzac8umjaOJa8I4Ncz20EGfL7OzEJwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BB2xijRDaLrawOUtCTn/JhRlLdiCqiJSpBrL+5czeM0+BxvVrWZUs6qDLLc6QyIVzoViXBlJLR7/onLynkzs37vwDk5hAFPVQXzKnqrTHK4sh7Zkp4siqDN1HC3+M4hp6GwMn0bzT2w5+yAMFhS1D/hnAf2SYaVfUJpx3csE3NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n8oNNWxG; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5c1adbcaad3so1877968eaf.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719227638; x=1719832438; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HEzwQY70dS5/4zaR7wFnTP3jHuIxxfgJgjvsBN94sGk=;
        b=n8oNNWxGWwHxlRPICp3Lbhcrqp48MuLJ+XqpwHPRlQhtDrWO1ymAwipoBvp/kZBo1E
         YoqlJEguO7P2Br1oe6Ky/QkbZIp8dG0Rb3l3MUIY5uTlmqgQ79wayKMl96hlVClOGFwb
         P2bL1oV5ZN+SouYXL1wpkKLxlb6CNBD/V2XKZPnoLrFSoKpakyIknf7xEZYgs2DHew3N
         zfejOkheZ8SZmO/9LgqKjATU+rqmyjMjJCRJSTITy4OpYyJWhSJHkYK9YhN6d1dIlqqH
         pE7vrU568dRXPFINhVbfmphfTBFqwQLzG1pkpkab0h8oC0nFJtpy3skBNWorQgfqmyRD
         WjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719227638; x=1719832438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HEzwQY70dS5/4zaR7wFnTP3jHuIxxfgJgjvsBN94sGk=;
        b=l5l9xANZMSJb9IFrKF+2oVHDvoLe3gA1273auPDOYO9+HyLV5XsUbX40ljCR9LKBzg
         tRXrgZShxX1A7BcxyTe637KoNFDqezrco7GRNQvzh2UZ4x7T9J4M7S9rrwYYq8bUaIlv
         OKetmcW8wtWbulXZToCKSUVr5xpMxellU3ObA4KeHfVLPCwA14CdshtbH0KzJuqqGCvJ
         vOVbrmcX++rrog1F3LQewK3w8OmOZIeB07c8ey/YaUampN61B/oovOwHyEqfZ6NKPS4I
         FkhySC5MQckVtkomfhOiUP9viIMXvi0NbBUh5/19GkyfIxAoi628uCXI7sahjJbxO4D3
         Yjbw==
X-Forwarded-Encrypted: i=1; AJvYcCUulnuhHlBXxVRjW7DnD3mvGaKJ7l3AIMu4/XRo15lSdMl4/yqUfkku43xV0ZgtNDHQm3Aa/nXIWQFI+rugWHFmBb/KAVpRUSa/Cg==
X-Gm-Message-State: AOJu0YyDcsOfMVHuRbzJN2HEJMq9GsUaQ7M+2P7iX8BrQeK7fIBugc3d
	2EcqRxYBrr/IXsVi4cC4IjSRGwhDSeB/6sh3hHOiM/nsQfQRpsesHH0Q5l1OU7e1CaI2IXs00Qr
	kpqxdwlUMAz+qEp2y9u31atq379fzmFiaHRUwkg==
X-Google-Smtp-Source: AGHT+IHmVjPOuYszhXpUs8aOYTWZZ40BicRqOgwhbWDxIhWPU3UqwLQsR384Gfu6pdKECYYPVPugv6s8L7YYKqqAGTM=
X-Received: by 2002:a4a:240b:0:b0:5c1:e8e4:57a6 with SMTP id
 006d021491bc7-5c20ec4e865mr59179eaf.4.1719227638018; Mon, 24 Jun 2024
 04:13:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-1-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-1-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:13:46 +0100
Message-ID: <CADrjBPqLgvot6oG_Kx06okwOkzn=Kozjj5Upem3w4OhN-Z3hNA@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add gs101 compatible
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 17 Jun 2024 at 17:45, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Add a dedicated google,gs101-usb31drd-phy compatible for Google Tensor
> gs101 SoC.
>
> It needs additional clocks enabled for register access, and additional
> memory regions (PCS & PMA) are required for successful configuration.
>
> It also requires various power supplies (regulators) for the internal
> circuitry to work. The required voltages are:
> * pll-supply: 0.85V
> * dvdd-usb20-supply: 0.85V (+10%, -7%)
> * vddh-usb20-supply: 1.8V (+10%, -7%)
> * vdd33-usb20-supply: 3.3V (+10%, -7%)
> * vdda-usbdp-supply: 0.85V
> * vddh-usbdp-supply: 1.8V
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

[..]

