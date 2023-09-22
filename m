Return-Path: <devicetree+bounces-2511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6047D7AB109
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5D3C61C209CB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:39:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928921F952;
	Fri, 22 Sep 2023 11:39:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3645A182B3
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:39:13 +0000 (UTC)
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D293F192;
	Fri, 22 Sep 2023 04:39:11 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-773b4a711bcso126318785a.0;
        Fri, 22 Sep 2023 04:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695382751; x=1695987551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3tm7XbhqrREfex0ytvkwvNzO/WSxEY4k2Px8GYpsFrQ=;
        b=i4+3Sx8j5u1gD45kh29h1OtPVEh45mp5v4n8Skb7c/V26nIutBDlmFEN4c8a1eugzh
         yKNkkbl6n4rwYE0910mPIbgNud8quddmYQIYa58h0+IM6OO2vz8qOT7VPh73sDYxlnW4
         xth4PZY37Sd9xSK5woRiZseiEpq9sHMJjZw7t5qblKbmurXA+KPJp/nmlj5Hv1xGYIA+
         rvsCHe89N+jGQ6tFmyE8L+QB3CmtOJl714AavwMrFBpsufJUBxhojdzv7SQieDKa3Ma7
         rPD+ASyBG0n70h5+b+V4mpTOwhbA8MRpeoZ90ZyQX4yKJCXq7QflDKTo2MaFvEfc6mFb
         LRCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695382751; x=1695987551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3tm7XbhqrREfex0ytvkwvNzO/WSxEY4k2Px8GYpsFrQ=;
        b=fWs8FNBAuUMG1x4ynWc9U6I5lZu3Z3gkOEnOWkb8oEEk4r/8et+/NMYMnU6+iUZuYI
         XLlD0p8dmPb0UiZpGS4urq4rVdH1vAUc9kfFot9isIn8GPG8bUwSOzsw/PouhdPtB1sM
         WNrh6XtAr5zi9NfgPhfNpC28WbtqIUUiDKa8YpFoOPc283nkb371nE63Lbz9FB4MX+Om
         XmKqguL5L6eFs27M5lwA0aXsN6mHrRMy/JXALkUdmlZ39HljIG1/2B/DoT3MS5y48+E/
         bUSlMlsTn46cgjSTdwD/+C8PiaAGOMQ3Jn4ttwvlqGY275aEsSHgIYk/EsZYfmGxpWHL
         lIlA==
X-Gm-Message-State: AOJu0YxaNwLZ6eAfKBbZnWMx+La9WStVvdz7UST/NJKZJU40TQSsFYwA
	zctXRQTWiogxlL3JKB1Rmqi1hC1LflgcHXlucTg=
X-Google-Smtp-Source: AGHT+IFUD+NAk7EJFLAY4i8dlt8iE7k/F5MqrBgkE1rslaS0JQAk9KmeJa4tIqMTftJPGvv5PxMYCxA/MjVi8bpCpAU=
X-Received: by 2002:a0c:cb10:0:b0:64f:3699:90cd with SMTP id
 o16-20020a0ccb10000000b0064f369990cdmr7318620qvk.42.1695382750882; Fri, 22
 Sep 2023 04:39:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <888d57a2d5e62affb8e29e0098402e428facd969.1695189879.git.wangchen20@iscas.ac.cn>
 <bcdc4623-a37e-455b-8f10-c539e2b04554@codethink.co.uk> <CAJM55Z_o7Z8HhaUjrSqjxy1cPjud9Q3GrdqjgFThToxxOCrkgw@mail.gmail.com>
In-Reply-To: <CAJM55Z_o7Z8HhaUjrSqjxy1cPjud9Q3GrdqjgFThToxxOCrkgw@mail.gmail.com>
From: Chen Wang <unicornxw@gmail.com>
Date: Fri, 22 Sep 2023 19:39:00 +0800
Message-ID: <CAHAQgRCiAvvowhv095cm5X4aDUhJSr7j92a84KJto40Cj4wd-w@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] serial: 8250_dw: Add Sophgo SG2042 support
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, aou@eecs.berkeley.edu, chao.wei@sophgo.com, 
	conor@kernel.org, devicetree@vger.kernel.org, guoren@kernel.org, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Regards,

unicornx

Emil Renner Berthing <emil.renner.berthing@canonical.com> =E4=BA=8E2023=E5=
=B9=B49=E6=9C=8822=E6=97=A5=E5=91=A8=E4=BA=94 18:40=E5=86=99=E9=81=93=EF=BC=
=9A
>
> Ben Dooks wrote:
> > On 20/09/2023 07:40, Chen Wang wrote:
> > > From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > >
> > > Add quirk to skip setting the input clock rate for the uarts on the
> > > Sophgo SG2042 SoC similar to the StarFive JH7100.
> >
> > I'd love an actual explanation of why this is necessary here.
>
> Makes sense. For the JH7100 the commit message is:
>
>   On the StarFive JH7100 RISC-V SoC the UART core clocks can't be set to
>   exactly 16 * 115200Hz and many other common bitrates. Trying this will
>   only result in a higher input clock, but low enough that the UART's
>   internal divisor can't come close enough to the baud rate target.
>   So rather than try to set the input clock it's better to skip the
>   clk_set_rate call and rely solely on the UART's internal divisor.
>
> @Chen Wang is this also true for the SG2042?
>
> /Emil

Emil & Ben,
I need to double-confirm this with sophgo engineers. Because they are
off work now, I will probably get back to you later next week.

