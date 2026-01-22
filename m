Return-Path: <devicetree+bounces-258235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGGFN+LXcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:55:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 995F262B2F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:55:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13F88501AC3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3537F328623;
	Thu, 22 Jan 2026 07:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="oRGTDTZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5363806AF
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769068133; cv=none; b=qWxESpptQjDYL5Df6c9gelXtxeBZtXYCmpK6ChKuv6BXd3Yd3/EDm1HH4o9o4mkiotjLQ52/UxBLA/zQCxHEdMJYD5oIx3D3ZLSsidE+lA8W7zxgOWUAeaZnNXiyerCjN2mT1wcUqPlnLpD+kZcOxgmhjRgFLgCrrMfP64mwwiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769068133; c=relaxed/simple;
	bh=R2a77mienol5oSjR9Ey7rqCNJgsbwPxCgca0RoU3etw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Z+xwodUbda1DDkMaZUNINyP6MfqYJWoMTASma6czhq8QL8Bgce6ix9TkJprNLNop9KwRydNfRBl7l5fLtoOMiedErVboMTpS6JWvLMe8ztK1LkKwNBKJd3YKrK83aDsOOXEn6q1pH8i79mtLCIzPra1kxvzAIdABtdgZ8zbwq9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=oRGTDTZ+; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b87f00ec06aso111262866b.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769068121; x=1769672921; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R2a77mienol5oSjR9Ey7rqCNJgsbwPxCgca0RoU3etw=;
        b=oRGTDTZ+hh7Jcn1+DIlE2CmZaNnFboHA7rHNJCxgwAJhPkE3dnoXze/dfdkcLQ3hg1
         gSeiDElTzqsJCu8HNfIg2Wqc9t1o/T0OgdAIQhYfS5IKBjkzeYvuUsPsmX0UosKQp12q
         jG+SgTrlvb3YbPnDwwjTCbX7vKWsm2oko7ldGkrEEJYBUQfWME9vKXQqc34YGaceTjj8
         pxS0bLHYvyKCvBxcsTGj83GyYDu3IG7Usb08/VWYd6zP5PHQ8eKd1PT9t+RIKkWGcAaf
         TFiGMP13bZpfAb8Y10hGPkdVTHT46KdLxKVqwbXMLHQL+kmQ/jUYq3fkak2cXfU79hiz
         ZuIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769068121; x=1769672921;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R2a77mienol5oSjR9Ey7rqCNJgsbwPxCgca0RoU3etw=;
        b=ii8nksDcZE9kpzvs6L9qQTMNP5PBiVZVyp2n3IbgRZld5bDCUUgZvlwQ8OItJAiiXo
         O2XTPFVHs1lfMs+ksq0bmcnqPk1becbevhcIkYEX9XL0v/c/Ec4WVRP3qSjX+4+1hPqv
         8+Lfvi817HHG3QvgZFw8Mna3+S17++Al2n2ge0GGqFP4511ETfNUtCtMiPuNtnDAmmk5
         NoB1LtjfSu13h5XOVLge6ZqQmmGz4Ai1dHe6Yq5fQCPxn1tSqO+3yhsJsnnTSrd2poDp
         69oaVZb3ivlxGCgc0wPC0V5A/bQHWtzwMzPpO2DbnIY0yqINF/o2QgpWb+5DskRcPEz2
         qX9w==
X-Forwarded-Encrypted: i=1; AJvYcCWf94JBq8V5jlPl1OHKA6upOjLdlMSr2Ibmt1f24Q1uRUgaNRLH/w85yUU9LRfaFukfRLcMuNZFwz82@vger.kernel.org
X-Gm-Message-State: AOJu0YwASZOQ06Hs9mZEt4+K0v4JFPKKOCLWqNxiRxmvI/MRkkafeeOo
	CWksib61EqtDTsQxt5jDnTVhBTmuvXYvBX47QcXiTM6/eZV3F6d2SEMbJ/+A0AzP2BS45TSG9iF
	I8VVb
X-Gm-Gg: AZuq6aIXCjK+bOiJhvcedk4Get0UMsr7IR601A3dnqbgQQ3rk8x84GL9ujCrVbRIgGQ
	LNylLkDzqK03SmNqSW3A/OCzNmjglBgGZwnpgBtlpn8KNVyd1uKcXwRwo47ldAL37GPunj8G1aj
	wrcsh8OvLhLjFQclwJfW6wT63P/Gw45CKG1CSlgaRWE6728+yjsjG16T31SmjL9DAzfk2f8bYOh
	SNzW0T1H/YSFxNV2soZxVGl/Oqamlul4XGwXOk6J85WqJQApeZRaFeeR7FzGD+F6UpXFdJKT0cY
	dMOg7MQgHEVij/DCU873rGrxJWHswgtIW54oAHlSrYrjY0MoyYj8TOldcEyttkmMvgqvSki19CA
	Cxu+rQ+JFIvcR2wMMO3DCcEevZuiTrlfuxKVPgaksoePiW0gz8M4uTTfFY4pxw0bSpNeckmwsYL
	Gs0ecjiPfu6g+fNiwL9DSuaqEA5f6I7mWrMdUyJtIqLDZhZGC9UbC3aSBS/J24EjRT1Og=
X-Received: by 2002:a17:906:c14c:b0:b87:6:371d with SMTP id a640c23a62f3a-b8800364d31mr589925666b.49.1769068121412;
        Wed, 21 Jan 2026 23:48:41 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm15830469a12.31.2026.01.21.23.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 23:48:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 22 Jan 2026 08:48:40 +0100
Message-Id: <DFUYB761EVX6.35AVTPBTUV0A6@fairphone.com>
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-input@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
 <3a17f2e5-0724-4d70-bd22-1e612142b3e8@oss.qualcomm.com>
 <DFSOPXFSOUY2.2Z6XCLCD796Q@fairphone.com>
 <wpjvuclvpjft7y2rlrmfgszkzmc5vvmohif3etqrtvymxjjyjk@h2dujh5egdvd>
 <DFU439A9HP2H.1Y9OS2OPAXGOI@fairphone.com>
 <t4yjnuty7tmvs4vqzm4vdid7oowicy7hcnmqmu6nqtit3yru55@zpo6kprnarth>
In-Reply-To: <t4yjnuty7tmvs4vqzm4vdid7oowicy7hcnmqmu6nqtit3yru55@zpo6kprnarth>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-258235-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[fairphone.com,quarantine];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,fairphone.com:dkim,fairphone.com:url,fairphone.com:mid]
X-Rspamd-Queue-Id: 995F262B2F
X-Rspamd-Action: no action

On Wed Jan 21, 2026 at 9:06 PM CET, Dmitry Torokhov wrote:
> On Wed, Jan 21, 2026 at 09:07:44AM +0100, Luca Weiss wrote:
>> On Wed Jan 21, 2026 at 12:05 AM CET, Dmitry Baryshkov wrote:
>> > On Mon, Jan 19, 2026 at 04:52:23PM +0100, Luca Weiss wrote:
>> >> On Mon Jan 19, 2026 at 3:41 PM CET, Konrad Dybcio wrote:
>> >> > On 1/16/26 3:22 PM, Luca Weiss wrote:
>> >> >> Add a node for the Hall Effect sensor, used to detect whether the =
Flip
>> >> >> Cover is closed or not.
>> >> >>=20
>> >> >> The sensor is powered through vreg_l10b, so let's put a
>> >> >> regulator-always-on on that to make sure the sensor gets power.
>> >> >
>> >> > Is there anything else on L10B? Can we turn it off if the hall sens=
or
>> >> > is e.g. user-disabled?
>> >>=20
>> >> It's the voltage source for pull-up of sensor I2C bus (so
>> >> ADSP-managed?), DVDD for amplifiers and VDD for a most sensors like
>> >> the gyro.
>> >>=20
>> >> So realistically, it'll probably be (nearly) always on anyways. And I
>> >> don't want to shave another yak by adding vdd support to gpio-keys...
>> >
>> > Why? If it is exactly what happens on the board: the device producing
>> > GPIO events _is_ powered via a vdd. Added Input maintainer / list to c=
c.
>>=20
>> Yes, the hall sensor which is connected to the GPIO on the SoC, has an
>> extra VDD input which needs to be on in order for the Hall-effect sensor
>> to be on.
>>=20
>> See page 133 "HALL" in the center of the page
>> https://www.fairphone.com/wp-content/uploads/2025/08/Fairphone-Gen.-6_-I=
nformation-on-how-to-repair-dispose-of-and-recycle-EN-NL-FR-DE.pdf
>>=20
>> The IC is OCH166AEV4AD where VDD is (as expected) "Power Supply Input":
>> https://www.orient-chip.com/Public/Uploads/uploadfile/files/20231014/1OC=
H166Adatasheet202203221.pdf
>
> If we add regulator support to gpio-keys do we expect it to be
> per-gpio/per-key? Or we'd recommend splitting into several instances of
> gpio-keys so that there is on set of supplies per gpio-keys device?

In my opinion it would fit in this case in the event-hall-sensor node,
that next to gpios =3D <&tlmm 70 GPIO_ACTIVE_LOW> we get a
vdd-supply =3D <&vreg_l10b>.

Regards
Luca

>
> Thanks.


