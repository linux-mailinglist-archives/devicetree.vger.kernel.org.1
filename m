Return-Path: <devicetree+bounces-9736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 028127CE46F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:28:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 326311C20925
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32B963E484;
	Wed, 18 Oct 2023 17:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="J91YWiTp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18E83D965
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:28:41 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B1D94497
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:28:40 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c50ec238aeso68686071fa.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650118; x=1698254918; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1aOTkmKT0/VEUJ6dJSIOtEOBOATm/C2zJujpXbSsYL4=;
        b=J91YWiTpOUljVB0NDiQmiEDOXThof4ceXwip6WNzLVeZp/5HavbZz/+HQfvgcr+doD
         oRjHM/dSSnCZ8WOOn4BsH/inNo8Ot1EbXEAM3D3zg18KLEbOukvKewA4wXez2Iiw56SD
         ciuMaCly+a//9EdYbcUFC+jLQDT4bFwWj43ARCAa5/C5wfqwbo27AGFM+Dv4R3NDOrzv
         h41oCnUUCZDuQmmhEet3f0RVrX63zswaFU+yLKcrrd9gIx7kN/SrV0i7WNRU8RaGF/By
         36P3NBACANBC+bGiEb0q6ggvJ6NH4RIXE+fxCd0fbYbBrCabTTQCnxWdhEBazQSdW/83
         FHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650118; x=1698254918;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1aOTkmKT0/VEUJ6dJSIOtEOBOATm/C2zJujpXbSsYL4=;
        b=nkzLP/bpjXjmCkAB1SggqKdVo8pxaHko0t0LrKQVc+LQiikXc7jgOe0p7jnutTSXLr
         s8zUgKxMKEe/4NMP0cI4N67IPkNbq063hPMCDRfyZeNd5RolgBRiEmK8ObdG+0Z1LCxB
         OffAtL4i/s7US0e5vTHWoYatOWnM6wFnupNAIZ3zur7yzPEPrDGApKGUM77EgvV6//bO
         JQ7TOI3s+q21FUKmsylRRa+ai1BKiG/Qv+lHBl0vnDlVKDAZgL7sqK981xeQqUIh8PG+
         DMshNhpVcM+JEjDG3B851JMH0PazWlG9txB5CE5KcgLiUoEkviPbDjxDs5J86JO3Upuq
         +UAg==
X-Gm-Message-State: AOJu0Yz9gC28k1RAZpUPgfvYwCXoyIFy48eSPtQ8eKBQOfbW/N1yrRDl
	pGCcQB4NVZhGATkR77s1tIszVX8/pKNKwEa+9jNtuA==
X-Google-Smtp-Source: AGHT+IEH/Te0HHRqLHxWdsHtRpbFbaOYrfrcIubs163vkWTt94hU44lu3W5dGfsp7LfIsZLKmD3tbWcSjooB4Tzx2jI=
X-Received: by 2002:a2e:9916:0:b0:2b9:e831:f16a with SMTP id
 v22-20020a2e9916000000b002b9e831f16amr4058294lji.26.1697650118136; Wed, 18
 Oct 2023 10:28:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-9-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-9-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:28:02 -0700
Message-ID: <CALs-HsvDtceutbdNXuBKtnTTKy_qZgzjKAi-XvwbYCYoLVRTxQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/19] riscv: add ISA extension parsing for Zfh/Zfhmin
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 17, 2023 at 6:15=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Add parsing for Zvfh/Zfhmin ISA extensions[1].

Typo: s/Zvfh/Zfh/. Other than that:

Reviewed-by: Evan Green <evan@rivosinc.com>

