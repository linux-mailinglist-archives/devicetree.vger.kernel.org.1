Return-Path: <devicetree+bounces-8775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8D47C9FEC
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0384281567
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 06:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8798D14F9F;
	Mon, 16 Oct 2023 06:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="OhcaVzVp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EC3185C
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:50:10 +0000 (UTC)
Received: from mail-vk1-xa29.google.com (mail-vk1-xa29.google.com [IPv6:2607:f8b0:4864:20::a29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47DADC
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:50:08 -0700 (PDT)
Received: by mail-vk1-xa29.google.com with SMTP id 71dfb90a1353d-49dd647a477so1344637e0c.3
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1697439008; x=1698043808; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wTyeNPacE6taal06U4rFKo97zbtlCxtcbVAGC5HRCCg=;
        b=OhcaVzVpkfPHyxCSdlGtObhkWWG0LMk2VKko0WyS0U1rYJRV2J/DszdHKOLoIfutXn
         JkGmw2tBYldGKc/+/gxQH86F5NTAuzfUhgnX+JleogCcUgSS2vgIVR7Sb45hywmU2aIm
         1gH4RqIHUTUNERSo4DnxF6wu+WktMvV2fHMvMzpuCw/GV12SQUl27upWqdX9ffgZv7ZM
         F9b9EO3lMcXEGHSbkuDNZvdgmigUmJiierUi0vRej3eGkJUPIyrccgK9/vFUBWWgDN/E
         RO47Hp0TB373xMZ6z6EeAOFmq45hT9adkGfSRyHJZ1ZecZNF8zgr2CKzzpE185ZcdCt2
         DW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697439008; x=1698043808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wTyeNPacE6taal06U4rFKo97zbtlCxtcbVAGC5HRCCg=;
        b=gsecCGd73L45E11b9SzBvuIO8RFZXFsla9BAgOg4SEzX03J8QIZPCBBNNvXjNZhwkK
         RXqNBQ1XkX0VYV6mG5z2EvzkH9KWBnw9biZxflaq18LEc5oPOLjnD98HUJyMK+Iceqko
         qew3S/pjXehuNe/w7lsR6g4/DYSPpmgI+QoyWAuTlmAg3FU+KDG1VjRiNlJN2Q7WXFsX
         2w0fXJrvD6Qyf7qNdxcuSiaYNlhVkYQhFc7E81qknw8orjb3kK8w7s6nlA0A62ujbmL1
         5Lq6qNYozcee5qAANVo4YHO8dav4kjobheWJhMO8c17QDA9hxaxkactxSvlj+0YYGaM5
         qCLQ==
X-Gm-Message-State: AOJu0YwVibm3sf7WRItD7NND+4QtpFBggnXdp/4qTV1ankMuMh3QrBAR
	94UL9ldiDRfPMh7zQ4oVuSvyxCrXAnpni0BXORmUsl8ZGGBYXc2a
X-Google-Smtp-Source: AGHT+IHlu77Jq/4EnzgWYqh7YnGd6GIrhJLqfbhpQKnfJadIJTwwVh9WLmRW/LNFGLdnBaen0mpiWfuuUnXNKBWHoAk=
X-Received: by 2002:a1f:ec43:0:b0:49d:fab:fa42 with SMTP id
 k64-20020a1fec43000000b0049d0fabfa42mr27078246vkh.1.1697439007850; Sun, 15
 Oct 2023 23:50:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Oct 2023 08:49:56 +0200
Message-ID: <CAMRc=MdEtfpEULW190EVdmBYLYPSsAo8RWeHggAcCvJfSbzVFw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C64-D Additional Write
 lockable page
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 13, 2023 at 8:30=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> The ST M24C64-D behaves as a regular M24C64, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Document
> compatible string for it, so users can describe that page in DT. Note
> that users still have to describe the main M24C64 area separately as
> that is on separate I2C address from this page.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> This is a copy & paste of [1] for ST M24C64-D. I reused the same pattern =
and
> also used Marek's commit message.
>
> [1] https://lore.kernel.org/all/20231010190926.57674-1-marex@denx.de/#t
>
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documen=
tation/devicetree/bindings/eeprom/at24.yaml
> index 7be127e9b2507..6385b05a1e62f 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -73,6 +73,8 @@ properties:
>                    pattern: cs32$
>                - items:
>                    pattern: c64$
> +              - items:
> +                  pattern: c64d-wl$
>                - items:
>                    pattern: cs64$
>                - items:
> --
> 2.34.1
>

Applied, thanks!

Bart

