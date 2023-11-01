Return-Path: <devicetree+bounces-13458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 892307DE277
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 161F0B20CA9
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69442125A4;
	Wed,  1 Nov 2023 14:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvC0rGBU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7EE20F1
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA60AC433C9;
	Wed,  1 Nov 2023 14:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698850204;
	bh=7iNFsSLZDQ9V8csD9QzZONOHQGFEoRrYHY0q8f05p8g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=jvC0rGBUfFEUPr55mjKIeNeO5G1m0uYfhlxVZLFp8iVRP7EI2wA+Vy2iyaPb99TtJ
	 otLLnpvBzuI9rKe6wx/uweEb5ATrP4NzIFlGUd902Jb2dQVMmFoAdToo3JqxD8baRA
	 uZdffpUPy05qRdj2Ms18yOSdZoDUJ5MS94N4b1QYxea42iIg7ugvv05/vXub/2d8s5
	 bdFtWy05IjC1RConiw+oGoK8ZyP7rFQqSBFvPoyDRcQXApnxM3ojrLw0woUmG0Dsw9
	 WedgJUOTN/IWSCQ8sxy8WKPBHzjsYm6oeHZNONzZXVMKLMANtMWswJwpaRat7tODvo
	 pKr9GvTGNUZSA==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-507c5249d55so9842149e87.3;
        Wed, 01 Nov 2023 07:50:04 -0700 (PDT)
X-Gm-Message-State: AOJu0Yxn+uLVMa4j7Tdnh8kYiGxpieO6sv5Io4YdoIbBiDUXc0kEhYFx
	yoXBy0S5h+G0alxDF45+ckUHaCphymV804M/uw==
X-Google-Smtp-Source: AGHT+IGhAxZtoPlloQ0Aj/aGophi0n+wforlFM+EST4mulcvlGVQD+AwcgacUQBRiETXXqFh/9sCzxx0pdlg53UOURI=
X-Received: by 2002:a19:430e:0:b0:507:c871:7888 with SMTP id
 q14-20020a19430e000000b00507c8717888mr11799918lfa.9.1698850202822; Wed, 01
 Nov 2023 07:50:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231031180305.GA1813504-robh@kernel.org> <TYAP286MB0315C0414CC9420993D18DAABCA7A@TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYAP286MB0315C0414CC9420993D18DAABCA7A@TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM>
From: Rob Herring <robh@kernel.org>
Date: Wed, 1 Nov 2023 09:49:50 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKxi1KiieGzmY4emQ0DRc5eXtHmQJBrre6mr6pAm6NFjA@mail.gmail.com>
Message-ID: <CAL_JsqKxi1KiieGzmY4emQ0DRc5eXtHmQJBrre6mr6pAm6NFjA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: leds: add "internet" and "rssi"
 function definitions
To: Shiji Yang <yangshiji66@outlook.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, lee@kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, oliver@schinagl.nl, 
	pavel@ucw.cz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 8:47=E2=80=AFPM Shiji Yang <yangshiji66@outlook.com=
> wrote:
>
> On Tue, 31 Oct 2023 13:03:05 -0500, Rob Herring wrote:
>
> >On Tue, Oct 31, 2023 at 09:29:01PM +0800, Shiji Yang wrote:
> >> These two types of LEDs are widely used in routers and NICs. The
> >> RSSI (Received Signal Strength Indicator) LED is used to display
> >> the Wi-Fi signal strength, and the Internet LED can indicate
> >> whether the device can access a specific server.
> >>
> >> Signed-off-by: Shiji Yang <yangshiji66@outlook.com>
> >> ---
> >>  include/dt-bindings/leds/common.h | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/l=
eds/common.h
> >> index 9a0d33d02..55a426e39 100644
> >> --- a/include/dt-bindings/leds/common.h
> >> +++ b/include/dt-bindings/leds/common.h
> >> @@ -88,11 +88,13 @@
> >>  #define LED_FUNCTION_FLASH "flash"
> >>  #define LED_FUNCTION_HEARTBEAT "heartbeat"
> >>  #define LED_FUNCTION_INDICATOR "indicator"
> >> +#define LED_FUNCTION_INTERNET "internet"
> >
> >Duplicate of 'wan'.
>
>
> It's different from 'wan'. 'wan' usually indicates whether the WAN
> port is connected to the modem (internet services may still
> unavailable). But the 'internet' shows if the device can successfully
> ping servers like 8.8.8.8 to detected the internet connection status.
> When the router operates in AP only mode, we can even connect LAN port
> to the AC/modem to connect to the internet. In this case, 'internet'
> LED should still be on. On some routers, both 'internet' and 'wan'
> are available and be controled separately.
>
> Ref: OpenWrt has a lot of devices that require the 'internet' LED=EF=BC=
=9A
> https://git.openwrt.org/?p=3Dopenwrt%2Fopenwrt.git&a=3Dsearch&h=3DHEAD&st=
=3Dgrep&s=3Dlabel+%3D+.*net&sr=3D1

Okay, please include all this information in the commit msg.

Rob

