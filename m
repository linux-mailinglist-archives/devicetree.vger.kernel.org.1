Return-Path: <devicetree+bounces-14708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E528F7E64D9
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2233D1C2081B
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C96F101C3;
	Thu,  9 Nov 2023 08:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85252CA5
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 08:00:22 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 496012715;
	Thu,  9 Nov 2023 00:00:22 -0800 (PST)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a7c08b7744so7180907b3.3;
        Thu, 09 Nov 2023 00:00:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699516821; x=1700121621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R60uGQl/nGeZjkDEsodGckqWXW+USFr7sz7RLj2b6RQ=;
        b=SLf85QzII5eN+Xg+ucU18pkDkJ2jKOVA2F2ka6XZbBZJZLdl+6lVsn4DS2aBMKDRLa
         oCClgdG1o92wBrn4FZ/W8aspY7SPOCF1FrKejmRzM8J9Gzv54ZCNx5z2UTkHLa5LMHw5
         AOxtJREy+wL8kw/EhQBRBh2ZdKMyDTb8emNTMsQGKV7VzeV/i9d2szroHjmVRzs+diVT
         VQoAS0sTgD0mztSjS8PyiJz11mf5qi8Nx0R31aRrHmaQ+8A+Q0PZfN+zElof/d5hdoiA
         PtcEaeKhV4BbXzTPGEKwOeqARruSOeHJsjxOB/bZkwIbg/pXDgMD6p0avOF/dZycQCq2
         KbPA==
X-Gm-Message-State: AOJu0YzIFSZeUC39ajYoshj9ngdUw3w4J2ThdASOR2ypL+9QR4SRGIvJ
	lWSCA0/FEqgsinl+nyFTfcLTBBDQJ2eJzA==
X-Google-Smtp-Source: AGHT+IFbkoQhrktQgmanPhaHbB8XY4wED6I/RjXQs/76LfPWcDZEfQ3AyU8OORTImAOqUbFdZvAqrw==
X-Received: by 2002:a81:49d0:0:b0:5a7:ab45:539d with SMTP id w199-20020a8149d0000000b005a7ab45539dmr4140899ywa.2.1699516821315;
        Thu, 09 Nov 2023 00:00:21 -0800 (PST)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id g200-20020a0dddd1000000b00583f8f41cb8sm7781075ywe.63.2023.11.09.00.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 00:00:21 -0800 (PST)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5a7c08b7744so7180827b3.3;
        Thu, 09 Nov 2023 00:00:21 -0800 (PST)
X-Received: by 2002:a0d:ff44:0:b0:5a7:cc48:208d with SMTP id
 p65-20020a0dff44000000b005a7cc48208dmr3625498ywf.5.1699516820874; Thu, 09 Nov
 2023 00:00:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231108172232.259301-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20231108172232.259301-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Nov 2023 09:00:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWWgq=gnM+h-GNwvFTxZFXWTtsx=+LFJ1-cwbLi0GXJEw@mail.gmail.com>
Message-ID: <CAMuHMdWWgq=gnM+h-GNwvFTxZFXWTtsx=+LFJ1-cwbLi0GXJEw@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Enable 4-bit tx support for RZ/{G2L,G2LC,V2L}
 SMARC EVKs
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Biju,

On Wed, Nov 8, 2023 at 6:22=E2=80=AFPM Biju Das <biju.das.jz@bp.renesas.com=
> wrote:
> This patch series aims to enable 4-bit tx support for
> RZ/{G2L,G2LC,V2L} SMARC EVKs.

Thanks for your series!

> Note:
>  This patch series doesn't have any driver dependency as 4-bit tx mode
>  works fine with the latest renesas-devel and linux-next.

Can you please tell me why there is no longer a driver dependency?
What has changed?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

