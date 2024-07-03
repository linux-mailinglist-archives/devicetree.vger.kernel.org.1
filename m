Return-Path: <devicetree+bounces-82840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C08699260DD
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 14:50:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66EDE288424
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFBE3177981;
	Wed,  3 Jul 2024 12:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FtTaelz4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367CA1E4A9
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 12:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720011017; cv=none; b=I6H3TCkJiteQK4kO4ctcBlU35xlXXGwz8bj0mrsZm90uuvIMDbnQhnqZlo1+sIxXeChs7dtILK6N4G2YnJTnHWdliC9Lb7NjCqseBMG/8zLmLs+xj6HrW3y8SMdh1iD3BY+014bMZCXqn0PiccmT62D+1VEV41/b3RlRThFSwrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720011017; c=relaxed/simple;
	bh=Ay2o4WtDijauKlhrR6+yTpXR47/mNk6cJuyin80HfuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c0FopqrtzQ+OkDd+siuXdiaYhdXyZFp0MXO+rh01e3uYvAEYL8mmTAHK2OrOUVWfllUGSc06A8Jv2Bet7A6Tc8Tw1RaXdaQo6Os1nSPXzLbXnr+NzqXzvisCGpSANnSwfJA0+//OR+pddeGblYPQJkxg3iS9qTthZQWYdfe1lFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FtTaelz4; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e03b0e73f14so481629276.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 05:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720011015; x=1720615815; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ay2o4WtDijauKlhrR6+yTpXR47/mNk6cJuyin80HfuI=;
        b=FtTaelz4YRB+f5hz7MIj/9z4epvBEFucKwjJTikZ6npevnUBcMv1E0CxmUTxUoZTO/
         ansuLhPpS5zrNSFcwlEImOFCUQ2ubEViDgS/xHJeNlYyFYx3izv8/0J76C/UuIayQYFy
         ebJ5Ir5D8+dmAAnFG6LPauiVMFppsfrV5eoKaYfvk60XFGnMIYSU4gf7q1dSzCwZwxAA
         wCFuZcQb/bi7AKBJvvbkGfapcxUUfiIAJTI9clWvcJ+n38b+ktktOnSugKSYIpWbUSAb
         XYOUMNqsig5gN53jyJ6Q/+usQjmpBdPehsHVnKNRCbG8JBFH/9yoY+BPo9dIUTGLOP9+
         yh+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720011015; x=1720615815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ay2o4WtDijauKlhrR6+yTpXR47/mNk6cJuyin80HfuI=;
        b=ArmX9Snw3WRGbojPcA0/89+eeSzo/4lbf+xc8dgerGsv1NJTl6vsrzRkacMff3m8/e
         jCOc61J38fPQuTgzMbF+2nsHFupKCl98fx9XaS27azMFpWClrDpDbJ5siDe/p63bNa51
         d3lFqSGgmo3CZSgXbiAFSazh+FY3ZXNYLW7v9qrsaNICkw3JL1RO8ASYV58JAeCPibww
         RrqDysvz1Zmo/4CFq4GB/G9/d7AwYazUpiaZ5PmO+SYU+iy/omVYnMLNB1KrCTsOPPFq
         pPfTTZSAW0QUXzmAaM7pvILH745V3cO4fmJOkZZyxU4XmrZai79s5IK7fHQnpc1Fqlpr
         qKgQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+dd4k6uECwZilI24KZBKw3tr+yenCGKd2nDy+r2gz63v4Ag+pOk0Vp053SaVH5CvRADTIbx8Wn06NMCk8skb9hVM293z7hNO9EA==
X-Gm-Message-State: AOJu0YxRkqn4NAstMus2CtVDisBZmP9psBAFNuNsA3Q/nVcSQM9ls4Ry
	KMyknhiWWgI5VMDM3edL/f+b9ZtZWCPPd0LobQrSB6C3MU4ynVuQJwpEExcOeudKZ+TzQja4Mlv
	iHjIAyudo9rekNmUNtzbLelwgBy1H1HmgKVmqag==
X-Google-Smtp-Source: AGHT+IFV7ffdIp7JTsaJwTFxWYFq9NuhbSHtLDocDtRDoyzt9ojWdD5kwz70sA2j6Gk3nNxPEzRj0IyN26XVuILWwJY=
X-Received: by 2002:a5b:f09:0:b0:e02:c70d:d292 with SMTP id
 3f1490d57ef6-e036eb6e1b9mr12602914276.33.1720011015300; Wed, 03 Jul 2024
 05:50:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240630090104.565779-1-tmaimon77@gmail.com>
In-Reply-To: <20240630090104.565779-1-tmaimon77@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jul 2024 14:50:03 +0200
Message-ID: <CACRpkdajqsFdqdJHx8EshL1Caew_7RZdun2poY2HceptozNg7g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: npcm8xx: add missing pin group
 and mux function
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	tali.perry1@gmail.com, joel@jms.id.au, venture@google.com, yuenn@google.com, 
	benjaminfair@google.com, openbmc@lists.ozlabs.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 30, 2024 at 11:01=E2=80=AFAM Tomer Maimon <tmaimon77@gmail.com>=
 wrote:

> Add the following missing pin group and mux function:
> smb6b, smb6c, smb6d, smb7b, smb7c, smb7d, bu4, bu4b, bu5, bu5b, bu6,
> gpo187.
>
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
> V1 -> V2: clean tabs.

Patch applied!

Yours,
Linus Walleij

