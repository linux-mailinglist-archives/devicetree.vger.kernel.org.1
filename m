Return-Path: <devicetree+bounces-125284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 294DA9DB70A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D34761631AE
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 11:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00751199385;
	Thu, 28 Nov 2024 11:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="igeNe6jp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79580194A7C
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 11:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732795130; cv=none; b=rx9PXDh6ne2I09diCY0FlQlPEQVcgz5EhDyqmy0MelOt6mQRn1Y0B+xfvJESgKbOCsGDSYaV0fyIgqqR56oWLxIAT0ESDKuK0zoyiUrrb1TzzrjukaLxVl9IIsIaefaQV8Dn3bX5eAxxA25sJQFXnBhfiZkFX27hJH8X9maMoU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732795130; c=relaxed/simple;
	bh=thmJxm3LbpxOmnTbPgHnHFkvb0Qe5NEu+nq09ws8ow4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t62fRNZy3Ww2Ngi3r1n84K7ezxuVZRwO5GK7A1QL/NJlbzhVMoFuhTP0bUa4zQxfoJDa/458Xh2lHWSS4MQ2xhILwcMmF1ucjQY8B6eE2myw6AhjG+i9IoFqrX65KbdoIidbe+rY6seDbXUWRKkaY5ojs24fGgp5W4nONno216M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=igeNe6jp; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-4af5dd908bfso128336137.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 03:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732795128; x=1733399928; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thmJxm3LbpxOmnTbPgHnHFkvb0Qe5NEu+nq09ws8ow4=;
        b=igeNe6jpomXXoUNYEv2MNNlbhgijd3qzAsk42RBEDFwEaPMqSfUQnMjSv1j2BHV5lj
         Bafv9D5NlyrJlWYdaNQoOr1FlcomQyO16KNTe0iRY/9WSykjBeweB1Fti4LRerqmo8m/
         udnEmg5vOqmi5b8f7MYIbmPCwyV23ieVDz/ijfOM3Kw7w5g1y8wsGudjshlGdPrF4GCk
         h1r1zfrdXG6awf+mKYceOX/JqJAOhdjNHGbu48fD65FPUp0HEKJvaK+XUAKshpREWfuW
         x77z2B5NT3YnzwvtX6JhCUuBQtbeGdKOdKB/bm4fQGZ/YgiSufXikeFxWSCEXru2QnHa
         ktnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732795128; x=1733399928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thmJxm3LbpxOmnTbPgHnHFkvb0Qe5NEu+nq09ws8ow4=;
        b=MAFJbFp1l8LMLM593Lh/YZ34+am49dpm8NNWAWKoTIlxuRObpLkJSjXMiN9kJN2lzl
         amVCdvhoHdOL38pWcyNEGyJczQds0YBlho9X79aBfw436E1LjvmFR/PlchPkhGiF2krT
         SP1S4Yhu4lgzbizuNYy5IRpvpdw1l6CvVeVIehsWUzBKy8kbk8Ab0LiwyxjMNRPYH7hk
         AD5EVnskZRfJvGm+1ieT/XMNN7gTE2jK80tWdaN8FaqU7CMG9VCVGIbNU5L09wUw28db
         fh9jsqR79aMs4f8BMU1N9ZAxlt32/+HFuxKu0RRGq7PVPa8T9z7/OGqTjxhIeeKbn4hq
         5GHw==
X-Forwarded-Encrypted: i=1; AJvYcCW+yTAUBNn9XrBQ4R/6qZ+2w/Jn/NDRFiiMJt9fApFY+u9PMEhbY3b9GjKkcSHCvf9+KA1R11uZq8mC@vger.kernel.org
X-Gm-Message-State: AOJu0YzThlq6sCbo3M7x9aCj6PFJe35Zd03Vh32grCm5Jf+kxacyuIQf
	SBZ6ZwZWRnB4xKN8s8brjfFVh/clL//PnoBTa+k5yUUsJIdLoAfSRShgsS0/YYypIzUXh9ygn6m
	sAroz1If7wPDsylCivY9+ttUcAQk81GXzx4A=
X-Gm-Gg: ASbGnctHQxUBm1NFnZDoil7jm7ykxTs4kQEOBs+XobQZ7O0SjM7oOO/jKO+cFNlEwCB
	hK03QKY14es59V4tqWVTLnS+/rmB5fAYgpYPfuzapCAb1+Q+Pnzs5XzBk+8s3KNy+
X-Google-Smtp-Source: AGHT+IGjaZGV+Xcbgpdco0vufOvN8dzVlgh6sNvJ63b9BEm6HPt5yx45kBcgYD+xyfaWKpEXU1SCoB0b3NSQnNAptoU=
X-Received: by 2002:a05:6102:c09:b0:4af:38f1:5127 with SMTP id
 ada2fe7eead31-4af4491a0e8mr9471082137.22.1732795128320; Thu, 28 Nov 2024
 03:58:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127015224.2361-1-naoki@radxa.com> <002469435A2D5C9E+b9a05cda-1ccf-46c9-8f4e-7a8534b1a875@radxa.com>
In-Reply-To: <002469435A2D5C9E+b9a05cda-1ccf-46c9-8f4e-7a8534b1a875@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 28 Nov 2024 15:58:36 +0400
Message-ID: <CABjd4YxAj09xWFzWW1d5XF7eU=M3KP+UcjyuRnt7JeabXt1Hew@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, 
	geert+renesas@glider.be, devicetree@vger.kernel.org, 
	sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, 
	jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2024 at 8:09=E2=80=AFAM FUKAUMI Naoki <naoki@radxa.com> wro=
te:
>
> Hi,
>
> I forgot one thing...
>
> On 11/27/24 10:52, FUKAUMI Naoki wrote:
> > on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
> > rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
> > devices.
> >
> > rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
> > matches with rfkill-bt.
> >
>
> Fixes: 82d40b141a4c ("arm64: dts: rockchip: add rfkill node for M.2 Key
> E WiFi on rock-5b")

Indeed, this makes sense, thank you. Should a similar change be
applied to other boards that followed the Rock 5B example, such as
orangepi-5-plus?

Best regards,
Alexey

