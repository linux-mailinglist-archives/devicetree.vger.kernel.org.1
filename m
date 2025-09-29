Return-Path: <devicetree+bounces-222544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E56BBAA465
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 20:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF7767A3DB0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 18:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B599E22D78A;
	Mon, 29 Sep 2025 18:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cedQlwuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF47222565
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 18:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759170072; cv=none; b=ttvCsTs9gPAbY42zT5x/9PQbiQVxSvhxsyC0L8Rxh2PXsHYWbdHhG1xPu/SuMxZC5TYAqDuUffkJCVTIiQbBGFrLml386GpHxx/6z1hmVCJD56NYTyU8CGq+hnLc9KaQNBt7QkBJ4YEjsETegMQXi5ZVw6xlSNcHUgfa9iH1opQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759170072; c=relaxed/simple;
	bh=YtEAn6CmDr27aj5SF5YUmQQCee6wbRGfkRsR46WrjSo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z44M0GwuoxWaX7tjpdTR6WcktZJ/i0N7RFbXWVAd8D+Oxc3cb6ivI2+fOT+g1CUMt2ADzNpDhUz32jf/QljFa3g0vh77gNEvPs2GSDxK8k1CDUXteFk5Jp1VPz2NrrKcZ1/8hSB4VH9aV/eKPzYNvuJ4rTtkFsAMOLCGSiXQ+d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cedQlwuy; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4dc4afb9e1cso39082841cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759170070; x=1759774870; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtEAn6CmDr27aj5SF5YUmQQCee6wbRGfkRsR46WrjSo=;
        b=cedQlwuy74WC1aJ3/axAPb2Q7UDVwIZY//pM3PjhkKhHVo5tdjPCkJQLDMBMwYbB3V
         dw3VbR++bAT7T6jZPZ1i5Yh87Cnr1LNNTrHeFABY0np0WSUAHCzMeiTDQbZAA54eBDJB
         Eoyf1LBEkwRZ+VPA9VzelPCwHevNN4wea7ztfEBrX48pL0Ejui169aPSvenZFavZe3YT
         CfBOAuhdeGfD1PqR9FpcK5RrGUkmMrTljRtTi1/Kl2R7jJQ2hlKKsT0YA/4qpZnbsAtN
         aSHVH2VYYSCP3UySuC0f2FmC8T7N+loVcvkrMt2UperWP7LfZmK3Xml5RicPT/Uipi6/
         sYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759170070; x=1759774870;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YtEAn6CmDr27aj5SF5YUmQQCee6wbRGfkRsR46WrjSo=;
        b=PLmZGTkUcWSzZ11f5HanZuPkooU5Gqe8UtXdWOt9pQGCi/24Da5NLSdpjPQfqdzazN
         414VvwqfRhVWODuQoyDxgJF53bfvmQyvDcIBhQ5EPRSKzX8stm2R0gjlOPr//99B6iqT
         3bENY8oPTOSRTKJUjdvLOfIbJO9dYfo0pFZLnKZjFwFJCHmIcWKnzgk7r3UWGdI6BCRs
         VpM1jvbtdAdxJPow4yXAfa8DglAS83dfL85TUH0ka0w1q7CBO03uwOE8py7B5vXk8Jat
         CAPE+ooJFwBaInqMK+GgyenLR0xE5sumnH0hkD4h1m+MM0uu7vu9MvNdAS9rEkP7320n
         c3qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcKKkt4KM2N5wymLL5R1azol3bvLttNjLj/hj4fgw/MgYb+vv4Gw6c8P41VTNOW6x36izvw+VGyoY7@vger.kernel.org
X-Gm-Message-State: AOJu0YwmOC23VsqxO8iMgRohef/kaFsX9Kw3sY9qm+ZWm69d7Tlc+Fx5
	ln92Wyl8iJhV3rSFbqQD/XA+W/VHdpEyvl1A0Cw3rQyCGU10G30fgq+A85oqtKr0Y77ncRH7VvK
	jXb/HTdAzO6zh1JmwyhidtVVop3uJGoI=
X-Gm-Gg: ASbGncs33twS15GZAjx0X3E5aDoWEtjquwqhwAf4MMbgJyCjtACegIDrQtES5TyA08u
	COGKJd+91iv/8IlQsmZH7/LipPRDIkGnn0qf6XL+x6AsML+zKxzAozqYuqV+JRztX4X6FOmXAQT
	3PmMltQYmXlnl5CmXm34T90lDbjr3iLBAnti8dUQ4AUcH0KxXb9vlnp4KXYSlom1wRdx4X9O4Sg
	mgYHYb3
X-Google-Smtp-Source: AGHT+IFrBeJSgMsR3HaccN16cnXjcttv9tgaaLMJKzDwaIqr0lNEmWSIpPm9V69kQrLev4/WKIw2zOmNYU6wfZ7+6Po=
X-Received: by 2002:a05:6214:2625:b0:78e:5985:92f1 with SMTP id
 6a1803df08f44-869973a156fmr24287356d6.11.1759170069962; Mon, 29 Sep 2025
 11:21:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-3-jjm2473@gmail.com>
 <5700676.tIAgqjz4sF@phil>
In-Reply-To: <5700676.tIAgqjz4sF@phil>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 30 Sep 2025 02:20:57 +0800
X-Gm-Features: AS18NWBViMs8caAfXLXKamwDlPSJ-YJ_sCg4Ny2_8taIjH_4vuLBQ4TYDgmLkh0
Message-ID: <CAP_9mL6e8ekL14xycSfPmVSkL7pANLeyewWd=rjxbtMgMQXxxw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Heiko Stuebner <heiko@sntech.de> =E4=BA=8E2025=E5=B9=B49=E6=9C=8829=E6=97=
=A5=E5=91=A8=E4=B8=80 20:28=E5=86=99=E9=81=93=EF=BC=9A
>
> Am Montag, 29. September 2025, 08:57:13 Mitteleurop=C3=A4ische Sommerzeit=
 schrieb Liangbin Lian:
> > LinkEase EasePi R1 is a high-performance mini router based on RK3568.
> >
> > Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
>
> In v1 this patch received an
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
>
>

In the next version, I will add 'Acked-by' to the commit message
and then run `git format-patch` to avoid missing it.

Thanks!

