Return-Path: <devicetree+bounces-314551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VLDlB3+VOWpmvQcAu9opvQ
	(envelope-from <devicetree+bounces-314551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 22:05:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A05846B235C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 22:05:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pksHTbOH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314551-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314551-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AFE5300D72A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 20:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A93D348C46;
	Mon, 22 Jun 2026 20:05:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3CF271450
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 20:05:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782158715; cv=none; b=Cp8DeSkyxEVK1F7UuzDFjssBGmnB3slf/n+2jEV+TM8I2BUyfmOF6N74jvAohFeX4X5u25eSoyF+/QD5bD2EOLbuzCCGZwFPQEqJZr5KeYW5R17rGPTYAWQ0Exy8hh6+zlgKQiKaMjG4B0DNXlB7eRezZqxS9sVxMBF/H3widCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782158715; c=relaxed/simple;
	bh=HBj/8WtGz+QlEOO1apMDYZ3xBuWOIM9x3nx1bdJa+XI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=PNS4MUXS6HlP90D69JBUMB4qpD7hL9ZKmotfvjSfpJN1fhCp9kihe8p5gxQXIV5iFwI5XF6zMSxC/3RqSzWm6qUOhnqvMCWbJvQvg+aid6Hsj7oHWY9sw25zsfxPcW979GFj8l5foA4whCAO6ilCps7ncZOsXrkWtBRRcIHbnZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pksHTbOH; arc=none smtp.client-ip=209.85.221.176
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5bbc6c99c3aso3514542e0c.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 13:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782158713; x=1782763513; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qd4FliO9rza+hNBKAPwCzO83KLyPx6/XUrSnq3s4X68=;
        b=pksHTbOHnfuwAdoU/rlISsdF6fvsEfv1scyyrVtD7mPPMB4L0ybN/nhaYMvWM9i6qz
         or4YvK+kMhLXvWxg8TAoIm6sGz+K6bFjZ7JGOSVZ/MdwxXczUED1jEWyEM4qYC9Pza1X
         WHenAu9JPlu/z+r+Y0I7M1hDZJCKXq7AmHfuuqpWnl7fi2bjJA2SL8+Y3IZ6WrZjGJgh
         AUynVPP1r6ckpvkuK+KQnQ4boRV4wgKICKAirqO7AUh9u82JB9TgeviCpKDyv+L785C8
         3dwnwtxbRFZdSPcpUqAlHOECu1AiQs+26hjwGVvwFxdlX+nFaOmB0/QjBq1+I3O5CbSR
         wBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782158713; x=1782763513;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qd4FliO9rza+hNBKAPwCzO83KLyPx6/XUrSnq3s4X68=;
        b=S5qtJzQmEs+K7T9QGjaLHts904RTPnrHRPxjG9n7y7abeK0mMdRBQnUW/ep2jJz2Zj
         fjW8E5IutA3rNGRnoFjyuwmSQ35uwMOodSDYNpa8xOYUf4JDaNNXbzTPxjd2fGyrVdhY
         /fERPZ/8VmZ5uea7UxKfXE+hXqIcvNbexjWj6zsX/JmgoqvH8db8AEbJR9+p+MvUi0xa
         imvYx7N/qxwLASkBiFE+9vKQ7MHtkRHZFn+6i0lmR/6tNBcde4qKAS/EdSS2KkhbEOeR
         n3LKOv7e703OnLja+j6arSIYMkxFEhbP6W0Xc0Bdl1grUWGt2R5ROCn92NZcMBx7n/hA
         XC7A==
X-Forwarded-Encrypted: i=1; AFNElJ9xTMmTCHUSV/Smsi78DR/lj3Hmpy8k3FfDp+6aBY+QZCGi8gYWIxNENkGhVu1BO/TItID/iIzWgbXN@vger.kernel.org
X-Gm-Message-State: AOJu0YxD1rnEgMJqlzlJIbaPTRWrEdIn5LAy9nK+VWg2kH8Qf1IvvoL5
	oPEedfWxEFle9iSz5feTgzlQVfkjTOOkud022WADYZlkhg7CfN3+in5F
X-Gm-Gg: AfdE7cl6DYDnfb6T8yCdd4KscakfVHWcobQEpzGSheMU7WKeo5lB3Qpa2Rf3Dk93hvT
	ca4q5eBmJsLOwbLA7hTNJ7Kw8iV3CNGutavekG4/bKthnSdVN1RuvxRWarQ8Jo8z6U4W7/yRAqg
	jD9GFajKQ8sqjpg5VXrpF5vgZqNMjQSyOGrNyelp3u5w+sTsPBzg4u1cbg0Va1rIxky5mIuifEY
	ltFpl86yYdiB9XLFPLxPniPyijKyGDRvBLQuaPJbPmEZda2MvmKLGAwgTw3WgRCyWpWC8nfle5l
	L3Job/FHHGwPHqEW2/S2WQwHx3tYsB00MfosqaaEXcHEHlWcjBrISeOsfLmVMIbuntxU50Bb2a8
	7+C7+AIvOhILki6B8EAM9eSER5BqxjbG6Gmj0Lp1K85pS7UYGqx+g19O9b62jNkiUkgmyPYFp6E
	cByDJEyG8DEhTwq4g=
X-Received: by 2002:a05:6122:65a9:b0:5a9:2d5:9e4f with SMTP id 71dfb90a1353d-5bbebaeeefamr9290203e0c.4.1782158712960;
        Mon, 22 Jun 2026 13:05:12 -0700 (PDT)
Received: from localhost ([2800:bf0:177:563:8f3c:3421:b12:7a09])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bbfb7d309asm8081345e0c.1.2026.06.22.13.05.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 13:05:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 22 Jun 2026 15:05:10 -0500
Message-Id: <DJFUJD9U9TXU.2S0TKDM0AE2DM@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFC v2 0/3] dt-bindings: iio: adc: Add reference,
 excitation and burn-out properties
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260622-new-channel-props-v2-0-aafd5369f253@gmail.com>
 <42e544b8-f2da-450b-92bb-99c41f1c72fe@baylibre.com>
 <DJFUE81GZEEG.35TP4FFBVE63B@gmail.com>
 <f7aae511-0e23-41cf-a5b0-27782caac30b@baylibre.com>
In-Reply-To: <f7aae511-0e23-41cf-a5b0-27782caac30b@baylibre.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314551-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dlechner@baylibre.com,m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A05846B235C

On Mon Jun 22, 2026 at 3:01 PM -05, David Lechner wrote:
> On 6/22/26 2:58 PM, Kurt Borja wrote:
>> On Mon Jun 22, 2026 at 2:38 PM -05, David Lechner wrote:
>>> On 6/22/26 2:30 PM, Kurt Borja wrote:
>>>> Hi all,
>>>>
>>>> After submitting a patch series adding support for TI ADS126X ADCs [1]=
,
>>>> I was made aware by David [2] that at least two more chip families,
>>>> ads1220 [3] and ads1x2c14, share very similar features (though these
>>>> chips are not really compatible between them). After that, I found one
>>>> more chip with the same features which is already upstream, the
>>>> AD4170-4.
>>>>
>>>> As David explained in [2], these chips are intended to be used with
>>>> RTDs, thermocouples or other resistive sensors so they share the
>>>> following per-channel features:
>>>>
>>>>   - Configurable reference selection
>>>>   - Burn-out Current Sources (BOCS) for diagnostic purpuses
>>>>   - Excitation current sources (usually called IDACs TI) for sensor
>>>>     current biasing
>>>>
>>>> Given that these three features are present in all four devices and
>>>> three of these drivers are still under review, my proposal is to have
>>>> these features be described in adc.yaml and have this series merged
>>>> before the three others [1] [2] [3].
>>>>
>>>> This series is sent as RFC because I still don't have much experience
>>>> with dt-bindings and I don't know if this approach or the properties a=
re
>>>> general enough to be described like this.
>>>
>>> It will probably be easier if I just include these patches when I do
>>> v2 of my series (if you don't mind me tweaking them a bit).
>>=20
>> Sure, that's fine by me. I'll add a dependency to your series with b4.
>>=20
>> Want me to send one more version addressing your comments before you
>> take it in?
>>=20
>
> No need. I don't mind fixing it up.

Thanks :)

--=20
Thanks,
 ~ Kurt

