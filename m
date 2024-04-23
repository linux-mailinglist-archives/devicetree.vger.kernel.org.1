Return-Path: <devicetree+bounces-61822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 790BF8AE53B
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64CE2B223DE
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C6A1369BF;
	Tue, 23 Apr 2024 11:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GUtUwjlf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154EA7E761
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713872774; cv=none; b=YwIdJB2ofwc6znjxkQmptGVYRtlCdKHhfnk64iUgJ34hUPFKmEX0viL7EM/n2JybBTNVhGNt2y/fzJe/F56U7q1Up1+Ny7xbAIe13+dtjkQJyyxNieTdZe/mPVZF+eEltBLywIqe0V1ZEfJ5hF/agg/oOJ2gNJai5s4FTK8Ar30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713872774; c=relaxed/simple;
	bh=+C3nD9RAvkoyvppetMyrXMkLO+5LgccUwLioieAvS3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TnPV6ptqMc2bz8tubouyhTb0yo9QoYRyUYPDbSyixgQ88qnASFxe/UkCXdgCotSr7dd1SdUoqnO0SfiSu9xlojs2KI16Bi5z/yGiehox+CpEX8QYvnuWxWVMm6QNIpAjbXOGYktCGpDB+CNaewtXhXME46Ku96y3fCm0d/0iHEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GUtUwjlf; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc23bf7e5aaso5837098276.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713872772; x=1714477572; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SaG8isn0COkQZ86ab5o++3w+tyaGWS3ScH6dTTdPG90=;
        b=GUtUwjlfJhFMwVlKTecSQB6F0TcS2Q7VuUzV3rSMOEq5EE1M60574do5SPGKTS4XZA
         QJ58qOfj7iOEW5hsV34qHqV/Ab8pFgdjIkkIvySNyOlRxqHJd1eEkOP420w9rFz3quB0
         PsfITJfo7zux6SOzh+4fgOKkn2H1AkrMyFHtTlMQic4zVkDYeoy9RDEgS0Q+EGyJMCKl
         vMd3SpfndGShUyNZf4Q6+OMYaEvzVuVtLjN5b2o8SbF50BMk0j2XKc3THxOGmzfqO3Jz
         FGv8PjREE8ZpkumNPeSez/mLaJxNC+ZCg/K9kKsTdzi1AzPspD4bJIxW/szyA7F7B4Ad
         h5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713872772; x=1714477572;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SaG8isn0COkQZ86ab5o++3w+tyaGWS3ScH6dTTdPG90=;
        b=aK7L2ByLUHQ/Z4iK2yz1Bdm6PIZ3KpwgSBqaIhrP/XbRUhqGXbilJg5YJCYUIBsYNb
         BNk0wzXxQFscRncbh2HD7mi+96/6NcIUe829ilI9cLdwrj9WCQ17NfSjqkWTlDTmoS4B
         uoXQePjxXSE9Vq1Uv2VmLnDzF2y611a/aVntuYHOt3XpWehaaKPoMxb0ecHrO/0bSZLW
         hAGTlI6MQjatIhc80vBUP8QkimLFuZJ+hG1Qe+WU4y2Ev2HyF7KI6ngjTdtShpSmByln
         WUFPS2D3HsH8e50MLjNoAjiGlWumOjq0cYiqph25fDD/hb91Wys+XDkGrXlWd13WBotc
         l88A==
X-Forwarded-Encrypted: i=1; AJvYcCXV2gdWrprbZFtAAzjGKuBNmnyavGJkL/7bjWMnpMG01A76JblZopXS/QTjH0vAV1AtI/eiPe9UDFco05ieI3CWWXCyoNYC8Q03fw==
X-Gm-Message-State: AOJu0Yyg9IUfID11J30Cw4CVft4AWhZvHgswLYyMEjIkw4a7A9Uyt+VE
	V6TwTaevNQ404pV04HXnMpCFTalDcFYqVf162McmaREuuHo4pTVusC7was1gNpJePuTCd1rFbie
	JgPh+yVY6BgFx/9RhJ5iQtvR6KQ7/3JoRKLDtvQ==
X-Google-Smtp-Source: AGHT+IFOgcXUfsFVUhsXgyY+W0UCGUdcHxdyFoKrsSN59UWVWMQTzTjOJrOoxLrhXIhaj/PY5wXZfTfeyPg7ugg4cvQ=
X-Received: by 2002:a25:8145:0:b0:dc6:d738:1fa6 with SMTP id
 j5-20020a258145000000b00dc6d7381fa6mr7622199ybm.6.1713872772099; Tue, 23 Apr
 2024 04:46:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423110238.32148-1-zajec5@gmail.com> <20240423110238.32148-2-zajec5@gmail.com>
In-Reply-To: <20240423110238.32148-2-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:46:01 +0200
Message-ID: <CACRpkdb3fJN8BwPo_GQKcXe48Kj9X_278prQs-OFkWFos3+Cig@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Describe PCIe controllers fully
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	bcm-kernel-feedback-list@broadcom.com, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	=?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 1:03=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> This fixes:
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18012000: 'dev=
ice_type' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18012000: 'ran=
ges' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18013000: 'dev=
ice_type' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18013000: 'ran=
ges' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18014000: 'dev=
ice_type' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18014000: 'ran=
ges' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>
> Cc: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Looks right to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

