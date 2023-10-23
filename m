Return-Path: <devicetree+bounces-10733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC017D2977
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:49:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B14B2813EF
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 04:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880794C67;
	Mon, 23 Oct 2023 04:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c5GLwDPl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEFBA40
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 04:49:17 +0000 (UTC)
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 137B5E4;
	Sun, 22 Oct 2023 21:49:16 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1dd1714b9b6so2197557fac.0;
        Sun, 22 Oct 2023 21:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698036555; x=1698641355; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxPaFEHkN2GDdgDwBKgSaVnPaX2nDRtfg0nlj1uSc1Q=;
        b=c5GLwDPlR18T2PchyLvrJ7xTTaLdpdmT0F0iSskqyViIfO5I3cQSG+V20g4n1w7qBb
         bKFl0g+V5Jjx6q6L2Yb5Ms2aje/GqUyD0kQUDJFBvHnbxuULU2I2xDCU+47GAWW4xfpO
         x3+itzqXoDyqJAYHbmpW0bqENPJbOF49ibPwEcQABgcoNz9lFy0MQz+i0djy3Nduq4Mh
         Lkx5MXcWdvr2AH072btCir/lKB5l7ceM+xwP0ZdR/9nsALX1oUwI7J2Y43x2vUffDwu4
         /ND2QnDMA1FWRNtG5tqsRjKh01pZw/vxXWAjkGRPlPMMRLnSooxRa6bN1DtojZ3M3ZGT
         M5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698036555; x=1698641355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxPaFEHkN2GDdgDwBKgSaVnPaX2nDRtfg0nlj1uSc1Q=;
        b=TLrVSVC6Exktjc4dYdKYQ4kQdfEitHeSHW84upYOLWnHYEIv1eiQ7C8UlCtsUjAl3P
         SUr+OoI8P4UIgkBKVhSUPS6ZCaFLepo9KyFrvvxhQOC5LKehYxojResbbxcXu7EOjtvN
         TvWwhcI+x6B9TRWmX35Vu8aA1h0IxXfIlmtrTuwbE0xPGKsJY0D3qn6/MWyosB0Pp0pT
         HmUdi9y31cjLiz1bQ47Vra5Kdi+r/IHcWtWijSNcO8hEj2i3Ph2MjUPLDDDB4iUAuf6y
         BuJvidLy9IWa6eEaMo8dtQaxHs3d5qL0HB379s83vwK+LB6zf4OudEM1tVX1s3VgN78s
         5eCA==
X-Gm-Message-State: AOJu0YxS0lI2gs6M/+U+t4F/aYiOQ8R1IKGdKPNux+JQKdBftfMY/0T+
	n7stxIJtIZz4wNRE654FKBQOx7dzKgRjvZK7xSQ=
X-Google-Smtp-Source: AGHT+IFkk9nGKKxsfM2C5d0hR9EDQje2xJBgkluo3WMKyPwX7Agu5S6em1v6mPWAeUB+rfbbXPJuxNvLi9kHqqd7nBM=
X-Received: by 2002:a05:6870:3d97:b0:1d0:d78b:982e with SMTP id
 lm23-20020a0568703d9700b001d0d78b982emr11653745oab.35.1698036555076; Sun, 22
 Oct 2023 21:49:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231022163006.803800-1-sergio.paracuellos@gmail.com> <ccd29f0e-2c94-45bf-8fa1-12a88b475fc9@linaro.org>
In-Reply-To: <ccd29f0e-2c94-45bf-8fa1-12a88b475fc9@linaro.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 23 Oct 2023 06:49:03 +0200
Message-ID: <CAMhs-H-R-9ADNgr6LxK-7ATBuc7SB=LgJzxWC-bpYiX0jNarAQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: ralink-usb-phy: convert to dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 22, 2023 at 6:37=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/10/2023 18:30, Sergio Paracuellos wrote:
> > Convert the ralink-usb-phy bindings to DT schema.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof

Thanks, Krzysztof!

