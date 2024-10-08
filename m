Return-Path: <devicetree+bounces-109198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CAD9958ED
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:08:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E25F41F257EA
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9681D215F50;
	Tue,  8 Oct 2024 21:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ukTCt9R9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AD11DFE33
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728421710; cv=none; b=ZCi3ZVYA3SCu6jTcXmcaDYOls3t5OrOo2WR+mDssNCBOy5OwUQQbjYQCZe4Pc2df/P8DhXgxdutC6MDsS6rKqwUgPtkxKsSHsL8CGAysiMbTy7kHsfmBZ2xngnOibaqKXcDHDudKtI31334JxJBewMXQuxDySqbYr5da3x3Ay6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728421710; c=relaxed/simple;
	bh=MnazW0czy6QsKx0VD61wzExgH7uM2nZ2mt2atrzIfnU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ozh9G42q68UDpFiS/Kze8wJdLGLZENJx7yy3GeybSg+N83xLq2IEtDDsHJ+TLusMcOHXu/6eKsOkcBJ9saj6Wv41iZbrrS8wlL/+Ue79zyzhisNQzlRB1swJt8nnqVyxtu5A1LBGa/f1AwlKsrfFQOZ/LfPZdifmw1uQ0Nu9hEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ukTCt9R9; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7a843bef98so812894066b.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 14:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728421707; x=1729026507; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sE83pFCV26DOjSccPxtuo+ZxnLJQRJXe4yNALdDcOkk=;
        b=ukTCt9R9BmfAv6zYQ+X4t29fue6HkNXpD14QAEBKt8xBlygAI/qoEnqnS2c16qI6q5
         sla7vbh1xWNam4wLCAwjcbeFqllAyLqm9ZUmrpE7pGHsU/VH1Qbrj2249LJ1NJOSKZEF
         eWZsbYtNM1GDtjakn+oFzOZSCoyCubTYaKyan9VSoTO4MwAEBNzvSDEnWKQ7b+xVA0mv
         W2TE1lxwWHHmmhERSX1p8oWQz4Yp1MubU3xYAJhQr1QPHW/9BSrwmV4ZlPbhF5pIsrG0
         M+WjLILEL99ogBApLKP25vM/buGAq5yzUFNm4loHpKqQpCDHr5jNaIyFLx/IR+3AkXDu
         WJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728421707; x=1729026507;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sE83pFCV26DOjSccPxtuo+ZxnLJQRJXe4yNALdDcOkk=;
        b=Ypj15Lz1G70HHcMiUbzdSpI3sZNwDaNc0kyTzUPCjBUtGaqoFKVUk7Wd/RFnhbR1X8
         IrMM9gExz19RtCqZLB9NWhSP7+WHAyRIPgPHXpDAC9GscXcSe7ZG4ZnKj36PcOBbhCaH
         GYWlsdSYyCA8TdZeYiXBmULTBvUn3dj8xZTaw805r+fGKHRiPEZpdsu6kUvcOeUlVj2I
         CqHUks82IIXrPB8CSOnwrCE8eZigtaHmcoqdx4MJ21osxX2X9q2LTU1Y8n9ycwD2V+9S
         TFCzmnHse93D/RDzKVdrz7IWVxYNt+mkIFsKxWT1v/s2jOjUdG9Os37RxnsOhnxjK2Yb
         LnBA==
X-Forwarded-Encrypted: i=1; AJvYcCXM3imlQJh2V4DJhdgi7pOR8hI4rAV6RvsX51MPWPSBji4hc9XYL/NA+iWNrgD95+b/6AlxSeoFlFll@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr45PD1l5K82IgF47mGo8HhCUKQFlpRtCMUKFIA4L8qSnaQFrK
	Ki67mdrtCYsmvqSC07H601RjO+7X4CUeLjhq/i2HqAFAIxFfnQ5UOVLvAaqp2cg1xfH0MP3MyFu
	FsfR3ZLoAMLkphwohOnitz7VyayfcUpue6FbXHg==
X-Google-Smtp-Source: AGHT+IHqVitJqVh91Dw21ceGsoCsmpbMpD1zYOyB0xs++neKXZuOILxOMEPnjGNDkBYWXx0j6dth0ALd1nftkjQkH94=
X-Received: by 2002:a17:907:c05:b0:a99:7bc0:bca9 with SMTP id
 a640c23a62f3a-a998d11f6bemr8789666b.3.1728421707232; Tue, 08 Oct 2024
 14:08:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241003211139.9296-1-alex.vinarskis@gmail.com> <20241003211139.9296-3-alex.vinarskis@gmail.com>
In-Reply-To: <20241003211139.9296-3-alex.vinarskis@gmail.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 8 Oct 2024 23:08:16 +0200
Message-ID: <CAEvtbusLQHqa-3RKogD9CquXTyZz6UZgWjf02SnMBW4F=8cZnw@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] firmware: qcom: scm: Allow QSEECOM on Dell XPS 13 9345
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, robdclark@gmail.com, 
	peterdekraker@umito.nl, Bryan.Kemp@dell.com, tudor.laurentiu.oss@gmail.com
Content-Type: text/plain; charset="UTF-8"

Hello Aleksandrs,

[Again in plain text]

On Thu, 3 Oct 2024 at 23:12, Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> Allow particular machine accessing eg. efivars.
>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index 10986cb11ec0..2495c08a52f5 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -1731,6 +1731,7 @@ EXPORT_SYMBOL_GPL(qcom_scm_qseecom_app_send);
>   + any potential issues with this, only allow validated machines for now.
>   */
>  static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
> +       { .compatible = "dell,xps13-9345" },
>         { .compatible = "lenovo,flex-5g" },
>         { .compatible = "lenovo,thinkpad-t14s" },
>         { .compatible = "lenovo,thinkpad-x13s", },
> --
> 2.43.0

Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org>

regards
Stefan Schmidt

