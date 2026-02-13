Return-Path: <devicetree+bounces-265376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id lTsVCb84j2nHNAEAu9opvQ
	(envelope-from <devicetree+bounces-265376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:44:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 729681372A9
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BD6C3032F4D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3F7361DAB;
	Fri, 13 Feb 2026 14:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="BQSSLWen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489983612EC
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770993648; cv=none; b=DPwbW0p6RV3pGMcPvLgn6LU9Te4AD7MMWc5/m+hV3oOuy/gJGMTA5Idvl8E367ES+X+2s9wPldYU7Klsvhl391CFWUt4b5ftXSS2yHWtr/NZ+2i+L8fBRk9AiDNiPJ1TCD/GcdaY0xkYNMbU2FWQPYY9/9xK7Ki6/UlNWpeBoaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770993648; c=relaxed/simple;
	bh=/GcPy/wHjt3CURV19eyqQGTVamLsBIbhBGEW0CJ6xeQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=lYoXAmcqBzY7hvIqeZDuvpJDavp4nO/L4rFU7A+RnCB9k/804HCZiuvhCdUkgu0wag+P/d5Z7OCWdgVv9FoeVku9DzWHk9aZ0rCzYWRdPondM563/HgWdCz1IiF9NBtvU87pbd1E0oHw9azzKfHt1NClHC3AXRtgxJA/dZDq5sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=BQSSLWen; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b8845cb580bso160487566b.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 06:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770993646; x=1771598446; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1LNfmW4Gw6DbKMsootSDXE2OhAklLNXTq/pabBH5ak=;
        b=BQSSLWen5kM5u9zlMAAEv4WHQfkYKkebZGlbj4OH09AmJy7RDOVACnPlemVBneT9Rj
         fYENv2TUJWysfCS9vagW+kofQ+so6cEylBxmnOAVQgbbncTQcKUvGwJXdr5xa+fFtpiX
         Q0yfB6QhEOc0fHnOcsH64xh5xRMT6dcDphdsPj1xVTuaqBIgmSjhG0w4Ko5lZWMpgX8H
         LTnkm+5h37j6VfIQRV6NrqitC1Ri4dIj5K+eX5OfRF4YatMT5i/aIJp0XAJMAOXMw75s
         2XYt5KMXKDE9JNj0H8ofOQsHP772ZbNz3SwP/Vvw38jgcO/CEUAnBUADsVAza3zFaLBA
         q5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770993646; x=1771598446;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1LNfmW4Gw6DbKMsootSDXE2OhAklLNXTq/pabBH5ak=;
        b=CTWdJUp3KFlYDkyh647I7Sf7nL2z6eQ6xpKFAUCVp4mfqUYhLIas4T/Rj//v2X2FHv
         z+VE67q9sQuC1+LcN//CZKeC/QuoMJs5Rfkcgur16c0rJCZ0GaNgsOqa950zWXw+CE3E
         UKvlbXeSICdosl2DsIxvyVSL4fE7XhGZ7zfwfTaqPzYddadfStpFVrMcfJCTP/oJdPXu
         53TzeqVA83PR1CJLHHMKga4Hwep19BEUA1gpDamOMM3KsZIrpElU3es4NTy+oSTaBmlD
         uRzb/zyzA/p7/17mqJQ+1uT/1t0YnVdEDEeDj28KI38bg1D8lhFrmcDl1agls6Z4cxHK
         b3HQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBsWcZ6ME+IHKdyaJV5lNwJ7zxl+YJK13yWaere8Uu580tV/Mc9YFtRnQ0OL0ziogVN4vj6MvNeJGv@vger.kernel.org
X-Gm-Message-State: AOJu0YyVZJzMWQS0RCt/x/Tyl/LG2J2c7c0yYxFx1lUlQg3SBRVhhK7m
	gKeXrCq87I36Ezn/WlV/+KGQ5H3I5drsc2Bor1GZj6CbxqUIKqqV5xYRAuDpjd6Y0rHP8E1ZwYf
	H0aFm
X-Gm-Gg: AZuq6aIuhAghemX3bQR92C4ghhfuS5QQ3q/dLrD6lMJucFTWeKP+z1A2u2WuRqIzcUy
	BecIYijWjpyBzijsawGlzcbtY9pU2bYO3lwXwpyyg0mZsbZ1Q6J6XEteRnU+FsKQo4fYKrYFEoa
	c1tb5wK73sNZ7PZ1WyJ5uMJx7Y/hIan90KKmjd33494BlTVNzFLKQB2gsn69AdJVyjaNRGHDBiT
	16onyPbCq0RpJoTiF3IqzW2ZW4iil632FP44CWWJHs/pq5FUFn/cIjUENNGz0D+ipWgVzdQKO2v
	gmC1sFMULXB9+SLqXOR7eKgiPYowd5/uaOt/tHe1ns4hxjBXVKHXHdNfoPjLqehqLz4za7tln8J
	3Z2zQZv5LPdNKHHs6ev2kxqyFf1KWS5YOURdvGnDpnvhums59ONZzra9mDV6iHJN5VIal292/ky
	0aVUSPIgq/A0plzt4fL/iGM7YcuzOHfGOA4ddQs2RmkprLK74ydYsJe/ledOdos1BPXbaa
X-Received: by 2002:a17:907:6d13:b0:b88:6327:d0eb with SMTP id a640c23a62f3a-b8fb4779425mr110391766b.65.1770993645651;
        Fri, 13 Feb 2026 06:40:45 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f708e25dasm254442666b.4.2026.02.13.06.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 06:40:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Feb 2026 15:40:44 +0100
Message-Id: <DGDWUOV1HSXP.3DU4CCDF81T59@fairphone.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: milos-fairphone-fp6: Add Hall
 Effect sensor
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
 <qb3zeuhh5fjteyjy46e3dbsx7ktqvnuh3snqmcvquajdal6igm@fqwv7436yw3m>
In-Reply-To: <qb3zeuhh5fjteyjy46e3dbsx7ktqvnuh3snqmcvquajdal6igm@fqwv7436yw3m>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265376-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.sr.ht,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 729681372A9
X-Rspamd-Action: no action

On Fri Feb 13, 2026 at 3:33 PM CET, Dmitry Baryshkov wrote:
> On Fri, Feb 13, 2026 at 03:21:06PM +0100, Luca Weiss wrote:
>> Add a node for the Hall Effect sensor, used to detect whether the Flip
>> Cover is closed or not.
>>=20
>> The sensor is powered through vreg_l10b, so let's put a
>> regulator-always-on on that to make sure the sensor gets power.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> As pointed out in v1, this would preferably go via some vdd-supply to
>> gpio-keys, but this support does not exist yet.
>
> This usually means that it can be implemented by the submitter, sorry...

Honestly right now my motivation to (re-)submit Milos patches is
dropping. Every patch series I send (cci, ufs, wifi, bluetooth, hall
effect) is opening a new hole for yak shaving and the ones that don't
are taking forever to land, leading to me not wanting to send more due
to merge conflicts between the patches.

For trivial things like this, shall I hide/ignore that there's a VDD for
the hall sensor? In practice the vdd will be on 99% of the time anyways
due to it being used for other purposes.

I do get the desire to have proper hardware description, but requiring
submitters to yak shave their way through various subsystems of the
kernel is a bit much.

I've just recently yak-shaved my way through a limitation of the gdsc
driver[0] leading to some issues I could've ignored (because CCI worked
when the display was on), but even that thread is currently stuck on
someone explaining some intricacies of how Qualcomm SoCs work
internally. Even though I have access to quite some Qualcomm docs about
this SoC, I'm fairly sure there's zero docs explaining any of that what
was asked there because it's $secret_sauce.

[0] https://lore.kernel.org/linux-arm-msm/20260116-milos-camcc-icc-v1-0-400=
b7fcd156a@fairphone.com/

Regards
Luca

>
>> ---
>> Changes in v2:
>> - Add pinctrl for gpio70
>> - Link to v1: https://lore.kernel.org/r/20260116-fp6-hall-sensor-v1-1-69=
275c6bd809@fairphone.com
>> ---
>>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 21 +++++++++++++++++=
+++-
>>  1 file changed, 20 insertions(+), 1 deletion(-)
>>=20


