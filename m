Return-Path: <devicetree+bounces-235353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 148A7C372FA
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 18:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D05FB1887153
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 17:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11C2246769;
	Wed,  5 Nov 2025 17:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EKZYreWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417CC214A94
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 17:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762364920; cv=none; b=oeHXuk06wd1DkS4Ocrd5FAWAheBTpYjLvABG9S0GU/jzAKLHUXjMbfirKcQNHu0pII4cXayYGuxfwyTR8pL9AQN0+SawvhDD9Kf079i7TdCeudzosOqqnEyl5VUSamGxQ414tzpdQKh/VF1AYNQl1Kfmn2k/R+/YfoM7+v1s7bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762364920; c=relaxed/simple;
	bh=4Lygen16zLdj3/qSpC1w6kd1TkDatfIqYWayqL60qWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nxGTwShuEkrQxnDDoKKepHe5kEVHCOPYy470ev8eE0XOr4CQ+B7qBDS4ZkXvS1FlnObkILe035uXtesdo6SOa/vq16dr9d8jWd1FoCAZd5OUqQmmhiTwUS1EQu0TviEWcdlqEjG+wF9nEhN/tY5EaFGhp2h8sNrE8QjBeuBmkKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EKZYreWN; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-9486b567baaso2435639f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762364918; x=1762969718; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Lygen16zLdj3/qSpC1w6kd1TkDatfIqYWayqL60qWI=;
        b=EKZYreWNKZ0l9rOTQ3SC5pgnZzI+Kr4Gstx380f6rKnOUxnd7ArMTEkxFiCq5I2lV4
         EjhsAzVHnP1AXE5Ke/gKDP5Sqo9zxPH+gzK873Qvw3oFX891P5VBxC3FKvaTA8pDqjIe
         VqT0wv2rlaZSX4gRa0v6akm9FrPO3RkHLBEBEB/ky0tu344o+jFz9G04tEwd6g64SO8Y
         tSMxSVPwMb+ON3cGqoeUWSPE5t2TVa0vJin5Mth9kzJ7tnOC1UUSpYGM0RTjasws3+qq
         YMvWMHHwQrhWlwCGX6GUuVSA5zLoC7WHWtSaAw4ABUosSpg0R0z8frpPjWyDgmR153xK
         xOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762364918; x=1762969718;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Lygen16zLdj3/qSpC1w6kd1TkDatfIqYWayqL60qWI=;
        b=jCXtP3xPOugCaGfWgKcjdwjL5JYFAV6xth/PKWeIq70iMsRqQGaRIJezu9e/E+uJ1b
         57dC5IOXbTw7x9FiKNgwcnV+sLGGv+xfFw40VZ9bt3JnjfCoASY/LZsWLG7myuF3NNm0
         pv54wvo8RUiuCoCI+U5xWWbRmVE2pHLqnWpThtyYlnAcOFIQO8jyafmUF1u+NIKXEbUa
         O8dFJl4S1S8xbMsoN7KNJ1ZNqwks0mDZu8JjdTUWk2cYuPwcz5oBl5UpxygBIh/XVyoq
         KeWzD9J1dsd4BpU8+HJxib+BKTRHhG5VRwKuaoaRzYJvN0IcymmZxfUM+XSjZ2oYFKkP
         wTEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAzf4zkrhUUqTl5sTXxeTgWpI7pFCuiTC6/ZSn5iWQ1nFO6AmE3f13H1RVm23Um/NjuEtRwVBtKe22@vger.kernel.org
X-Gm-Message-State: AOJu0YzKrSKcgEmBbqRGr6pNQfbg7K7p+Gm+/PLqN7KLm+lZOnmbroNc
	Pbi9UT06C0pptweBm2Mxj02OVEa57A2x10h3FBmMFIXbA2VOTFEvr3rbPz6xS0IQwZGwiKVOVyx
	EVJoHGfgmaHP6X6vTtOpdoGV0BmQC5Lk=
X-Gm-Gg: ASbGnct8LSpXJjBpBY68PyxnID1m0yOj6kCqy403+aMBXxPjPduR7i2UkPTyERZqCOK
	x+dkslLOoQn33IYDyeUSNfXwZcdXooP9M2FKbCD6LK7L4Suxvsm1Nixahw+qwPjdOMTQFuHBAVa
	/DhOjeEq0qDrAU/d6B4IDSePAZNBpi4ncva97DP9+a+7W/4DZY1GJzHJeGtpqW/d9CRvDYaDqap
	lpD7pDSDrZ3WCXfkHe9SpiAv5iITe6oCNWZYOINWhdav+UrirxMlB5umFQ=
X-Google-Smtp-Source: AGHT+IESPh3Zp6kX3yx51i95egMnB1vGG4OHMopI5uoOGEv2Yij+EGoP+CRn5oZqwvocW51qOJGjEJ7NVTiI8hKF3vg=
X-Received: by 2002:a92:ca06:0:b0:433:1e74:9a52 with SMTP id
 e9e14a558f8ab-433407c94b5mr57812695ab.15.1762364918164; Wed, 05 Nov 2025
 09:48:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
In-Reply-To: <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Wed, 5 Nov 2025 09:48:02 -0800
X-Gm-Features: AWmQ_blbuKZWvuocKW6wXZhPwiwb1CEhSyKCm4kqRXygBeqGBHvga6tqEnb_944
Message-ID: <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, 
	quentin.schulz@cherry.de, dsimic@manjaro.org, pbrobinson@gmail.com, 
	amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

On Wed, Nov 5, 2025 at 4:15=E2=80=AFAM FUKAUMI Naoki <naoki@radxa.com> wrot=
e:
>
> I'd like to clarify the situation regarding the v6 patch series I submitt=
ed.
>
> The original device tree work for the Radxa CM5 and IO Board was
> authored by Joseph Kogut. I took over the responsibility of getting it
> upstreamed with his agreement.

I'll confirm this. I've been in communication with Naoki. They made a
large number of revisions to my original patch series, which I think
have technical merit. I suggested they submit the patches themselves,
and gave them explicit permission to add my Signed-off-by and CC me.

I assume this was the correct way for them to continue the work I
started, but if not, please let us know the best way to proceed.

Best,
Joseph

