Return-Path: <devicetree+bounces-69817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E108C8D1A23
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:48:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 977291F23E7F
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD0E16C691;
	Tue, 28 May 2024 11:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xhqrxbks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CBE16ABEE
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 11:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716896866; cv=none; b=UTnYXkjijTjnzc4wTSdyG/8TO04I7jhhAsMKKjSzPlnFm5SNOwC4dY7wHEGahfJthBN97cMuaoPN/EMv9zrTvcKi2o2uMMjqTexdGrcqQAlx45zXnsORaTvTIEfDt3CEdUAkZMpO7X9TJt20N658s5RNOK7G4vcVq7mvLjrQoHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716896866; c=relaxed/simple;
	bh=Hg7XuKM5CPqLOOgjMF8VZsLSmj+nwkGGKqG8RuNz4Vs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MUj3mUrt6B2sDGI89S/J9R8VJMK5CA7Vv9DMHdtMJe0PXd/iXvUyBjwa35vHlzdiRI6t3WTlDFp7W+2+OAqUYNgMGi/KV4f2ZNVLh5Xz6Ijk8ni3+ndxJBeAk8A1cNg/8FNL9mLGEpIJVNUcFqIf37IHNuBi9X60nSqOV4Da7xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xhqrxbks; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-62a2424ecb8so6657777b3.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 04:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716896864; x=1717501664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npSwzRz8pfexOBovLMsj/PfPK/ra6eBIg7wa+wfzOdY=;
        b=Xhqrxbks9yTc+KQFH85TxhLwwhlvfzJ4IT1Pjc4vqfr2eqiRBzoU+k5xjcsHWN0fX1
         FBo1Mq1NQ0AYLedVpLTnaF3pIz2VRtZr84J8r0FEtL51IrHbQvFw/RcCNbnM4s837RjO
         f1j5t7ed+VM4BCtoYXaITafkmqWUBkGzui5zyLScc2TleW80mNNWYywajNntUjfJbKbZ
         GTw0FY9uBKIKiQPG0/4azJkab6fiS3pVCQmSINfefdzEvLVnK+muWfDgl1FCmaWm+X7Y
         +MyRl7fZupU0WR+0mJpksnSTy+cx3zap/ETLjL+xR2xCpTk8KYuZYBUV/Hw+umWX8fVX
         2cjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716896864; x=1717501664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=npSwzRz8pfexOBovLMsj/PfPK/ra6eBIg7wa+wfzOdY=;
        b=OmprBnF/BbpIq2Grs8mIfwBUzcyhefCevh5IA+nOc0lL2h9a3mgKCpTvSvdSYJJKZW
         sPFlYW0jyBXenk6Hw9OncOg6vMMhToK3DeioTgbUSv8U/gV39OufbFmqrTNcF6QHJYhj
         CNY/CLy0hv0WOukauzsXnS8O1wF1NI1gZi8u02EP57FRvxxP6MGYq+Yyj2DwBwaVp1ir
         HJZgAQiAHzRDqXfk0TALFi4bNkmCCWnxxFmNg+ItJSurxg947/dxValN36RsJlWt6Sc3
         HdxlVeyGVqhtOuvUhr03ssjNQmI10P7UMNA3itOBtGD6dNVDrk1DsNahFO4WFfPoxfC1
         iBqA==
X-Forwarded-Encrypted: i=1; AJvYcCViYvHnjPnY93tGEBXIqgeTwzwR5gHVLIS+bsDECoOO6krPaCX9nReeZEB7rDPPfCxRqZLyWQUQPCQBFn+Ln/wjtNx/TfWjXEVM+Q==
X-Gm-Message-State: AOJu0YyLRr7ZsltFWZaX2lvWC3tZdZ/5AhC7HYiZ/DJpZ7UZmLF/2zvP
	mqrmjhIAZMfvHINfG+zGt4RmBzHZHUiuRHmWOYA0BQ077M4TizmegMcsLyHIu80XBkqjxoMyXmh
	CbxnRglUqLn46CrxkoUmJ6/5sJ6++42fg+1EK3Q==
X-Google-Smtp-Source: AGHT+IFlm5HKQNbmVfg40Fu1+sUgYzW8K3sofsoQZ1Xm7rk7JC7o1LVIaBKaLQ1HwfX1q9s5SBhxIbJzcyxQTI2dmhU=
X-Received: by 2002:a81:838a:0:b0:61b:3487:df12 with SMTP id
 00721157ae682-62a08eb4a9cmr117543197b3.35.1716896863954; Tue, 28 May 2024
 04:47:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240518203903.119608-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240518203903.119608-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2024 13:47:33 +0200
Message-ID: <CACRpkdayDnBw0wCWffSwOX1EfPkq5TbkBH_wBJAwiZKaRbgdWA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,juno-fpga-apb-regs: document
 FPGA syscon
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 18, 2024 at 10:39=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Add dedicated bindings for the FPGA syscon registers on ARM Juno board,
> to fully document the block and also fix dtbs_check warning:
>
>   juno.dtb: apbregs@10000: compatible: ['syscon', 'simple-mfd'] is too sh=
ort
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
(...)
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>

This feels more like a Sudeep area of responsibility than
mine, so please use:
Sudeep Holla <sudeep.holla@arm.com>

Yours,
Linus Walleij

