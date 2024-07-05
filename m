Return-Path: <devicetree+bounces-83495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EB29289DC
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 15:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C168AB26F06
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 13:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF5114B959;
	Fri,  5 Jul 2024 13:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="DBwN7dch"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8AE14A4CC
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 13:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720186475; cv=none; b=shLswNj/N+0OigqJja6ZfWLhvX5cToEPq1Q1HDDfVVXXSliGbiq9pJ+zqrTmi/c8DQkalRlkTDDvKe0TH66Ilo76McBN49KvFTad2oe2lf4d/1Yald4G+aietQr/QdB9MuYxmMJ9bk3VF9i5xoZBZS87l3cFUqynIx8bVzRuFh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720186475; c=relaxed/simple;
	bh=/WWUk8xgbMeoX+XMjmJKMzm4jVM0QnM4PPaAAtS6ETg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=locLGqV0UGjfAgqfYMUV6qmz2I8HaYu1w0yxr8SWiGt//mtNilt9rlZg2TVsO2MFKBDCNefAHQbMlifT8uOThIlLSkUPUvNFe4PBPlB7rE15MXW38VphYGZ7dbrh7sgvSazx6X9nQdyPWT8tuYtPE2cLsTzk274J0pphsxJXtE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=DBwN7dch; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52ea16b429dso1215300e87.1
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 06:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720186469; x=1720791269; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7lziJDkz8ksR4dmlddeHMdYw7zMgC8DIyGzxNLyJTo=;
        b=DBwN7dchrM3Uhg+n02ERwvcj+HPkIr+eeN3Y0hVvZU+poqph18SqrUpsRb5dSvPXLP
         Bl8bNTdNMs/SuoDAoRBr34bDHcresooRAlZ+WI4Z6SF3N6br9Jwyie3873hslJPTC8it
         XI8TC8TvKqf0slKrVdh1Glb9oUi7fSWUcEaM52pS7/jP7I7Bs11b5DxPaxGn2xXcaH/p
         D5LTJcH+d1K8VHnMEzisIELFthjn/kqnKQs1eEABc/BEZ8iafqaKpFnsUULTDsuErzoj
         W9uYmuXDn4S8V82szriUbBspjQ3g5iX133Lc9WTmfo9usHFeIdvyjfV7sL3110MaU3y5
         JHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720186469; x=1720791269;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+7lziJDkz8ksR4dmlddeHMdYw7zMgC8DIyGzxNLyJTo=;
        b=Dl0pgzIEvNigqNM2rHkNloqnzw7hJOJ+qofYmWtW1RVJAWaW/KZ7cN3ZC+bUH83Rmh
         2Ihg0HpDH+gLr5/QqinePAbVAD/Q4Pl7EGb3SSbEkE2imMLXOP8B/51fu2UMv+BofqZj
         eKs7E25WqdsS1Fcve0b9g7tdx3yAPiS+K9u2OxWv4ooAN+Z/wYw4BQ8TmjULah5xmP4X
         9306LFeeVpV3cChZkJC0Dzb1Cr2NK7zX6e79OVanoBnoyoqiXr4ZygaK57luufB105Pf
         wpW/fzA1tOzv6pzqkJ2F1c34aKIBjYzzEY83FoByzvFCx3D46NsSVJ6FXScOm03+GefI
         i6/w==
X-Forwarded-Encrypted: i=1; AJvYcCWlGkwshSzMHasjRcgDwlC5KDddqSwM1W90PvVMjbYLuS2A4E6GQGQ3oPo1h0S1HAIE+Yuk9wSXXs/+55CC3C8dLvmqJpZbVK/ULQ==
X-Gm-Message-State: AOJu0YzsGOSTsiDuYrQtF1Hu3Q18vCswn78bvNURNrAK/P2HgHcK0zAh
	jfYK42yXxydD0kXZsm0HHcy3JlZfviiFCyKcyR0s3cOr8mr4yMUhW1+gXH7wOt3Dcp7aevqGZZF
	w0fRCiq7EzyB8HiYbsKA0fJPO6gMN/zWaqMzzyw==
X-Google-Smtp-Source: AGHT+IH002bET0sLDg515bzQ4elXCWBoy5idHfanq8GGKi/meSChCtgNax2EBm7zNVr+Mq15wxISI8Af7tGceGvs1Lk=
X-Received: by 2002:a05:6512:3694:b0:52c:ebf6:9a87 with SMTP id
 2adb3069b0e04-52ea0e00c5emr1457812e87.26.1720186469286; Fri, 05 Jul 2024
 06:34:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240705-pwrseq-v1-0-31829b47fc72@amlogic.com> <20240705-pwrseq-v1-1-31829b47fc72@amlogic.com>
In-Reply-To: <20240705-pwrseq-v1-1-31829b47fc72@amlogic.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 5 Jul 2024 15:34:18 +0200
Message-ID: <CAMRc=Me+Fd_Kjgm0u0JhUatVEp=XS71xys82snAimpw2U5MQTw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: power: Add power sequence for Amloigc
 WCN chips
To: yang.li@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 5, 2024 at 1:13=E2=80=AFPM Yang Li via B4 Relay
<devnull+yang.li.amlogic.com@kernel.org> wrote:
>
> From: Yang Li <yang.li@amlogic.com>
>
> Add binding document to introduce power sequence of
> Amlogic WCN chips.
>

Hi! Thanks for the interest in this new subsystem.

> Signed-off-by: Yang Li <yang.li@amlogic.com>
> ---
>  .../bindings/power/amlogic,w155s2-pwrseq.yaml      | 62 ++++++++++++++++=
++++++
>  1 file changed, 62 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/power/amlogic,w155s2-pwrse=
q.yaml b/Documentation/devicetree/bindings/power/amlogic,w155s2-pwrseq.yaml
> new file mode 100644
> index 000000000000..f99a775fcf9b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/amlogic,w155s2-pwrseq.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/amlogic,w155s2-pwrseq.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic power sequence for WCN chips
> +
> +maintainers:
> +  - Yang Li <yang.li@amlogic.com>
> +
> +description:
> +  The Amlogic WCN chip contains discrete modules for WLAN and Bluetooth.=
 Power on
> +  Bluetooth and Wi-Fi respectively, including chip_en pull-up and bt_en =
pull-up,
> +  and generation of the 32.768KHz clock.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: amlogic,w155s2-pwrseq
> +      - items:
> +          - enum:
> +              - amlogic,w265s1-pwrseq
> +              - amlogic,w265p1-pwrseq
> +              - amlogic,w265s2-pwrseq
> +          - const: amlogic,w155s2-pwrseq

The name is wrong. There's no such device as 'pwrseq'. There's most
likely some kind of a Power Management Unit and the compatible string
must reflect this.

> +
> +  clocks:
> +    maxItems: 1
> +    description: clock provided to the controller (32.768KHz)
> +
> +  clock-names:
> +    items:
> +      - const: ext_clock
> +
> +  amlogic,chip-enable-gpios:
> +    maxItems: 1
> +    description: gpio specifier used to enable chipset

Why not simply: chip-enable-gpios or even enable-gpios?

> +
> +  amlogic,bt-enable-gpios:
> +    maxItems: 1
> +    description: gpio specifier used to enable BT
> +

Same here: should be simply bt-enable-gpios.

Bart

> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - amlogic,chip-enable-gpios
> +  - amlogic,bt-enable-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    wcn_pwrseq {
> +        compatible =3D "amlogic,w155s2-pwrseq";
> +        clocks =3D <&extclk>;
> +        clock-names =3D "ext_clock";
> +        amlogic,chip-enable-gpios =3D <&gpio 7 GPIO_ACTIVE_HIGH>;
> +        amlogic,bt-enable-gpios =3D <&gpio 17 GPIO_ACTIVE_HIGH>;
> +    };
>
> --
> 2.42.0
>
>

