Return-Path: <devicetree+bounces-109487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEE3996884
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:21:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD6931F24019
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C117A1917FE;
	Wed,  9 Oct 2024 11:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xo+Hnc0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0272458222
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472888; cv=none; b=tsqMvAx9cu31tF/LNFs9foKTUQTNNtojDzueDC5tMIYBzsRbFvsryU+lUYXMPsFC508YIB42DcvsTumIxC1WtjQd9B+PIfNhmFGMzguX/ugMuaiHkUbo5XSHASLSzrFr/EiTkiOYSYW5cMwsteK0H1w3cug1g5rSg7fZhPWynJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472888; c=relaxed/simple;
	bh=K6vtvPB908Tq38kLIBtEKe64ao89wnx025O4nGdzLHM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eb2IymmyiKlwzHuzASgHSwOWoDUCuPTY6I1RDEXTBIH0TIk7STFxo7ggQV6KeINcOgMRTfDRlBTj30o2I4rYkBKTJFhr4IPvJQj7BNccRum96jq4pDcYnY6Ovm9HmbK5UBR5F2Db7Bm3wF6iMf9R7RxFR95d8OGXZUWWWMCc4wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xo+Hnc0X; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fad784e304so80183681fa.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472884; x=1729077684; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6vtvPB908Tq38kLIBtEKe64ao89wnx025O4nGdzLHM=;
        b=Xo+Hnc0XpxoDGOXSnRl0hFyz27Ox2/8zcdpESIqxR5zmN7oWRp5UasuFxUBGqTuPxh
         z37m1zsXt2K3sZlnIaHBmPCl3+myBmC50uM/lZb68hTAtTeDHeE/T7Kz+nDIRIcdw16f
         WsFWos1HIWWdbB79gTriUoy9kiRmKJ/fa26K4RclIqPtlX9njNZWK+i9HnTvHnFe/qzO
         cxJ+hyeUQQVGexpVAEPWNkQCr4easf4tFvsMEPqfq0RyvC0grW+7uNxRu6gYelJyFE1B
         xcjpm7Wt75AZhTytVj9TlPgx9yFM9GQjKOY4oP7ACRtBp24SclvB39mgvdLcR4rRihyO
         Do2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472884; x=1729077684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K6vtvPB908Tq38kLIBtEKe64ao89wnx025O4nGdzLHM=;
        b=cdorzo3xSKdNCMfwAGQ+pIGFiyrzAHUjO7sz7r/aZp6aTUo9/kFiAtZfx+N9Nu+1oS
         M7MYgfpKZEpYRpn0ZmcGXu6X9bKlBmUzMIe7y3nYnuyCakh18/AmSOGYYVu4gL0dnQGg
         pwjx9K9Asb/VK0IEG/Y5eaJmYhD+DD9+Wn/I+J1VxfFyx+VML7f9C0lVyEwN8fe1Z5OU
         Fy+YHFZg1SGLUlKGLGiVMdcYeGzG2xJVZy1RPWBTcS+BwQffxTfmxPNuqbfRNn3U3GEV
         AOKI7idqgPwCiegmnuofOKjsL9qcxlNYJJDXmvzEzSMsLt+v2LSIgz3jsKmz994tfHNL
         xAug==
X-Forwarded-Encrypted: i=1; AJvYcCVGiFE1sZp1anMMtrhuKIG097zQd/ZDlb3rsq5iQrYFNpgH7obiRF5GndMtk9gc2UvkDPO/FafVsSQH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt9Ed0ZhPO698OMpHA4cL0ucc2biaIvfGykIf0IumKsqXe7PmZ
	ve2qPJAxFhrgI3guJ5AJDVC2AJBHwNN+FymFB8QSa/kwWbvd9Z2gn6oXX6bPqCMm4uWqaJ4Q+1H
	9mvyL+/S1iGbFXeexlugYnawJKjF2BA27aNfZjwkkep3Tsx+P2SU=
X-Google-Smtp-Source: AGHT+IFmEU5oJ/7coIsQusC6z/KBPVtggdarUFKeOox4L/etbXaEuzXf0rVsMoW/uJRsuAKWRkyIQgcPek93JhTv9Bs=
X-Received: by 2002:a05:651c:1986:b0:2fa:c841:af36 with SMTP id
 38308e7fff4ca-2fb187ac41amr12317131fa.30.1728472883961; Wed, 09 Oct 2024
 04:21:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009-mbly-i2c-v2-0-ac9230a8dac5@bootlin.com> <20241009-mbly-i2c-v2-2-ac9230a8dac5@bootlin.com>
In-Reply-To: <20241009-mbly-i2c-v2-2-ac9230a8dac5@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2024 13:21:11 +0200
Message-ID: <CACRpkdYym4PJ5HkkNCerXMASfA8rx2ABzwJ-vz8efRhrq2Ts5w@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: i2c: nomadik: support 400kHz <
 clock-frequency <= 3.4MHz
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2024 at 12:23=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Hardware is not limited to 400kHz, its documentation does mention how to
> configure it for high-speed (a specific Speed-Mode enum value and
> a different bus rate clock divider register to be used).
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

