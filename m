Return-Path: <devicetree+bounces-235356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A87DC37407
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 19:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4DC8F4E03AC
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 18:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2DE31327D;
	Wed,  5 Nov 2025 18:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R4+j0tuZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1425285CB2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 18:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762366247; cv=none; b=TDxI5fZFGJSv+/WyMTHZHL9X2vXrRIUYnP4U8iKsdt+kPxySzOg7m2FDkmAdqJbsaPzOGOv+6FAbXbbp/c5IfjRfd0xO1ixGRxTRZveBmq2gzmeeRR1hRiTXBteuKZvTolEqmslUMdHu4Rm+pkeiDohvQCoB+x4ptsn9eYH6wZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762366247; c=relaxed/simple;
	bh=W2cvOAGe+F2dK5gNaDfMR5O2dctaqwiIHM84AdagJ10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c/WgIxqoKRMikl12/MFmthuwyuSmA9BD8r6iMmb8J7XT53tMTHExo0HRuflcZNFFiWY7rjmfmWSQkUNSc5SS01BTlOKFU8MIiqHJHFQ+mF9cIeaRsbzZYqKq+sIlfZhEIvMHyx1mX1e824Ih2ijtxLSjdQVT/l/gJNW5/+YN7Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R4+j0tuZ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-429c48e05aeso93706f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 10:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762366244; x=1762971044; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W2cvOAGe+F2dK5gNaDfMR5O2dctaqwiIHM84AdagJ10=;
        b=R4+j0tuZQDr4L2wuhjQnW+rCtAwCYiimlbxWB6LUk4VjVOexfxQ1yLFTH3BXg6mlX4
         /qbeqSwAgXceWMjJBC0fVPmH3H4au3xw+uvaE4uxDixGdABDg3jT14X+iiP5Ju3Fvz6c
         /kmGsvFy9J3au9NjjNEmx25n5jWKiedzxQ3ah/iuGAIEuZiWqxc/BsiIP+q8OF2Gik0s
         b8fVDjyfyQLPeRWNR7s9Q1mOH4SJ00PovfhXhLojhwE07U08YGjH9hPB7GmznYHzVO3t
         IHCTs4gy6b7QEKAVEjU45sX53OOdIbeCS5947PKiOLCR1AywAhzR2VUfjvzW4VjnC6Mj
         tpsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762366244; x=1762971044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W2cvOAGe+F2dK5gNaDfMR5O2dctaqwiIHM84AdagJ10=;
        b=apWJCwwvBcjCLmHSytXV1Mzrrrfdb0GmJ9CoVBNRczVzBA3stdGVFkaoZPVmh/uF8a
         oe7wKFMxBKr8kQuU85gkCAvrjcDczDu6vB27M3qu8HPNFNHLxPeUuHrpob2J8a9NLf0Y
         Cw3rCRXCjnhGEBIrbGbcw3CTiK/iAdVTnQ7PHyXCxZ3Sju1WI9Erolhu1WhzSoWw293s
         kj8s5XM5mU4ICyezcUrzJHKMBFND+mm0Olm3U4YPNDtEZMSYMyE514NW8zoe1r1dy3il
         w82lVfAdLoT0sX2ZIqzWGZoV/B8JD4bKol2o1CoJIjn5lv8mp4gmoTC0YYIEnsbWXzeJ
         j4UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXF1jpzsncg3TeVvvRwZ/13WSpU8eaLu4vnugHYRqcyitmyMP0Q67Cka8JQBQeb10ui3fmuMjmMazW7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnsp8mCYcsJwnkl+bQJn1JpyB7+xj23iVogpM5fvfs3NvhnWIg
	lqZ60QmjKTr+BQ2pMPNRJ7q9C6fnaXjCu2eOXquLgkrjur+PvHbWI1pdeQa6cG7Zacvfj94JUzS
	ceFzq0Z19sv4ZjdC/4iEoDMN0BV3qk8A=
X-Gm-Gg: ASbGncuridtqsvXmgMvNFa2akfuW8mYC/U3fMBtHWFjkgEojpT60ByvRTBIJBk8Hdt1
	X2zzVY9ws0ZAmEm2pBz78ZhPChOR/z/ux4BE+aO80HXwJxzdVZgB6W22LTSr+d2o10g7IWeQhbC
	d3dYMx8Pi/OacmoAEjsJnLwg4bBYSx5n+Tl36oRYNVafSvI61l10QUODknmfd9IlhxLvB6gAX3H
	W9ujczqqiaH0oMjTfMS32pFoXjeGvrB9BtMHztL9e+8xixvO403g45R7kf4VOibO/mKi3LygrGF
	uZFpLr6zKYGBPyxp
X-Google-Smtp-Source: AGHT+IHBmNlJkVLW6W6vGyUKNDzuqwk9Tw/WLnn+OuOsgLY/0gfYST0CKvsNHbzGWWqOz26EQLad8Ac0ymabkNq+nc8=
X-Received: by 2002:a05:6000:1786:b0:407:d776:4434 with SMTP id
 ffacd0b85a97d-429eb1cf7aamr290281f8f.30.1762366243993; Wed, 05 Nov 2025
 10:10:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com>
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 12:10:32 -0600
X-Gm-Features: AWmQ_bljnAguIYhdQMB55wotSkNGIpoYSWPuR_oG99N-Bkij5kJqZb1rkeRzrBU
Message-ID: <CALWfF7JsB-i4tgbPfMzrH92dCO-=EMkt7yY16dKzEPE-4RC58A@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, i@next.chainsx.cn, quentin.schulz@cherry.de, 
	dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 11:14=E2=80=AFPM FUKAUMI Naoki <naoki@radxa.com> wro=
te:
>
> This patch series add support for the Radxa CM5 SoM and IO Board.
>
> Changes in v6:
> (Patch 1/3)
> - Fix description; "Radxa CM5" is the correct name
> (Patch 2/3)
> - Fix #include(s)
> - Include rk3588s.dtsi
> - Move alias for gmac1 from io board dts

I'm curious why the alias was moved to the SoM? If the carrier board
does not enable the gmac1, shouldn't we leave out the alias?
i.e. for the handheld without RJ45 jack [1], it wouldn't want the alias, ri=
ght?

[1] https://github.com/StonedEdge/Retro-Lite-CM5

Jimmy

