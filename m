Return-Path: <devicetree+bounces-220350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 381C4B94B96
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 09:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DDCE1902590
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 07:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BDA3101DF;
	Tue, 23 Sep 2025 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="CgFTgHpq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1181FF7C5
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758611843; cv=none; b=YOkL28Z1xI0WQNEQx779rty2QQjRmKGQP8jzkMGkh1Yi3zeVVTg9YtRbGOArChXC4qmcVQ2X+V1SoLNjM3tJOCTd81E9+7z2xbrIm4dEyYrpMyr3lBPiG6Wu+DPsK5pUOnyeHTLcLM/vkpQ5Gx2EXPyVDPy9F6aruXFjvWBBbnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758611843; c=relaxed/simple;
	bh=Kgi6xBpKlXVh0Wl1HR8sB4WMwLoB2WkYMC6YlNhYudQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Hb0LhOHNHtPoewyfaM8uw6DIteAa94WpTuIfH1xHdfDyQFShWfxnXZGIMf/BpApNGY4g+pX/trWfxzdeiNhTrc0mRFSrJSg8KnhESrIbsMqmEJNCHHz9bVE2NXqSdAxJOo0VH6Psw3LU7ttoXG6XmHA2MiGUK2XBeR8dX7cPjR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=CgFTgHpq; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6228de280a4so7869156a12.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 00:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758611840; x=1759216640; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2xp/wVVYVglDb0K9BV6oQ/Qee7hbnU4VQ4y29oQDrYo=;
        b=CgFTgHpqdBYfCIALnw/UcKGzGIKnTLHsh41N1CjPc5Iz+vScwbj4YPVv0DbQO306ls
         lK+HYPLO+ZahqnvTW+qIwpUE4bJMnMiPloTMX0S8BlvMb1tGry6ztVPSIN+XDR4ylawE
         yJmwoiH71t98e70UkjWS/nfGKNlaWJpNUm5FAKXFJjzGhi8RtteaZ0moSseC978A8/up
         pIaBm0QZIFMIaL/LxG7n6JmMiOjkwao+4WMnyNssiwzVX91dwQGgFQnd0GZ66X1qwH7J
         MSGyRcNH1TPVp3P8ThAHsRyIZpXFgHVf4E/I8BljiOV0a3NvpWhkT5TPlMReRoRhXSUa
         2gwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758611840; x=1759216640;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2xp/wVVYVglDb0K9BV6oQ/Qee7hbnU4VQ4y29oQDrYo=;
        b=DfxZW/x2CD3SRL3V0x1JtBNmJ4dmU0aSfSYFPCIHPohAIwuS0V9Fx1s8Xnxd76Qun+
         Pi9KXFyBHUcQWCzQwg1pj1du/NWqjWzZRtazRpev6Gn+lFuoPv7qwR1EQChU4d3dwHt0
         SG8YSnUQBxvOktY45lw9cTgOEJQJOqiEQZ5vHVnioj3XuWnXs7QXppexkZxCM3owOXt6
         16aFw1KVaW/q5SNIOV/LY9AnN5C3y//enoma4/t85r/0jfljvocmGCRMIvMkvJ2VjaFX
         B5aJUi+Qwh90MDY8Cg7caJf+vJxPv6mmEyfHgIvBCMDerPkmIl6uJL6nikZ/B8fZm34O
         EJVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCQwY6orKPZ9MFiwmMOH/QdINyA6QWMyg6rAinGVz/EVd0TVNuOGin6ngms8MxObmu71t1H0WF39jZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1XtKZuwYbidL+t5bPWNo64U5j2gM4zckCFQ5C4CfkqAz5BIE+
	HzFRtfRqTGhavr/8oPLyCg4YXyThRj3I1Kyu2ETQYNTvKtUw3B0taj/XScSywQYf/vg=
X-Gm-Gg: ASbGncvmcqq7/HIHAQSqGfwtO7js74GD3iHcxOr+XNyr6O9TZq4U4wSDeOBVkwQbYe4
	2bhrRFOXKIU+gjH0f/s3p+TcNHyPB3noVDtVGVWT9EYNyDkT5rb03g2+c30sNvciaJp3CC0clL6
	QoDqZ2PAsGUVAovfFWll7F69GOFwjMtBUzTj+JVDkS9Sdwga67Dne+/31HDRpMckDiEtmUbpTVx
	vUppWefEna9KZkXHuanS6JMGMiUeZT2U+GsQmxKgn21sPysv7tE8I9/P5U/8H1eZkqQpCEUJowQ
	/Hn4X/zJ4odcqCKjzhQM1fbs6zM33W4GfKjsJAS375a6kASlznoKJjtfipLvJHQgodFxPAYEYcL
	wkTdvpUCeo9/NSr2REQVMWhxbobs1io7pkgidHCislaynam+ekkUrVgGSxvM1upR45Fh9
X-Google-Smtp-Source: AGHT+IFDB/7GOU93rg3HC6u2rymyBmPfi52FYHKm2lXJfB3vOvNUC7hTsmLAd1+CEV9CwyHGTA0KFw==
X-Received: by 2002:a17:907:3f20:b0:afe:764d:6b22 with SMTP id a640c23a62f3a-b30263b2e94mr148085666b.9.1758611838518;
        Tue, 23 Sep 2025 00:17:18 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2928cd318csm689045766b.98.2025.09.23.00.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 00:17:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 23 Sep 2025 09:17:17 +0200
Message-Id: <DCZZV93PMWRZ.1J9IZBZYP5RGM@fairphone.com>
Subject: Re: [PATCH 09/14] arm64: dts: qcom: sm6350: add refgen regulator
 and use it for DSI
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
 <20250921-refgen-v1-9-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-9-9d93e64133ea@oss.qualcomm.com>

Hi Dmitry,

On Sun Sep 21, 2025 at 9:09 AM CEST, Dmitry Baryshkov wrote:
> Add the refgen regulator block and use it for the DSI controller.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/q=
com/sm6350.dtsi
> index 8459b27cacc72a4827a2e289e669163ad6250059..dd009569a6683a25f13b068e3=
e0bd8746b2ac501 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -1768,6 +1768,12 @@ usb_1_hsphy: phy@88e3000 {
>  			resets =3D <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>  		};
> =20
> +		refgen: regulator@88e7000 {
> +			compatible =3D "qcom,sm6350-refgen-regulator",
> +				     "qcom,sm8250-refgen-regulator";
> +			reg =3D <0x0 0x088e7000 0x0 0x84>;

Are you sure the size is 0x84? Downstream and hwio_bitra_V1.cmm would
suggest size to be 0x60.

For sc7280, hwio_kodiak_E5.0.cmm does say 0x84 for refgen.

Apart from that, it's also what I have lying around somewhere, should've
upstreamed this already.

Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>

Regards
Luca

> +		};
> +
>  		usb_1_qmpphy: phy@88e8000 {
>  			compatible =3D "qcom,sm6350-qmp-usb3-dp-phy";
>  			reg =3D <0x0 0x088e8000 0x0 0x3000>;
> @@ -2360,6 +2366,8 @@ mdss_dsi0: dsi@ae94000 {
>  				phys =3D <&mdss_dsi0_phy>;
>  				phy-names =3D "dsi";
> =20
> +				refgen-supply =3D <&refgen>;
> +
>  				#address-cells =3D <1>;
>  				#size-cells =3D <0>;
> =20


