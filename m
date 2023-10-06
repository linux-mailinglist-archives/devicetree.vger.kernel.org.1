Return-Path: <devicetree+bounces-6620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2367BC19E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 23:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2737028202E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 21:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32185450C6;
	Fri,  6 Oct 2023 21:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lrUsV09z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AFF42C13
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 21:52:59 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6854BBE
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 14:52:56 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-59bebd5bdadso31571237b3.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 14:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696629175; x=1697233975; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1rPxjIeED0bawl/Zg89RjgWrJXCyV4Gh65dmdUfl1ys=;
        b=lrUsV09zVMySgNtvDyftfkWl7pkHalfb0DTW6Dx03WHzK3Zi9WUzWTPpLByNLVMSFo
         UBfHmT5W4ACKf52Bw9YVxPwm8fl5Rgerbis0sFlwebTKyUSFfmeUOc47fU6sa8Msz388
         3FYtqgRf5Zd4nrJAsOiXbFo844+BIxmOpcMvMv3DHxE0jHCSE2wfQ6ZBKWbRxq0JxtWb
         utu/dna0mln/8BgQLjB0cYyJiyKaH8JnuZdAmxCjoMvt6JQwRZ6IYXjEtKa9vPcJxzyh
         0M/kwqXEb7U4S+17YviYSAKPw4CuG1KgznKXtQvCwcgg2xXVzEgf+vSEzSrnCszxb1Hp
         81dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696629175; x=1697233975;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1rPxjIeED0bawl/Zg89RjgWrJXCyV4Gh65dmdUfl1ys=;
        b=IBZ3V2SpwBuK7zn5LclLFsykC+uSGMx0pBwUAui8jhVW51+ujybl3VpCrJIkT30cfc
         eMfW9hqDBCdNzGDRGGLsGkSYonTQEVAc5PctjGoOPzpw4QPtMSX+mZuc32DHO3o3puSV
         Ai0Ei/bU/ShCGPiST25jOA2avgEzw3qcjEV0Eg2gzp+EHVEst/h6JdXTSTk6Jvl0Ssqn
         YUpt4DTM+//buk5US/R+ue2wxV+K8JDW+8w/Aqgr2l7WWhChynPxTzzl/HOlC3YbmRHt
         UUcvmEKtYTUX63096wPy/nkHlUpth4fyvC3Jgw/ZTTZlVl3skPq3lJRXg59QsCalpiDM
         JCMw==
X-Gm-Message-State: AOJu0Yy1GNo1veZ1fqaiuJoOPlB2StpShhL/Mo039K3ilmcyW5jGovs6
	smU0JSApBXGaNRHeXe5mLWOJas545PGzCODtKMJCVA==
X-Google-Smtp-Source: AGHT+IFtX2fxe7d3k5oKKf0awkIPkKawjGVBLybPNlpLznR5lXwlZYsZkR+FwG2n0CD+MRFwqqi8iiuKTGPz9YDHAGY=
X-Received: by 2002:a81:524f:0:b0:56d:2d82:63dc with SMTP id
 g76-20020a81524f000000b0056d2d8263dcmr10487001ywb.10.1696629175634; Fri, 06
 Oct 2023 14:52:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-2-peter.griffin@linaro.org> <419f823c-2476-4aec-b25d-7e6a2994555a@linaro.org>
In-Reply-To: <419f823c-2476-4aec-b25d-7e6a2994555a@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 6 Oct 2023 23:52:44 +0200
Message-ID: <CACRpkdbAFOm07ttP9gXasTkZOc0JC3DKv9wBsVYSV3rEfqi9iQ@mail.gmail.com>
Subject: Re: [PATCH 01/21] dt-bindings: interrupt-controller: Add gs101
 interrupt controller
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com, 
	s.nawrocki@samsung.com, wim@linux-watchdog.org, linux@roeck-us.net, 
	catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, olof@lixom.net, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 5, 2023 at 6:04=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 05/10/2023 17:55, Peter Griffin wrote:

> > Add the gs101 SoC interrupt header that provides human readable
> > constants for all the IRQs in the SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

> > +#define ITNO IRQ_TYPE_NONE
> > +#define ITER IRQ_TYPE_EDGE_RISING
> > +#define ITEF IRQ_TYPE_EDGE_FALLING
> > +#define ITEB IRQ_TYPE_EDGE_BOTH
> > +#define ITLH IRQ_TYPE_LEVEL_HIGH
> > +#define ITLL IRQ_TYPE_LEVEL_LOW
>
> No, these are not bindings.
>
> > +
> > +#define IRQ_ALIVE_EINT0              0
> > +#define IRQ_ALIVE_EINT1              1
>
> We do not keep interrupt numbers as bindings. Please drop entire file.

Agree, but it should be fine to have as a SoC-specific .dtsi under
arch/.../google/gs101-irq.dtsi though!

Yours,
Linus Walleij

