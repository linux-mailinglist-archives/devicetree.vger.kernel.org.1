Return-Path: <devicetree+bounces-226456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65DBD8C7B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EEDD34EF475
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA172F7ADB;
	Tue, 14 Oct 2025 10:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xxeybXKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C45E2F7AB1
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760438354; cv=none; b=bS1EU26gTawoLraGSRX5qVEN5pxq+L3jK/S6Za/00r2NXcPYnvMOhyCvnOEx3k02miLohiy9yTLBoWs3VPfY+6ZiQY98pQ/OQvlT1tsIMClbaz5nasjcM435X2zRkgSv2aC56Pn/EyJyehsH4ktz7npxRJtOwZhnZz3jaeEW48A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760438354; c=relaxed/simple;
	bh=F46LslSaUY8DgHN3n48eTxDvyLVCIVU6v6jJMKyIwqE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W9+3ooO/WfwgluTBRmbnbWi7uBY+F5eMiPZ78XUpS3fw2aj0p64pxgSboHGLQHP5f8g5/US1M9MPHc7MwvegRbTJ/7HhVgctmkofPEGn8u53xtKmoFUoQmqF5s1OY/3IGBQi9xMN1iHMLN1eq96eTWzx8XzC0AVqjgMrhoOzzBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xxeybXKM; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-7814273415aso14315577b3.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760438352; x=1761043152; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pokQkIgmHHvIRgJkKC6alt0eQ0/5qfJ7yTlxa5V1+JE=;
        b=xxeybXKMPyFClkUlOE6EOVALKUp3IdnHkEM/kbOHi4mk8DobAkdAuUOcbKvHgl04JP
         Xn8jQQsp09mcPDrIdK1WYyrjERNC7O2odkJuODYzbGG8/G/o3Ali1RcIJKtGdqMTaeFw
         P4iUJUCVm7Dcq71H7CWSL80ZXV06d76VHl3n7MQtU2SjlGeVnBazKTsYq6d4OG4rKbB7
         re5dF9z99boMgsDuAMHfYO979xYa5B1SULcIP15fds+LNAzG7whxYvQD3cIzQVwgOTg9
         cSvECmOldOMc7MbPQW85eUimutx/SyXd8dtzBNP25PiDzGtznkazr0qvj6fg05a4aWJT
         gCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760438352; x=1761043152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pokQkIgmHHvIRgJkKC6alt0eQ0/5qfJ7yTlxa5V1+JE=;
        b=UFnHgbjPttx40tgLKwN/Dtl2VRDikGUPiP93H1WgrMQWVzy61gHYzul27BKf4VosKD
         PmVyhFL4S2B5yBxI0yL0gpbfPJCZ15hXAjT3zuYzhZ2zG7Jg3q4YuA/T3Nn4r9xOH9xf
         dni9eYIilmIjimOCl4y8rJg3m+mGgomnoWHUXBfiR3uB6uDU2agoQNVHscVl6b4cO7VR
         IfD6amSxZJhCNkEGW/2cVn1Y6m3ZsOPAdT+2iJ8GDFGB9j87gIbxU9kk231BupRBboXl
         RGZHOcp1vK/R8/8ob1GAadKGmRinOzXBpsxLx9ppIZx6fRmiVxC/rI033vFvCK2CNFLX
         vdqw==
X-Forwarded-Encrypted: i=1; AJvYcCUzb8LFnKWbTwOCib6HJwUVDB11jGwfpatEv6oaMlXRhi2fHoHE2cs+RkQNy8CLbelkghPaz07K/bvL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz21zNKGgYa5Dh+QSSKh98kjArCg91ga3wqX/iUscJ1tg9Y1D/r
	SdraFi1iSUATdRoRC6TFmyEC5X7jA2YuKxQGp03EAEkQRABLDtc4eho508I97alZhdNQmhH8bcT
	p16qQtOOYS6ejUyVS5126n3a0tdu8nDtiQ9CeqY+HwA==
X-Gm-Gg: ASbGncuCylsiOT1bQjQuAsQjOUVfk8Ss59P79GBu9EqMFIhrd0GqowVzvBQCg7i8StQ
	XL5gHKVU/pZvpjGQhHFOB+EgtQlu5Nm/nlgJMxDv6GfhoofKWXPYbE5kQfcCX5pVwZBA3uL7tAs
	S4vpyFK/WJ7qzqE4Hr0O0pGYibixOXQ1ycXqOR5NBk9nNu6X12Vto27yDC9MMcrPRVk23Qs3+aT
	EuG6rcLs4toSPga7LDY4xQ0uegtnA4AaA6m34ie
X-Google-Smtp-Source: AGHT+IHX+689HJuQIzxGKvDquDFhGYNkr9Ghi5QtgsmKgFKWhP8E8odTxafNGNZGGvvjaBJpeC/l8egbUVvSv1BuNt0=
X-Received: by 2002:a53:acc9:0:20b0:63c:e930:e35 with SMTP id
 956f58d0204a3-63ce9301f39mr13020069d50.52.1760438352092; Tue, 14 Oct 2025
 03:39:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250811163749.47028-2-ziyao@disroot.org> <20250811163749.47028-3-ziyao@disroot.org>
 <CACRpkdYC6ueVGngC=KMqh9aW8DiMKWyxoa8dqb4N3sEEkpdsFg@mail.gmail.com> <aO20G22p7OwJq6C-@pie>
In-Reply-To: <aO20G22p7OwJq6C-@pie>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 12:38:59 +0200
X-Gm-Features: AS18NWCg4FakAHKpN6u-x7lmptkHtb5kz_X0Y5yrB5k3cupKvc4MDFUSFgWvd_k
Message-ID: <CACRpkda7AMiJEVioOVANpQ1oe1rh7ejKs6=erA=hYQWoyLauog@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-binding: pinctrl: Document Loongson 2K0300 pin controller
To: Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	WANG Xuerui <kernel@xen0n.name>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, 
	Mingcong Bai <jeffbai@aosc.io>, Kexy Biscuit <kexybiscuit@aosc.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yao,

On Tue, Oct 14, 2025 at 4:23=E2=80=AFAM Yao Zi <ziyao@disroot.org> wrote:

> To confirm my understanding, would you like to drop the outside node
> (which now refers to pincfg-node.yaml) and refer to both
> pinmux-node.yaml and pincfg-node.yaml in the single level of subnode?
> i.e.
>
>         pinctrl {
>                 uart0_defaults: uart0-pins {
>                         function =3D "uart0";
>                         drive-strength =3D <2>;
>                         pinmux =3D <...>;
>                 };
>         };

Yes this looks really good.

As you see it is also very easy for a human to read and understand
this device tree.

If you want you can take it a step further and use just "pins"
instead of "pinmux" and infer the function part of pinmux
from the function listed there such as "uart0" so you only encode
the information once. But it results in a bit of tables inside
your driver.

Thanks,
Linus Walleij

