Return-Path: <devicetree+bounces-59680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 381158A69BE
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 13:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7D671F21507
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 11:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8901129A67;
	Tue, 16 Apr 2024 11:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="k/MOR36/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B94E1292DE
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 11:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713267528; cv=none; b=FBvGdqRiYmZhDAKo7WphQaNlaMs52Ow+hkpuvcdNot4bPeQLh4kHp5olI/yHDB5XRhiuUNeIlw7YGcIQWw804I+mkYNm+iPVEReXz+Nsx57hJJQ8S/BDzjxAe+MAoxaqZ/6pxkU3JrP4IkUWDgw7vjthPIygKbzmuHe9O/H83Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713267528; c=relaxed/simple;
	bh=78vEOqzL95dc+B7WbWraGxUA3wTUPg9rnOmG+t2Iy9Y=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=BICeqs/gUVt4cupj3xHeFINN1YcszQuQ9F/IeTmIC20SZwFLqBqw4KX1FXaKexo7v/7VoyG0RcvFUbn0H9BsZfDZHPHwETQkCWSLibRzTgRwTtj9uGw73h74F8kFC2RGJIr+Vnrb6AXDJtg8bYkymKDtsXJhtGnyG3T8V1+8FOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=k/MOR36/; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-570005cdf62so3388972a12.2
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1713267524; x=1713872324; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLga7OC4nYSq9BYdu8C0P/BImJRfA0KFWKdGFi9hq8g=;
        b=k/MOR36/WBCAUC5+dkiiqXGmS4obsvDIBZlYz6RvPI82op2gyM8KmbYo+oIEYlAlD/
         SkHj6oo84T1ovPXl6wnLHDqvKYvE2+xEuxdKlGniZC83ihYNW0cmkBUshBATeAFd0q6V
         4kWySr22KCE2+jOJfGE4kns/GDu2EYUc5Ib3rO7I4n0x82+0i/F+RGiakp6VSGJalpJg
         BxySIvIp3ZnsGcKR/266LaxJ5QfzxUde3PTpljchfq6bBtXC50szYOdIuNeu9ByV6pS0
         Ep2Hpjm3TCna32jrxg23ONEINGEKeCBRNM3L7l/KdQVuTi9QX94RaM3u2+VE8TKy+ndP
         LCgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713267524; x=1713872324;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yLga7OC4nYSq9BYdu8C0P/BImJRfA0KFWKdGFi9hq8g=;
        b=Uq77LOpQwp6kO4b0qu8nJ+4Awpsved0krfCncExicghi9H7UsMTFlfdxEBEgOduhD1
         IZgxtRgqz45dqGJuoSAms2TPDr8EDAZEu7CvQ9FvF0p8Zk1gli2sqBlVxymtrv+n/D4w
         WOkNVKPddUBgg376lCdEP6K8VxLe81MCBxnn1FnWg7mjwvVF3ZHyAbCvBZKoDdbcb7wQ
         EEtoisZW9VduVBtMkIVHo9sDnnUXI0vrB2ItLhT2DVGbRSjR6WYINNhawTyB9aaRb3ZW
         amK5UYhJS6I0qmSNaVemgqtSiJrcgU2IcQM33ywPZjK70lI54YUDTVJ1ugoPtvZJvifB
         up5Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/CR9arg3aFo2YgSh3n9yDgXZKPwl8BAX6Fl/yWQjCMpdtc+Vn1jzqmn+WhzO8eemgjr+LSxSx+42ZgjCiHDmMc88v2nG7PNcCHw==
X-Gm-Message-State: AOJu0YzpIo5XC1jANfesA9aaSAePcLQJwVL2EBTkb0O8VHBkAzkSF9sB
	VBat66x4+WCQIta66jw9z55PLnN9nSjSX1qOjSt+VZx1lRyoBBlgvwIMwlknRgI=
X-Google-Smtp-Source: AGHT+IGsl2HiaOewcfGkAfX8WYgD4puftl3jXzNcbfuXILpdAUeSXu7mMz9n+3mpi50aQf05U7taGQ==
X-Received: by 2002:a50:9357:0:b0:56e:232b:95cd with SMTP id n23-20020a509357000000b0056e232b95cdmr8225752eda.41.1713267524650;
        Tue, 16 Apr 2024 04:38:44 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id fe1-20020a056402390100b005701df2ea98sm3207437edb.32.2024.04.16.04.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 04:38:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 16 Apr 2024 13:38:43 +0200
Message-Id: <D0LINETM8WNA.27BORT75W1N0C@fairphone.com>
To: "Viken Dadhaniya" <quic_vdadhani@quicinc.com>,
 <cros-qcom-dts-watchers@chromium.org>, <andersson@kernel.org>,
 <konrad.dybcio@linaro.org>, <swboyd@chromium.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <rajpat@codeaurora.org>,
 <mka@chromium.org>, <rojay@codeaurora.org>
Cc: <quic_msavaliy@quicinc.com>, <quic_anupkulk@quicinc.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Remove CTS/RTS
 configuration
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.17.0
References: <20240416105650.2626-1-quic_vdadhani@quicinc.com>
In-Reply-To: <20240416105650.2626-1-quic_vdadhani@quicinc.com>

On Tue Apr 16, 2024 at 12:56 PM CEST, Viken Dadhaniya wrote:
> Remove CTS and RTS pinctrl configuration for UART5 node as
> it's designed for debug UART for all the board variants of the
> sc7280 chipset.
>
> Also change compatible string to debug UART.

This change has little to do with the SoC design though and is dependent
on the usage on a given board, right? Also the QCM6490 datasheet
mentions gpio21 & gpio22 can be used for UART_CTS and UART_RFR.

But at least consistency-wise this change makes sense, in practically
all other SoCs one UART is marked as geni-debug-uart.

But with this patch you should then also remove some overrides that are
placed in various boards already?

arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts:     compatible =3D "qco=
m,geni-debug-uart";
arch/arm64/boot/dts/qcom/qcm6490-idp.dts:       compatible =3D "qcom,geni-d=
ebug-uart";
arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts:   compatible =3D "qcom,geni-d=
ebug-uart";
arch/arm64/boot/dts/qcom/sc7280-idp.dtsi:       compatible =3D "qcom,geni-d=
ebug-uart";
arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi:     compatible =3D "qcom,geni-d=
ebug-uart";

Regards
Luca

>
> Fixes: 38cd93f413fd ("arm64: dts: qcom: sc7280: Update QUPv3 UART5 DT nod=
e")
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 14 ++------------
>  1 file changed, 2 insertions(+), 12 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 38c183b2bb26..2a6b4c4639d1 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1440,12 +1440,12 @@
>  			};
> =20
>  			uart5: serial@994000 {
> -				compatible =3D "qcom,geni-uart";
> +				compatible =3D "qcom,geni-debug-uart";
>  				reg =3D <0 0x00994000 0 0x4000>;
>  				clocks =3D <&gcc GCC_QUPV3_WRAP0_S5_CLK>;
>  				clock-names =3D "se";
>  				pinctrl-names =3D "default";
> -				pinctrl-0 =3D <&qup_uart5_cts>, <&qup_uart5_rts>, <&qup_uart5_tx>, <=
&qup_uart5_rx>;
> +				pinctrl-0 =3D <&qup_uart5_tx>, <&qup_uart5_rx>;
>  				interrupts =3D <GIC_SPI 606 IRQ_TYPE_LEVEL_HIGH>;
>  				power-domains =3D <&rpmhpd SC7280_CX>;
>  				operating-points-v2 =3D <&qup_opp_table>;
> @@ -5397,16 +5397,6 @@
>  				function =3D "qup04";
>  			};
> =20
> -			qup_uart5_cts: qup-uart5-cts-state {
> -				pins =3D "gpio20";
> -				function =3D "qup05";
> -			};
> -
> -			qup_uart5_rts: qup-uart5-rts-state {
> -				pins =3D "gpio21";
> -				function =3D "qup05";
> -			};
> -
>  			qup_uart5_tx: qup-uart5-tx-state {
>  				pins =3D "gpio22";
>  				function =3D "qup05";


