Return-Path: <devicetree+bounces-223444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A25BB4F9B
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 21:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 981623C772A
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 19:18:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6232820DC;
	Thu,  2 Oct 2025 19:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EO7j57o7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B52927B34F
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 19:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759432680; cv=none; b=FqcFhOX358iRB2c3XENsGEKXmlJh+wYHsToFWMDZ9FEeavjP5wvSnB7nofs6HAeytmXqlkrI+XZ2J1IFIuXv1X1qC6lmW/JAKz3/Pv0bzjqrW1jZjjtSCf6G2CJ5h4P01YEZWR2KYV+YyjEeZGDTJ/NXL0GAnqF0ErRxntLZCr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759432680; c=relaxed/simple;
	bh=HD7F2OR8UwgY3zfHvXuxLFAhWFLNpYZsjIBAz0CZ8bU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mf20S9O6uWAgrZXzeJInhhPaud5f7lNHu5lJj+P5C/+Rs4gI9qGEylWFT7U2W3V212vk3QHaqGwQRS0ocLQw7BKp1nzaqMsBiY2Gzbia3zId0IMikJwOBpM9u2zQfaWxzU17pnmZQ6XVfTdC3m3Y5z8lEst/YinFGPWDhl98ics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EO7j57o7; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57b7c83cc78so1306920e87.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 12:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759432677; x=1760037477; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AsacFhY688kmCw3ljgQ3LXTxUKBAt2jIe9uHSGes4ZU=;
        b=EO7j57o7Gws+ObC7jH87VyIIiZFVqer40BH+nCO2xcD4HXJIrBUR/6uTJhbw4uOdYp
         b0OUCY9DWIwL84pDF/9TrJ4aJcv3oEtBwE4Vl+gtdPHNsVV/CoOf6ZYVQbMWhk+mkwTm
         qLeDf9OLa6ljcODm7XlxoZwCZh1gJz+T1tGdpi7zWvKcloZVFE+IY5k0cZy7ZFn+uhqp
         oiWzFksbg7L5ecJT0MuEHm+ZSnpGkTAi5kSBA5gkKNqqtt31/Gb6eSAB4lbKCwHc8N8M
         0vG35nMlp4OzjN9WiDsaDK0LLmKiSl0Tzy2ZBGHYxwWj8gkoWfG9xoHfBEt3iJhOUFuC
         351g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759432677; x=1760037477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AsacFhY688kmCw3ljgQ3LXTxUKBAt2jIe9uHSGes4ZU=;
        b=pSe+CUHMxfq505/X50nx1QoUvYtDSIaGwY7vuP9HSWDALi4+PBAW5bOMMZseROwwM1
         7LXqvbwJWjSgnV1Bgzmd6wH+eUNEc0G1Wd91J44MXGZDQrwN8X+TAoUKa9mjgmnfHSIY
         hkyz5P69C8/tKCll0k0xQQzUc907GSSsfYrZdEdoOf6tm8DshnvnjfJdffq8P5cvQli7
         zD7tONjBiK0BRmkGtQPmzIhhP/qJXeQcdvN6AKqwN1Qi2cnBPSceT9hjm0fuufjKDGez
         Z2FWnRECxnTiRojki+2bmo9eGI7FUc4Tk2ptP7VpvZVMkgxG33wmqoGstYp5SWMJI/Nz
         9vAA==
X-Forwarded-Encrypted: i=1; AJvYcCWMzswyXxwKfLsQkFfN6EXxqpjSkIJ9UPyfiWP721FBZSM0JJdIqBYTveAp3YteMwlTF/2nmzRs/2pJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxD5fPan99V3gh5Y/5ieko/iNx+tMCMxkRa//GW3XFOuIirc1Wh
	fanTlfcsqBtadpMjRgU8J9XMcajpLb7VB2qoFTNTgYwSnNjtg1c5AG+ogmV1TUSQXsiT5gXx2HV
	iT/feSMEH1Xb7v0I+jvrzZap2ibm/X1k=
X-Gm-Gg: ASbGncuaDoC9v6FpplGD/mwVg6u2x0ZLXqgmV6/2Xbb7PKUWdGBtDQn8++vSJzWos0t
	tudRHCxuhaLPK/y9K9YTtEDap0/yrstlzIEkMs3Kt1PCCjmUmKAAOTgk6TEpUk0E1eA033KRkKP
	v5RCV91o43eDupuZDdslhTRpVRT2iZcuurzQYm3e9Nw9LDLjJl3w8i+6fRGxLDKZncu3euev+nA
	BSr8kFU8Zgs7tTpuFyPRAnuAfEmKsn/TUoC1rbu
X-Google-Smtp-Source: AGHT+IGanUA39EeWKN2bZPtr0nUYeSv1bV/nDDv933ayERP1FnFpJQ+koLjBOu9GVv+5Vty1qF8hdQd7PyFPxH3EVIc=
X-Received: by 2002:a05:6512:3d18:b0:57e:9c14:ac06 with SMTP id
 2adb3069b0e04-58b00be6121mr1327212e87.27.1759432676972; Thu, 02 Oct 2025
 12:17:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001183320.83221-1-ariel.dalessandro@collabora.com> <175943240204.235529.17735630695826458855.robh@kernel.org>
In-Reply-To: <175943240204.235529.17735630695826458855.robh@kernel.org>
From: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Date: Thu, 2 Oct 2025 15:17:44 -0400
X-Gm-Features: AS18NWA5rZuFqYFfCwp3TG9bhDZUCFaj7OWEGaE1URKJYiu9zd8yZE2o0Vq7Fmo
Message-ID: <CABBYNZKSFCes1ag0oiEptKpifb=gqLt1LQ+mdvF8tYRj8uDDuQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: net: Convert Marvell 8897/8997 bindings
 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>, andrew+netdev@lunn.ch, 
	conor+dt@kernel.org, kernel@collabora.com, krzk+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, kuba@kernel.org, 
	devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	davem@davemloft.net, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	pabeni@redhat.com, edumazet@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 2, 2025 at 3:14=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
>
> On Wed, 01 Oct 2025 15:33:20 -0300, Ariel D'Alessandro wrote:
> > Convert the existing text-based DT bindings for Marvell 8897/8997
> > (sd8897/sd8997) bluetooth devices controller to a DT schema.
> >
> > While here, bindings for "usb1286,204e" (USB interface) are dropped fro=
m
> > the DT   schema definition as these are currently documented in file [0=
].
> >
> > [0] Documentation/devicetree/bindings/net/btusb.txt
> >
> > Signed-off-by: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
> > ---
> >  .../net/bluetooth/marvell,sd8897-bt.yaml      | 79 ++++++++++++++++++
> >  .../devicetree/bindings/net/btusb.txt         |  2 +-
> >  .../bindings/net/marvell-bt-8xxx.txt          | 83 -------------------
> >  3 files changed, 80 insertions(+), 84 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/bluetooth/mar=
vell,sd8897-bt.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/net/marvell-bt-8x=
xx.txt
> >
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>
> You'll probably have to resend this after rc1.

In that case I'd like to have a Fixes tag so I can remember to send it
as rc1 is tagged.

--=20
Luiz Augusto von Dentz

