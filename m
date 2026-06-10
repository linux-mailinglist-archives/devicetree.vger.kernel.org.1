Return-Path: <devicetree+bounces-310036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DL+sF03mKWp/fQMAu9opvQ
	(envelope-from <devicetree+bounces-310036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 00:33:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A28DD66D367
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 00:33:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OsGNIWZf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310036-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310036-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C6F430B297B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 22:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D691531F9A4;
	Wed, 10 Jun 2026 22:33:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE33218ADD
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 22:33:45 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781130826; cv=pass; b=CNbtjGhdHOig8EHaOgWdpWjKvjcS/F+P9C9MaBcZxCHCqBkE9YEh/lB1KS86oDO4AL7BPlHph1tD6lsKQCDf2iC+8q6kIV1B2VFAFYORBAbiaKAe2VUsI4+S9hk07YsPVIhorRnOSKwh3yRV4wTV574hodnhbPnnOAhbEAemm9Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781130826; c=relaxed/simple;
	bh=gRc5rg0uNhUBmKY5S3W7b9JJvEACGSzpTb7P6P2pWKg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h7jHjNxuopbEkyFeBT8hNook4sydma+tpjSnE98Osd/1hpESQ95wF1Qr7vNH9ochYwW7GDLQec3TfqmjNPOQ8m4RQvBolwwkYUKbEZPUO1DGABsk4AIdK0t4W/3ktJlMMWkY/BomlAsYm0EjNh/0CNDZ2GKiwzq/hMXXdqZskxI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OsGNIWZf; arc=pass smtp.client-ip=209.85.128.176
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-7de68222e96so68003337b3.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 15:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781130825; cv=none;
        d=google.com; s=arc-20240605;
        b=XYyKpcHdi6kdx1CDLHvxPcFuDWPiK6EU0VLy9woT1pBKOcJQ/hR3E8S3xUbMssK7QR
         iyOYvYSQC65coRTaEEvVTEie25HTjp2XWRJ33DF+UAyMBQjQs8Qh3kyL3Sok34/ktKSH
         2QyjZVBAuEV54ztdD0IALXjs6rZZQYrAMu+rlXZngIpJ4vlwR1WynYyYT+hA3vW5Y1uh
         x10v2Q3B4ubiOR7etjl3e6bCJ7a06UQq8pFl5Cz4Ot7A4gPH+k0Pu0bex18mE6QY1wkb
         v/5/hsa7eWsT0wKQKEyN0WWra3Ti8p6igph+7QOTDPg2YFxL6ZMnF5SwIkHV4GdUmLx9
         Hxjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gRc5rg0uNhUBmKY5S3W7b9JJvEACGSzpTb7P6P2pWKg=;
        fh=dVAtMk6+93Fr5yka1dwmdff7B9OmLy6uU4Nhxunmpz8=;
        b=UOLscHTtx9nIodgD/Egzvpc+UeqHGmBTdmnUGyY5lorjI4AsCLOTvR1uj7NO4Ojv1z
         FfLIbz7vV4c4ip1zOBaM8bvBwxRt2of5gPsTZYGm+bz/4MDomK5f/jDpOzmIvigNz8/7
         855H8JjirOpnhJGg8fQgjUxExkeuEQj42rqnKI+lCY4m6stO8uSVewMm3IiN/xBwb38J
         nCBpcrj1QzFShi8xziuh8dUuz6YDAZg0n0ckV0oRH/6KfjYPVXdzlhH/doUVR1HEfIIB
         QScQlsyg2S/YES0we5DLSPtFreV1BtJSwpEknkGm5xyFWDriJotsYpIU48ZUlnLqxc5u
         JMpw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781130825; x=1781735625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRc5rg0uNhUBmKY5S3W7b9JJvEACGSzpTb7P6P2pWKg=;
        b=OsGNIWZfPPw9c29TnTjKd4rDpZUrpHV3QFEkJhxCX76keU7UkrSCQJdJe6GS1U6S5X
         6dx6KIxm0W0BHE0tEhlGmemRWWMuio2oJnEBUHXyXj81lxTqTp5+KhYMTGAgpU9bbPvr
         IkyfRmqqM+Byaj0wcXWjseBByZU715H7Bj6SdBM4+k+eTHPVBZ9JLt2PS82aeP/Mbr6k
         AzHdAIuxFUksXhF6AjSADpfPM+c5P2c4layAZyFX9oqWFP4FWGluZ0grB5zyC45W8F+J
         KkJudumd6GdcSh+b6+WRZNQzJsNr7deW9YS+HkX7J520j0JOgGeR3WdhVEctqIv4htlM
         EEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781130825; x=1781735625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gRc5rg0uNhUBmKY5S3W7b9JJvEACGSzpTb7P6P2pWKg=;
        b=s5nugHgFCQxrF36yOB6xwX14q4dvJytRtQ7cs7i2rpqgQwmBPOz1xNnHCPz85S388W
         4YCrYqHee7nlaMgzP6FPR0+d/Sa+/7pu/CzGETI2At4LNVI93rOgGb5H2wUNbYHrgGNJ
         7lBeX8Q1stVcjEtTZ4XWAvE2TwESADrkUxi4z+gNc2VoRmVsoYedyDJVaxD7c5MkzPzU
         gPSF2VfXTxIefDFRikJJk9iNtZTJFPgnEhKbLdkqWZ8CsKhqJdwlXSmwy5mMisxVMjjX
         Gtix/4sxOaqpMNZ+h9GM0mktzJIYBK64zzlPtpbp6q1yNTrodUJtFPAROc2Y9SHGuI1f
         naaw==
X-Forwarded-Encrypted: i=1; AFNElJ+FCVdVJdkwJXT3cRZO1fXDEU6M+HKRAO+628Dtu9csYFHv+Up2WhDFxp6mMTYPtuCvDFEZ6BfIMSbR@vger.kernel.org
X-Gm-Message-State: AOJu0YxfN0sHEMZoVnHttiA6jsqT8JJ3Wlw/tkLZX8Cppuhr4ph829jU
	xPwM3Ycj+H7v8WD6S109Q4RDkVAlaUMIeKJ80JGKCyLuWY0NJldNqL8xN7W25DVGw+kHUJpfU20
	4C7YjbJmBTh0rijlCix2RscKLLB0g12Y=
X-Gm-Gg: Acq92OHyFXjIzFvaJuZa3cNaIT8Sio3N52ih/JRpErGZENok2LGg1uR6GruMyflm95B
	mTVtzSqoFF4f4cCZ5i8NkexYpn9mNuJY/HKdUX8qyjzc3Ec2AYsOqc8O6Clq1aLFDHhaTxSpY8G
	KaXJfsXL67lB0SjS0/u9g9QdCqOHXalCUQQrB07RuZ1ZeVygBx12EQiaYAhS5mrKpRgoXcBJL7T
	ilixd+iJ26bSlCPpJNuNaTWrKpknSThS3pZp2f2R8UydZ2g/b3QeqbcYUbmXEJiFDzISYQEbpSE
	zic3FliqZfXht3V4iWI31p5D7w==
X-Received: by 2002:a05:690c:c24d:b0:7bd:498d:7c96 with SMTP id
 00721157ae682-7f657866efbmr2517827b3.34.1781130824472; Wed, 10 Jun 2026
 15:33:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609160326.45123-1-m32285159@gmail.com> <20260609160326.45123-2-m32285159@gmail.com>
 <20260610-imperial-glittering-pudu-ddfdab@quoll>
In-Reply-To: <20260610-imperial-glittering-pudu-ddfdab@quoll>
From: Maxwell Doose <m32285159@gmail.com>
Date: Wed, 10 Jun 2026 17:33:33 -0500
X-Gm-Features: AVVi8CdlX_7XU5G3ZT3lf5TeUn5DNNt57yPU43XNb4deDpxPvIA7JLseq-81LG8
Message-ID: <CAKqfh0GTVZcRyGCaZDJZwE=W2=FKSMYGkgjmg_5eXs6ZG1z+_A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: plantower,pms7003: Add myself as maintainer
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Tomasz Duzsynski <tduszyns@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310036-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A28DD66D367

On Wed, Jun 10, 2026 at 4:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Jun 09, 2026 at 11:03:25AM -0500, Maxwell Doose wrote:
> > Tomasz's entry is no longer valid, as he is not active anymore. Add
> > myself as maintainer to replace his entry.
>
> Last replies are from Feb 2026, so not that far away. I fail to see the
> context behind that change.
>
> Anyway, it's like fourth patch from you doing the same. It's even more
> confusing seeing this done file by file.
>
> Maybe you just want to add yourself as co-maintainer?
>

In the context of this one, co-maintainer may make more sense, I'm not
as familiar with this driver as I am with, say, the sps30. However I
think we still don't want patches to land in Tomasz's (seemingly
abandoned) email. I would probably wait for Jonathan to chime
regarding that however.

