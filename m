Return-Path: <devicetree+bounces-267076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMaSDrfPmGmcMwMAu9opvQ
	(envelope-from <devicetree+bounces-267076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9046A16AF2F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B6453027B6F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E992D781E;
	Fri, 20 Feb 2026 21:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mWOYGu+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8BC1BCA1C
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 21:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771622323; cv=pass; b=jxzrGTP0cu0omdoKRNBwRv6r8fsUB0XZwTxOx/jLFS15z4BuygGTe/hTD7uS3mNgC5dNTj/xjkxPVN7YGf+H46xFTSRySTvSGzOVL/nY0gfunXPaNiqqmlZ2yFCqdTgMYeM0p9Mnvl1gFFShjRDQpGGCIFeVoq0O/lzFAQUahJI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771622323; c=relaxed/simple;
	bh=00UMNsZMIuwa4W4w9yZAhooOBNIlUqJFmFbp1iknh74=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e4pC1FD4KIvd7s7WJOxt2dZm5cQOa0BQZWplpz2ViPsgSjSXgEbTb4TR//AgNdpwi58Q6chEdKp+LMJgbiuA/+W50w/pFR4+se9lY7kM/wq8A7QypBrksaQ8hmYV+0QJGz/VNX9475bbawgXzkkJ7y8VEeeny1PkivO056Yh8gc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mWOYGu+V; arc=pass smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-65a11e565a9so2843641a12.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:18:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771622320; cv=none;
        d=google.com; s=arc-20240605;
        b=GisKNy3GF+pbOPZkBFcrIMGWSxAaSvahauay2TQs/tkBlqK+Y3tVZBtGBYXulsyeTr
         Lii/sMm0W4wzFqP3C8EKYTxZ1WVyH1N54qcY0v/5F85FBQLVTNbj43/E5qDyJJ6AM6kG
         a/AiB0MqRGEY1hZ4/btmTPVJcn33kipIXUwxkFHBPUBakGNUhJpm4cBbzD/2VrzeAzBw
         +qiX+FJHqhA5DpyYY2M20Ig7CEc53g/ejnZJjP36ZBkmr9Wg9dlQx1zkSBWa0IB4rIz4
         k+A9Pw03wwosuQqXHMJj3WTYk6waLnBUUWAQuzFO0+dM8F/2E9+OVK3gkxJ72IfX5UG9
         tFOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=00UMNsZMIuwa4W4w9yZAhooOBNIlUqJFmFbp1iknh74=;
        fh=29gGerRVVshINph373u6cRywoHd2ZgnjHXPitlnBseY=;
        b=UVFj/PBbroJhjNU6eyxBwDJvgClOms7E8Q96P3/H6bXJyQvokjT+dw5cuurU3f+KwO
         GMsJYg3HX3x4xedKV7VtYs8QQ6rD+TIObRF/4Uhk4rEUSazkh7hKmDuLqRPsexDnDzRR
         wvOxcwp+MdtXbtzLGa5olFkBKvGLjkCObFqiuu5aTZhey8IenjO+GeNb9En3R1I5ePXC
         3X3NFDD9enJTRg9a3+TXsPK6tloKmKz6Tk3QeV2zFeQpV1LdN4YxW6OcJBDAaAYqEBn3
         fc7EopMte0k7f7c30WGOkYf8ZV8VrwzWi1MYTc1cY2hJq9v+UE6zBMjcrQjMOEihSwkA
         8Q0A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771622320; x=1772227120; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00UMNsZMIuwa4W4w9yZAhooOBNIlUqJFmFbp1iknh74=;
        b=mWOYGu+VKLGAp9vAu+pLglsY9WIXc9wxTfFNdbhPVvuZjUCPWHXpzbwc/eFzpruF2s
         JAt/90lbKxcQ6ot8zrnhY6e8qIR5+DNhPsrRNdHOmnmTJkBeSB1daNhpH53p+Jah7hJl
         7ZHl0q9OM9uuHcw5AC9itivAq1nbi6xqPZPFvhIBmT7uDOZaDKGmd+Ubyh2Elkv3yWNT
         vkFCklSjoqNPNbKvqaDbCqFZomiwE3WFrvxadBe1O+vAJgcoufkpx0Fhnz8DJJ9MU5u2
         BMLBbLm8jnFQSc8l+D1y9JcyCOm/QY2ROuUujZGpJULsY+zI2C1fG9fHxAOgV/Bfzn9s
         +QbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771622320; x=1772227120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=00UMNsZMIuwa4W4w9yZAhooOBNIlUqJFmFbp1iknh74=;
        b=Z6Kx1Teft3sOAx2ihoNA58Sdbev0L/7LL/aKL7JKP4atdWGjIM/5hnmeUN/IiA9LXo
         CtUqJ5fhgkJfrq3+7GSBZSRceN14/uPQpciB0vERIsHlfiy0cfQP1m+XGijLv5xVgbyC
         4UHw7UNo8BILO1R5VFfTRsz56fjbyzo82VYo8Fp38ZspuH99A+xwpTwI0a9m8OhcPXeK
         A3jR+iC1m0bToNDx2KbtGr8W5zw7LXrgZoT070qAHcYmMdUTM9ObZwQ6uBzlZTmFMLxA
         jwT7jOSrrmSfCak58Ltem+RHMVGU+Aje07bQ0ehOoPjit+QsCpH5sllWJ7lqStybwqAZ
         dUvw==
X-Gm-Message-State: AOJu0Yzgnt2c7aIYjr50qUyADAboO9zBrydhQT0Tfa8lOVlWhb8f74hi
	AqgRYDIfbrFeV1s0LKfos5rvTFU4AkB6coy8kQFo7HrN8z0+NgzxTOhgoA/xmH56GpWScqBrvWC
	8Jir6yYB9j59+A3g6s0KKkbTmahDkT17bZawI
X-Gm-Gg: AZuq6aLnqsR3Ovvewmv5LkGHXI5hsaLm7Sf3BtrtZ7UO5C8dsN6VU5aVPwGklynP31L
	UQme07+gOYwJt5+uhr3Csmvu2u11O8GuxClsVNy1Ip9EtsKSNWvGFgrXyyrel+0WjVYFLMJUDCV
	bCJhJA1t/BEf3JSlXaZLdZzlXUXSM57QaAgLeuiMXEYXI1c2Se8OL2gTwZHHFn9gyzUT1XsPiBL
	TN6UHt973jscmfeo5DswI0T0x71GRcT7IZjG1d1yckaWL6P+wbGIywdtV0L1QdvxPp9zvUGVyIv
	bNJZ/4wTAOOuvl5UKqnr
X-Received: by 2002:a17:906:2485:b0:b8e:7208:ffe0 with SMTP id
 a640c23a62f3a-b9081bd50a9mr42926666b.58.1771622320189; Fri, 20 Feb 2026
 13:18:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220021353.40554-1-rosenp@gmail.com> <20260220021353.40554-4-rosenp@gmail.com>
 <CACna6ry+K6q_JY84j7OjRWALsUDU87mpAiikF7cpUGDUUYhZJQ@mail.gmail.com>
In-Reply-To: <CACna6ry+K6q_JY84j7OjRWALsUDU87mpAiikF7cpUGDUUYhZJQ@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 20 Feb 2026 13:18:28 -0800
X-Gm-Features: AaiRm52dBh1cJLACjwstU2ZyGWFeLePJIQVxzxC7WdYWCADMe8LsfJaH7Q_6fMY
Message-ID: <CAKxU2N_V=VWXtpj3qYcPQ-SOYDyA+wrg9Mb4AZvWMQUDnARVFA@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: bcm4709-asus-rt-ac87u: specify switch
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: devicetree@vger.kernel.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267076-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 9046A16AF2F
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 3:18=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:
>
> pt., 20 lut 2026 o 03:14 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a):
> > bcm-ns.dtsi specifies a default layout that is not correct for the
> > RT-AC87U. Also allows setting the WAN MAC address properly.
>
> How the basic ports info from bcm-ns.dtsi is not correct for RT-AC87U?
> I don't see you doing any overwriting or /delete-node/. It seems like
> a standard NS device with BCM53011 and 8 ports (0, 1, 2, 3, 4, 5, 7,
> 8), three of them connected to no-SoC Ethernet interfaces.
This comes from a local OpenWrt patch. I just added the nvmem
definition for WAN.

There's also the addition of labels.
>
> Except for this unclear commit description, your changes look good, thank=
s!
>
> --
> Rafa=C5=82

