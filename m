Return-Path: <devicetree+bounces-26855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D2E818527
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 11:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B78731C23A5F
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 10:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4171429A;
	Tue, 19 Dec 2023 10:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b="R2udhyfb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D33D14281
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 10:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=waldekranz.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-50c04ebe1bbso5300886e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 02:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1702980943; x=1703585743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fwvGGVZPaE+uJLGJ403p8rSB0od/oVTv84mQ6BO98BA=;
        b=R2udhyfbl1c5x2bJFMM2V0/ehdH6PTiAsQYCWc3tmiTw2mY2HU2i7r5PgAPWFKBSaB
         r0ilhBfHFmdHvUmqek5GrLOAlTNNJFFzZ3jcNp8dlR0hCBP5OPN/Nd0IgpQhrqiFhlEA
         hYkoey7eK3vkTHespb0xoDhTJF+kt/m/J9ptbkHzqRuUOy1Ok0LBHSSZnBVF8xpied8Z
         dR04rZdH7SF3y8lwbCM4QrEaDUfWiPiBeVhN0rCPN5cgiLoLkD7vAc6kX1SDi3UuTcFm
         NqAQu1JTzS0pFBs+sjtdWvo2Dj/MFXUNKw80CeQiowN98R3xuiBfvBt+szVlE6ArVv4h
         QdsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702980943; x=1703585743;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fwvGGVZPaE+uJLGJ403p8rSB0od/oVTv84mQ6BO98BA=;
        b=Cyf7d4EVJSBL3S1YyItGRA7efjO5y9D0MI8el0ZsIiT1ZKCIWRuKwAFnxHBvaZX0sX
         z+fuhk/7g+WxcMd1dUdiXw+b0Ouhcjy7sZ9rL5AIxYWBpLvUrp+JIVnJMtXe5w7KF5wv
         sTXsOD4+cW7Xo2WSguK4+Ikrek1ud8WFE/pMhWhMcS8pKCddFztYYtRVtf4EQc5x/lqF
         aCVeeJrMKVD1O8hvbQDel1mr/MOYtS+BoFJrhbfUlRipAOEpbb46B7RGU2cXErsh/2OY
         eS5UVvoMGr1X4M38F1EPZTz0zXVYcztcMUwpTw4gp3n0TareSjgfSUalW4+hDc4v1Cms
         JSYQ==
X-Gm-Message-State: AOJu0YyHY1tXA4NDVEODH+R4WYd7uT4QeJ+iBMjH6SfhLJgnNqdXRcyd
	AKOH+IdiQ8+IwNFsKnB6J7qQqjQWRwSyakMpK3WN8q4i61c=
X-Google-Smtp-Source: AGHT+IGlkGyj7/BLEfJpdsmuMyRajlStQEzsKpsBAGWAxCwdhcTKA+tfKrmzlVop+CuGz99g5r5mCg==
X-Received: by 2002:a19:3818:0:b0:50e:3989:1d91 with SMTP id f24-20020a193818000000b0050e39891d91mr448988lfa.10.1702980943393;
        Tue, 19 Dec 2023 02:15:43 -0800 (PST)
Received: from wkz-x13 (a124.broadband3.quicknet.se. [46.17.184.124])
        by smtp.gmail.com with ESMTPSA id 14-20020ac25f4e000000b0050e2782e86dsm929894lfz.184.2023.12.19.02.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 02:15:42 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Cc: davem@davemloft.net, kuba@kernel.org, linux@armlinux.org.uk,
 andrew@lunn.ch, hkallweit1@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 1/4] net: phy: marvell10g: Support firmware
 loading on 88X3310
In-Reply-To: <20231219102200.2d07ff2f@dellmb>
References: <20231214201442.660447-1-tobias@waldekranz.com>
 <20231214201442.660447-2-tobias@waldekranz.com>
 <20231219102200.2d07ff2f@dellmb>
Date: Tue, 19 Dec 2023 11:15:41 +0100
Message-ID: <87sf3y7b1u.fsf@waldekranz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On tis, dec 19, 2023 at 10:22, Marek Beh=C3=BAn <kabel@kernel.org> wrote:
> On Thu, 14 Dec 2023 21:14:39 +0100
> Tobias Waldekranz <tobias@waldekranz.com> wrote:
>
>> +MODULE_FIRMWARE("mrvl/x3310fw.hdr");
>
> And do you have permission to publish this firmware into linux-firmware?

No, I do not.

> Because when we tried this with Marvell, their lawyer guy said we can't
> do that...

I don't even have good enough access to ask the question, much less get
rejected by Marvell :) I just used that path so that it would line up
with linux-firmware if Marvell was to publish it in the future.

Should MODULE_FIRMWARE be avoided for things that are not in
linux-firmware?

