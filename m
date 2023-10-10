Return-Path: <devicetree+bounces-7201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDE97BFAE1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 245C2281B4C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3953C19464;
	Tue, 10 Oct 2023 12:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KGKmxhgM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27236120
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:44 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCDA3A4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:11:41 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a7be61fe74so7803277b3.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696939901; x=1697544701; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+q8X53t6/nAULKwb/iQeHBUqOXFycHH5TaG/WC1vrU=;
        b=KGKmxhgMP4P3IQJ/iGhtpYpiJ6q3uSNdweJXBRuZwa4UKU/nOrdgNJsi20F1w4WZNF
         l+qpw1x2Kd8wTmFWYu1+06HOCKk7FkoJqWHDn7IUTHhXocB44EZCBO6VJAZRJ0sXSvNX
         bkhWe1RLSXnRLjSy6y4aVXlZrKps30OtwITFamPtgD5Qn5D5gNiCrcbQhrTW73XVUUl/
         OoSk9+Q2fp0YBYruI/BmW/gH7njJmIYgvmDaVBW41O75vCsbClyGwuJ8x2yxZzreXgwG
         2gcmKsBb1IG/8vM7Vpiu+7EJuUNhCNCTFQ1AD/wAe45p6gWo7QzovAPUf/0AixfFPYUM
         Rdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696939901; x=1697544701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L+q8X53t6/nAULKwb/iQeHBUqOXFycHH5TaG/WC1vrU=;
        b=MLIOsWAt7mvgQAfIxFHeemwE0/4M6Ps2H3rBsMxHr2E73gHYDc7caN7r0zeFnjNmBo
         oSIIb7sdH90xNl2uSPH+grFBmjhd/ap8ZzE04xDGPiP7BoCw9yVYaqM1vE7xFGapq2FY
         LxBJ26T63SOGEzNVtohQiH6kaqRZJuYpGMrY74fDk/WqO8cyYhgQcX6vzRl13yEE/Pnc
         I5os+IrQhDIMeN+Ys7LIUhc52jZOBNiS2uBl/Lu4RM37LaOAfZ+uzqOqff3VByQwQEgQ
         G6B22iysEloYM/XnGdnZhIBrLFEqanKjoiRnZxPWCdxasNDmgS6auVFAgcgm/sXa4Eu/
         /Iqw==
X-Gm-Message-State: AOJu0Yz0m19eBVG1oGb5PdnRp05W5D6497UNEkWGcw24LSRLGU7VfXkl
	lhMFvHXmQkGrPvQgtu9HvfnrMXlfNg+gSCFx1PxQ9w==
X-Google-Smtp-Source: AGHT+IHY62VCVtolYEhTBCIC57nxmItuoQHuHYu3sYeMnpAunQnYQ8ZtY1uLV0kYVpGVCOXn9wxAiQn5CWxRf+sQLyM=
X-Received: by 2002:a25:800a:0:b0:d9a:5c10:d7f7 with SMTP id
 m10-20020a25800a000000b00d9a5c10d7f7mr1507482ybk.60.1696939901112; Tue, 10
 Oct 2023 05:11:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231006082247.3830719-1-martin@kaiser.cx>
In-Reply-To: <20231006082247.3830719-1-martin@kaiser.cx>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 14:11:30 +0200
Message-ID: <CACRpkdY9md81_GHN8kKJhCE9GbW6k5tRLavaQ4DJtYCf+C11+Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: st,stm32: fix phandle-array warning
To: Martin Kaiser <martin@kaiser.cx>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 6, 2023 at 10:27=E2=80=AFAM Martin Kaiser <martin@kaiser.cx> wr=
ote:


> make CHECK_DTBS=3Dy st/stm32f469-disco.dtb
>
> brings up a warning about a missing argument:
>
> stm32f469-disco.dtb: pinctrl@40020000: st,syscfg:0: [21, 8] is too short
>
> The description of the third entry indicates that this entry is optional.
> The code in stm32_pctrl_dt_setup_irq parses st,syscfg and treats the thir=
d
> entry as optional. It defaults to 0xf if not present in the devicetree.
>
> Update the schema to require at least two entries, use the same syntax as
> the description of renesas,ipmmu-main in
> Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml.
>
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>

Patch applied!

Yours,
Linus Walleij

