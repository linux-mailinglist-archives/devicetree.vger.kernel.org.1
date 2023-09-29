Return-Path: <devicetree+bounces-4436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B954C7B2967
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 02:10:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D31161C2090F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 00:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D031188;
	Fri, 29 Sep 2023 00:10:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262BF1381
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:10:06 +0000 (UTC)
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9AE992
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:10:05 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-4195fe5cf73so93391cf.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695946205; x=1696551005; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LzvTFN75+iA4NEl0LJCBH/BP6Z5NQCZHvtY+oNVE+gw=;
        b=OjCFf9TOnkrLU/KswzCvSTiHaAwPyIWNJJ2EPe6dDqm+X5kAOzryroIiLCzfM8xmVr
         YPCnE39m1D1V6DUzfZu8OBJcU25eGSp6gJjXyhqJvXDGbqdo8pBhvKEqzddTxevzcxIa
         GZ/cNiIMCHi1a5JxJlFWZ2Kzn4ftofnKMyH057/K0hjQKxq2mxTWKwC9xmi74DP2fUfW
         9wF3Qrw4n7YArj6sDmadA0ZyZGQ18m96hXrMp60KURbiQgIzuA/bxGqls40Hexe0Bn3O
         E9NvZ9cKCD1hqsyypzt8CowKCH1/mpPiol56odkeYMSMbrI87cQ4seeXBzuLS2Um5v/T
         igTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695946205; x=1696551005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LzvTFN75+iA4NEl0LJCBH/BP6Z5NQCZHvtY+oNVE+gw=;
        b=qBvhkzOmPMtURqiB6ppHQlvh2kgC95uqNGCrk+3Oc4newAjaeE4RHW73hetrbibsjw
         mUxs8I3CO2c8+R0u+Ohd4HTpQqPjmaF4SauWhfd6K0NlrPfY9gXMymtIQLe/IVVw7CBt
         axqVgGnWre+mC5noC8LCbMilWyX/jg/Si4m8bZMty3ZIbhcMbZvMb0KB5tLpayqFMbQz
         rZ/FP4ge1wQHP1EOebYMC8O74UUAFm1LOO8vGtyYkWV1ubiMEzzQ044/HH7J4SxP2a7x
         aFOzs5SpBy/G+5+Z+F6NyA2MPZ1AkgyFASqZ+G/Ao1UkMRSxVi95/rIO0iWYMDcR8xRN
         ZwAg==
X-Gm-Message-State: AOJu0YxLvzuA+mJdRRX/BqK30sJioTfsUtEUaSrD4a12MWYzORQrJ92O
	mVJCavYEr1fpP1AgzAAL/frQ7ulhiINVZS/wa0kj3Q==
X-Google-Smtp-Source: AGHT+IH4jwtz94nsixUZlli6bJCxlt1xjILkhR2GybMC88NTjRXEj7Vlfpt7diniCxJex6zUjQlOAOBjKfTfS7/tbTc=
X-Received: by 2002:a05:622a:100f:b0:417:9238:5a30 with SMTP id
 d15-20020a05622a100f00b0041792385a30mr1067632qte.29.1695946204321; Thu, 28
 Sep 2023 17:10:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928061207.1841513-1-apatel@ventanamicro.com>
 <20230928061207.1841513-3-apatel@ventanamicro.com> <CAL_JsqL6LvfQQi4AqJpDPKwC76Xap4Re4o+bzviyb--dUOG7vQ@mail.gmail.com>
In-Reply-To: <CAL_JsqL6LvfQQi4AqJpDPKwC76Xap4Re4o+bzviyb--dUOG7vQ@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 28 Sep 2023 17:09:27 -0700
Message-ID: <CAGETcx_1sKjyMR4Vkx4maVy+jopHtjuzO7n8zzOnj9u9G5s1mw@mail.gmail.com>
Subject: Re: [PATCH v9 02/15] of: property: Add fw_devlink support for msi-parent
To: Rob Herring <robh+dt@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Frank Rowand <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 28, 2023 at 7:40=E2=80=AFAM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> On Thu, Sep 28, 2023 at 1:12=E2=80=AFAM Anup Patel <apatel@ventanamicro.c=
om> wrote:
> >
> > This allows fw_devlink to create device links between consumers of
> > a MSI and the supplier of the MSI.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/of/property.c | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Saravana Kannan <saravanak@google.com>

