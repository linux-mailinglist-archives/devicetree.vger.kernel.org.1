Return-Path: <devicetree+bounces-13947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1147E184D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 02:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 719691C209A5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 01:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DD31396;
	Mon,  6 Nov 2023 01:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BYj7DRYa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EBE395
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 01:25:17 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B78C1DD;
	Sun,  5 Nov 2023 17:25:16 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-280cd4e6f47so1088040a91.1;
        Sun, 05 Nov 2023 17:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699233916; x=1699838716; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XiH1jrQnLmPpZjRCbn/LLB3kGf+FaZJZ9sVJccr/Lgg=;
        b=BYj7DRYaKqRfxZNYBTbdF/IPuE1jxpHMZSOwkQH9WGHeMEdq3qrNplHZhs0QX828V+
         N239MUBFR0KUn95h1cJJJopEPIiccOBZ5VGsq+J6KjMxAqWyGkmK/xEcktEDbg0sIgIz
         nBSaUETUncd2w+q4yb9bF7D1FSoAqNBHtWeetUbyKKHJ8wEPIAzVHuSzxn6WXsR6IMGG
         MIIx2EiZRpjIK93+Yn5u3Oxq64nWanb1hzhpigSq7aepefNh18+e3Ug2Tq4a3X6T7kSb
         knD9GAzG3K512EEpw8Vu9qPg1q1evJkLpYeHkn0/dY/oszUmNRWFz6bTb7iS6+6hvNmM
         92zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699233916; x=1699838716;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XiH1jrQnLmPpZjRCbn/LLB3kGf+FaZJZ9sVJccr/Lgg=;
        b=gAq7WldwLSNPw4SdIBbxYJhSDBK0g9DSiWJQ7jTNLhKtFEDnRfNvfxKrEPNRTjb7ZC
         t1Z0YdeG6oMa/BaNd1gR52qB6HJ414dbCj1Jf5p8SNaTpCw4X4jU8VktftYADHz2Jvyx
         VUkH2yrCql3RQvOtiaQKdu4mv0f/M0RTuQHZq8UosqMf8b8FguJDxBAZ0R4srGtkbBvq
         7P5O4MuJIqPTtOt3HsiJskQDNHYTTd5eWdKLe0Mkh6rDe1NdsUw+Lnp8pS9Per9SNuAT
         ron1z7cl7oX46n3dvGywnQCjg9Zrcpi9mfL6f8+F5y+/+TPnEYumi/0kN3wqoBRBnGQv
         Hrng==
X-Gm-Message-State: AOJu0YznIQI6h1OTTr0jSIDUL4LVNyJP3ghds62rpIxsGJEvOclpxB5y
	KOOyIU7QS73Ag+lWc21kkpuJZB3OezEJUXXyJjc=
X-Google-Smtp-Source: AGHT+IGqnW8+r3UPKBMWvHZee9lGAihZR6Lxls8aq44fdlWGxV80bWuonrbN1bK3aUK03jq/SGxn8xHVaDxQ4WMNO2g=
X-Received: by 2002:a17:90b:812:b0:280:1d2a:acc9 with SMTP id
 bk18-20020a17090b081200b002801d2aacc9mr24319699pjb.4.1699233916138; Sun, 05
 Nov 2023 17:25:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231102082406.1555227-1-nathan@nathanrossi.com>
 <CAOMZO5DZ7f1dBNy3QidjjdSk9TCExHAF3ZNk1ryyvnooRmipzA@mail.gmail.com> <CA+aJhH0saBXH9zRNJLOvFG-wustQZgABggWAKpSGe8HZtN4TBQ@mail.gmail.com>
In-Reply-To: <CA+aJhH0saBXH9zRNJLOvFG-wustQZgABggWAKpSGe8HZtN4TBQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 5 Nov 2023 22:25:04 -0300
Message-ID: <CAOMZO5B7nvT2UqdN4Cn+ReQCa+BDy9aBjevy+W_PAq9Yt_HMiw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: imx8mq: Add parkmode-disable-ss-quirk
 on DWC3
To: Nathan Rossi <nathan@nathanrossi.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Nathan Rossi <nathan.rossi@digi.com>, 
	Li Jun <jun.li@nxp.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nathan,

On Sun, Nov 5, 2023 at 10:11=E2=80=AFPM Nathan Rossi <nathan@nathanrossi.co=
m> wrote:

> The two commits that would need to be applied against would be:
>
> Fixes: fb8587a2c165 ("arm64: dtsi: imx8mp: add usb nodes")
> Fixes: ad37549cb5dc ("arm64: dts: imx8mq: add USB nodes")
>
> The imx8mq one is a bit tricky since that commit occurred in the v5.1
> kernel which is before the parkmode support was added to the dwc3
> driver (added in v5.7, but was backported to stable kernels all the
> way to v5.4). However since there is no active stable 5.1-5.3 kernels
> this should be fine?

Yes, they look good to me, thanks.

