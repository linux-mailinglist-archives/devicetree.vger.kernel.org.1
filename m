Return-Path: <devicetree+bounces-9743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A322A7CE48A
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D913281BD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E173FB00;
	Wed, 18 Oct 2023 17:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LC2W0kv3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEC13FB05
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:29:40 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66EC8324F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:36 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c53c5f7aaaso29678481fa.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650174; x=1698254974; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9DTiAxqcwOSstlD5TGw90ppzIalLYVarQh5g8chQIFI=;
        b=LC2W0kv3He9ixkVdJahVxqyepw4kQo1nQlU+Dz37sccX2pykoqE3pklbdSjAXoPHqQ
         4c97Uv776iSsICQ9RufuReQ6FXNleI0z7U5LP4cF7CcyWKIRoTBYP64wUA9RDMmygqN/
         rptId2uWXWBkPHxRgqgvhUaObAWutngijx46cvMj2kqi2YhACc5BMvq/TbN8uWQaa5F/
         3GuGRsYogFIQy/sxJyIHf2Oy23zb25k/3OoNE8qlKhR/vP8PzTK0PCV3RHfvfWgLvhOl
         OiVUx6SDmZYo27+1yPwB74JS13gkbS8yQstqbIu0faDSTJJ3pRuRrPNljaMVZ7HJBVwE
         4Apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650174; x=1698254974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9DTiAxqcwOSstlD5TGw90ppzIalLYVarQh5g8chQIFI=;
        b=jJZDHT9aoZnaxCHm0j55wcEcpCfTZXlID0WasEDVjruLSwnsr3KJxj0P7+mVUdQXrU
         PF3OboQeoaFToSw8FvT3DGgHer8EZBjamGvKAKb3zNe9CMfjSacL0kLOmn4yl1cI189V
         bEMQCmJXUs0zUmSCqGAx66TQar8oXYV/MVN6h5I7te1x/GhWzxTakuUc+ks6PLGYmYzY
         EkTy07yc/tdmFaZMkWdRPNlhzi1YWqDwvTPahzfwjCnGUbYSHupJEaYi2y2pbBeLHO0v
         NZC8C158DWL6id+ZwrnGwBgx8Ohbr8aoe95qprSqGhh8mtvtcrOEwgmsLFPk+uFBu6ke
         vyzA==
X-Gm-Message-State: AOJu0YyGw07hRA5syLId42yf9QirRNor3tHR0W4VxERfzmASgg38+M+p
	Nv7Sut39lQx/NqbWM3FbxuJENtTuX+z/MIL20xsmCg==
X-Google-Smtp-Source: AGHT+IGSl/5M58lXn2uBdcMT7VrLiD0NX9sllCftagoL7/hlmkByal0UjqyOgJPJ8Ej/Z6HotqR68XE40MStcyvyXu8=
X-Received: by 2002:a2e:be03:0:b0:2c4:feef:84d with SMTP id
 z3-20020a2ebe03000000b002c4feef084dmr5219935ljq.43.1697650174385; Wed, 18 Oct
 2023 10:29:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-19-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-19-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:28:58 -0700
Message-ID: <CALs-HsufTbyShzXmUoczRJikjaHJ5se3Yfcp=fNAGydibZw4Aw@mail.gmail.com>
Subject: Re: [PATCH v2 18/19] riscv: hwprobe: export Zfa ISA extension
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
> Export Zfa ISA extension[1] through hwprobe.
>
> Link: https://drive.google.com/file/d/1VT6QIggpb59-8QRV266dEE4T8FZTxGq4/v=
iew [1]
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

