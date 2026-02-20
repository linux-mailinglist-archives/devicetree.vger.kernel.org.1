Return-Path: <devicetree+bounces-266926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHvFKQBFmGm0EgMAu9opvQ
	(envelope-from <devicetree+bounces-266926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:26:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFB7167478
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ABB37300D1ED
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA95033066A;
	Fri, 20 Feb 2026 11:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WlDvS1KO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4760932FA1B
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771586813; cv=none; b=cO6GdCsFo2gxmRbNjEEbiaDEhfkoBVAWOUbkh7eNExUW6JHxVlMCiFebMIoMAuER7+4UGfwonc1XoS6pR4HJXHv+tbh6PaaM4MKj/UrQ9DR4/siwRfR3u1Xv/J8GNSPZ/teSE+dwGKxplZJJ9t+PjPWKjulpbMTo0Dkspj1COwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771586813; c=relaxed/simple;
	bh=m91/Pj6i562vC9RgSAKF0lAmXFt7YMj8wOrD5dUjLts=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=l/C4v34vmRr8eOIlU91ffdPCWYjLPyapAvuc6nRYr8qvHV3Hi9X/kGnKYaTC+0O5QBY4l7Ikw/fjMQi/Mdf85icpDm/oJVChpYu4Tz7zH0OLDWcIZ0Shp4N3LjFbvRx2vLicjUXzygGind5qkXkPWjCSYKNBMkfIO+GXVVS2dLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WlDvS1KO; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-65c01595276so2866188a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1771586809; x=1772191609; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=83zz9Fx5gsW9BIv6c8ksqWZjM7IcWR5idqwhbUOB91Y=;
        b=WlDvS1KOyibyFVCCqJYzkavPTQYwMCrJrR1gCfkhpkNF23AFSKSY+Up0Iv6MUlmgxE
         PXDuz1A/97WtcAr0YtYUGl7rJ68Bh/eE6CONVuBcbcodcwMl5QgtPKDX6VNHyDzCpc8u
         H0dkeiQYKV24KqYmXnT/GjGoGJKHYR/a+a6k9xkGUjFaZq+sB99hUzVrr5ot7LbV/s1L
         vVXJF3vftRivB5EREc9uShQmwh35W8/9GtfzeRuISyBK/3U3D/wZpWRDstRzvYY2PVxs
         hKVSH4Q5Tz605zqKfqa5PSxa4Oi/KgW4IFVmuEPejgHiNP1bbBvnI4Ozo7FsnIsjpQZq
         fO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771586809; x=1772191609;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=83zz9Fx5gsW9BIv6c8ksqWZjM7IcWR5idqwhbUOB91Y=;
        b=Frfj4gsMV2/XyLsE8rWyXlWO9S7WyBHJuIjHClmby5IonQ+y3Gw47sSUDVrMozQpES
         p61bXqp3RvKdvB2O9C035KUPeVlRddmYnAU1hFrntvPFhCyd4EzhCYiiWu62EZ4OZ1WM
         0QsI+MbJedYIoevfq1pB983VpUMNYpDg3CqPHvw/IH1Tr2U3kb7arm1Gv+dpD2WX2wow
         l+EdoHtn8o6HQU+BJ1nSOT7tbBr7x0JlFzfW3RSbzN8Q1x+gQAR/oanDevND5BlPbGon
         k/+YoXXRvKGIVa4p/JgPf6z8p5XfISUIu3S8Gtj01WEBD03X2rEER1k981Xbt+N68mEK
         iaog==
X-Forwarded-Encrypted: i=1; AJvYcCXZ+xU8v4X4NKbLv9k6zFzu0isaS+fpHX7IhwlJMoDAEFEGvMosamTleGl1BvADExoLdO5VKnPRiCkQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyoVhZgDBISYr7yJUFf/wfkaATUxUubb4FTlzZmz7X+97J8EvFS
	YFtapF4lHDECQHW9ecrLxSMxrKvD2JYDQo4sTwfrK/xU3vsbOpgMQer9GZoRPzXr8mQ=
X-Gm-Gg: AZuq6aIrsdSiD5uMjOueJZE3WvzrxVP23HW4tuJVQy4OX0dzF5CCFTUtLUnTKqWADKQ
	N1lAM/hMUFlRbh2ZjayWB3UI+ghKHDReyNN8C1+tDR8f06DQ13J4ni7oQm449iJoD1iZp8Vydla
	FW8ktgQRX/VFkOX4TTkHjytuPsIcnaAby1icS5qAJ1JSBSLIzR7VG9ETskvsBTdsEWF6iPmx0mW
	6g/xApePCNvDVOq0IPeqnyxD4sdE9JHd3dPOz0HH4Qt6mjD07HU/T1dKZLWGBE5Fg48wXyKwshC
	9Gk6TbvY53XdOAmISTRrj78g3jx09NTDeAPpZ3YQQJGP2710x+XiYZDMNJeS3DU9aw9tJbxOEp3
	N/7lv3VmoxHXYajqr40eTE0+pKVeEiC4sRm8NEV155yJ3+aGMfHGcnpF1pwOuCDA/XRIUL5FaJt
	SmFk6OTnt/vhqQJubgvQz1um4CJjk3QnqF6WGZIy2yeProTuxC3E48SqqSnRrUF1Ur3G8avwuLZ
	U9c9KU=
X-Received: by 2002:a05:6402:5186:b0:659:454b:7167 with SMTP id 4fb4d7f45d1cf-65bc7a751a0mr10415695a12.23.1771586809215;
        Fri, 20 Feb 2026 03:26:49 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad29d295sm4987701a12.8.2026.02.20.03.26.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 03:26:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Feb 2026 12:26:48 +0100
Message-Id: <DGJR40B5R6MB.1V4ZK5SW1PXAV@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sm7225-fairphone-fp4: Add
 battery temperature node
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Jonathan Cameron" <jic23@kernel.org>, "David
 Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>, "Rafael J.
 Wysocki" <rafael@kernel.org>, "Daniel Lezcano" <daniel.lezcano@linaro.org>,
 "Zhang Rui" <rui.zhang@intel.com>, "Lukasz Luba" <lukasz.luba@arm.com>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Laxman
 Dewangan" <ldewangan@nvidia.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Hans de Goede"
 <hansg@kernel.org>, "Jens Reidel" <adrian@mainlining.org>, "Casey Connolly"
 <casey.connolly@linaro.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
 <20260220-bat-temp-adc-v2-5-fe34ed4ea851@fairphone.com>
 <85ce1f2c-f5cf-4e97-9611-4aed03f69cd7@oss.qualcomm.com>
 <DGJQ4WLIML3H.GAO7T4L3MCJM@fairphone.com>
 <a422e087-a91c-4bb2-9d95-e1cefc9a91bf@oss.qualcomm.com>
In-Reply-To: <a422e087-a91c-4bb2-9d95-e1cefc9a91bf@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266926-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4EFB7167478
X-Rspamd-Action: no action

On Fri Feb 20, 2026 at 11:51 AM CET, Konrad Dybcio wrote:
> On 2/20/26 11:40 AM, Luca Weiss wrote:
>> On Fri Feb 20, 2026 at 11:00 AM CET, Konrad Dybcio wrote:
>>> On 2/20/26 10:19 AM, Luca Weiss wrote:
>>>> Add a generic-adc-thermal node to convert the voltage read by the
>>>> battery temperature ADC into degree Celsius using the provided lookup
>>>> table.
>>>>
>>>> This will later be used as input for the fuel gauge node (QGauge on th=
e
>>>> PM7250B).
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 83 ++++++++++++++=
+++++++++
>>>>  1 file changed, 83 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/=
arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
>>>> index b697051a0aaa..7857003099a6 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
>>>> @@ -108,6 +108,89 @@ rear_cam_sensor: thermal-sensor-rear-cam {
>>>>  		io-channel-names =3D "sensor-channel";
>>>>  	};
>>>> =20
>>>> +	bat_therm_sensor: thermal-sensor-bat-therm {
>>>
>>> nit: this should be a little higher
>>=20
>> meh, it's surprisingly easy to miss this sorting stuff. Will fix in v3.
>>=20
>>>
>>>> +		compatible =3D "generic-adc-thermal";
>>>> +		#thermal-sensor-cells =3D <0>;
>>>> +		#io-channel-cells =3D <0>;
>>>> +		io-channels =3D <&pm7250b_adc ADC5_BAT_THERM_30K_PU>;
>>>> +		io-channel-names =3D "sensor-channel";
>>>> +		/*
>>>> +		 * Voltage to temperature table for 10k=CE=A9 (B=3D3435K) NTC with =
a
>>>> +		 * 1.875V reference and 30k=CE=A9 pull-up.
>>>> +		 */
>>>
>>> I think this looks good. Is this data going to be correct for all/most
>>> devices (i.e. is there a single battery sku)?
>>=20
>> Yes, from my info there's just a single battery SKU, so that makes it
>> easy here.
>>=20
>> For Fairphone 3 there's two battery SKUs:
>>=20
>> * (Fuji) F3AC with NTC 100kOhm B=3D4100, ID resistor 10kOhm
>> * (Kayo) F3AC1 with NTC 100kOhm B=3D4050, ID resistor 49.9kOhm
>>=20
>> In reality, one can probably ignore the difference between the LUT for
>> either B value since it only differs by a marginal amount, but
>> conceptually I'm not sure how this should really be resolved.
>>=20
>> We could have both battery definitions in the dtb, and then the charging
>> driver could determine the battery that's actually present in the
>> system (based on the BATT_ID measurement), but given the design here
>> now, I'm not sure how this temperature lookup table would be propagated
>> to the rest of the system...
>
> The path of least resistance (pun intended) would probably be to make
> generic-adc-thermal consume an ID channel and accept a number of LUTs..

Not the worst idea ;)

>
> That sounds sensible since most battery ID mechanisms are probably also
> ADC-based and one would hope (tm) that the values output by these ADC cha=
nnels
> would then be distinct enough for the driver to have an easy time confide=
ntly
> selecting one of the options (or a fallback)

Charger / fuel guage and everything else battery-related would also need
to get the correct battery properties for the actual one present, not
just this generic-adc-thermal driver.

But I feel like soon DT maintainers will say that Linux shouldn't
dynamically detect hardware that's present and the DT should be the
absolute source of truth. That works fine in simple cases, but in case
of interchangeable batteries, display panels, camera sensors, this won't
work. *Something* needs to determine what's actually there.

And for most of the ways to detect which of those are present in the
device that is booting, you need half a kernel to power up the various
hardware and do some basic communication to figure out what's there. Of
course you could say that's U-Boot's job for example but not sure you
want to add a CCI (I2C), ADC driver and much more...

Regards
Luca

> That said, this is just my guesstimates and perhaps the IIO folks could c=
omment
> on that
>
> Konrad


