Return-Path: <devicetree+bounces-252003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E2DCF98A3
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 18:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 83F933008174
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 17:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB8D3431E4;
	Tue,  6 Jan 2026 17:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JYvtqPyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8013B33B6C6
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 17:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767719286; cv=none; b=Wduv1dA9MYdBI9+8U4xCUimvx8TyvF2dDDnWRv04EWkpXVyTsoutWkbhL+Yirha75YLUu2bJy9vBz0AeG4SwUirhNgaKvBU25INevswgY3oAFqEp1JiFbQeINGCZQyvW+XW1soMI2PQ6XzDcogRBjq/UYhqmySxQtDQwa9YRETg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767719286; c=relaxed/simple;
	bh=Da1+z6b8uGHwUBBD5JI63a5JdnmV5MD64hW+WWvh91Q=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LdDfsGEsdB70v4RKGoyaZsF8WkB8JX2xcLc7IE3Kk+cRW1wfg0wsFrtztGFRXPRizCV9Qkbjtn1yLF0prrkYcX1KvnyZ01Q54keuQ4etZ+jd34POr8oYTFFKssTQ8a5LqMO2jrrDQGSO6Z3fANb3XCkjZu69xNW/O0s3v+MGr1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JYvtqPyv; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34be2be4b7cso876575a91.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767719284; x=1768324084; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Da1+z6b8uGHwUBBD5JI63a5JdnmV5MD64hW+WWvh91Q=;
        b=JYvtqPyvSAFsBI+eLNYw67akcbkLUgTHpKj5D0BZ8GJIf+UEkAALvEhWUgP2EtiBmH
         Jkp6+b7koZYOXhURIx436inPpylOR9cdzl/05F3yx/rxch4QWmpP4/4ets/0su2EDv4u
         BiW3i633+GeFJEyzCvgl/PQxBS5tQqRZyQoYzcAWHabDQs+oYu6qBywWZkrJQnqTKZ2j
         2E+Y5llzojFAcRTsfCGoPqJg7QXDTG+nfTG2qqdN8T1gnPRK2L6VMZyO+CiJtjUuxtWq
         X6Fss19hoh6V7QcX+WzQfFGZpqnyqlxKk5PTq2v4fq++KnHAa4dquF3vwzhBm936tOwq
         JnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767719284; x=1768324084;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Da1+z6b8uGHwUBBD5JI63a5JdnmV5MD64hW+WWvh91Q=;
        b=C5ne81uB8JemkWp+gkCJsRWmeeYJp/oG74n0TIzgLSLyR/4v40wQjKNji1z/SiRb21
         EbSwe55NNNz1x+IRUmPPsc+Te+GTq4pcrPz0cEfX14qW28MdzssnOVBklnQAy41dcHq5
         NIlgzHfETx1iW6q1RTLFDjHIAbzHQNMmgynCiFVRgXvM/Y78bfPVG9qszmglgxbbdPAg
         LhvDjV+zoL+O0AExK5lq+QVYoDM+4dS4U4V2epzuqG9h3FwZ5ZbWo5LNYpqKVbBH52Ug
         65f8W3EiL+QLlkiOC9/VYquAKpE2KbxRkMawKKhut430nmilAIUB/aoKiwTDGLc4Hd43
         IXxA==
X-Forwarded-Encrypted: i=1; AJvYcCWfUGyLzl6Mk/V1qQPQ9zOXELMpsGaIoiQk0c/Y51GPXjaQpuMIv018SXrTyA3MtbtNQN25110nS6fb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh2b6RzbDHqfMPUB2KzRGTFeR1sPdReNrF18bsd0WrQA/f3Ktv
	swzlslUFuptQq53Nf2PhDR6GROPAF2l8RmiZv9+lnAa+RQl13nhKpqE611eELnFKukk=
X-Gm-Gg: AY/fxX7CttuDmFg3bQR/NT1Q0zj2f196zmfJvsWt9k0L7u8pHiBb406oiOQ2HxXZRm0
	sUXecrsxVwdsOVpnQR0u6Xg7R05wV1yaiPZes2qoQFRltb3FJ1vv7CATONmmDGOCLeXJMj/iwLX
	MV2P/Q5EupD7dcVdksJeC2dOuKjXMsLfSnYpYzBOZdBs+2ZakdNCg8AMnv5f7XrUxZqWCXYJeD9
	jeb0DQERkffpUz8ULAX/wSCouOUkDv2hK5uENGa3fyIR9CBpVP5Yy0HVYF8XxYf7sK2QtzBrK/9
	egL5jfBbRO6++Xm+NLk5sWI0yAAlSDaS3C6RPPJ7JH5KyF22dTScgIVoHJBDee4q5ZGgTxG77xY
	6Cp+GKebDSrECL7glzymW7ADDn8L2vtPfBECRB1I6WGdkLyWjiMlfC10P2IV2bUY8+Q3kopFUgJ
	FIi0gp0WdlsbcU4wnv
X-Google-Smtp-Source: AGHT+IF/YyPky1JmsX8trR5QA82S375cVcq4PGyCdARaly/JqyN2JQRlvVwmKUH1OrX5HSLct3ppWg==
X-Received: by 2002:a17:90b:1646:b0:343:7714:4cab with SMTP id 98e67ed59e1d1-34f5f2f8b2cmr2485923a91.22.1767719283665;
        Tue, 06 Jan 2026 09:08:03 -0800 (PST)
Received: from draszik.lan ([212.129.74.10])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fb7442asm2746281a91.15.2026.01.06.09.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 09:08:03 -0800 (PST)
Message-ID: <cd07660f196ce5686b32a67fa5a4edf5dd70dbc2.camel@linaro.org>
Subject: Re: [PATCH v6 0/2] MAX77759 Fuel Gauge driver support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Thomas Antoine <t.antoine@uclouvain.be>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Peter Griffin	 <peter.griffin@linaro.org>, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 06 Jan 2026 17:08:32 +0000
In-Reply-To: <a6f5c448-d0ab-4119-94ee-201bc3027e84@uclouvain.be>
References: <20250915-b4-gs101_max77759_fg-v6-0-31d08581500f@uclouvain.be>
	 <8385a4fbb6c10cfe643c2f310f6a67150e260cf4.camel@linaro.org>
	 <a6f5c448-d0ab-4119-94ee-201bc3027e84@uclouvain.be>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Thomas,

On Tue, 2026-01-06 at 17:54 +0100, Thomas Antoine wrote:
> Hi,
>=20
> > [...]=20
> > Are you still working on this? Are you planning to send out a new versi=
on?
>=20
> Really sorry for the long time since I sent anything. I had some personal
> issues and had to focus on work so I could not work on this.
>=20
> Moreover, after rechecking the files, I noticed that the support for the
> MAX77759 should most likely go in the max17042_battery.c file. There is
> already support for multiple chips (e.g. max77705, max7779849) and when
> I looked into it a while ago, most of the support of my last patch was
> present with some things more.
> I don't know how I did not notice this when I first started working on th=
is.
>=20
> I can rework this patch and send it by the end of the week as the change
> requests were pretty light.
> However, I think the cleaner course of action is for me to attempt to
> integrate changes into the max17042 file and see if anything causes
> problems which would warrant a new driver. I think I can take the free
> time to do this by the end of the month.
>=20
> What do you think?

Thanks for the detailed answer, much appreciated!

I'm always up for cleaner solutions, and unless somebody else has a
compelling reason to not follow your new outlined approach, I'd
say go for it :-)

Happy new year to you too!

Cheers,
Andre'

