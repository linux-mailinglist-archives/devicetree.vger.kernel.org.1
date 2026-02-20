Return-Path: <devicetree+bounces-266904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCy9OYU6mGmFDQMAu9opvQ
	(envelope-from <devicetree+bounces-266904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:42:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F88B166EE4
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:42:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACA47305F3E6
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D020233E360;
	Fri, 20 Feb 2026 10:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Cx5MsgJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D63233D50F
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771584061; cv=none; b=aVddMwqh479uUQ7jBzPQF16cdxHSu3/LtZNUWuddy3WRGdwTO3/FFzGbHLiCWeLMoAG59pqlMxFpTwd+uCjzUdP7p8vFc3asUtFD7TmxVTsz9IISSUdsFRojPt4f+yEkoFGM3je5z4bYXlTO4ajc0R7F05HBZG3TqEUWO3Pc34E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771584061; c=relaxed/simple;
	bh=lCfjiFCpKJoa+6uB16bTXpWJQyvUj3mvFlbxKEOoSYE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Tp1ZyTXSw/i1YgeObuhzIiSWRkEVXBjKkD+NkF1ANMe83zS9BmSFuU/ecF5LLNNhAgOK3C90h96gZFMLP8hWH/Qz2jCeLpTODZ8YEpvMtvWBEWdg2kBuQ4Vhjf2Z/kRUQolVHXkYg1jUv2fASvF7SPQ2e8+ffmgoO15HV+dCS7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Cx5MsgJk; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-65be78011c8so2622580a12.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1771584058; x=1772188858; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4tgaqGFqrzVKKPOb+iFZ3JERZen8Ej1v/LIDxYhK+0=;
        b=Cx5MsgJkG9oj7APqKUjH43BrcK93sBkvrR9uvqcW3+WgQxYIby7Z70/GQmH/9sMPTB
         iTFvlnLZUsfREVfIT8h9JEn6ageY55GZFmOSxcGM5gQVDgvZ34b36TuowJfG9vX9O5Th
         EW9fx1ICNQfmxW94+axh4GugWhJTNY3YcAKmjfRfsokim005XjhelAP3uBdEAD0eGpRo
         AEAyVVAQW3/TrSGMrt0zQRSkVRrqLeHWs2+XtTHmgUoG3bKEEJi1X1En0Lo3mZenj6lZ
         XxUABx770Ns1ng8jGfWFnHL0O/Gyan1LIgouu1BMaBxikef9eopFUuQysP3OwuWzM7Bb
         yxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771584058; x=1772188858;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o4tgaqGFqrzVKKPOb+iFZ3JERZen8Ej1v/LIDxYhK+0=;
        b=NePJvfMSHTqd8dErBRWtzlzLvAhe8hnNxXsFptPiF+0p7NKpPZZ7CiigUg5G+sSNei
         NOCp/YbYqauBz5NQWMZuggZUVulHprMexcqeLkz8cnD3zGxKI5p/MZfn2LcsbN3yqrgd
         FDinVBCUj4ixbMATrDySNeF7rQ1JNsJ22/9rdLTOszKuhNhRW4S112qA1hrwOI5lShHv
         oF/YAG3G+KzVw7TS3gZ2G6MCEgHi8PxD9hYmjOIjusc5vyFB+azvH7t3TVvJyuy7RgK4
         +Fv6vbVw398cmwOh74LYsM0hz8p+DF1Ca3J3uBsXVPcboaeKl1ofzICzKoUohiakZA3w
         nHnA==
X-Forwarded-Encrypted: i=1; AJvYcCUV/88h6ndSnLKF2T4GFokbdotp+kPL4LB7hTOr9gvFgmBwGC1+N19Ls1R04oiU9YgQKO5KLXITzAqJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzHrbOxE6XCjR7I6HAslEd8nZZBtTfcVOGzHCT6eRE2JPDvzjHD
	R1GPCIIb8MNVBGQaoYZWJ+5VMJUh6tDJ//vD5I+gXjxBeXkOdHicyKZenxI3PoBDE00=
X-Gm-Gg: AZuq6aKXDCG3IAi9URk47dVtli7NW8DC9LvyG5wuNB/W/iARmz07QKYIehqTPdXrVzF
	ZvO0PnB9ysJ9k5m9I64GRqSoinCA+MR2zobYsiAy6d+XW/w3/CmQ7iNBVX14Lxv0WBPFaG0Oz3r
	hU2Vsz2GcnzeC7aGG/SHvpDWgWN9y/+JQpThJ00vkHbEYkiM4muRoS3C9VvYUs3KymljMb9APqa
	cr8xS2vDWADzEbV3eYqijshn42Lk4RD5DPUfOvtrKC7bdhfTwIHF0+3Ca5IIVZ2QD5kvJqH0fQn
	r+SvB88alBTSbMb+1lY23BZ0VtEx2tPmKnYf98P7dWh3XJRB/3nh2ZsNnPRzTmW4S7H19pREDz+
	tZ5/uh6FoYzBEOVkqcOtY4r5kBGtTW/qRM/iWZwNfDLH6Le4ambMNMAL+IkgF79Q6VvG39rLhtA
	yL935ydK8Zzv69ZuHpYTASUdLElf/VH3UR1FhoPdNOl6XNtVBuxbfahuI6DQ6f6E8L/uH1
X-Received: by 2002:a17:907:98d:b0:b90:3436:9f71 with SMTP id a640c23a62f3a-b90731fef13mr72589166b.47.1771584058260;
        Fri, 20 Feb 2026 02:40:58 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7385e60sm661232566b.19.2026.02.20.02.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 02:40:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Feb 2026 11:40:57 +0100
Message-Id: <DGJQ4WLIML3H.GAO7T4L3MCJM@fairphone.com>
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
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
 <20260220-bat-temp-adc-v2-5-fe34ed4ea851@fairphone.com>
 <85ce1f2c-f5cf-4e97-9611-4aed03f69cd7@oss.qualcomm.com>
In-Reply-To: <85ce1f2c-f5cf-4e97-9611-4aed03f69cd7@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266904-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F88B166EE4
X-Rspamd-Action: no action

On Fri Feb 20, 2026 at 11:00 AM CET, Konrad Dybcio wrote:
> On 2/20/26 10:19 AM, Luca Weiss wrote:
>> Add a generic-adc-thermal node to convert the voltage read by the
>> battery temperature ADC into degree Celsius using the provided lookup
>> table.
>>=20
>> This will later be used as input for the fuel gauge node (QGauge on the
>> PM7250B).
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 83 ++++++++++++++++=
+++++++
>>  1 file changed, 83 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/ar=
m64/boot/dts/qcom/sm7225-fairphone-fp4.dts
>> index b697051a0aaa..7857003099a6 100644
>> --- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
>> @@ -108,6 +108,89 @@ rear_cam_sensor: thermal-sensor-rear-cam {
>>  		io-channel-names =3D "sensor-channel";
>>  	};
>> =20
>> +	bat_therm_sensor: thermal-sensor-bat-therm {
>
> nit: this should be a little higher

meh, it's surprisingly easy to miss this sorting stuff. Will fix in v3.

>
>> +		compatible =3D "generic-adc-thermal";
>> +		#thermal-sensor-cells =3D <0>;
>> +		#io-channel-cells =3D <0>;
>> +		io-channels =3D <&pm7250b_adc ADC5_BAT_THERM_30K_PU>;
>> +		io-channel-names =3D "sensor-channel";
>> +		/*
>> +		 * Voltage to temperature table for 10k=CE=A9 (B=3D3435K) NTC with a
>> +		 * 1.875V reference and 30k=CE=A9 pull-up.
>> +		 */
>
> I think this looks good. Is this data going to be correct for all/most
> devices (i.e. is there a single battery sku)?

Yes, from my info there's just a single battery SKU, so that makes it
easy here.

For Fairphone 3 there's two battery SKUs:

* (Fuji) F3AC with NTC 100kOhm B=3D4100, ID resistor 10kOhm
* (Kayo) F3AC1 with NTC 100kOhm B=3D4050, ID resistor 49.9kOhm

In reality, one can probably ignore the difference between the LUT for
either B value since it only differs by a marginal amount, but
conceptually I'm not sure how this should really be resolved.

We could have both battery definitions in the dtb, and then the charging
driver could determine the battery that's actually present in the
system (based on the BATT_ID measurement), but given the design here
now, I'm not sure how this temperature lookup table would be propagated
to the rest of the system...

Regards
Luca

