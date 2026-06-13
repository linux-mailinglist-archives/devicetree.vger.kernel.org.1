Return-Path: <devicetree+bounces-311219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hoLBOW33LGq5YAQAu9opvQ
	(envelope-from <devicetree+bounces-311219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:23:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B66567DD6D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:23:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=juhxLx5J;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311219-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311219-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 974EE3094C91
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 06:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B663793A2;
	Sat, 13 Jun 2026 06:23:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4AF35B650
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 06:23:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781331815; cv=none; b=FY0LMvE6OjczPZDptGWzLBgklJuLfgGgvbDfFaGDJnjMeY1tbK3Eww3gZ6MZnCkoKCfdY+RDolpRjESuY8VWDW0//ytxCN3OCvYX7QxvIIw6PZtI/yWH4z0V1Opbbhba4WoyWQM05j+i1kDjgbKWkOYVAxdVBZPJbYwIX8tMGb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781331815; c=relaxed/simple;
	bh=k5G02N1zKzfIjIVmFuEqHkT8drwuzrUmLQ3UCGPXm5Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=hlyhI2tDK4+ROFWrw71aBrGuDRSQNLcmoMyXmD01U798pQ6M2mOarJjSmQ3SRZape8VroKRflg+hVCKqvltN88eIqkcNGJwXLad/Al407ZhrnHw1CH3m2RIKSQtvSm8rzt3LsOOsx5YcKWvsxdVulBv8z4N5S1nGa+4r/BZHsFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=juhxLx5J; arc=none smtp.client-ip=209.85.221.170
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-59dc1714d44so572761e0c.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 23:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781331813; x=1781936613; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5G02N1zKzfIjIVmFuEqHkT8drwuzrUmLQ3UCGPXm5Q=;
        b=juhxLx5J8zYDQcGQreyFHgYc+i/xO8M3b2cPSJc7ti9UKUMcRkX9fGd3wBv0IpQcn3
         WBUbydMX7l+mfx3vu3ddEurmOBnnKlw5JBoytQ22R+TbeHyvGjqstggTDheRAvXIdRKn
         aeCdHXFoyQ1bicb8Kpu98Kr+ro/toay8eGIZoKu+kiSLJPqa2RIEAWUgnnO2Vj9x1Xpb
         cKUZ0LMPI4VAB+yR/wWJ72mFakNW9iQ/zzkjdUlSSrKjowX5pkbURX0Hbn8bCcHAc8zW
         n5MJYyUIfI6AHSHXK+ZWWRS4BE3xbUu5+YZbYWtVjX5ilSjTvmMtty83u8H1kAmlA7NX
         A8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781331813; x=1781936613;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k5G02N1zKzfIjIVmFuEqHkT8drwuzrUmLQ3UCGPXm5Q=;
        b=CLfF44DOHK1OyzIiY1Bfzu3Tyz1wKphp7oFPSwTUuCfCsxcr1alUT4yeuhkqd8d1G1
         S9nzI6BEMN1Mn5YEhnxIJsNYtq+KBP1Ww3WGZaCtG7MAMqH48up8aqF2ii87EmLZx14s
         fEwaYM+XDK+WFS0MPrsHqo6jaEKhssepom/TqQf7klEwS4O2FUJWe3unx2fvUoXhvCau
         h3IMFVp2L3S5Qlm87gFiDMMzbnhSBocNI2KENGUsJRh+PCouoVXYooShoO/c1obmRyGv
         iOgZurU9EXCfe21jaIofwWXJuu/5ctFhlYEeG/VoIy8uS/y5Yab1+58s4LtiWn19Yoyd
         BWAQ==
X-Forwarded-Encrypted: i=1; AFNElJ8NBTrR3x9tgcW0Or/0AhqhR9Ul2n5Jg3x7atR+afSqaHkDKrk+63iZxmT/kpGMlNx3hn+oCLfkNQN6@vger.kernel.org
X-Gm-Message-State: AOJu0YxHR8DeFay6HakZkbAC3jXqj8ML10Mrx4HY71dP9fA8I5eZ4F/D
	JamB3kMO462cKSiXZust/q7DvVSNmZVGGwzwO7x/GdaKS5rioI2DVIyb
X-Gm-Gg: Acq92OHGUF7HO6LI007w1d/mI4/llZ+8TnO2ZQZfCaB2tYP4CZiFgDYqdMDbhME5CBs
	4ski8zonaV7pIRtdxpX7leY9voyhzlGLgxiMhjEvFJh12lWD6HwKYKxH12dYyEVVXSml/ZHf5Ur
	QWRiKngTe+3kr3aX94gayR4qMZdxwXTWJLq1kEna6ClF4zxe33OAyZnWr/w3sK4cqluMZZKDCe5
	BYj6lgwgoE+czAkp8ohFc1N1uWV56O+fSS9z7sQ7eXp+z7yhL5Gc0IPBQmJAHW+olAaZTwhW8T8
	M6hSc0yAX+QK9LA5s9kRk3zWqmqBX4rMc2hlCeIZxYS+lmlYe6sDvT5gXc4s0b7nWgf2UXDPI+e
	3kLoKcYQZ3kVQUyWwuOBvMNk8d4FDqn7W/F5g5PMUnmH3YX5BOsfmBC1MhyI0BlQxt8Vem/czrK
	NN3fphjj5wB+h2t/5MR7u/Z7Kg
X-Received: by 2002:a05:6122:32c3:b0:5a4:b5ab:b5f8 with SMTP id 71dfb90a1353d-5bb6bfa4474mr3583733e0c.2.1781331813101;
        Fri, 12 Jun 2026 23:23:33 -0700 (PDT)
Received: from localhost ([2800:bf0:82:11a2:7ac4:1f2:947b:2b6])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bb691bc485sm5244018e0c.12.2026.06.12.23.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 23:23:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 13 Jun 2026 01:23:25 -0500
Message-Id: <DJ7PFABQGQ5X.Q9W1BXLAQXGP@gmail.com>
To: "Kurt Borja" <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Linus Walleij"
 <linusw@kernel.org>, "Bartosz Golaszewski" <brgl@kernel.org>
Cc: "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH 3/5] iio: adc: ti-ads1262: Add GPIO controller support
From: "Kurt Borja" <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260612-ads126x-v1-0-894c788d03ed@gmail.com>
 <20260612-ads126x-v1-3-894c788d03ed@gmail.com>
In-Reply-To: <20260612-ads126x-v1-3-894c788d03ed@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311219-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B66567DD6D

On Fri Jun 12, 2026 at 5:46 PM -05, Kurt Borja wrote:
> Add support for the GPIO controller capability found in both TI ADS1262
> and ADS1263 ADCs.
>
> Eight analog input pins can be programmed as GPIO. This configuration
> does not prevent the pins from being used as analog inputs at the same
> time, so no considerations were taken in that regard.
>
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>

After going through Sashiko's feedback I realized this patch wasn't
properly tested and the gpiochip callbacks were carelessly implemented.

I'll do better for the next version and I apologize in advance for the
time lost.

--=20
Thanks,
 ~ Kurt

