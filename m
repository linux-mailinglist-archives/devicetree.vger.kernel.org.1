Return-Path: <devicetree+bounces-235209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5BCC358B9
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 12:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 727941882D13
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 12:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1AAA31283A;
	Wed,  5 Nov 2025 11:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TosDpwPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168E92FDC40
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 11:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762343973; cv=none; b=mW+sV3yX3kNyBdUUbLyd/E1mhif5cNcwvMp1V23/KsSX0lE+BtjLnicEZOZXBsb7FBZS8ba+YHARFzTstm8JGD/VYjJfvkD3ivjCdAe75vT6ife80XgRaFmf3Gf0IkmdquRTj/EEwFJTtJ2lNkZ2r9kcvmPM63EeNSToMwKXO4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762343973; c=relaxed/simple;
	bh=6+3jnfjqn43oyAtQe2q78IhrxJm5fdTl7F8JDNsbcgg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PWtOLcQ9WEXTaohLZ/xj4uc2M9Totvb1fN2+ls3oNiZ0OCOoEQIIQMK7PKOrqVs6IEt7pou/75oPvtQc8v5Qq6wRMRdErf5C2y7GLfXjY1nqMpcjLMd+tLBEwIzp/YZQJZq71sV3/pMRhiYupytr52hctgZ+RXqOj17I5E/oGKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TosDpwPb; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-640c1fda178so4973998a12.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 03:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762343970; x=1762948770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGA4yt8JGp+St6is/Io1asPfAbg43aJnzQEEcQdlRFo=;
        b=TosDpwPbqkLe/8dQSzaeZK1VpZ1JqDNj/D/gsLCgU8zAW/z8q3ghRezuEz47BnrSdB
         a3VrAOvVrRXtPFF/BUW8sNARqzk4Tmfj83//vBAFWRB/tGh94Zu7EwzbcLE0Wqs+oGBH
         P+gUaSC8RjmnCYl5/QhXNsNWARIdOfHGM+W9De8T3xUFMzgTO87P5NXkXWaOEXeWsxF/
         ociG1Dg6QUtlBKcXqkn6pKHJypdpYTxuZlm+cKm6B2Y4qO23viexKpOhWtBkl11h9sMB
         /ddYlnjHZqEwUosQO8yikybqyzPxb0fiqB47SkDSPnDnX5jn48qzPc/xizzwCXfnGrcN
         71HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762343970; x=1762948770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGA4yt8JGp+St6is/Io1asPfAbg43aJnzQEEcQdlRFo=;
        b=RtTm16Lol+cYNxiflWt9dVW03J7yfQhGjA0Ie4JOS0g+p81XVNmkK54zmtaqohwatk
         zL+pmOsk2l0dyU0B7P4su3VUlSwqw6cyITOSFl8RbcKwlcc00b4UzhQxT3HfQC+7A53S
         NN+XaT+YddPT0axCO+UeC5/m7qY7w5wfrRAxXshtR43IsXQ5BIezwRByADBKJfy4Dn1C
         EimnGpFrGxjPRK2St5Tu2BfUKoEE9KUe5cbDC8rSzgZc0F1+cJbVgPqFQbmxKZioeg/P
         n5x9KoxQlKNKxWe8b9eeqqFyzcRWpck12fMfnJn2HeuALBt+/rk0FBblslA33VMIrB6M
         hEpA==
X-Forwarded-Encrypted: i=1; AJvYcCXUeaGAAnQpjQiJQTL37Wt2OmriS0nzERo69ep0q5kCP34DCozhl0wH8ix8PnVOkxtd6lU49qKaZlFs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1nOjJ5HPTJx5Wij18lJY8ECDgnnz84Ov0ZNZ0PJamX7mRh4bE
	Wmek835G9+281pVfDO5rPOt0flf70IKyP1nqQ/ByyiCIneRlZn3TAbE4vluhag4EET1TJjX/OVY
	zFPbdN5HxILotH1blojJJ4A9h7xOy7Vg=
X-Gm-Gg: ASbGncvFj+Ld0kQom/L0a7ZFTK4GuUkxUkeg8+sFzL9rOyFi0Q2+BvwwXu1XJcVZX1t
	8K9SglOmLrxaW98H2BPj1HskGPENVTb1Mt0NK77HDL9/3uHQlJpD0it/V8q3KHVxEBS98uudwSb
	KveRVgoqG0Pin6N76sT8OXkLTI6GmAXyr7AVmKAjDHJRTxhhfco8xLoRXcnBZ3FFM0R1o1LvOM9
	+Px+51LE+rTo0IPNHEeLeEFe07JUg1lmtrMFDrFe9slok/ObrGMZeFMwLA=
X-Google-Smtp-Source: AGHT+IHz+PW+hI6DHk/+yycP53/owJKFK51FLmbG3Xn9iePHYqTjIDevvgVm2fd1OHm0B5cu1KiyF7i4XCTMNvcSxeY=
X-Received: by 2002:a05:6402:50c8:b0:63c:1e15:b9fb with SMTP id
 4fb4d7f45d1cf-64105a4c967mr2540436a12.22.1762343970155; Wed, 05 Nov 2025
 03:59:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017073954.130710-1-cnsztl@gmail.com> <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
 <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com> <10751338.nUPlyArG6x@phil> <e52de2b5-bf10-ce0e-66b7-66b1c46525f3@manjaro.org>
In-Reply-To: <e52de2b5-bf10-ce0e-66b7-66b1c46525f3@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 5 Nov 2025 17:29:12 +0530
X-Gm-Features: AWmQ_bkTo815Ekf1XKwqKW52Tftmcvjv3vglHmEOmCXrknL0gcm_NsK2eBkal2U
Message-ID: <CANAwSgRXwozYr8sYtV8RRb1jJAb=9VNPfsLGMmW=f38XV-u=MQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Jonas Karlman <jonas@kwiboo.se>, 
	Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

On Sat, 1 Nov 2025 at 18:21, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Hello Heiko,
>
> On Saturday, November 01, 2025 12:54 CET, Heiko Stuebner <heiko@sntech.de=
> wrote:
> > Am Montag, 27. Oktober 2025, 18:34:25 Mitteleurop=C3=A4ische Normalzeit=
 schrieb Tianling Shen:
> > > On 2025/10/20 12:44, Tianling Shen wrote:
> > > > On 2025/10/20 9:53, Shawn Lin wrote:
> > > >> On 2025/10/17 Friday 15:39, Tianling Shen wrote:
> > > >>> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> > > >>>
> > > >>> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O error=
s and
> > > >>> corruption when using HS400 mode. Downgrade to HS200 mode to ensu=
re
> > > >>> stable operation.
> > > >>
> > > >> May I ask you to test another patch I just posted to see if it fix=
es
> > > >> your issue?
> > > >>
> > > >> https://patchwork.kernel.org/project/linux-mmc/
> > > >> patch/1760924981-52339-1- git-send-email-shawn.lin@rock-chips.com/
> > > >
> > > > Thank you for the patch! I will ask my friend to test it but he use=
s
> > > > this board as a home router, so it may take a few days or weeks to
> > > > report the result.
> > >
> > > Hi all, sorry for the late. My friend has tested this patch and it wo=
rks
> > > fine after 50 times dd operation. A big thanks to Shawn!
> >
> > So I guess, we don't need the patch reducing the speed anymore, right?
>
> Exactly, the approach of lowering the speed of eMMC to improve
> its reliability is no longer needed, thanks to Shawn correcting
> the DLL_STRBIN_TAPNUM_DEFAULT value in the above-linked patch.
>
> We just need to test does HS400 work on the ROCK 5 ITX reliably
> as well, so the previous lowering to HS200 in commit b36402e4a077
> ("arm64: dts: rockchip: slow down emmc freq for rock 5 itx", 2025-
> 02-28) could be reverted as no longer needed.
>
> > > And hi Jianfeng, I found you made a similiar patch[1] for the ROCK 5 =
ITX
> > > board to lower down the mmc speed, could you please check if this pat=
ch
> > > also fixes your issue?
> > >
> > > [1] https://lore.kernel.org/linux-rockchip/20250228143341.70244-1-liu=
jianfeng1994@gmail.com/
> > >
> > > >>> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> > > >>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > > >>> ---
> > > >>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
> > > >>>   1 file changed, 1 insertion(+), 2 deletions(-)
> > > >>>
> > > >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b=
/
> > > >>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > > >>> index fafeabe9adf9..5f63f38f7326 100644
> > > >>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > > >>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > > >>> @@ -717,8 +717,7 @@ &sdhci {
> > > >>>       no-sd;
> > > >>>       non-removable;
> > > >>>       max-frequency =3D <200000000>;
> > > >>> -    mmc-hs400-1_8v;
> > > >>> -    mmc-hs400-enhanced-strobe;
> > > >>> +    mmc-hs200-1_8v;
> > > >>>       status =3D "okay";
> > > >>>   };
>
You can also try this patch, which enables stober in the eMMC controller..

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c
b/drivers/mmc/host/sdhci-of-dwcmshc.c
index eebd45389956..62c9faf8ec85 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -77,6 +77,10 @@
 #define CV18XX_RETRY_TUNING_MAX                        50

 /* Rockchip specific Registers */
+#define DWCMSHC_EMMC_CTRL              0x52c
+#define  EMMC_CTRL_CARD_IS_EMMC        BIT(0)
+#define  EMMC_CTRL_ENH_STROBE_ENABLE   BIT(8)
+
 #define DWCMSHC_EMMC_DLL_CTRL          0x800
 #define DWCMSHC_EMMC_DLL_RXCLK         0x804
 #define DWCMSHC_EMMC_DLL_TXCLK         0x808
@@ -660,6 +664,12 @@ static void dwcmshc_rk3568_set_clock(struct
sdhci_host *host, unsigned int clock
                        DLL_CMDOUT_TAPNUM_90_DEGREES |
                        DLL_CMDOUT_TAPNUM_FROM_SW;
                sdhci_writel(host, extra, DECMSHC_EMMC_DLL_CMDOUT);
+
+               extra =3D sdhci_readl(host, DWCMSHC_EMMC_CTRL);
+               if (extra & EMMC_CTRL_CARD_IS_EMMC) {
+                       extra |=3D EMMC_CTRL_ENH_STROBE_ENABLE;
+                       sdhci_writel(host, extra, DWCMSHC_EMMC_CTRL);
+               }
        }

        extra =3D DWCMSHC_EMMC_DLL_DLYENA |

Thamks
-Anand

