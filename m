Return-Path: <devicetree+bounces-256958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA4ED3AFAB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4853130988FB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09EF838B9AC;
	Mon, 19 Jan 2026 15:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="sDA2oJMU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B9724469E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768837948; cv=none; b=ggbkn7bSScMz4MQ30lQpiXaetJyjsyxn5Dp+nQhD1/cbG4o2yJNuwrHm1LO0QhvwYJ+9y9Z56EmoR8NKZ5ed/5oJ7DNU4S0dFAgRk3FNgBQ4azMyLzCgtgWmhdAlyQfpa1LUzy0DqppiB4kJvcJm6D7H3BLn4eM7/BGexsj17l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768837948; c=relaxed/simple;
	bh=hmFWkaNjPJg0ioPLpbxNfZVs6zemNfl3UQ9lpEvUopw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=tu53WNVbCSkg+zBCJ/C6uuhvLFyfzdD01pg0L3IcKHqmn5eW0ola6Mhmhmsj4ayPjW0QvhUUt2LDCkdz45I03ReIhPC0GT2It/iB/PXUDP9T/SBfki9ntkhwaFsES22bhqlGVnIrYa93+5k/D/f0O5ACazer2aDJvr7jtP6BWs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=sDA2oJMU; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b876c0d5318so603631566b.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768837945; x=1769442745; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ydzLNmqrNw79cznaWxcj/vU4qCKsfInZqdkzuOLukEY=;
        b=sDA2oJMUN0WLSPzOzyP+whoU+Mfyqsz4btnURPSZZszzL79YJPr4lNqtAkhuOJXziZ
         iHbq40ya5d6jt2cTKgmU1xrRvwbJmIgvWL/01iT5A35P1AL6nJaA6xgxk73Q4v6nwP/w
         poGBTBfFFYf7x3DKlQUe0XFF8FQEADES5r3dypoX2FPoiGVD7f+x1m5cHbLUtOwLS1vX
         c0zBIELGJDlESedyPaOqi9mLP9psfWEt4QA+4SQbv4AxKyDwzBbs3vo1wkzayb4OsMKK
         fXm+0X5g2fMKROOZUKteRUeDgg5VNAz9iKes7Ak9pz8SNLU7f7k62HdethtIA0Oh76uF
         6xLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768837945; x=1769442745;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ydzLNmqrNw79cznaWxcj/vU4qCKsfInZqdkzuOLukEY=;
        b=vEnzBz0hOff1JRx3FUFnHSHARsteixGT7WHA532Aqk5QDad8oRb2gG6qbp/oEuw0Pl
         5MUmJwEi16yxWnZ72ZMpbGVNverUDYaYfXCv7II0Bkqgz6PFPT7VI/8Rpbmibk9KX3NN
         925C7x8aNmDxlP93mhUS+g4RWMs86B8D0cAsXtNXAbSqubjnCiZ0+IpQSTC3uzUNL5VH
         I2YvkrB+LH/mjeo2aWEBK4WxDklNiyteg6nva2gMX6wzjgtMXsljbZkSdDhXkxKEY2T3
         mRXvZRcUUZARp23/HtpO+qPF46W6Z4aJfFvNXGyqQr9fPO8cEUCK9opEGssgFwtNLVNz
         9s6w==
X-Forwarded-Encrypted: i=1; AJvYcCU8XfSNJLXu5y+FmP3AdCUaVGyMT6fVj+LFm7zzW0x//lWpOBbMZ5rlXBVShSDRP1DpThHb32AhaK4L@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7RZ+lFNUDU0z+SrT/NnpQzYBKbDUJ8Ct9/OhzxAlluDCjuQVK
	FMmk8dm5Qu4cJJFJcNwVvcf8vsUWu9eWeONaMCpi2hANjIwn/7nSBya0sJQPTnMQp1g=
X-Gm-Gg: AY/fxX4d68Scy5TtLUu9yO50WJah848UESF5snZgy5psfEvUgStC0qATUDVermMHouj
	AV5WP6U/39b91UieFGcqUQcxU5e/TiXB1wk1V5rjPUP3xKP0bd3DW/EDxoFZpdbNu7RSWeQoOfu
	9kLTU22EEaadlgYKZBF+4kZgSyUqIZE/U7Kmg+BlDj0ZjekPZPGKdz+AAuMMEWIXERa4wu9wuz8
	Cg6gDngLaJ2wgeuKpA6XcQTrq6Tk1t8h1eNZIBRclv3KyrT/2d3aqdzS/kOnXAyFX3W6CP9hhWY
	aOMVK4d+el1gsXjKaRdJ/hRdarfjejGngR0MelMdmrA9CidzK/IPo5V66ZeArsF1tOzv9VSqE9N
	whqhXlfjXxn1A2eFrwuyXOruLxDCNATWAYHUn36jbnJt3o1Zk9Dz0JTFAnwsD9S+hIxJJtfg4aq
	Ck2dKyJZB9x9vtDkWNxIZRNnZd8f5J6JHsOb6MHN49e5msW2owIJ2G7BlOayCcQEbXaPw=
X-Received: by 2002:a17:906:ef05:b0:b87:1064:4ea1 with SMTP id a640c23a62f3a-b879302d388mr921496066b.65.1768837944673;
        Mon, 19 Jan 2026 07:52:24 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fbbsm1159645266b.38.2026.01.19.07.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:52:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 19 Jan 2026 16:52:23 +0100
Message-Id: <DFSOPXFSOUY2.2Z6XCLCD796Q@fairphone.com>
Subject: Re: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
 <3a17f2e5-0724-4d70-bd22-1e612142b3e8@oss.qualcomm.com>
In-Reply-To: <3a17f2e5-0724-4d70-bd22-1e612142b3e8@oss.qualcomm.com>

On Mon Jan 19, 2026 at 3:41 PM CET, Konrad Dybcio wrote:
> On 1/16/26 3:22 PM, Luca Weiss wrote:
>> Add a node for the Hall Effect sensor, used to detect whether the Flip
>> Cover is closed or not.
>>=20
>> The sensor is powered through vreg_l10b, so let's put a
>> regulator-always-on on that to make sure the sensor gets power.
>
> Is there anything else on L10B? Can we turn it off if the hall sensor
> is e.g. user-disabled?

It's the voltage source for pull-up of sensor I2C bus (so
ADSP-managed?), DVDD for amplifiers and VDD for a most sensors like
the gyro.

So realistically, it'll probably be (nearly) always on anyways. And I
don't want to shave another yak by adding vdd support to gpio-keys...

Regards
Luca

>
> Konrad
>
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm=
64/boot/dts/qcom/milos-fairphone-fp6.dts
>> index 7629ceddde2a..98b3fc654206 100644
>> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>> @@ -32,6 +32,16 @@ gpio-keys {
>>  		pinctrl-0 =3D <&volume_up_default>;
>>  		pinctrl-names =3D "default";
>> =20
>> +		/* Powered by the always-on vreg_l10b */
>> +		event-hall-sensor {
>> +			label =3D "Hall Effect Sensor";
>> +			gpios =3D <&tlmm 70 GPIO_ACTIVE_LOW>;
>> +			linux,input-type =3D <EV_SW>;
>> +			linux,code =3D <SW_LID>;
>> +			linux,can-disable;
>> +			wakeup-source;
>> +		};
>> +
>>  		key-volume-up {
>>  			label =3D "Volume Up";
>>  			gpios =3D <&pm7550_gpios 6 GPIO_ACTIVE_LOW>;
>> @@ -316,6 +326,8 @@ vreg_l10b: ldo10 {
>>  			regulator-min-microvolt =3D <1800000>;
>>  			regulator-max-microvolt =3D <1800000>;
>>  			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
>> +			/* Hall sensor VDD */
>> +			regulator-always-on;
>>  		};
>> =20
>>  		vreg_l11b: ldo11 {
>>=20
>> ---
>> base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
>> change-id: 20260116-fp6-hall-sensor-1049f2f872ac
>>=20
>> Best regards,


