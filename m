Return-Path: <devicetree+bounces-254157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE39D14DEB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B1A33085A6A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823AD313273;
	Mon, 12 Jan 2026 19:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="etFx61KC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198123126A7
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244990; cv=none; b=VAbuCfUP6YQBCWWZb9a+svbEoO3VM4QwFOjA6hOWsNIjVbUtsB1xaLSKNRBgxYoCgOmcL5QDAJfNcBWuT9X0kmiqSlhrdyqf2k9WeJ59Lm7/+uegO7b2d7uh62iwr8jO+botgQQA400ximaFcHwLtq3jdujwEFmjdOb1ij7My9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244990; c=relaxed/simple;
	bh=3xgYxXVz7pTlrANFhJdQjdekTrJ2dMKKIhvMM9hszBs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WNU1i4+0Fn7E7cBj7zLIiE5ND26vVA0f5mMQmMEl7iooMK1MbUoDGsvjrfc+Kq/XElLxGfyJPEUeVG+3mQHvRfCVimcQDK3TN5H/NYZGh3VvwLL7d+rYHXmoFTKmlxzlGkbNimQBq/xLrsapc05y7eb5kc3pu4SxVkT/mPDaWFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=etFx61KC; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-459a516592eso4457859b6e.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768244986; x=1768849786; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3xgYxXVz7pTlrANFhJdQjdekTrJ2dMKKIhvMM9hszBs=;
        b=etFx61KCpSg30zE2a9h6DQp8IIJbxvo1WHJe9ALB77rs4QpU1RuwYf5lMObivyY7tb
         UTRrFJiGJMYSEzCUv81mDC4lVydW0CnFbGuFxPkaPKQQBTKajaxxdoE4x5UDJUXiZ5Yf
         uhP29RBk+ZVWuacKRRQwaaNro+JC+L0Q66x2JVO6ustYMUcuQfzmPCkYQwhkXTTyIbyq
         eODBg48oVR9qGzOUUXDU7ls9jrQUgk3AXSbfHKuziiyphI8pC0kNavPcvuHnaFnYTH0k
         0u1Wffu1Dvfbg44GQQpyZynKkIsw57sZ4RN+X/z1+cNSQAso4VHEQ/dafnceH3rks3QA
         oefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244986; x=1768849786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3xgYxXVz7pTlrANFhJdQjdekTrJ2dMKKIhvMM9hszBs=;
        b=BLyyyai9C8oc3JwuIFb0lM4ECyT5GgTs+pTg8PWhBADYZHZjOkFkiaDfX0B5QR1gjp
         15WvCEwFqGb12uQ1h5puMq4zr5dGo5RvzGVPlhFyfIfs4dFPYO164RAsPHj1HRbY30EH
         RFoIz+dONtb///FyA647xxzpfRrbpy/IgClIa4vZxB9fQ8qbnwrBNgg1yRY8eyeu3oii
         BKDpyToL+L5EEGepExg1eJ9zR/VaY5aofFQoDaSfS+mapeTQY7i/eCww5O2Tl1sjVxYs
         EOeFQRY58VbDFloKkzVsOLl54BRm2mTJlbQzEBkY1JmgciJqJF+SrL58dgB3VoNlP7wQ
         g0ZA==
X-Forwarded-Encrypted: i=1; AJvYcCVNECnKIxT5p6vXwN1IzCOX0bMVcg1aymjDI2P9xAYDYoSPbrKFwuUPmBITf/MkiB9APzjhjdIiqLGj@vger.kernel.org
X-Gm-Message-State: AOJu0YzCwjxpAeAkr50l1OM482P2YjTHhFcgD2iM4u3OKbwJvJOQnOwg
	iLsoTt45EdW4yJIkrJ5duf5KR0iLUMepIjQoKSQZKZb6qIj6Lu2IZEQDHlnKcvW+UNrVgs0o10R
	5/kAczfyJqsCUBe4Z9sFQl8d/9cxBhaE=
X-Gm-Gg: AY/fxX4QboPYTkli3+x5ky4iy9smVnZ404OoMNdArQERkLcsUook3uNN/Fr6E/gAOC9
	CZm9D9+9DbFr2Ip21v1xOHV41pezn5t2r4hTw2pXpYS02gQLI51KO6AgwpH50+spW/IvuQXe+Bn
	ZQVexHOIDiFZW/9O4G+/2qs4+Iaf4cOQDuLNa76q2d9MC++ngFQDhR7G83gjD+uQheVSq6t7URN
	0qTwghFZnP9u5qWjdeAdGbwCyZsJWPo5CV9IsXnd9wxKU7L4gxMnbToezmI+0c7/jSy4Z+0fAnu
	wC/wA8a3kT++H7WVe55yzJeTsNQ=
X-Google-Smtp-Source: AGHT+IEwDmLeVhBFXh9EVFS3176R5WTz9bHFuYfygwgWJn3bI7U+szmlFfINN1R6jPICkSRAQjR3WA/cuwePtfThcjs=
X-Received: by 2002:a05:6808:18aa:b0:450:32f0:4887 with SMTP id
 5614622812f47-45a6bdfd28fmr7796703b6e.31.1768244985965; Mon, 12 Jan 2026
 11:09:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com> <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
 <c3ee063c-ca11-44e4-9e7d-3861a82db3ea@rock-chips.com> <a346ba30-43f1-4579-91e7-f10d2ccff039@rock-chips.com>
In-Reply-To: <a346ba30-43f1-4579-91e7-f10d2ccff039@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Mon, 12 Jan 2026 20:09:35 +0100
X-Gm-Features: AZwV_QhduoYwkSZhCEw-t8HBLxeWwsxbNWZkTjbia4I_1o_9SGTrHxB5ncQ2lVs
Message-ID: <CAGJh8eCJEwSySH3jddmcLjdtbFkn2yDmoE4mH1snmZJQHopA0Q@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, heiko@sntech.de, ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 9:58=E2=80=AFAM Shawn Lin <shawn.lin@rock-chips.com=
> wrote:

> >> I found several problems on RK3576 for supporting sd cards. I wondered
> >> how all upstream RK3576 boards claiming SD support work? Anyway, I sen=
t
> >> a series to the list[1], not sure if it fixes the problem you faced, b=
ut
> >> these should be the right patches you should have a try.
> >>
> >> [1]https://lore.kernel.org/linux-rockchip/1768189768-96333-1-git-send-=
email-shawn.lin@rock-chips.com/T/#t

I will give it a try on the NanoPi R76S. Have also ordered a Rock 4D.
But it will take a while before it arrives.

> > cannot be detected. However, if the SD card is inserted before Linux
> > boots, it can at least start up. I suspect that other boards may behave
> > the same way :)
>
> This is true, because .get_cd() returns card present when booting for
> the first time, you the only way for upstream RK3576 boards to use sd
> cards is to insert the card before booting. But then hot-plug case will
> not able to work.

I can confirm the same. sd card only works, when inserted before boot.
No hotplug.

