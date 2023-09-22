Return-Path: <devicetree+bounces-2484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D25D7AAFB5
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 159852820E8
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D2517754;
	Fri, 22 Sep 2023 10:40:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EAC9CA64
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:40:54 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18343CA
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 03:40:52 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1698241DBC
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695379251;
	bh=M9atEZ8pv97FGsnY/ZWo7vn5sZBlwoU9NTKpTiNkhYY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=QfaPhUydREmq4YdwmKCkJLfZN7K1udPKQrfT376W7C0lpcR0fJxdiCN04/2G0siTQ
	 sAHj0fcZpKkt3UmuNZT7JyssfVlVU7+n9TVinKCpZn5oWszgbaN8fYYC/Y4KXvOKsm
	 xJ8mKV9Q6ezbn6DDh+g6wA1qzzMr5LgD0p6GCWVerU+KCLAr8wQZ08X/XhJnYMIUtu
	 UEYa6831+oZcy7D6pVjJ+JOwaAYuTXJ6GIBEhtBLx7OFWc4jR5nPvrGNTY7/vKgmPL
	 BTkF+E+iq2q5gzLc0PP6yNt9vaRdqmWSIcgFV6BaTJWYf3891azn9d/u4gC/YQL1H5
	 QkhiYQpUujLew==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-417b3a0bd09so21614811cf.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 03:40:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695379250; x=1695984050;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M9atEZ8pv97FGsnY/ZWo7vn5sZBlwoU9NTKpTiNkhYY=;
        b=bSZVyMHbJkztjakwer1V0A93U8Pj4tOvrMQaB2M/RbIjLQ9X3sLr4/2PeftJzMYoyx
         3RbiQzatQGmkxE01Zw0j0f8y3Xx41sRFtIYSeDYcdtXWnLQ81ezNNhrGmC0vrTINvLN+
         8aieMKZLSdRI2cM5+p+ZUyJ1Boglk8UVrMNQYWCNvuV8IlSApNkbZfwy6illgqSdOX0R
         ASfr7RUkTfISaMgLNKVIQoMsOh4bsE19BU1wRWyAgw7HYleYtEk2rIrNBykWSyIC8upc
         yOfH9WBYNOK/Y4nweXVHeNEiOFq0wg0khRYwqRKjvJfQubI5f/cTLcNsUueFk3CY4HNA
         QW+Q==
X-Gm-Message-State: AOJu0YycYA5AlWe680xcwWpTa6uEh0URb5D+p4nEihPmnztWbai7U7UL
	+XOVnTahaV3US3Tc8UIBOD9Av6AnHxnYSE2/DA95gnzqJNsoKR7MyEN/B/zcG++xKZBWQCohdkc
	4Csf/1coj3IRrh71YgOHVo1rIArRzgl0IIl+cJiGlBorZ0Ta/vbmOJbo=
X-Received: by 2002:a05:622a:182:b0:417:a209:c250 with SMTP id s2-20020a05622a018200b00417a209c250mr8885215qtw.36.1695379250038;
        Fri, 22 Sep 2023 03:40:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPQTZrz7rs3Pmta65dRQOYdSqi6ed3c6QhACApdSCdCSWiGdK7A08VO8v8WV3bKXwpAriTIN7dUIJh1owv9yE=
X-Received: by 2002:a05:622a:182:b0:417:a209:c250 with SMTP id
 s2-20020a05622a018200b00417a209c250mr8885206qtw.36.1695379249804; Fri, 22 Sep
 2023 03:40:49 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Sep 2023 03:40:49 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <bcdc4623-a37e-455b-8f10-c539e2b04554@codethink.co.uk>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <888d57a2d5e62affb8e29e0098402e428facd969.1695189879.git.wangchen20@iscas.ac.cn>
 <bcdc4623-a37e-455b-8f10-c539e2b04554@codethink.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 22 Sep 2023 03:40:49 -0700
Message-ID: <CAJM55Z_o7Z8HhaUjrSqjxy1cPjud9Q3GrdqjgFThToxxOCrkgw@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] serial: 8250_dw: Add Sophgo SG2042 support
To: Ben Dooks <ben.dooks@codethink.co.uk>, Chen Wang <unicornxw@gmail.com>, 
	aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	guoren@kernel.org, jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com
Cc: Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Ben Dooks wrote:
> On 20/09/2023 07:40, Chen Wang wrote:
> > From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >
> > Add quirk to skip setting the input clock rate for the uarts on the
> > Sophgo SG2042 SoC similar to the StarFive JH7100.
>
> I'd love an actual explanation of why this is necessary here.

Makes sense. For the JH7100 the commit message is:

  On the StarFive JH7100 RISC-V SoC the UART core clocks can't be set to
  exactly 16 * 115200Hz and many other common bitrates. Trying this will
  only result in a higher input clock, but low enough that the UART's
  internal divisor can't come close enough to the baud rate target.
  So rather than try to set the input clock it's better to skip the
  clk_set_rate call and rely solely on the UART's internal divisor.

@Chen Wang is this also true for the SG2042?

/Emil

