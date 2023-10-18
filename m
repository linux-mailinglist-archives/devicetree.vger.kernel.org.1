Return-Path: <devicetree+bounces-9742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 302697CE485
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:29:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D4591C20370
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06BDA3F4AD;
	Wed, 18 Oct 2023 17:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QgMh309b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D38B3F4AF
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:29:34 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DFCD30F7
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:31 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so88110201fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650169; x=1698254969; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0GJ2P2CnTobBA/8z5Cm8CPIZTuVTwbVlOW0vmiISWx0=;
        b=QgMh309bM5dL46kFYzNOXZcVB/NcbdixgEujiUSsWvsYURS9Suu+wkBglY/aBzRf/3
         gZCpofmyzb3D6XQdcKQFVZYzpGFbClLm8yD+Se18KbDQQt8Q6ra0C57GF0nzs6cDMFMK
         bVhLk9Z8dTW1g5zyx22Q9s7/r+mYGFXpERe97ntLCcjPfWwH2ZgMGqqw5qz5I4ec5n6B
         eh7x8zjs3dVKiIi0lAuCh5dbc0SeAjvJSUMjgSe+IvR2Asnjfqz5sdYvjwLO1seSg9pW
         irg02gOuiM1+Xgje2i3XNmPBMKYCfA6gNpx3D0neOXYZcciJPj0v/fE5TjPe7/Z9NzNq
         /9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650169; x=1698254969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0GJ2P2CnTobBA/8z5Cm8CPIZTuVTwbVlOW0vmiISWx0=;
        b=LyIxA5KcUBE1eENgv/rmxTVtfidcD0V/0NQIhTWOLFS7ghwW9fmL2engs2a2+lYYDZ
         NuZTA2Yz8dbyW93JOURiIX5WDEB2v/dU/bOvT3BeFW+gbxr5ryk4LEdzbrFD2mMhbzon
         P48BDOnSZTJ3SuZnxHvXTK5B/YViWoW7VfcS8y24t/PuqXGQXQIhuWxEDIcC8HeX0W92
         JQ8ZAUUZi44wVdzr5AZhno3HAKBjX7P+zKuepmQRFDaX+0JQ64t02Bp0tuP7ZH2sBsJ+
         ogyM9E++E8Up6uBI3SYCqgahfU7OmPI4osrB3xwqpQjA47Z+vvVzRNKY4lXqOq/NGasX
         8Xeg==
X-Gm-Message-State: AOJu0Yyb0ODh3I02x9Cq4LVeHItHq+KFl8sDypeySZk59TAL9h5LGPRU
	RkDj+p4V/1PsDaav0TWLpt7Y9GdYpsm/FH/cCiaJng==
X-Google-Smtp-Source: AGHT+IHCEnrOGaYL2aZ2Uu1BYAivaKmsbw0/Dl8ITo9PK6BbJM+TMe6i41oEoFMoHhyP2EZwsctqXbqrc2W0+6s62wo=
X-Received: by 2002:a2e:164e:0:b0:2bd:d34:d98a with SMTP id
 14-20020a2e164e000000b002bd0d34d98amr4364757ljw.44.1697650168802; Wed, 18 Oct
 2023 10:29:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-18-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-18-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:28:52 -0700
Message-ID: <CALs-HstTzsbtfcRdm0W+qeoN+GO1mFxOLXK_fPevO2oCUqhxnQ@mail.gmail.com>
Subject: Re: [PATCH v2 17/19] riscv: add ISA extension parsing for Zfa
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
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 17, 2023 at 6:15=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Add parsing for Zfa ISA extension [1] which were ratified in commit
> 056b6ff467c7 ("Zfa is ratified") of riscv-isa-manual[2].
>
> Link: https://drive.google.com/file/d/1VT6QIggpb59-8QRV266dEE4T8FZTxGq4/v=
iew [1]
> Link: https://github.com/riscv/riscv-isa-manual/commits/056b6ff467c7 [2]
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

