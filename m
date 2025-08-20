Return-Path: <devicetree+bounces-206823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B29CEB2DA91
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:11:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 623C27269DF
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E1D2E3398;
	Wed, 20 Aug 2025 11:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=watter.com header.i=@watter.com header.b="PPBU9NFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DFC2D47F2
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755688283; cv=none; b=r3wwYs9JOtM3+m7em5b0IU3jJsvH0U0bk5lnzrnMMIsdePPCeCrIAHcTJbUuM8yM4TsK/hIpdKGcvnraq9nCESP6D8fTqKpALZXp2VtyAnwsX5bE+A+g4w4975jDfoTPf1oCSwtkHm/acGd/LC9pKpY22a3N+xmAE6pbQUnZycI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755688283; c=relaxed/simple;
	bh=WUv7Cm0V3IgjuX2phzUSzG2Zen8LWdoFvCdW38C3ejc=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=mDnTWhbAfPuQSBZ/B/jPUieFhzOpKPeyJIAPfrKmRBTApZHP5ViMOhRMAoIHAG9ktGnXkavc1lq5I/3uwM+PUUnpOGh7/nLmtPksOua3Xl+kvRUUUXj+p47PC4prJv0tcLjx7zbNzWj0sDV0zSPB13OQuBc2PBJyyBnTvfW9upc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=watter.com; spf=pass smtp.mailfrom=watter.com; dkim=pass (2048-bit key) header.d=watter.com header.i=@watter.com header.b=PPBU9NFY; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=watter.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=watter.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7e8706764d2so801259285a.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=watter.com; s=google; t=1755688281; x=1756293081; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2tCKj6fVsfc/EZ73lcI+v0RpeptC0tmIuUoVcciWQ4=;
        b=PPBU9NFYsM/aWlytIRjv3kd/pLmgRvpZNDr561NmwDHkf96jW8fQA+1mmtA3bKe8Gu
         P88ku9P+cEafQRnLtuTqc0ZKs12Y4l9P0fIf90E88hzszutuK6W+zJbtuqcCgbBOu/7V
         g5nlBZ/wALLZG0SsraILZe7/Idt50ZFKZB5vodQ8n/dUqkSyarefWj53mNslwP/dtKwx
         59mE/5km6OBkygTLCJ2HK/e9h5cRsS519zKiw5G6/lJ1nTFLT8+9e3PGh1uqWfrb5ijc
         hkF1y0qhoGb2BWrY/1nRgszcRwlk0Vvtky4hkalm8qxdtSD4bv2R7MCszEyNtJgxpssB
         E6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755688281; x=1756293081;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e2tCKj6fVsfc/EZ73lcI+v0RpeptC0tmIuUoVcciWQ4=;
        b=GZ3vC81LrKGhKSayZgq6n+3+AhezlNfA3COOPEctq282kX+1DYTbX5Nj/gVQ5KfdzO
         5ShRlzW4f76WhcK5nMkUoMtICOFHzXgG9uUZuHUWjhw8aaHr4/DYq1fLkbyF9QrIAsnj
         Vfj4BvTSLw5w2Nv4opLRC+4YCIfkmtkjpslaOmSQPNwJDwjciJlEsE3E3XyQLWjn2+Dw
         nMOnZW+BhEE7i6kPu0ojzU0Oog2uEB6RR0flMPZqW8b+YanRsaZzOAP5Srw+VrgIilSh
         RkUBh/tMH6I6FNyzaJIMsi7v3FfKQULZmycnDTsS7v2//uvmTIqC4bXqAoxWRtxs98YT
         TPQA==
X-Forwarded-Encrypted: i=1; AJvYcCVqPwRY4E6Ld/msupsiMGErbVhiKUFxkMNP5WIphmkEyZwTSppv/mjKGj1Pvti+2MxR7i7wOmMM4mnx@vger.kernel.org
X-Gm-Message-State: AOJu0YxmPfTXt5jKR2XKrKDetefV2u7QLiuXi7L4NTwWgw4srm7zALPO
	gVMI1f33Nep030seZbLrgRxp+916t576juOhOxTW9sxkGgOfvq3v1kqfIwS4XeDzaA==
X-Gm-Gg: ASbGncuh8NQBtEsvI3r5m0a+TDH+N2jWGPqnECIXNT2ohh7Nbg1h1H4KaWvQ814PMhJ
	qx0B3jjk5fiy+DraByRrKe/SwXKKyG3n5whyoQNOR60remEBMEKU4dKoYuRj0oYZHU2AXFRFg+I
	A6SKQDAgrQp0w95mPC9m0ghdcWvK8G7IoswRtHNDaKRD5rOYEVfjjvupc7viJIkOv3uk9yAm08O
	VVhFL3c6wZG9hlwIM+KYqCIHUgv3wmtpWUVB7NJZ5YKtGybfB9ATwauqHuYOqYXdX5rG6J4ArqR
	jz97XKTobyi4fxFPWx0dQ7YXk/bSuqRllk2gLf20JfwNZ1xdWW6KEGuv/A0hRX9dcfHMzoo+8f2
	0ZoT01kcxp6NsOiz+MUS8WPiziF68ZdrUw7/EL1hK8LadwkFrLUhn
X-Google-Smtp-Source: AGHT+IENFTHgqmyZ0/tawf1SKqM3WedPfNSzmCLaXLgI5zvcpW5ND2KdzA6cEpKbn5YPQjDk/9LPUQ==
X-Received: by 2002:a05:620a:7105:b0:7e9:f820:2b59 with SMTP id af79cd13be357-7e9fcc1b27amr274878185a.81.1755688280380;
        Wed, 20 Aug 2025 04:11:20 -0700 (PDT)
Received: from smtpclient.apple ([70.32.192.89])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e87e191efdsm940327085a.44.2025.08.20.04.11.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Aug 2025 04:11:19 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.2\))
Subject: Re: [PATCH v7 4/5] iio: mcp9600: Recognize chip id for mcp9601
From: Ben Collins <bcollins@watter.com>
In-Reply-To: <CAHp75VfrRJmB-Q6TM+Tiy79_q63=cOvyrePMQwi6ZbvDNUPezQ@mail.gmail.com>
Date: Wed, 20 Aug 2025 07:11:08 -0400
Cc: Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>,
 =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andrew Hepp <andrew.hepp@ahepp.dev>,
 linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <00D2ACBD-DE50-4132-8DF2-46DD97DBCE3B@watter.com>
References: <20250819-upstream-changes-v7-0-88a33aa78f6a@watter.com>
 <20250819-upstream-changes-v7-4-88a33aa78f6a@watter.com>
 <CAHp75VfrRJmB-Q6TM+Tiy79_q63=cOvyrePMQwi6ZbvDNUPezQ@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailer: Apple Mail (2.3864.100.1.1.2)


> On Aug 20, 2025, at 6:07=E2=80=AFAM, Andy Shevchenko =
<andy.shevchenko@gmail.com> wrote:
>=20
> On Wed, Aug 20, 2025 at 2:45=E2=80=AFAM Ben Collins =
<bcollins@watter.com> wrote:
>>=20
>> The current driver works with mcp9601, but emits a warning because it
>> does not recognize the chip id.
>>=20
>> MCP9601 is a superset of MCP9600. The drivers works without changes
>> on this chipset.
>>=20
>> However, the 9601 chip supports open/closed-circuit detection if =
wired
>> properly, so we'll need to be able to differentiate between them.
>>=20
>> Moved "struct mcp9600_data" up in the file since a later patch will
>> need it and chip_info before the declerations.
>=20
> declarations
>=20
> ...
>=20
>> +struct mcp9600_data {
>> +       struct i2c_client *client;
>> +};
>> +
>> #define MCP9600_CHANNELS(hj_num_ev, hj_ev_spec_off, cj_num_ev, =
cj_ev_spec_off) \
>>        {                                                              =
        \
>>                {                                                      =
        \
>> @@ -123,10 +133,6 @@ static const struct iio_chan_spec =
mcp9600_channels[][2] =3D {
>>        MCP9600_CHANNELS(2, 0, 2, 0), /* Alerts: 1 2 3 4 */
>> };
>>=20
>> -struct mcp9600_data {
>> -       struct i2c_client *client;
>> -};
>> -
>=20
> It's not obvious why this piece of change is needed. AFAICS it's a =
stray change.

The explanation is in the changelog above. A follow up patch needs both =
struct
declarations to be where I added one and moved mcp9600_data to. It=E2=80=99=
s just ordering
so I don=E2=80=99t later have to forward declare new functions for =
filter_type, which make
use of these structs, but need to be in the iio_chan_spec =
mcp9600_channels[]
declaration.

I guess I could move mcp9600_data in that series, but I had this in here =
before
I split that series out, and it seemed simple enough to leave in.


