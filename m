Return-Path: <devicetree+bounces-257784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MM3xBjKKcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:11:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AC253495
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:11:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 40D0B4085A0
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68410477997;
	Wed, 21 Jan 2026 08:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zRcEPuw7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4492F45BD4D
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768982877; cv=none; b=sD12DSZQod5CKuFnwB3l65ehU/IiEjdbYXFG2FgHgCYGheTWPg9L2gFCTtg0v1I4dS3Lt63/TYFgBH3RsWb98ug92OioOAK9/udnpZDSClNez133QwvMskmP8VZaZSkMtN9AEt6rRXpfKXy2Kuh0LcpPR1QX79H4XGrMLY7ZVJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768982877; c=relaxed/simple;
	bh=3QmWU1nQquntEBkGyUahuJHSNU1fH3YnYf4oeatEaHU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=FcY7S2/hE85UQIsgbb3PUYwwUw38S+Dk4xuzU6npHXnRVLjmAMqmd4GhF5+4EZuMXRsi8tIaZeq2AlGsTU5vAu+c7TX98HH7YTdYzzd0TeMJTV8yDOb+Mwnf5OdDk0ySc7py2+3PgJHGxdlp6n3qHmQGwdqr9V7hJ7xbH6GkB14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zRcEPuw7; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-65813e3e215so1021652a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 00:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768982866; x=1769587666; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DPEP1SMp69TkYfNcwIUjvNwM3iPh7BaIDcXmXmOoS+Y=;
        b=zRcEPuw7meIxL2jvkQJmTkd2p8t6IdmF6Ea0+305MgnOAO81WTGonj2RoEjpH0aXSb
         X6PbJbC5DKlS9R8RsRbpcYUGVe8T7pjsC1WBRpQXI9qe8jFAPfPy+AjW/J9w9exJ/UfR
         hHAIyVt0P4i/ZULvH/+H0o4rK4JmseqTmQqdyJad7YhgnTFtIMu1QCjeLp8S9KyI4l9W
         TR5qGc0k1DQwDt9GVnALsB/l4wc4LT4ZGny/IcvhF5pFifWXLJj91gTfnTZWoC/1yxy0
         ZBZwSeGr0RN7CprK/W0Vgp9vWm33NE1u8yDtSVs4EkFHxuRQNMebcgHyOuI89ocKP+DR
         +Sgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768982866; x=1769587666;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DPEP1SMp69TkYfNcwIUjvNwM3iPh7BaIDcXmXmOoS+Y=;
        b=W8SXqDQO5XB4xYNpR+JB88bsxEL8uwluejdnfaVEFqplSzn/MMJLlIcKQZ7KWTc3W3
         XXDyhQ04Z3Bi0np9IMkc8t4CR3f8EX3Nkmim9RPBoJux6HHCp5T7Zd2xaVtJNi8bTs/L
         LN5N4lSERsuwaZlfNUpuikhCUH8O+h1bf4UfVyQhgdS/uY97vkA9XznkaropmfbylAmL
         wBz0EL5MStaJYkdYQ1BiMtLD2xlhOpkvSbAx1iNOOsOAEY+9nSL1FRZ8nyasNuX87sjZ
         i6bt7ur7GRzKSlW4heGbPxTll+YqQbOjehqAuF2YNLb9UCiqH1kcrVskv8VFny1r2Mn5
         E6bQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSUI4Wf9tJDRzuY9Z29Sfn8lmfv8sZPIr4xHIfODY7VcxEqhQ3VB8dC+Z/gsqEYfWN9+tlFVzzYXJI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7xkP4R6VmzjFok1e6VstPdalm8uYwZey8XbbkGEeuvVoU8u4s
	YSnQ9Te0mMGtTxcdxMPUsWE7HKKVSi/C+JJ3JGZQpccE3wCFiowqndZ+rm6lWHVo+BE=
X-Gm-Gg: AZuq6aIm6n0IosAl/ytuAE5WE563WXbv89i1rOzLUT5qpMWU95TuqG36FvgHQl73LGa
	odZ/FlhCdf3j4aKW2LKh8tfzNA2CdOkBFKsB3btuI15J2Ll86JZL2P7P/RQyhm7hDLTGOHW0U1z
	rvy4kzi3z6idWqKLNKdtPqAreGgN/KTWeeBnw4WMvgHo5DgPF4VOCyfR8zrNRqvb/3wUXZlrZZt
	7EBuC1NfXzy4Ln3R3uKsnsU2wIjTEIUNj5vKFwuDSN00e06GDBCsO35oP7qSmEC76NC9nkfHzyk
	Go4UpTng7Fjd5UKwl7tVLtGSi+ZmDPgv8QRRXSXkCzpwRronekimGrbBRvVgV9XBaUmOu/+9ZJc
	msHHIFUuvt/VQD70/h6mwV3nhqYty4GZoMRQ5X13aTShtZJ/mum3YkeEb5KnejR/HekQYO4gMub
	9s3WlQ2vnS++JYyUocCgq2xqGkXJ8gswnZWkOkinMu8Q88TofcZmFFkPfU
X-Received: by 2002:a17:907:6d15:b0:b87:65c5:602f with SMTP id a640c23a62f3a-b8796afd5c2mr1453311666b.34.1768982866518;
        Wed, 21 Jan 2026 00:07:46 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879513e8d1sm1587021266b.2.2026.01.21.00.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 00:07:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 21 Jan 2026 09:07:44 +0100
Message-Id: <DFU439A9HP2H.1Y9OS2OPAXGOI@fairphone.com>
Cc: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-input@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
 <3a17f2e5-0724-4d70-bd22-1e612142b3e8@oss.qualcomm.com>
 <DFSOPXFSOUY2.2Z6XCLCD796Q@fairphone.com>
 <wpjvuclvpjft7y2rlrmfgszkzmc5vvmohif3etqrtvymxjjyjk@h2dujh5egdvd>
In-Reply-To: <wpjvuclvpjft7y2rlrmfgszkzmc5vvmohif3etqrtvymxjjyjk@h2dujh5egdvd>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257784-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[fairphone.com,quarantine];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,fairphone.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_WP_URI(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: F2AC253495
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Jan 21, 2026 at 12:05 AM CET, Dmitry Baryshkov wrote:
> On Mon, Jan 19, 2026 at 04:52:23PM +0100, Luca Weiss wrote:
>> On Mon Jan 19, 2026 at 3:41 PM CET, Konrad Dybcio wrote:
>> > On 1/16/26 3:22 PM, Luca Weiss wrote:
>> >> Add a node for the Hall Effect sensor, used to detect whether the Fli=
p
>> >> Cover is closed or not.
>> >>=20
>> >> The sensor is powered through vreg_l10b, so let's put a
>> >> regulator-always-on on that to make sure the sensor gets power.
>> >
>> > Is there anything else on L10B? Can we turn it off if the hall sensor
>> > is e.g. user-disabled?
>>=20
>> It's the voltage source for pull-up of sensor I2C bus (so
>> ADSP-managed?), DVDD for amplifiers and VDD for a most sensors like
>> the gyro.
>>=20
>> So realistically, it'll probably be (nearly) always on anyways. And I
>> don't want to shave another yak by adding vdd support to gpio-keys...
>
> Why? If it is exactly what happens on the board: the device producing
> GPIO events _is_ powered via a vdd. Added Input maintainer / list to cc.

Yes, the hall sensor which is connected to the GPIO on the SoC, has an
extra VDD input which needs to be on in order for the Hall-effect sensor
to be on.

See page 133 "HALL" in the center of the page
https://www.fairphone.com/wp-content/uploads/2025/08/Fairphone-Gen.-6_-Info=
rmation-on-how-to-repair-dispose-of-and-recycle-EN-NL-FR-DE.pdf

The IC is OCH166AEV4AD where VDD is (as expected) "Power Supply Input":
https://www.orient-chip.com/Public/Uploads/uploadfile/files/20231014/1OCH16=
6Adatasheet202203221.pdf

Regards
Luca

>
>>=20
>> Regards
>> Luca
>>=20
>> >
>> > Konrad
>> >
>> >>=20
>> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> >> ---
>> >>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 12 ++++++++++++
>> >>  1 file changed, 12 insertions(+)
>> >>=20
>> >> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/=
arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>> >> index 7629ceddde2a..98b3fc654206 100644
>> >> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>> >> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>> >> @@ -32,6 +32,16 @@ gpio-keys {
>> >>  		pinctrl-0 =3D <&volume_up_default>;
>> >>  		pinctrl-names =3D "default";
>> >> =20
>> >> +		/* Powered by the always-on vreg_l10b */
>> >> +		event-hall-sensor {
>> >> +			label =3D "Hall Effect Sensor";
>> >> +			gpios =3D <&tlmm 70 GPIO_ACTIVE_LOW>;
>> >> +			linux,input-type =3D <EV_SW>;
>> >> +			linux,code =3D <SW_LID>;
>> >> +			linux,can-disable;
>> >> +			wakeup-source;
>> >> +		};
>> >> +
>> >>  		key-volume-up {
>> >>  			label =3D "Volume Up";
>> >>  			gpios =3D <&pm7550_gpios 6 GPIO_ACTIVE_LOW>;
>> >> @@ -316,6 +326,8 @@ vreg_l10b: ldo10 {
>> >>  			regulator-min-microvolt =3D <1800000>;
>> >>  			regulator-max-microvolt =3D <1800000>;
>> >>  			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
>> >> +			/* Hall sensor VDD */
>> >> +			regulator-always-on;
>> >>  		};
>> >> =20
>> >>  		vreg_l11b: ldo11 {
>> >>=20
>> >> ---
>> >> base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
>> >> change-id: 20260116-fp6-hall-sensor-1049f2f872ac
>> >>=20
>> >> Best regards,
>>=20


