Return-Path: <devicetree+bounces-224836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B2303BC83F4
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AD86B4F872D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E842D23BF;
	Thu,  9 Oct 2025 09:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zBAOdkkT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804F627602C
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760001383; cv=none; b=qzDxB75C8/KBXkQkUbhm9SxZkO6hT9cNQjo1uDRgev6dXxuVUvB9RrClFTi8Axu6EVt2uYHZcyHZt2t1DLagYqdX/H1ylbc8t3o9Y5PBY5ZRLYKOvlsi4G0PyoS4OBx5pmNMZTt+YnbNqr/V8ujGL2L/FxzbcFYKcJdSjs/ke6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760001383; c=relaxed/simple;
	bh=B9IgCM2uyGtKV5fXjEWqJ5Dgw5HAjC5FZz0DgBdnzD4=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=Cv+QPx8bOJst2GlmC02A/W3M9BcZ2tk7xmCZ3YMJDkCk3gfdRaC810Fm+LIl8GlLKE+Rnz07AElwBwyHWl2NBo6WhR++i0zX8GlKOPBSAxQRmPBi8nm8p03VxaHTSsjSEUMDwGJX/CYyYyesCz0Q57/wE8y1AxZviITOYzMQQWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zBAOdkkT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3f5e0e2bf7so116931766b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760001380; x=1760606180; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WiLjyBB1pWTO9LpE9huMDU78bzfpc1Or2eT7POxqk3M=;
        b=zBAOdkkT4SVzBQABB6LHEpJWERFp8jCTGybtrCqg+EInm03QPiTy88MkcgJUvWwZWk
         aorjorsfxam2grf3OJPu6w8T22eGqdKHCTuhghBAQawpDuwQSZc2IYY1KBpE69BFtvmR
         JcpkL26Fl34DIN9+zOJsQwCBxY0vFUvM7Dr9fJOTdRWI5M1U6NVJNDIJVItqvkbxe2bZ
         gnwC6gmG0KAfHo9a0DDOE2UFq92vURkIK85owZTk5pat27Nu5N45oxRQ7Haeo6dCn9Fv
         xsY+UlvjEPRtGbZSSZQgpiZvXjAixswuCQG7dD844/A4iFI2Pm0yacfAinUDWEcmDI8H
         /mXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760001380; x=1760606180;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WiLjyBB1pWTO9LpE9huMDU78bzfpc1Or2eT7POxqk3M=;
        b=wwC2idVYY65XvPyRxybw+SgrK03TgbuZ1qgbaWLMhFJ42qhoNVCA+NwEg7srAYRaLd
         7bOmO08JYgrJvr1oeSXw9oPYGm70CNusfcIOJCNyvNfdt3R6oK+1qIAM1En4V2S8S1Iw
         1pyr2TKLZ+7P76q99xyYbiQ6Cd/prtOdUbry5ZnkpZveZ1qqjtUCjeS3OidJLRDXDI2S
         ZqPi2CWM0XiEBCtVa5wHP9GCGNxs0cboC6SV2P1eDZLgwTPKs2DWB6knmH7L5BHe6gJj
         hYorHMCqa6F6YkViABVlleG5HRVk8NZ8go9tHWs7CEfWN26zSiQJc7Qnj9OtNzCG0Lss
         XeHQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3qvdPMOKZLIZslT3z5Op5gwtKfCVUorTt8Cg2iwAB1huiO0sn+4Rqpi4PNHszsN9ZEOBapVGHPB2m@vger.kernel.org
X-Gm-Message-State: AOJu0YzV7MXn1NzrwPhJbz9r4IBWvmdgvv/68g9A0sRLPaWMizP16dQc
	T3a8GOHrSzjpualK47yvcltsEt0Vmvspv2E35IoVJt94Kgylv1Mf6AEgxF8HvUFz2tsufZqyZXC
	1qb4Lwe0=
X-Gm-Gg: ASbGnct9Qh+IoNxjpYvde8X3i/mOqjz3VMoWL7o97MN+Tyydz1YHcl5mDUwwSzGFj/x
	DzVH+YAhMpxSp53UDd0b6GK3ENH9ZG3bpsZaH5YYAPlLdCpEj3fReikfXhXyGYzWtZv8+VfhWGy
	MisS4HLpEs5gqf7ObMm4xS50qVVSZhEmEYTNSwH9uxqA2Iyt3nNfz75wUcZ4l4qpSsCNbeFIjI1
	9S7Oy58LJDdaISGUZM3nONC7++e1nc9ScwPtsuJ9UJSdVcfmPIAhDld9ke2+Qe2NtITOjRcFWyr
	o8yRlkhUywj2L93NKe8yCfu6hsWLVjNzPeim1vdlvc9lAEuxFxBe9mCm/SSkTRhYKZhfpfwmEZZ
	P2rt89a6GihYmwcAbHMhrr0zMrg7vgrYK+x74elFH8TyStI1s0tINJ5uVvO7buPmvp/dhxqesNa
	0hBvhm67ym2WF4BRsU
X-Google-Smtp-Source: AGHT+IGOrTpOmf2AwVno8gUUnCHJDq2hsd+5co+xgTKJeslNoJI9pCqeytvgzR8hxE1J39wpda8Vgg==
X-Received: by 2002:a17:907:7256:b0:b04:3629:b00e with SMTP id a640c23a62f3a-b50aa9a24e4mr629336966b.29.1760001379752;
        Thu, 09 Oct 2025 02:16:19 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b503c779df2sm522692566b.34.2025.10.09.02.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:16:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Oct 2025 11:16:18 +0200
Message-Id: <DDDOF3F8K5WQ.FTJ0F6E6DLPG@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Marijn Suijten" <marijn.suijten@somainline.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 VTOF_LDO_2P8 regulator
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-2-5a45923ef705@fairphone.com>
 <ac1c0d1a-36a9-4542-b879-06c017f7f2c4@oss.qualcomm.com>
In-Reply-To: <ac1c0d1a-36a9-4542-b879-06c017f7f2c4@oss.qualcomm.com>

Hi Konrad,

On Wed Oct 1, 2025 at 10:30 AM CEST, Konrad Dybcio wrote:
> On 9/30/25 3:57 PM, Luca Weiss wrote:
>> Describe yet another regulator-fixed on this board, powering the ToF
>> sensor.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/a=
rm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> index 36d5750584831d66b4c2faf6042e4cbb3274eca7..0a64e5721e092d1f3e4bb732=
9335704eee567761 100644
>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> @@ -195,6 +195,19 @@ vreg_usb_redrive_1v8: regulator-usb-redrive-1v8 {
>>  		pinctrl-names =3D "default";
>>  	};
>> =20
>> +	vreg_vtof_ldo_2p8: regulator-vtof-ldo-2p8 {
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "VTOF_LDO_2P8";
>> +		regulator-min-microvolt =3D <2800000>;
>> +		regulator-max-microvolt =3D <2800000>;
>> +		regulator-enable-ramp-delay =3D <233>;
>> +
>> +		gpio =3D <&tlmm 141 GPIO_ACTIVE_HIGH>;
>
> You may want to define the pincfg/mux config for this gpio too

While I wouldn't say it's not good to have it, there's plenty of GPIOs
that have no pinctrl for it. Downstream doesn't set anything for gpio141
either.

I honestly wouldn't even know what the 'default' for a GPIO is in the
first place, or could I query the runtime state from the kernel? Is
/sys/kernel/debug/pinctrl/f100000.pinctrl/pinconf-groups trustworthy to
solidify this in the dts?

141 (gpio141): input bias disabled, output drive strength (2 mA), output en=
abled, pin output (0 level)

Regards
Luca

>
> Konrad


