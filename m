Return-Path: <devicetree+bounces-227363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8CDBE10A0
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 01:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1BC819C1E29
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 23:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD9C3168F1;
	Wed, 15 Oct 2025 23:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CZl6ziQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79552309F08
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 23:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760571583; cv=none; b=DtNFdFqh9GAWROeZd7t/PpqSNUfT953MQRq4so0yAesuAtbbVSyvF/14F7dusndN5Ta5v2EVlfUUiAoqVIyCiD/f8vEOxmBPFHmwM/gfH/xBJrnh3sMZrLNrMBwwI26n9Vjhd0/p3ydTsSN++iuQs7BdTKTRbxFnpx24x/n9dLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760571583; c=relaxed/simple;
	bh=pbGnn886v9/iV6WNOEHWo9MCWG5V952opqaZM9xYSd0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PcQoke62WnLhASusURPuFss6ArI+tYeyQsaoP5B/qVonWupFKHvafXln8jYqlxGcukMi+AS3WqitXoAESX7KJoyl44ZT4O6eVsiFR0DAPGfTntpWnqizfDYd5lK0P7FD0bSWGAQbWnOnzcrOUS/qA5YdXaNTZTJWLIjyNccVHpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CZl6ziQE; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-425911e5661so515905ab.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 16:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760571580; x=1761176380; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jk+SQ0nV/xTHl/QRiiwtWRlkyDcwisMEuXdFP5NTe7Q=;
        b=CZl6ziQE/Mpo2IeyW1kiX9ukEnjG+OPjUUgGzKE+ixxpy2UWMcx/45isNm+84GJ+OU
         yNbvO/6hH6CnpVPzMx2CYWS+E5S5lQCwSPivuSCB7zRsrFrtdvhK5F14bf4Ofoh5vqrI
         YxE8opEsC/LiyPX0LRCfNVnKs9EEILW5bPJtPPxW+QHnCGZs1WISgOJ7By/ZLy0qVQoN
         t/ElXyy+MR8ZqTykXOc83BvfPG9dJt/nvawiGHN3Pt6T6rb8+maR464Dj4sQ+aIb9uY9
         paFlMcOmTGrmgsl+FxyvCIl+Wa9XHMRyu91gWx5gw8eUcFTVd81nlxoUcvtlDwOa04XD
         mbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760571580; x=1761176380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jk+SQ0nV/xTHl/QRiiwtWRlkyDcwisMEuXdFP5NTe7Q=;
        b=LKZRIyogqBbzTFyGg8abCGEEOt0iI2rFVZX4lBi+fJCuTWpRUh2WEVDlSuSYT6QFYU
         /byrREeC/NMEyBoPB0hchXkP4MJe5+dBDymarha8sHXiJR9ZWULY2CFEFRBgFkmtqoJy
         MD6hStN2kggWO0UP4mug67oJyBe1ieDEsahHSjOsD0R6MyqrrH+Ed0Kb8DJYIWOGbIT4
         lO+83dSLiPiEx0kio/pPhtEc4ATwDzVQWVff4ALy/AOaW1Ob8L/cYl+NTZhw8MXNjILm
         ff9HG+NLyvtk65igrXkQSR4yezLCyXBw5hOMAGLsJBjOzCsI2ACjMPgDfUNbkdtmUhTp
         +3FQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1/gIJR2oiD8hjp234UrUY5jpKgLpw8DDVETzLy/HNiL9KeHzPqMzYRrZzQxtHDSKFcREKZZKInHiD@vger.kernel.org
X-Gm-Message-State: AOJu0YzE2qW8WJ/yCE9w7xgCQJB94Z/hNufe5NQj8X+c+iwjMXt+u+pQ
	SU3Zah9JrsD6Yu8j87rbT1Tgsgro2CGmtmWgbvDfM8nbNtJuCt0DAWn2+NVuVWqup+Hkv+kqAVq
	rKlwH8ndL3f3nXqN0a0opN2UJxCOpsGu1t3OEJWY=
X-Gm-Gg: ASbGncvWsHs7BHJUwDM2Y7TKPgegLtmSPgWfBPk92/eZ/A8ZzDG6fXMS6EJLWCLF7zA
	sSSj2AkanXAXglwCPNVWvpfnpyRzCi1sBQ/uj4SMDrYjdu/e7CiLeFZP4cV+0eHgw8Lb9bGhE2q
	E1qLUHz1Fk7ZXArSBt57sF7o+lFM/RKz0+91FKUxzKcF+DtW5eAoPdLFtzDqlhoALS8LdHV+5ai
	c9DRYicTm4fOTQFSRTOrH7OCskCEVZcN7OcN4JXix7etuPgfNKVpyJavFBzedkS72bWog==
X-Google-Smtp-Source: AGHT+IEcIxNtTE95uIryf8Gym7Y7/YyBX/ZIPEjsuX/aV24yOVx1CHemVjFnhpAjtmhcscO6wWghMWqGt0NHWRxNo4o=
X-Received: by 2002:a05:6e02:1c26:b0:430:9fde:33d5 with SMTP id
 e9e14a558f8ab-4309fde35famr126566775ab.11.1760571580464; Wed, 15 Oct 2025
 16:39:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com> <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
In-Reply-To: <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Wed, 15 Oct 2025 16:39:04 -0700
X-Gm-Features: AS18NWC8PAl5JzrjFfy3LdnbAMpDuCQdDlF0Mf4nMlDHPoRQzsSdRAuL39arfdo
Message-ID: <CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Naoki,


On Wed, Sep 3, 2025 at 1:28=E2=80=AFAM FUKAUMI Naoki <naoki@radxa.com> wrot=
e:
>
> Hi Joseph,
>
> I'm thinking of continuing your work, so if you've already done
> something, please let me know.
>

I've not followed up on this series yet, but I'm planning on picking
it back up this week. I'm happy to collaborate with you, do let me
know if you've made any progress or improvements, and thank you for
your review earlier.

Best,
Joseph

> Best regards,
>
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
>
> On 6/18/25 07:11, Joseph Kogut wrote:
> > This patch series adds initial device tree support for the Radxa CM5 So=
M
> > and accompanying IO board.
> >
> > V4 -> V5:
> >    Patch (2/3), per Jimmy:
> >    - Alias eMMC to mmc0
> >    - Remove unused sdio alias
> >    - Move gmac, hdmi0 nodes to carrier board dts
> >
> >    Patch (3/3), per Jimmy:
> >    - Enable hdmi0_sound and i2s5_8ch
> >    - Remove redundant enablement of sdhci
> >    - Enable usb_host2_xhci
> >
> >    - Tested HDMI audio
> >
> > V3 -> V4:
> >    - Fixed XHCI initialization bug by changing try-power-role from sour=
ce
> >      to sink
> >
> > V2 -> V3:
> >    - Addressed YAML syntax error in dt binding (per Rob)
> >    - Fixed whitespace issue in dts reported by checkpatch.pl
> >    - Split base SoM and carrier board into separate patches
> >    - Added further details about the SoM and carrier to the commit
> >      messages
> >
> > V1 -> V2:
> >    - Added copyright header and data sheet links
> >    - Removed non-existent property
> >    - Sorted alphabetically
> >    - Removed errant whitespace
> >    - Moved status to the end of each node
> >    - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
> >    - Removed delays from gmac with internal delay
> >
> > - Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts-ups=
tream-v4-0-8445db5ca6b0@gmail.com
> >
> > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > ---
> > Joseph Kogut (3):
> >        dt-bindings: arm: rockchip: Add Radxa CM5 IO board
> >        arm64: dts: rockchip: Add rk3588 based Radxa CM5
> >        arm64: dts: rockchip: Add support for CM5 IO carrier
> >
> >   .../devicetree/bindings/arm/rockchip.yaml          |   7 +
> >   arch/arm64/boot/dts/rockchip/Makefile              |   1 +
> >   .../boot/dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++=
+++++++++
> >   .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 ++++++
> >   4 files changed, 629 insertions(+)
> > ---
> > base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
> > change-id: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e
> >
> > Best regards,
>

