Return-Path: <devicetree+bounces-2109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 055297A9A89
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B47D128258D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 696FD18057;
	Thu, 21 Sep 2023 17:49:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E601F1799E
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:08 +0000 (UTC)
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 569C890F36;
	Thu, 21 Sep 2023 10:47:30 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-49970221662so463548e0c.0;
        Thu, 21 Sep 2023 10:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695318449; x=1695923249; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2QMJzQRVdpXl092C0YB+p9u+FvBSdDJvGwaFoHe9mXs=;
        b=GW5mu62j5GAI8vx+EUr37uPb2r6AqNVp61yF0br8XOte7zKmB0/kPBFQGwR4LGVQKi
         EjfufBC0Lyq2lmGiHbOoNFbcxsvSOb9266c8nMSaUWme1J7QHknyYlgCK0H1ndyNOSDB
         fA+3TMwN7Syd9tHw8Uv08c/THQX7TY8a+4cLO1MmVygOBnQlRSOKw1iEeN3yFQvb7AWS
         XFUhgH/Ka5UbrqC3oyZLxwmthJF05wP1FSO8pVilIEOC+W4Z59cUN+O2FuhPjv3hR+v2
         mcY465v9Lv0/Eqj9vJauSf5cJ6Wpu0b09jHCgLckqMDaaKeyvhS8lAFF2IcohtYWkGtQ
         zRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318449; x=1695923249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2QMJzQRVdpXl092C0YB+p9u+FvBSdDJvGwaFoHe9mXs=;
        b=cfv+VjYkfHrs+fWjptct3o4+YYe9k8KR/R+115hzrOT/QI6q8/xHDJveSQk0UeZLly
         oaSQpzrzq9aqOolVa3c+ch//D5SK27rY1wTYjMRgvPr2o1VkKZMFA1D5B+wLw0QGsfvJ
         V6FHmH2uepBq6KoyYekxkeErFVEdFoYeBEjiQOAIkfwzi24lozC5ZLx4C/85aCOa2S9S
         4D+Q8fNCSuGomlm2hPpjMeY26hkPsObhyF6Ym3cmj2tO5sgGRXl1YruXSvf2bVGBoX/G
         h+Z/nIf4eaWB4e5BjvPP+PCJdEVJYaRpKtdx1aYSw/1LB8zpiAftkpaaVnUfkVVa4xUs
         2BKA==
X-Gm-Message-State: AOJu0Yxo+m/RlCNMCAbgNssFdfD8zmmuj6M6uCgatoRjbdW/kNzS1Wcy
	omwlnJAgQQGx9EVzoL4pKdsP12Yuq7aDp+miLJwiIZgG
X-Google-Smtp-Source: AGHT+IEQIBnn00pB2IJpNVNOufGxL6gAIwGGykOexSbWRjQHbZV1E1O5Pn75njZHId7nUUnh90Ubb2uF3bofkKYX24k=
X-Received: by 2002:a67:e2d7:0:b0:451:64e:4645 with SMTP id
 i23-20020a67e2d7000000b00451064e4645mr5954736vsm.12.1695302660371; Thu, 21
 Sep 2023 06:24:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920022812.601800-1-milkfafa@gmail.com> <20230920022812.601800-8-milkfafa@gmail.com>
 <fb74f6b8-3139-4652-b36a-1de396d0ca23@xs4all.nl>
In-Reply-To: <fb74f6b8-3139-4652-b36a-1de396d0ca23@xs4all.nl>
From: Kun-Fa Lin <milkfafa@gmail.com>
Date: Thu, 21 Sep 2023 21:24:09 +0800
Message-ID: <CADnNmFp9meVx5MMbCcvjSQaMv12K7j=_kB_ajJi5GoYEWegZcg@mail.gmail.com>
Subject: Re: [PATCH v15 7/7] media: nuvoton: Add driver for NPCM video capture
 and encoding engine
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: mchehab@kernel.org, avifishman70@gmail.com, tmaimon77@gmail.com, 
	tali.perry1@gmail.com, venture@google.com, yuenn@google.com, 
	benjaminfair@google.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, andrzej.p@collabora.com, 
	devicetree@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, kwliu@nuvoton.com, 
	kflin@nuvoton.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Hans,

Thanks for your review.

> > +static const struct v4l2_ctrl_config npcm_ctrl_rect_count = {
> > +     .id = V4L2_CID_NPCM_RECT_COUNT,
> > +     .name = "NPCM Compressed Hextile Rectangle Count",
>
> This name is too long, it should be max 31 characters. Dropping the "Compressed " part
> might be best, I think that word isn't needed.
>
> > +     .type = V4L2_CTRL_TYPE_INTEGER,
> > +     .min = 0,
> > +     .max = (MAX_WIDTH / RECT_W) * (MAX_HEIGHT / RECT_H),
> > +     .step = 1,
> > +     .def = 0,
> > +};
>
> With this fixed, and the sparse warnings fixed, it should be ready for merging.

OK. Will fix them in the next version.

Regards,
Marvin

