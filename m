Return-Path: <devicetree+bounces-68909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 052A68CE12C
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 08:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F1F71F220AE
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 06:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3658C5A4FD;
	Fri, 24 May 2024 06:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="JPB3o/uY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73571CD06
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 06:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716533507; cv=none; b=SXjtDqwLbzz5fOb6lSfAetBvUCSZc6h2orjrqDxsdOn/z6Nxn5dhlUxsx6ldROrrc1zn3r2YMOQvhiwyuSve6BjUYRwHmVba8q1D+38MEIgZsJQ2TBXJhQnucEBfEvlAkW0DjLoNjfdQEl5OQi8sp3nC4pk88JYeeXGuI9zQ9Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716533507; c=relaxed/simple;
	bh=bQ0F2m4aBg8Va1VvxQeZ4hY5GUZdpIU111SIkEQdJR4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=NpT2pmxCdoeKiGq/8pnNJwhIWVqVrf+IacIHhwjBiAqmqVJKdGiYHy5OnZleQvI17WB1r00xTDNMFm6AARbLuXRREe1X/ebWjOSFKOFHJJsF2CZJ9niqSSPGnIULoXnIl8EZjmM2mXwvNp6BT1JvdBKJoOpJoM4AfKDyrFjZaEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=JPB3o/uY; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5295f201979so523101e87.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 23:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1716533503; x=1717138303; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AM6VA18bFGFYY5kMPUR9rqKd9gSuqX5euarcCf0EZ4=;
        b=JPB3o/uYSvuidL+Z6sDJghVko9dUg0T9Cc8e/HNqOXeaWgqYuqR6ySsCpxTKt85UAf
         b99ytJ/vViHhqeTsPBe2Dtt8LSEHju/KuohBWjyHdyX8jXpQgJb7d87e/MJCkllseVf0
         eq7NeiFRX7WI1bvbYa/EOdFiBZXL+zZqeA69wR9iFKFISoNFvP5ixiOKTWl+8FmGkYBw
         Nzzb91bAkINUaNHfgREUGnOcAwU1dSM0y2M23E3uzgs6F8tgIUU+cAdJuyw62i3JRkY+
         DTMe/8nWNTdzX60IrRX5feamnUPPIA9DY8a6fB2O1GaSi3BGLh66AY9YI2vDefU+GeK5
         e7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716533503; x=1717138303;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8AM6VA18bFGFYY5kMPUR9rqKd9gSuqX5euarcCf0EZ4=;
        b=UD3eJgl2vKfjJ1KXdEbolDVkDeEKeQb4cM/XejKQaqMvmAJ1lAjx5ep+nEGZaqf00w
         KfQpyXru/jiVOPwTPqiPYzfqopG1bR+li4x+o9TuoSgSCy2aL4LCI+VivmPg92KUlo+p
         JR9zhxs+Rt+LUXPGbrcK0v6ngrWPIv+frYQx4h2vEP2sr9+PXaCwSvf61r7TNGGos2e3
         rNggAzSD97HWZH0jHeeon4UHdGD7TvsM+DHmMJ1XzllWTStRIcgTtccm5bQPyVYDHO++
         zcqMUcoMsQcd55YRszU9pxjC4wAAV+OVd90/IwNhnomgMJgCpQ4aKTeSSkYZcOA+dLoB
         xfMg==
X-Forwarded-Encrypted: i=1; AJvYcCVZ6P9IAXcXpwKmY6kCTC+r7iQqniqHEOaXJsIMT1+EqozRpsKUSjdzOGf6SGg5SZYlmiA+F+VNvID5o/312JR2kU1BlpBgPydS3g==
X-Gm-Message-State: AOJu0YxX9+Aki52/BIsI080rpcrTuqXB3NiYKItMIP8bSAOWIvbHHlLI
	E1/QjJRE+HH2BuGmmO1Ut0ekmD0DHjcbPplrIVHu3xInN/Ke3MChyfJpifIcwW4=
X-Google-Smtp-Source: AGHT+IFF5NGys5h91On8M/+eUNTfZssOWAGaxJkGIKXJhJWSzEy0HxwULqIkVug0I42xC4SkbqA2rg==
X-Received: by 2002:ac2:5b12:0:b0:523:df53:93c2 with SMTP id 2adb3069b0e04-529666d81a6mr733669e87.51.1716533503025;
        Thu, 23 May 2024 23:51:43 -0700 (PDT)
Received: from localhost (2a02-a210-20ba-5a00-9ceb-707b-2d57-26f7.cable.dynamic.v6.ziggo.nl. [2a02:a210:20ba:5a00:9ceb:707b:2d57:26f7])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066ba0bsm109560e87.163.2024.05.23.23.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 May 2024 23:51:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 24 May 2024 08:51:40 +0200
Message-Id: <D1HOCBW6RG72.1B2RKGKW2Q5VC@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Abhinav Kumar" <quic_abhinavk@quicinc.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: <neil.armstrong@linaro.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Bjorn Andersson" <andersson@kernel.org>
X-Mailer: aerc 0.17.0
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org> <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com> <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org> <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt> <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org> <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com> <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org> <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com> <f2d96f99-d8ac-4ff1-83fa-742e541565e4@linaro.org> <864063fb-eeae-4eb7-9089-0d98011a0343@linaro.org> <D15RKEU49B4G.1B6A2MYB4LH3X@fairphone.com> <cbc8a2c6-0047-4345-8c93-afdba9c2bd10@linaro.org>
In-Reply-To: <cbc8a2c6-0047-4345-8c93-afdba9c2bd10@linaro.org>

On Thu May 23, 2024 at 11:06 AM CEST,  wrote:
> Hi Lucas,
>
> On 10/05/2024 08:51, Luca Weiss wrote:
> > On Tue Apr 23, 2024 at 4:08 PM CEST,  wrote:
> >> On 23/04/2024 15:03, Konrad Dybcio wrote:
> >>>
> >>>
> >>> On 4/5/24 12:19, Luca Weiss wrote:
>
> <snip>
>
> >=20
> > Next, with DP 4 lane (not working on mainline but still plugged into a
> > screen) the diff is quite a bit bigger.
> >=20
> > See attachments for the full files:
> > * usb_1_qmpphy_20240503_151052_android_4lane.txt
> > * usb_1_qmpphy_20240503_122443_mainline_4lane.txt
> >=20
> > Not attaching the diff because it's quite a lot
> > $ diff --ignore-case -U0 usb_1_qmpphy_20240503_151052_android_4lane.txt=
 usb_1_qmpphy_20240503_122443_mainline_4lane.txt
> >=20
> > Not sure this is helpful to anyone, but at least wanted to share what
> > I've done so far here.
>
> Thanks a lot for the traces, it founds out the QPHY_V3_DP_COM_PHY_MODE_CT=
RL stays at 0x3,
> which means the mode doesn't get broadcasted to the phy because.... the r=
etimer only broadcasts
> the orientation and not the mode... and it works on the HDKs and the X13s=
 because they don't have retimers.

Hi Neil,

This was it!

>
> So I made the changes in nb7vpq904m and ptn36502 drivers to get the next =
mux and broadcast the typec mode,
> if you find time could you test it ?
>
> Bjorn could you also test on the rb3gen2 ?
>
> The changes:
> https://git.codelinaro.org/neil.armstrong/linux/-/commit/a61fb3b816ecbe28=
a12480367d9e09b700ec09e1

With this ptn36502 patch on top, I can confirm that DP 4-lane seems to
work on qcm6490-fairphone-fp5 smartphone with DP over USB-C!

Tested with a USB-C dongle that only has a HDMI port on the other side
(so no USB), and cat'ing dp_debug while connected showed num_lanes =3D 4

So feel free to add my:

Tested-by: Luca Weiss <luca.weiss@fairphone.com>

Regards
Luca

> https://git.codelinaro.org/neil.armstrong/linux/-/commit/f6f976ff692bad43=
0cd945f02b835e355f19632b
>
> Thanks,
> Neil
>
> >=20
> > Regards
> > Luca
> >=20
> >>
> >> Neil
> >>
> >>>
> >>> Konrad
> >=20
> >=20


