Return-Path: <devicetree+bounces-235466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3938C391ED
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 05:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5AA644E3002
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 04:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B635695;
	Thu,  6 Nov 2025 04:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l7p5PpZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739252D12E7
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 04:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762404819; cv=none; b=Ry0API68NQ+ttyuJam4CYa9nvOdtgHkDoOKLaDLaChHzjzVaWK5KnuapHXEWYUSisqZw9PjQHy2mExGugLqBHxxGUqBrPUzGHu+bRK9iU6NrbA05/cWFdSHAS7F7/TBSM8dcE8E22EwT6G67pg34SEQBohULGkOUvCazvTHlMg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762404819; c=relaxed/simple;
	bh=xmJOfF7INT4/gyh+T3QzB1rLdx3yAoKB18KCIgmKTuk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oYpqys2aw3NpLhpBFkKqZ6Wa8M851MKMXlEMDjiNP/Wm7qibpIoHT9eEy3CIvAcIpHX5a8fy5KcCER4KZhD6ivb3yKAz9rZqZ4GzmrVbwtuZC+CLZ4HgtpWhfmny8qprDRlYCgH3XQMQ18eO76r76uMFl/igMNcESes7ozRI6Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l7p5PpZW; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ee130237a8so329402f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 20:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762404813; x=1763009613; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+OfTCC1ghWomz4s5fQs5JEH5xj4yrR7Mt44vqrfS3E=;
        b=l7p5PpZWet7PC4LLw6xVCbu8F/itfA7dQCnmmaE+RfukWruBKWsfs1kWK4hI0FuYM8
         AE7nUk5+/SeQAMISsc5dIf4Xdz+VUKBUO46DKuRVpX7wQrz1iLcK1+ubRio0pTDmdMkL
         nkZAiuvLAZoAalqDFZAM+U1gbgjR9zI6Anfd8XXLVmY7P2PGy7BnK1Luvf/zhaOQt1AN
         rJwOzEr1ZRL5Kj2TOuHt0qIrjDfOXKt5mbuyQTYgmWtAePXofOk+pIMlvKF5eig2gJ6e
         bEJ5AfhVgy5kZvA7wHjFBZzouJj6bB8RXgvKpMcyPiCQloti20kHtEoR6lbFCSe5xwUR
         cfew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762404813; x=1763009613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+OfTCC1ghWomz4s5fQs5JEH5xj4yrR7Mt44vqrfS3E=;
        b=sSbbTyn4GF80ZoSm5fiAHxnPcm+rnGaN8ljbbSj5odDNRgMXNNYbQTC6SSi+w5zkuC
         zG2vo+SpC/QGS2yRGNOsyUsS8EWHBYziGjtKLV5DIvpNVuCzI8o/+S+OIKJqq4AKPSdG
         EEojI0JjvpQLPUQZNlvcw2nWDNNPY6H8zwYYAuKX3ILzID6HsIbw5MVcvAmp1Zzcwrgf
         th3mSgmLyVQ4RZykTr6WRJOd3o9Vk+cqV/e+dfk0+86VTSaI3H4KTcuy5lwC7sjlXaJe
         Wn1x2G3f/NMZwtz2cKvgIBWJ5GzNaFCvJhkTlXFXmGTrTX8R8kNSIVLB3XNd9r5ijiqe
         B1FQ==
X-Forwarded-Encrypted: i=1; AJvYcCV15PR3qJVAkToDI54+P1gx+CRZcfuZSdnr7Pf1CEWY9pPmYf0kjzG3i8TOiJ2f/vJ0WhERKp9t9hD+@vger.kernel.org
X-Gm-Message-State: AOJu0YxA1pc1MlJRaabWqLrvYQsMysOaO8IpPNqZ2VEv5GT8GdYMQ3R1
	LORCTJ20NWZrrBRDSkjHJYNi3J6oVfmSc97NyfmPfa3tUZ8GPXHkk7gDOsTSXf5v7IGvhJtO86H
	Emnp/ipUlSMFdqsXVIKeHwB1dqTAZ5q8=
X-Gm-Gg: ASbGnctlGtaEGZWk2DiQsfyfJ+RRWXen4YhXRvoRmlzvKl1FG/pjdCUci2Zj3ia1pKa
	75TQMx5PPbRM6kG13bpsxJx1Ly1PEzxWBOd7q1OQkkVPaDkr98I3H+MNsY/mJJJrzgjq40HPG8G
	zenS3p6atCDtt0w51G/qf9irFiIJmST+gbF/zL24bfNqKeA649bRFZYxNFxdx5S7FdIYJBtGzRM
	lMRgkeHpJiz9vu6ek43sgKyaZOrc9qXR75qz5pvB2PDjAJw6vTQXodZsZo0bTinmTlQjVRoVZcJ
	qu3xzz8iDjApni3l
X-Google-Smtp-Source: AGHT+IGAjXb/Q/przVpRUfKZTD5lS4KZ4kv0Tnwpkiq5kQ1gfN1giZ+0HUHkAMRpVnRpkcroUk8etEXyROhko1pdvnE=
X-Received: by 2002:a05:6000:2912:b0:429:bce4:20bf with SMTP id
 ffacd0b85a97d-429e33128eamr4447044f8f.55.1762404812526; Wed, 05 Nov 2025
 20:53:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com> <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
In-Reply-To: <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 22:53:20 -0600
X-Gm-Features: AWmQ_bmoqJIpQq8Yl_KhXnpSEqseh0O854YZOBSV5Rc8FywyMsrXnXSmQBd3rG8
Message-ID: <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, joseph.kogut@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, 
	amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 9:31=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> wr=
ote:

[ snip ]

>
> With all that in mind, we should specify "no-mmc" here, because
> we're describing a microSD slot, instead of describing some hybrid
> MMC/microSD slot.  That also explains why the adapter sold by Radxa
> is described as not to be used with microSD card slots on SBCs.  I'd
> also like to hear is this adapter/eMMC chip combo recognized by the
> kernel when "no-mmc" is specified; it should fail.
>
> Actually, not specifying "no-mmc" here may result in some unforeseen
> issues with some (or perhaps many?) microSD cards, because the MMC
> drivers will treat them as MMC-capable devices and try to initialize
> them as such, which may cause all kinds of issues.  In fact, I'm not
> really sure that the MMC drivers are actually implemented in a way
> that avoids all possible issues with the storage controllers that
> are capable of both SD and MMC modes when neither of "no-sd" and
> "no-mmc" is specified in their DT nodes.

Hybrid MMC and SD slots are pretty normal on USB card readers. So it's
normal for the host controller to figure out what kind of card is in
the slot.
https://uditagarwal.in/understanding-sd-sdio-and-mmc-interface/

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D6ae3e537eab9f560b516b001eb89f0cd568bdced
was the commit that introduced the device tree properties. By the
wording of the commit message, these device tree properties are used
to indicate to the driver if the host controller hardware is capable
of MMC initialization or SD initialization.

Since the host controller in the RK3588 is capable of all the modes,
these properties do not need to be specified.

Since Radxa has the eMMC to uSD adapter, it makes sense Radxa would
want to configure their microSD card slot on their boards to be a
hybrid SD/MMC slot.

Now, the more fun question is if the adapter can handle eMMC HS200
using the 4-bit bus?

Jimmy

