Return-Path: <devicetree+bounces-34286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA5F8394CB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 17:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E9A91C23D7F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8683A7F7C5;
	Tue, 23 Jan 2024 16:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JvnU1qvn"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93A6481C7
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 16:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706027752; cv=none; b=hnCP62A/mlOGdozPgeMdBiyrAXpfg1dR9aDnUCUNbPMO2d5TwE1waH3QUakORRBHLTfwPccXLD6eVjmI44bjW86zbbsOfRlJ/w7LQWahpXqEm+9PaYYpqfDRlgjxpGV1lKzXfpkGI64cWU/xcKeVZfcHIpPlvgNt5v7D/Wr/yBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706027752; c=relaxed/simple;
	bh=pelzPdBmCCZdUXfejPg/cWeKXRO59St/ByJi7P4VJeg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ym7W3D5S9fiCpys2xeU75sI96M9K9xYm421icm1k2zk4viGyDCLEmznPRL3+v/JQFo4/N6u8Le8kX0C9Z3GG6G+llPX36EM/qSn99VfxSpa6S0ScaNf/eSn9z0dX/FmQBENTgjOf7PCIIzfAjjW9d1osDBAckJzw4fjsENBYoSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JvnU1qvn; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1706027749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eBZ0jM2Y91GDpqAFQdvBt0eQmR6O4Kseecz7ZIi6fjc=;
	b=JvnU1qvnGEzQzQdxMLhImFfxhOKEoLRQyf+GnDOtFEcU586WdK77Qyp3s27Mp2TTXwfrs/
	+T1ACeCB1DOnMeCCrsD4FqVf66QA2AEOvqxVOBwwj6jjdOZyW2vrBmMcnTwA3pqnt/zpsF
	FHqR31UyGW3KogvWW5mZxNpaQ77goFs=
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-cZgpl-XWNYGOtoz2Cf8X4g-1; Tue, 23 Jan 2024 11:35:47 -0500
X-MC-Unique: cZgpl-XWNYGOtoz2Cf8X4g-1
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-6e0bcaceb20so4748279a34.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:35:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706027746; x=1706632546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBZ0jM2Y91GDpqAFQdvBt0eQmR6O4Kseecz7ZIi6fjc=;
        b=PP+03o5uozcYd+MuVe7YxoSjR6hFDsxnE4tV8iDw2WQdQJUDt2ChHMWMOTZ8Z/ncH4
         9/0R/I1hq+xd6yilXlBpIhL8xourIfisXwsgbsFc5h0ABdCqiscLTq8G7VrUsuJ9AWaL
         5kIiw3JQdJm2U5RYLJDmXvnv3hXMSBgJCab2pUfvZF8JIO04UxiuDH5sMyzIIm8IW2O5
         p5Vd0HjKjc0fYq8U8UBh0NzQUxinEf36QQqROszSySev+HKwKf54RxW6UztrfoLQ+8E1
         ec4L8wq8Cm4hM+kW1gSmNu3UGdmjyrUjx5K+0HJtGOEhzcFkgrESq6NQaI932gcmNhlU
         9pDg==
X-Gm-Message-State: AOJu0Yx2SK91P5pYa179ypMHYOMP8DNuScQH6vhg8GXrj7PtfqD4LvCp
	rpgfAfVQ8d0i90orbfFey7WVx2gGEY/1cISnAw6r72Ja2efI7Q4dZkfxAcCcM0fRpgBqKkXB0JE
	MFCH7zZ+1Q7ME0i2yl/rv8n0bRD0rtlBpDHXKK0vEtS+j/BWu4bYLKrKglnH/vQpyniZoPiIIWf
	AKZGJ7SPhxsskUusvKMTUyHtzUoScIc42bJQ==
X-Received: by 2002:a05:6830:153:b0:6dd:e799:1d27 with SMTP id j19-20020a056830015300b006dde7991d27mr179161otp.26.1706027746559;
        Tue, 23 Jan 2024 08:35:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEsgoFIkZOcx3W2FCMnR8lFPMvJo4YZKlxyiSRsZwq65pcNCn8cxtzHSu7Td76xMksWYF5I/eNqb2OAWYrbt4=
X-Received: by 2002:a05:6830:153:b0:6dd:e799:1d27 with SMTP id
 j19-20020a056830015300b006dde7991d27mr179155otp.26.1706027746340; Tue, 23 Jan
 2024 08:35:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <95e2d79c1c36663cfffce5a20c95f8201670bbec.1704468417.git.lorenzo@kernel.org>
In-Reply-To: <95e2d79c1c36663cfffce5a20c95f8201670bbec.1704468417.git.lorenzo@kernel.org>
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Date: Tue, 23 Jan 2024 17:35:35 +0100
Message-ID: <CAJ0CqmW2AoXa8XxKzXOtBd3VfnOUjRYwjhj0KXg4mgKKHZ1gQw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: airoha: fix pcie ranges properties
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Felix Fietkau <nbd@nbd.name>, devicetree@vger.kernel.org, John Crispin <john@phrozen.org>, 
	soc@kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

>
> Reduce and split pcie controller memory ranges for en7523 SoC
> in order to properly load a pcie card on the second port.
>
> Fixes: 08a4aeb2c23f ("ARM: dts: Add PCIe support for Airoha EN7523")
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  arch/arm/boot/dts/airoha/en7523.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
> index b523a868c4ad..bb78d54e94f6 100644
> --- a/arch/arm/boot/dts/airoha/en7523.dtsi
> +++ b/arch/arm/boot/dts/airoha/en7523.dtsi
> @@ -159,7 +159,7 @@ pcie0: pcie@1fa91000 {
>                 clocks = <&scu EN7523_CLK_PCIE>;
>                 clock-names = "sys_ck0";
>                 bus-range = <0x00 0xff>;
> -               ranges = <0x82000000 0 0x20000000  0x20000000  0 0x8000000>;
> +               ranges = <0x82000000 0 0x20000000 0x20000000 0 0x2000000>;
>                 status = "disabled";
>
>                 #interrupt-cells = <1>;
> @@ -188,7 +188,7 @@ pcie1: pcie@1fa92000 {
>                 clocks = <&scu EN7523_CLK_PCIE>;
>                 clock-names = "sys_ck1";
>                 bus-range = <0x00 0xff>;
> -               ranges = <0x82000000 0 0x28000000  0x28000000  0 0x8000000>;
> +               ranges = <0x82000000 0 0x22000000 0x22000000 0 0x2000000>;
>                 status = "disabled";
>
>                 #interrupt-cells = <1>;
> --
> 2.43.0
>

Hi Matthias,

Since you applied the original patch from Felix, I am wondering if
this fix is expected to go through your tree or applied directly by
Arnd.

Regards,
Lorenzo


