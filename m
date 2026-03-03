Return-Path: <devicetree+bounces-270739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGDgAa47p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:51:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1CA1F661F
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:51:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BAE733063E12
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765482D23A6;
	Tue,  3 Mar 2026 19:49:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4337C91B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567396; cv=none; b=BKE+u15xiJZu2tzboXRZIr37/jECmSRS7lkX3mry/k8OhXu5iSH2xhNQ+LZ9Bwu7nMp13rXv+yYhxXspJGNH8qFvycrIp4zOUxyVIKjhewTOZwXXPtTgaPgAs15ZPCpyLRv3JpkFbqDMEjMAJffczn/G8f9O5l5Tr5Tmx3/B6SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567396; c=relaxed/simple;
	bh=bf7OXJYrDzR0xg+YlTGqYfese00L4BLZyQTwoNqUEFg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eFrcV5JjvkvHNWbGN/QQYlQCK/kYxnscPZZE3OWZt96QBVPg191oZYseHpreLmHa5jfx45pq84dVL4ZYkuzR+PFO6BqU+mVlItNZ3ek1HooITJrpJ42yVWe21lM9xMHA86S/02gfcYZ3gfEZioW6jKCMxEYlB/Ibv54m5VX2Cks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-79495b1aaa7so55428517b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:49:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772567394; x=1773172194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C+2z0zWJzxCsKpo1ZYV84wRSE8MelG00boJ8gBQ4fw8=;
        b=C/OJLk2EaKokfqGfe9VbwtcTgSeoCqN+Cw4WCq3nf4M+vsucCRi1mJmigxKmwhxOjB
         v5mAy3eqEbLGPcI2F2d97PQ4ZrCv+80vMTL3ikEEuVD9wpMuTRB6lB8YmgwtVG3MUSzq
         IZUeVugMnXGgpu209e38N5cZzE4zrz8L5BdQzeQtTIALYvNBM9Tv7yvZDjKhDGXdk/UU
         xjURj2CMS1mBuTXJ4Sayxlj3+Odu84NMWRf/7gsYiZOMJmQ4oqKIpsTG6vBoSaIF33JI
         TsWnXar0tFlckBr66ABlTMyVrxUOSvKfwkuq5SFqa/rYlg9GFAa4PibfstPwipqvI2X+
         K1jg==
X-Forwarded-Encrypted: i=1; AJvYcCWKUP0U8pGPIUDhk/m4R0SOQbtMdRdnWzHfe8+L7dYepAl4ZJqbRmNx3xyk4RPJsNdv14Nl1wLa6AAK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy23MVEj60wMKjlDgRZ5iWwol3yCoPlblo2Yk0yT2TQmL/mTUfM
	p82vXXvU59O625uSLOWMluYRrgwXp3hpl9f/fO1up9G9jQ6vCh09Sh1P28yFKw5L
X-Gm-Gg: ATEYQzxVrpKYIzrm6KRcINkYnLBJLWXTbbG1mHfg3dDRolR8lmg3NNSEetDw8fNzwRz
	Q/B0SsaBEjdrELLbAuvTjxyTRw/0gf2WtwwgwYPaeGz6elt3mX44BI2Sehb2152FDkuYGrzfU7p
	9uotp1Pu6yx41cCcBkojxFFOCDbQdL8OMQ8sQ8QJm2rdpYafxt1mjs2f4/1X9xbIxjqRIga/PyN
	LlqVuL1cwPq1AE2xcdhtvZVeyxYmj0kDI6aHJJMoNHJBrR3UafQAmeRpo3TewUHThG5wqV0cJDh
	iewio7+Y9/aZEFR2kyV8PF12UPPaXnqk/qRijs7hhct+5uDlq2hs/kDTHWaEEF/L94BNYU5m24J
	qhrjSFB4QxMxiIQGj5fA0I0BJAWOLqdMCqNxvKddEzb4iwTCoHB0+JfapsqmWhWWco6kZ7KjTha
	jDF04GyA5ELri/dBSMfPaHUSyx3fpVoEfVJmqZon8O5FLKVEztCQKGWKhI
X-Received: by 2002:a05:690c:60c2:b0:797:a2c2:6fc9 with SMTP id 00721157ae682-79885605e3cmr157368397b3.44.1772567393908;
        Tue, 03 Mar 2026 11:49:53 -0800 (PST)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com. [74.125.224.51])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79876ca3953sm65486247b3.51.2026.03.03.11.49.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 11:49:53 -0800 (PST)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-64ad46a44easo5211363d50.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:49:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXBZvAirqUjiYslVDZDAsLFj4jCX6Ar0GgLAmA/b4y6ZolYbLsQm/cmFrJl+Hm08JyWKnHSwAr0hP9d@vger.kernel.org
X-Received: by 2002:a05:690c:a:b0:798:13ff:1250 with SMTP id
 00721157ae682-7988561e6e6mr158386547b3.51.1772567393468; Tue, 03 Mar 2026
 11:49:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303090253.42076-1-email@sirat.me> <20260303090253.42076-2-email@sirat.me>
 <20260303-strike-froth-a2e082b8b59e@spud>
In-Reply-To: <20260303-strike-froth-a2e082b8b59e@spud>
From: Sirat <email@sirat.me>
Date: Wed, 4 Mar 2026 01:49:41 +0600
X-Gmail-Original-Message-ID: <CANn+LW+kWoTnw32Db_T4t4JCCcCRtUead53i5tmc7Xeme=9X-w@mail.gmail.com>
X-Gm-Features: AaiRm52QcrTO1etlzEZjEfmU2lfgcYxrWAOjQ59uukPR70KXooqvqzaWX-Ugrok
Message-ID: <CANn+LW+kWoTnw32Db_T4t4JCCcCRtUead53i5tmc7Xeme=9X-w@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
To: Conor Dooley <conor@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9F1CA1F661F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-270739-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.932];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi Conor,

On Wed, Mar 4, 2026 at 1:12=E2=80=AFAM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Tue, Mar 03, 2026 at 03:02:40PM +0600, Siratul Islam wrote:
> > Add device tree binding documentation for the STMicroelectronics
> > VL53L1X Time-of-Flight ranging sensor connected via I2C.
> >
> > Signed-off-by: Siratul Islam <email@sirat.me>
> > ---

> > +  vdd-supply: true
> > +
> > +required:
> > +  - compatible
> > +  - reg
>
> Are you sure the supply is not mandatory?
>

It is mandatory. The driver uses non optional devm_regulator_get().
Will make the binding
match in v2.

Thanks,
Sirat

