Return-Path: <devicetree+bounces-19645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 498D97FB9E4
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 13:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02CF12821E9
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 12:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB524F88D;
	Tue, 28 Nov 2023 12:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="g7wmxKs7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ADF4182
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 04:08:46 -0800 (PST)
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 244943F888
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 12:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701173322;
	bh=iOZrwSPmspp94JeIuHB4gK1Gx/cQjCpWhXKzSprsIjI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=g7wmxKs723iBnlhu9vo25IzqlqTAaeN/HR5qna+F4vekJqX5HphJWlXK8lsD4/zxQ
	 LWozX5FjG6WD9P/zcu+Z9yEreyaEIRAJJU52lFolBY63bBu7ZOz2kQQzYhlAzGza7S
	 3+32M4rgrlFJzXq24l7ZlPp/OvXZ/UuSf4sqcA/Q8Kkc/TPmmqUf3LsxftCEu9juyn
	 LIIy4D8k8XClnsd3OsLQK5t38ME/ium/EayPM0xdNySGQHAMps64lYdlh5ba2Pb7X6
	 06BlMXGSVdELJofGZOY1MHzGjx8UZVEsPWBO8YmvcZiPtHRx1sSkNRWrrsjc1HH1Gb
	 eHUyLpMvHE6BQ==
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-285a20a12cfso4085717a91.2
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 04:08:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701173320; x=1701778120;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iOZrwSPmspp94JeIuHB4gK1Gx/cQjCpWhXKzSprsIjI=;
        b=KtjPPD/Ui25LlUN++4OE3M1tCieRd0x7U0LkhwZcAb3fqW7kjU/hWvIDThmSupgRqj
         rOsEBceiGsGFq6R26qphPk4ADz0i+CoSpVqli8zOdDpSZFRtaikwT8OaHEUJ+B6oPYuo
         NttczVHtVbQyukNRiZueiGJ4vE3A34DG2GD7oVeHqXFr2W1o+aDaSPp6E8wrzBZ+X/U8
         f4sWdgTSdxXOAP9ZIYKKbzKouy+tVqvJEZCENYKjeyy2O2HLhBXsTGQmSdtKsW0uaRoo
         MLMQmLLx5yibZ2v7WO3CuMD772AAuynOG99BDo29a1d5DULRgzlAxiO6KlGLUzqvoYiG
         puTQ==
X-Gm-Message-State: AOJu0Yw2aaglC+W5Bt47LWmZ01DRFVUdQYrOPtRAn5WP4cIVea020anQ
	YPRTn7AU6A1RTiCHpqwNLi0tpUWAb4qvWg95wkufa2rjemeIx4fYHvezfXU0QEwp5T5Eg4cbENX
	xFOgqTnP3HkknTVIdc94J48FnSFnSlHlsoJyXpQfdP6B6gVRVYCTisOM=
X-Received: by 2002:a0c:c788:0:b0:67a:4bb0:693a with SMTP id k8-20020a0cc788000000b0067a4bb0693amr5088410qvj.55.1701173299944;
        Tue, 28 Nov 2023 04:08:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBEBEjzW+Uph8+AZgkvAUsq8GnJE2nUXrDjraYHJF2flj0Zg8LkQf+0YqL9hF83A1yoS4DqWVvh0w1JaGFdxE=
X-Received: by 2002:a0c:c788:0:b0:67a:4bb0:693a with SMTP id
 k8-20020a0cc788000000b0067a4bb0693amr5088373qvj.55.1701173299631; Tue, 28 Nov
 2023 04:08:19 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Nov 2023 13:08:18 +0100
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <2f06ce36-0dc1-495e-b6a6-318951a53e8d@collabora.com>
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
 <20231029042712.520010-13-cristian.ciocaltea@collabora.com>
 <CAJM55Z9e=vjGKNnmURN15mvXo2bVd3igBA-3puF9q7eh5hiP+A@mail.gmail.com> <2f06ce36-0dc1-495e-b6a6-318951a53e8d@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 28 Nov 2023 13:08:18 +0100
Message-ID: <CAJM55Z8vkMbqXY5sS2o4cLi8ow-JQTcXU9=uYMBSykwd4ppExw@mail.gmail.com>
Subject: Re: [PATCH v2 12/12] [UNTESTED] riscv: dts: starfive:
 beaglev-starlight: Enable gmac
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Samin Guo <samin.guo@starfivetech.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Richard Cochran <richardcochran@gmail.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> On 11/26/23 23:10, Emil Renner Berthing wrote:
> > Cristian Ciocaltea wrote:
> >> The BeagleV Starlight SBC uses a Microchip KSZ9031RNXCA PHY supporting
> >> RGMII-ID.
> >>
> >> TODO: Verify if manual adjustment of the RX internal delay is needed. If
> >> yes, add the mdio & phy sub-nodes.
> >
> > Sorry for being late here. I've tested that removing the mdio and phy nodes on
> > the the Starlight board works fine, but the rx-internal-delay-ps = <900>
> > property not needed on any of my VisionFive V1 boards either.
>
> No problem, thanks a lot for taking the time to help with the testing!
>
> > So I wonder why you need that on your board
>
> I noticed you have a patch 70ca054e82b5 ("net: phy: motorcomm: Disable
> rgmii rx delay") in your tree, hence I you please confirm the tests were
> done with that commit reverted?
>
> > Also in the driver patch you add support for phy-mode = "rgmii-txid", but here
> > you still set it to "rgmii-id", so which is it?
>
> Please try with "rgmii-id" first. I added "rgmii-txid" to have a
> fallback solution in case the former cannot be used.

Ah, I see. Sorry I should have read up on the whole thread. Yes, the Starlight
board with the Microchip phy works with "rgmii-id" as is. And you're right,
with "rgmii-id" my VF1 needs the rx-internal-delay-ps = <900> property too.

>
> > You've alse removed the phy reset gpio on the Starlight board:
> >
> >   snps,reset-gpios = <&gpio 63 GPIO_ACTIVE_LOW>
> >
> > Why?
>
> I missed this in v1 as the gmac handling was done exclusively in
> jh7100-common. Thanks for noticing!
>
> >>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts | 5 +++++
> >>  1 file changed, 5 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts b/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts
> >> index 7cda3a89020a..d3f4c99d98da 100644
> >> --- a/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts
> >> +++ b/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts
> >> @@ -11,3 +11,8 @@ / {
> >>  	model = "BeagleV Starlight Beta";
> >>  	compatible = "beagle,beaglev-starlight-jh7100-r0", "starfive,jh7100";
> >>  };
> >> +
> >> +&gmac {
> >> +	phy-mode = "rgmii-id";
> >> +	status = "okay";
> >> +};
> >
> > Lastly the phy-mode and status are the same for the VF1 and Starlight boards,
> > so why can't these be set in the jh7100-common.dtsi?
>
> I wasn't sure "rgmii-id" can be used for both boards and I didn't want
> to unconditionally enable gmac on Starlight before getting a
> confirmation that this actually works.
>
> If there is no way to make it working with "rgmii-id" (w/ or w/o
> adjusting rx-internal-delay-ps), than we should switch to "rgmii-txid".

Yeah, I don't exactly know the difference, but both boards seem to work fine
with "rgmii-id", so if that is somehow better and/or more correct let's just go
with that.

Thanks!
/Emil

>
> Thanks,
> Cristian

