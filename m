Return-Path: <devicetree+bounces-221072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE12B9D0F7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18DBE1720AA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9CB2DE71D;
	Thu, 25 Sep 2025 01:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PF1vzTsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CE22DEA73
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758765024; cv=none; b=J5nKzPnib2pZoqzDyfJYC4mDx8GB3L7DGSUH5doMgH6I+MlCIZIb34HNhDl+S8/LkD63gZYOnEXOL65KMcvgQTa2L/16TAF2YVsUo0uBo/7msotuIWhub/RFKCUN4lEuvyjy2ypqoJJ5I9dk17vFfUXpAxHJEWxvOZ5EBQirQoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758765024; c=relaxed/simple;
	bh=owaS0D9XXND9vT6YXj68RtHr8CmLFuARl6LEZicjSX0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kg8NLFJ60FMENCjaRWrTYTJ22JZ31pNfCCWgoZ017kJSh/4KDrbiqmbXORXptXG14E1EZ5xQ7PLvVs3QpdQjqxZakyz2SrH6uusmQ+G5e5gCLKD+/3XT5sxHbH9iZOUDP5LY92pdKtQMkv9+EXbqYD7ZnQ5iCm0F7AyQqgAna8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PF1vzTsX; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b555b0fb839so355813a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758765022; x=1759369822; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hEJQvsmE/hbyjQkBzjPY8kB2xy+I438NQVnzcmtq/VU=;
        b=PF1vzTsX8updoHYLQrXbk5Ft6ipQyWyO/FIzAqDmLxcsMgKSFQhZ/XeEeHa6ljh4D/
         WJy42vSJq43fdBkXmU9sY76G/cLJ/rLU7RzO2Ju3JRhE/R0EvDyIB49b7ijLq2X+xQfL
         yGvWPfNdzQh0EtFc2dzDfzVNuM8CLq2bIBVO/HgnTxjQDNgUOdjF8x5gFjPsDmNAuWcE
         GSQNb61tNviARIUktUkbnvzQOifAkXGHbpzjuO9j5B/sMYB1ADnAtOdt1qwJLDUqVwZi
         IFdLEHTtCftN0xt4G/OyqsyhmdxiORCr2nSRINt9C3LFV5sGab4XfFgYrhoOAaUuU7Ur
         oMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758765022; x=1759369822;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hEJQvsmE/hbyjQkBzjPY8kB2xy+I438NQVnzcmtq/VU=;
        b=DGICl5tXNdet/mRe47thAyL4dg51WrTg4kNR5bnvVlIb+PRr04X+FnrHA5mVcy2fxa
         jIWSwUqUHYBX59kYBNWhBXUIoHPdREu+MD67K1+F5nfI29f0JJLFjCZvhfNnDZEDiVJD
         Rarnv/IRwtFh7/30Rjqv7SYDmFnZQsOQrrhQ0g8GuHpfeOBJxwv69NAs71F75ZflDe/f
         DTrEJ4eD/z0urh+4zoNFMdpNgc6Nvrv58VXP8R69OJLGsHMSGUvg/xbI1RKpMQn2sjTn
         gkSKQ7d92VM57XwtYJdz65nPqcArC4wujr0CRGzXnAK6O6ArUKLfONTNAOFkcAuXfAX+
         Jwbw==
X-Forwarded-Encrypted: i=1; AJvYcCX8v0HVCqP4ZryDPLStEam3b8VFhVpi+wjstQylmGaSNKMPjAS/i2/OnHZ+fOqC9I5wyWjfTOX9Eo2F@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7xuYfV1hLaCqER050ZsXZLrKzv2Uzp4IkkmJRf7PlyX19aQm/
	SQ3QkPWbRRZ7z3mPIMjAnhqsuLtOZMJH+VqbeSH7OkzmAJVwcy2de7nr7mJBylVHsjBTcE284pY
	16ZalxH3sVi9WSEn1cI+STPGOf+uMITk=
X-Gm-Gg: ASbGnct25DVXCQWlnJzUQHMne0VVtun/ixbLN8cOm9ai0o0TibA2Zu43AIVnEtnhcEW
	UeK9zKYXRX46zTPNM4/88aI4RfUdQZc9bi9EHTDf/xKZiUd7w/rRGsTZYWbcI7btw/OWzQLBE9h
	afSPng5T3yFAONABq0JApAVKaZhRswQVaxa2oXdNb1g1EmNfFmuf9KApieOV232bRYugHc/cUDI
	O76KaGPt1lmEWMie8p5U85nvMlj99vpKJVu
X-Google-Smtp-Source: AGHT+IEl7et+7OeLoEdoDmvJumc2FzyDuQRGyuOq4dHhRQ/gB+e14fRVVIkDC+7iwxulpgcerYiG0oyjO04opcvWDZU=
X-Received: by 2002:a17:902:ef0b:b0:248:7018:c739 with SMTP id
 d9443c01a7336-27ed4aab56fmr16467205ad.28.1758765022657; Wed, 24 Sep 2025
 18:50:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com> <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
From: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Date: Thu, 25 Sep 2025 10:50:10 +0900
X-Gm-Features: AS18NWDVnkrvIrL2FuXY2FROte4PMl-E9EOOPzKJH_8e7zTtzCUsO-xFczLqIAs
Message-ID: <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 09:17, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>
> Add the base USB devicetree definitions for Kaanapali platform. The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.
>
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
>  1 file changed, 155 insertions(+)
>


Second try, without HTML:

I really don't understand why you created such huge patchset. Year
ago, two years ago, we were discussing it already and explained that's
just inflating the patchset without reason.

New Soc is one logical change. Maybe two. Not 18!

Not one patch per node or feature.

This hides big picture, makes difficult to review everything,
difficult to test. Your patch count for LWN stats doesn't matter to
us.

NAK and I'm really disappointed I have to repeat the same review .

