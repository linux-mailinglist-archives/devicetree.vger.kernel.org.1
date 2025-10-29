Return-Path: <devicetree+bounces-232624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E3CC197C9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D23FD425456
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7D32DE71D;
	Wed, 29 Oct 2025 09:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nXvyNhLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A622D6E4A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731159; cv=none; b=b742KJ4BuNmdJi2Nd48Ld3r/i91o0y3/pHOK3z35rH4PKsbTaxIGRf8KlPZDVeeu/TKvoYb2SBbQmS/JKTNqmSr+qbsaGHzc6+k7UD4OHqT6tRPIrUQir+lp2yklU3lS1BJ5Hclu8qkOo67daT5BmAxA6pBPAqafPwYbpoQNFu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731159; c=relaxed/simple;
	bh=4o1P0z9zgAdcg3159+pZiazrU0J4QU5VpIS8Y7AdyTI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KZ0OJixsTBDMCV3Z6jL3+aLM8P1kp/FCDPxwc7pBSssmsiXM4488g94i/6AVDCZNYMEQEQttPi8ziYGavKdK6pWZ1KTZc4rD3dp9/3AGTxHNMsMdKUyYUn+RTzwAqFX07GSDg3sfrbDsY6nrQxwRQRd3PzgHHsG3ussRgBN2NFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nXvyNhLs; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-63e0dd765a0so7010480d50.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761731156; x=1762335956; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T+0dV49Z0hZQvL1JwoyFgg+j9v/HxeFYx2d1Gt9wCQ4=;
        b=nXvyNhLsiC4mm3n0m2EBak1+nEu0PBavqaH1RVnAxjtT9Y4SQwQ0hYXC37SaVdUqNq
         cIzw+jBiAKZIXCA92prJliUZjArWgaLt0Nt4+1o0YL2R+WJqpei4kSS6yAuU8/Gn/vBY
         376mH2ffCsHWRyeIqYfTt/RxvuYwGXKxCtg1myKYt67I8YyqZAC6X1nXEu+3kypt+a/0
         oKLnv861ibTA1bQJ5wM3e7AC3fB8hYV/Nv3dL+82FUTZabk7s03AdRDhErCUtqhrLmZi
         M9QVypEqxMx176JycHS7SybFT//ZAwRrmDQJzIXpjr8kE9hYY6DjYxQ5uza1QpcvGXV0
         IH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731156; x=1762335956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+0dV49Z0hZQvL1JwoyFgg+j9v/HxeFYx2d1Gt9wCQ4=;
        b=OSTLG3WQoNGVR91opDlJvrwssSbIRc/tJPy3dmvbLnHvu7dxmLBkRqpFbKo74+xlly
         QYKnZOkNI0YmChZ+QPxkcS6zSJ3aRkupAUyRHSbn5yW1psqyK8kVlqxtZOo6UGe+EoY/
         S0U082SAzSjnI+hJbuznHNELWCh/rQQZqlwS8XXWZuNcf9pqNgpivOWi4d2rnPdAQu0R
         Q8t6j8RMdxTfyYneeEhY+JAdlqzc/YToF8wMLbwP8s3dOKfhAJJMhXCKKTa0rXGP7M8C
         wa5uLxZEiyk1IfM4en6MHHeOPjpEQIKPXd1idhLw/ptw8yfOhGBfRRSbgdNEPdL2JV8u
         fEFw==
X-Forwarded-Encrypted: i=1; AJvYcCVZQ9/q1QCqfksWddIFWXh9zgmQeqc/Lr7IrqK7na92wPR2iN52Zhu79IbU/GqD/RRI2CQf87YgkRnm@vger.kernel.org
X-Gm-Message-State: AOJu0YzAzTkek7yMCQCpGV9qvt3d8YZwddqR7S94AyQC1uy3AFhtEtRh
	bIezL5wQY/LRR/Djt201F5PaT+AZce6wMt+JWRpVDTn3vEfkP7CAXQeEnunlLB3K+HvZFA7Jlf7
	yH6ZFZRMGWkxsqep5O8ihZbaWApHwqiY=
X-Gm-Gg: ASbGncu7RZBnXuXaId//XjhSyncPxYmL5TvTPx+EH7PJtXnJHIkX7THxEz1RFpIOFrb
	vEMxZc7oGIbS5+jbGUsOlEkfCrFX1My0AweMh9lpENgpSB3Meb632wXPy8gBGiE9hlFZ0YqHyNR
	HkBPkiDMg7NcEh5wWoXFjKoZHqExLCVyt72p+acq1beb8qxBtBZDaf+Zv3IHonTI021BuHAWJW2
	XINiCt+rygw0tWmhnP8bDG0CDQD0cHc0Br5QWSTkAl0HFmUQZTXhDRypvrnCOWUXW4xlA==
X-Google-Smtp-Source: AGHT+IFXTGFBQZQCvoFTcD2XW69zJNvRv2jA1skYdjLaN3X9V8WOQAc0sJLs73yBIhsOL2y0JL1ybcsga9Zkjczkf4s=
X-Received: by 2002:a05:690c:680d:b0:785:bfd8:c4ad with SMTP id
 00721157ae682-78629298707mr36580707b3.3.1761731156514; Wed, 29 Oct 2025
 02:45:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
In-Reply-To: <20251029071435.88-11-kernel@airkyi.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Wed, 29 Oct 2025 17:45:45 +0800
X-Gm-Features: AWmQ_blYmsodv_vg4uKolYRe0NzpqIhwJ3rq0FrOe8J4voY-HqIG6eRi0roVBPc
Message-ID: <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

> +&i2c4 {
> +       i2c-scl-rising-time-ns = <475>;
> +       i2c-scl-falling-time-ns = <26>;
> +       status = "okay";
> +
> +       usbc0: typec-portc@22 {
> +               compatible = "fcs,fusb302";
> +               reg = <0x22>;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&usbc0_int>;
> +               vbus-supply = <&vbus_typec>;
> +
> +               usb_con: connector {
> +                       compatible = "usb-c-connector";
> +                       label = "USB-C";
> +                       data-role = "dual";
> +                       power-role = "dual";
> +                       try-power-role = "sink";
> +                       op-sink-microwatt = <1000000>;
> +                       sink-pdos =
> +                               <PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
> +                       source-pdos =
> +                               <PDO_FIXED(5000, 1500, PDO_FIXED_USB_COMM)>;
> +
> +                       altmodes {
> +                               displayport {
> +                                       svid = /bits/ 16 <0xff01>;
> +                                       vdo = <0x00001c46>;
> +                               };
> +                       };
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +
> +                                       usbc_hs: endpoint {
> +                                               remote-endpoint = <&u2phy0_typec_hs>;
> +                                       };
> +                               };
> +

Why USB2 PHY needs to be notified for Type-C connection?

> +                               port@1 {
> +                                       reg = <1>;
> +
> +                                       usbc_ss: endpoint {
> +                                               remote-endpoint = <&tcphy0_typec_ss>;
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +
> +                                       usbc_dp: endpoint {
> +                                               remote-endpoint = <&tcphy0_typec_dp>;
> +                                       };
> +                               };
> +                       };
> +               };
> +       };
> +};
> +

.....
>
>  &u2phy0 {
>         status = "okay";
> +
> +       port {
> +               u2phy0_typec_hs: endpoint {
> +                       remote-endpoint = <&usbc_hs>;
> +               };
> +       };
>  };
>

There is no switch and mux, how to co-work with Type-C?

Best regards,
Peter

