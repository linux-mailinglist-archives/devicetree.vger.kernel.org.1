Return-Path: <devicetree+bounces-14134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 629847E21D7
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FABF1C20AFD
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBBF8443D;
	Mon,  6 Nov 2023 12:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n93W4Tnm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5EA1946A
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:36:10 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A29CDB7
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 04:36:08 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-579de633419so52616777b3.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 04:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699274168; x=1699878968; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VJDUivzyJwXlqL5M091869BzocP1uyzJFbwtw7gtmyI=;
        b=n93W4TnmXfrquQ1mFVO0lpT4bmOFN8EQYJmZyzH1qj35in4fkxhxkdFYpbwSw5jShh
         cTo2NCtMdrDjY4PxOVpEQ6ZzHUr0fQdnp1sMxmyFRnNzgJi2U7PtOGoeyfCzPxjS7sig
         QgbmuLS91qWzeTofIZM+bucqkHema413soikx9FbjwbrKt9oK8pG7jplq7P1nepvxZFr
         IK37XM9Sx/++WeTaQIP2KrCrGDLI0QR127fv0s57tzPEzKhlDgB3bsENSko+PfGEwFJN
         +ELTbAvlmzfq+Yn8ibzt6GbL8is1qEC2NYW7B7QlG835GtkUcRHm+1cW+2VukOEB8XCe
         dJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699274168; x=1699878968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VJDUivzyJwXlqL5M091869BzocP1uyzJFbwtw7gtmyI=;
        b=I8ZbOwIJ5xcubeQz0gUkso5hB+Hm7AmbA+y8O9Rsuy6ZUVkdpyJflUFs2F4HtYnVMs
         4Q4DaAhHnzZNJOk8HSXG9IMunvHQCwi2tjf9Sf6i9WAF4Pd9ogiQnOkLZqd3OwFdhFJ5
         3oECskb5UJLWEZaStNmM7KzIuCPKiXUqB7N7Xn8EqqvotIhj4R/yAxtGGwZzo2ZxOycE
         6RU4B4rCcTun+UAE1m0/PLAJuc9TbBp7iBuS3IhPdP1yxsbcFSoVYUsFw+9efnZLgrq4
         3hCFZvY0nceSS3MPpvCOFrmJmWEQsIgaaTEecJnl/siORVvFJgeJ91Ed8mtM4h+OXMjm
         b6qg==
X-Gm-Message-State: AOJu0YwsaS22H6ghjOOFlQOopLDuYnAGZR+A8ZoE1DMYWRvhJZsVH/ZA
	HIqqUZPYqPevO4r73n1ajfTjdaIjFSTStOH60OFUWA==
X-Google-Smtp-Source: AGHT+IGhS2m7ZE2zGAOmmnn1e6cpTmJkjwjC9JdnNOFUffxfIaqaxIrJ5/28oPGlMryE9W1BYGXDofXV+sJNA0Q6mr4=
X-Received: by 2002:a81:6d11:0:b0:58f:a19f:2b79 with SMTP id
 i17-20020a816d11000000b0058fa19f2b79mr11127022ywc.9.1699274167864; Mon, 06
 Nov 2023 04:36:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net> <20231106-pm8937-v1-3-ec51d9eeec53@riseup.net>
In-Reply-To: <20231106-pm8937-v1-3-ec51d9eeec53@riseup.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 14:35:56 +0200
Message-ID: <CAA8EJprJQMMPwtZQ5AMB=SLA0YhT7pYORNaAqAopZxS2nRu3EQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] regulator: qcom_spmi: Add PM8937 SPMI regulator
To: Dang Huynh <danct12@riseup.net>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Robert Marko <robimarko@gmail.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Nov 2023 at 14:19, Dang Huynh <danct12@riseup.net> wrote:
>
> The PM8937 has 4 HFSMPS, 2 FTSMPS2.5 (for controlling APC voltage)
> and 23 LDO regulators.
> Add the configuration for this chip.
>
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
>  drivers/regulator/qcom_spmi-regulator.c | 34 +++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



--
With best wishes
Dmitry

