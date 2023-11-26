Return-Path: <devicetree+bounces-18975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C767F94A0
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 18:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE639281124
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 17:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C084AE56B;
	Sun, 26 Nov 2023 17:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4A0FD;
	Sun, 26 Nov 2023 09:32:57 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-54af2498e85so3047221a12.0;
        Sun, 26 Nov 2023 09:32:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701019976; x=1701624776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6OIAS+oKjJdd6CoRpr9ZkAMoaAS4BtKkFjjolg9BRqM=;
        b=C64HnoRt70LlnvuyrPMjfZ3pKaF3Z0JHZnlHU69M9DgTfzAxr3lGBXKg17bu4FfQ7x
         rkjIiu9Oj/F1UmBLBHBiFb0I0lkkKVKqrpidsxnMwAovLq5Wz9yyV80l0FPqiRBHhQqW
         Jn3WAukmCV7SNVcAnZXw5KuFPTI0XYIv4DTrYM/5G7VPheju31DTrEiIqCDWu6YXODCy
         yBcR0uS9bn5PVciPAC5T3OOQc+qifN/xKAw1oyAjSCQhiGUWoLj1GLnuyP+t6JgvSAR6
         EOpjAWUpSHpQk/THwZAni+WnTqsAvWdBqS53l6cAEO19BWxMwN4w6hle80SeDKeCGOuE
         X/OA==
X-Gm-Message-State: AOJu0Yz2AoUgSflRMWHMoBPAEYk0AQwYwy+oc0KaD0Dq1/qc7vLQI1T3
	ZG1ywfK21zjXsmyF61ka7dh4EJqKN1bdsgvJ
X-Google-Smtp-Source: AGHT+IH/c6ryHCCt5txrd97DbhFLSndtrkTujWx1qeab7Ix1/YSlkeme+9r9M2Z2afZeBdUWkZXQmQ==
X-Received: by 2002:a17:906:b18d:b0:a01:a193:1d56 with SMTP id w13-20020a170906b18d00b00a01a1931d56mr6376735ejy.14.1701019976004;
        Sun, 26 Nov 2023 09:32:56 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id r10-20020a1709067fca00b00a09b9893dbdsm3168833ejs.56.2023.11.26.09.32.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 09:32:55 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-54af2498e85so3047210a12.0;
        Sun, 26 Nov 2023 09:32:55 -0800 (PST)
X-Received: by 2002:a50:8acd:0:b0:54a:f72d:38b2 with SMTP id
 k13-20020a508acd000000b0054af72d38b2mr5271973edk.8.1701019975499; Sun, 26 Nov
 2023 09:32:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231126151701.16534-1-sven@svenpeter.dev>
In-Reply-To: <20231126151701.16534-1-sven@svenpeter.dev>
From: Neal Gompa <neal@gompa.dev>
Date: Sun, 26 Nov 2023 12:32:19 -0500
X-Gmail-Original-Message-ID: <CAEg-Je8R4hvLxFCymVhwQCbhm2fNxCeoGf+bVUe93s20R3+nNQ@mail.gmail.com>
Message-ID: <CAEg-Je8R4hvLxFCymVhwQCbhm2fNxCeoGf+bVUe93s20R3+nNQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Apple M1 USB4/Thunderbolt DART support
To: Sven Peter <sven@svenpeter.dev>
Cc: Hector Martin <marcan@marcan.st>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, 
	asahi@lists.linux.dev, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 26, 2023 at 10:17=E2=80=AFAM Sven Peter <sven@svenpeter.dev> wr=
ote:
>
> Hi,
>
> The M1 SoCs have a second slightly different variant of the regular
> DART used for the USB4 PCIe ports. It supports 64 instead of 16 streams
> which requires a minor change to the MMIO layout.
> There seems to be no way to tell them apart from the regular DARTs by
> just looking at the DART_PARAMs register so we have to add a new
> compatible for those.
>
> Changes since v3:
>   none
>
> Changes since v2:
>   - drop the manual bypass disable
>   - added Rob's tag
>
> Changes since v1:
>   - apple,t8103-usb4-dart instead of apple,t8103-dart-usb4 as the
>     compatible
>   - collected Hector's tags
>
> Best,
>
> Sven
>
> Sven Peter (3):
>   dt-bindings: iommu: dart: Add t8103-usb4-dart compatible
>   iommu: dart: Write to all DART_T8020_STREAM_SELECT
>   iommu: dart: Add support for t8103 USB4 DART
>
>  .../devicetree/bindings/iommu/apple,dart.yaml |  1 +
>  drivers/iommu/apple-dart.c                    | 35 +++++++++++++++++--
>  2 files changed, 34 insertions(+), 2 deletions(-)
>
> --
> 2.34.1
>
>

Series LGTM.

Reviewed-by: Neal Gompa <neal@gompa.dev>


--=20
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!

