Return-Path: <devicetree+bounces-70865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFB38D4CDB
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA5A3B21BC9
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 13:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C4717D88E;
	Thu, 30 May 2024 13:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hFw0fZtr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE21217CA16
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 13:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717076086; cv=none; b=CcR/JXzZ/sGdoG4HFEhhE0z3PJMWF1ZPamczMat1j5IlSVMAtF6BVIWbS4Zs+pzW8XZxL8KyDmfuBuJkYKUbBmb/YIl0xURZQeWD5H51WS4KMhNa5aWlXjb8iK3HdpXDRzKoO7XXEH5TbtZate4iRpC4FAi1tyulcWsbEstdw1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717076086; c=relaxed/simple;
	bh=iEY3TKMBR3VjMOO18gro7lwUoFToxzJsoKmK2rYmRAQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ypky1rc8ELvMwK1h39L1A0KtqVi4QX6JmxlEX4mr9MWt/3fIApwmp+xfRLi4rTjv+mpafI11e/UcEf7hJR0k2Ys43tyyEJCoyFPIeXmlyUbvRC+EjeDkaeAwiafbIZb29mIkXe3Y7T1r4f96x3fUWP13Lx8+k9GdtOhJHx0KAl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hFw0fZtr; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6ae102523a4so3599166d6.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717076082; x=1717680882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ekpEHUCDsezH1RNk3+5n/lewOHNyOHOYkS0J9gidF8=;
        b=hFw0fZtrh55o4r4qaF+xdJqDlw65tq3dZqjfgrwDeni+GyDvBGj20NdJSF/FGn0rFx
         22PvxXOPCimcLuby7rR2Mwuf5S6Df8uGfc4RpNC0xlhyTS1rYn10/Z6KpfXztC7hZf//
         hnoOERwoWKBRZkKTW/qrn33VHx74tq1OZ2sBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717076082; x=1717680882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ekpEHUCDsezH1RNk3+5n/lewOHNyOHOYkS0J9gidF8=;
        b=awJXN4p1e2xmqO9yjVPORkpL6fRDfNVv0YVn2f+RHaZJwbMhhiHQt6QOvok7V3T2Cd
         GKFlvjxVoGlZG+otK8Uct0iIhQgFGw2DVPyiu3CdhCAXK8F7ATV4roHTBVuHx0syGYgA
         xoLGlsJscBH74GzdMRDzx4/cTdrupTSR3ZgrCRj9pOMgzjMsPRE2Y5E02/w8qCYz7VbG
         l8UZWpibIcfcY6eMtP2co2b3vIP+kHj7ewHmMXAsmz6m/ImZz8DZxDLxnS3UC/8J+KfO
         Pxm/y9hrFhjXR4rBFWhejgjhMzBdWWPZSdInNFnRJvLmj4u6+AwxUP1T4T68Pdul+ury
         CU/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcEf94dPzgS8gBnENnatpUlI8KZrXdaHzxe61Rmy9DaOWQFvJ14o5reQZ8AL6mgbOGdAon+d/t+zETNu/cRw3MIyA71da3fpSaZA==
X-Gm-Message-State: AOJu0YyJhxlTfEmEmzxMUSMEFg7YfKV+/q54XCSMsBTbjqlesub2YYeh
	+1IWet4+0gVSz0WCT4l9Sgz7gojdv3dV3iAafTtvrZQqCCtpDZFxPrdYKLK4d+tt7ljvITL3UpU
	=
X-Google-Smtp-Source: AGHT+IE4lvuwN4WpS+brJ+DCeCnW/3c7mZXXFXtv+kJFqEEEv15oxBHWI7jrPPFol0/mVna7gp1TXA==
X-Received: by 2002:a05:6214:4506:b0:6ad:7a07:fd89 with SMTP id 6a1803df08f44-6ae0cb548b4mr37968346d6.29.1717076081911;
        Thu, 30 May 2024 06:34:41 -0700 (PDT)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com. [209.85.160.176])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ae12306f5bsm4463786d6.118.2024.05.30.06.34.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 06:34:41 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-43f87dd6866so363081cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:34:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX4+ebrAJNhAq8vdbRbc0KlRDP96NLzce3iV631kdjtZV6byFnf4ULpw3zsYxMv4bHeJleGVYc4GfcituQzNYG3upiNYmuft8yf1A==
X-Received: by 2002:a05:622a:410c:b0:437:b4d9:ddc6 with SMTP id
 d75a77b69052e-43feb50e3a2mr2651001cf.27.1717076079721; Thu, 30 May 2024
 06:34:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530082556.2960148-1-quic_kriskura@quicinc.com>
In-Reply-To: <20240530082556.2960148-1-quic_kriskura@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 May 2024 06:34:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UhrCKCv5R-LAAugrLXFp=cDcj2=Pp9-N3qk5pk2=sGEg@mail.gmail.com>
Message-ID: <CAD=FV=UhrCKCv5R-LAAugrLXFp=cDcj2=Pp9-N3qk5pk2=sGEg@mail.gmail.com>
Subject: Re: [PATCH 0/2] Disable SS instances in park mode for SC7180/ SC7280
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Kaehlcke <mka@chromium.org>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2024 at 1:26=E2=80=AFAM Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> When working in host mode, in certain conditions, when the USB
> host controller is stressed, there is a HC died warning that comes up.
> Fix this up by disabling SS instances in park mode for SC7280 and SC7180.
>
> Krishna Kurapati (2):
>   arm64: dts: qcom: sc7180: Disable SS instances in park mode
>   arm64: dts: qcom: sc7280: Disable SS instances in park mode
>
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 +
>  2 files changed, 2 insertions(+)

FWIW, the test case I used to reproduce this:

1. Plug in a USB dock w/ Ethernet
2. Plug a USB 3 SD card reader into the dock.
3. Use lsusb -t to confirm both Ethernet and card reader are on USB3.
4. From a shell, run for i in $(seq 5); do dd if=3D/dev/sdb of=3D/dev/null
bs=3D4M; done to read from the card reader.
5. At the same time, stress the Internet. If you've got a very fast
Internet connection then running Google's "Internet speed test" did
it, but I could also reproduce by just running this from a PC
connected to the same network as my DUT: ssh ${DUT} "dd of=3D/dev/null"
< /dev/zero

I would also note that, though I personally reproduced this on sc7180
and sc7280 boards and thus Krishna posted the patch for those boards,
there's no reason to believe that this problem doesn't affect all of
Qualcomm's SoCs. It would be nice if someone at Qualcomm could post a
followup patch fixing this everywhere.

-Doug

