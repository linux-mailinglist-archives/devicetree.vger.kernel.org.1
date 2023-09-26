Return-Path: <devicetree+bounces-3338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 549A07AE64C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 08:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 45BA41C2085C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 06:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2759F5243;
	Tue, 26 Sep 2023 06:55:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF83E5224
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 06:55:29 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC7EEE4
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 23:55:27 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59f6e6b7600so46518657b3.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 23:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695711327; x=1696316127; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHSkNGK03t5d9rG+f10qQXua3Wp3jtHQqzKshE119FY=;
        b=mypcl9B6J1Cs0PkTManL/as8PTIqMef9XvLWO6qrachl1UJwrEOOmiDcTEgdmWBsPm
         GU/y2uYvgxYhT8uIzrrKDCYp/I7vDpdh+8IxJP3e7nTVYv9thPH/xqvBCHY0kS57VUzA
         nkzu/kCi1EwnWBUY1pZ8BxEb9RhFzJt91g7QdfsTlrj4quIPIEIcC0jYnGNXjO3fbeB7
         HzbK94muvO7LOREahc6LuH7E8RSKvtufn1zxPi2uqJdFhL/ulRWkcC2BbQKBxdykxu47
         evSIAm/pcAdas0xnhIgsoK/M0WmekrUTMfh0N+zYNTuTNMSM8GyuWlYwf1d2ju7Iswie
         9tJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695711327; x=1696316127;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eHSkNGK03t5d9rG+f10qQXua3Wp3jtHQqzKshE119FY=;
        b=cGnqQ+1pZXUqiVHAFHk6KPYOoDPS2CVXjwIEPdi8zqNRfRMkEyDYzLMSDiYdN5rs4m
         BByGK44mA5cUENz/2qN6chKqgj6B9Opgf/D/6z3EiKekIOws9EjJyia31k0grwcU6fvt
         V5INupH+929b7nGf7+kZyK9IKRaedKF3aaZSA2CXn9sfokE/Mo2UlQcJqyApTnN1l7IM
         V11tunQQ6/ksrRJscPJNA4p4eGANKdfjSLuVWkE15ahhsv26qll63O1waSFMw0nJ0KgC
         6ojD778QYleJK++QBVM1/jPoC1PVeqku215R9lLz+ukKxtb3clKSurTGKs+m+sEPrWsU
         SuZQ==
X-Gm-Message-State: AOJu0Yz5HZomin7vJIhlWfQmfjAoj0aJ89hvAyrS2ZzwUQXb/omt4Lo9
	Lg+Ia9gGhqkxMpcPPOdDQQntUD9m3I+JM2D8rfndhw==
X-Google-Smtp-Source: AGHT+IHoO7TBziPA5htbsuH2VXUX9yGcO/aIOtLwPZZVCJAErZgDwgIkJ3nSHIbU3VSV/WI7WX5/gfB00KELiu+FW9A=
X-Received: by 2002:a81:4f92:0:b0:592:60e9:97cf with SMTP id
 d140-20020a814f92000000b0059260e997cfmr8225904ywb.12.1695711326765; Mon, 25
 Sep 2023 23:55:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925212713.1975800-1-robh@kernel.org>
In-Reply-To: <20230925212713.1975800-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 Sep 2023 08:55:09 +0200
Message-ID: <CACRpkdYSvgUsuMS+-=LXmCtH0bLF=EMguuvWwZ7VjUfnx+uyaQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Add missing additionalProperties on
 child node schemas
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 11:27=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:

> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij

