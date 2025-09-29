Return-Path: <devicetree+bounces-222330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F17FBA8284
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2E3217FC02
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B4622BE648;
	Mon, 29 Sep 2025 06:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="muN5zwvZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C62F2BE635
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759128221; cv=none; b=WfzBq/2Nl1UCH6IBbFDm7IzBtj096CSRux9mE8wA0d9BJcjSr/GgTA2Q0PMqzx3zoJSnoLABL5ZBxa3Ptkb70Y09BYFveo0KXQgPpMg5VzLs4mQAQsk4LQOYWmfQWiE2OtGko9Qa087dkO7kvOaksElOVOMY0kdhKXLJij/n8ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759128221; c=relaxed/simple;
	bh=KqEbnlw0iG4XdMRsxPS3dabIuT01sgol0EMiwEapKVA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=WazmDotsV5vDIF3nvNJl2jcSS5jNkGWDcjhSMlqkmP/14m7YPW8Pyo4fjFxCRktP6L1LtOc5E3NMkhdjBet4KAxKZVD1gDuAlsQkaoWi3+6Wo6rvIrCXXSqe6FB0dmBteQH5uhRRK2ifijxJtE3y52oDvtZMKkqtw7ri8uAO4ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=muN5zwvZ; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-414f48bd785so2025133f8f.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759128218; x=1759733018; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZHyASAIGGRIsT426cHbCp9bqep3f2wDtSnw4IOa427k=;
        b=muN5zwvZpKkUJCpeeTW73k9pkKsTn+G6xljZSoSf8YlGC5872/MoxwB9neiefH+ccD
         nYsMcE0cfqIOZM4M6Zn8ICtvv/pF6x3K3iufYm7VZARXtQtgMhuqMhK9uxQkwmVQT05w
         JlsFhQ5L3DasZYpe8+XkWw+iVA5ijTYxIMTncoIynK+UFEyfJlGU3qC60yDwWrao2JXw
         GODfzW7eUZHZb+YqkNYzGeLlVFUs3WeFaksakAz6YnNxj58FzPtpOv7nFE3h4X9/4AT6
         znS/x9Wh1Fjv7WUv0n8dpDGy+ge5od/8L6d6Jg2nFCd2XEN81Oz3s4ekAj/d10KyosEq
         M3Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759128218; x=1759733018;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZHyASAIGGRIsT426cHbCp9bqep3f2wDtSnw4IOa427k=;
        b=ZzeAWw38aKQhB4SC75fFgSaxvLluKLV7o8olicwE8iw7Xe4Nn8eQfPIQlpBaHr5n52
         S0YFOZJoXv4BigjMhP2fqsMGTp/CKlyURPVWF8nOaDUYStFxtgkNMdgHad7QAQHVWQt+
         O8UmGgbOdOdkowHgZo8tzRsfRcSDZ76SGCPf9UUGL9MlSDkKjzf83lAN/wk1SuazlWD/
         +pnqHwqkKG2m+RtiwY75AhlnRS+RIGiQQ4j1j9ksGLueotnLY10gTkZNh8Z2VvPTsihb
         YUOs7mwZkW8ABAn6y+hpXvc++xuf+EHTd3HIRepWd2ip0PFKzSNWxK2m1CPhswPdwyAQ
         Mflg==
X-Forwarded-Encrypted: i=1; AJvYcCUG1Qd3bczh4lHRM5Jlc/iedGvCnSOlJaFu3YFGL69N1PbenMst6ZSIStzwlrWBKBi8MHxlBbraOn3a@vger.kernel.org
X-Gm-Message-State: AOJu0YwGOgROOwtbljP5vDKMs4D1NTKsNgy0IcxaF/Sn2LdzSclkeAZZ
	qR7O6D5UxC4+UtNOfyowxSsZwcBDODspZL+LjjBpYYNteufuH32FH9H8Fi1g0C5m
X-Gm-Gg: ASbGnct3aWqQUBAL9XUunIIwFYzoyNn0ycATLE3vcalb21QC8BKzioMJYTY87z9KLuZ
	uiNtB3fH4fKRNE68Ymo7xd1JMJkIHbLbTpoeZKIu3MhVDgsgbOJYZMtV8bMhsIMRfRYpv0UyaOY
	CzWlnBdaHipFAmGITNfWTZpOIeQ386IQPxpFIkMD5Lz+kZukOZGB6xTxnFUqQZe5CDAtl1F8Cnf
	qGgaUFPtPZn35wkGeoPzyB69LsV2ZHpBeavdya0DPVvygJmegfKLZaViiOSfbH59xQS3y28rJRy
	N9dChIreI82be/JAFOXnYRnl+paIMguJ/v0ECKn2T/QG/xSPeV1LA5k2B/NCCQozuWi8fsBbq/K
	UonwyriqDFHTLp/EPTnMDfNkA54KqD4KLxTzf0kij7A3gWG1O4l1OaX2DStDAXTOz/MhCypnRn3
	s6ix81M1s=
X-Google-Smtp-Source: AGHT+IE4rrbQjryiUPxc624DE5z04ctboNz7/wEklAP9rLuszLnYRhtJDLYNIyyFYvS89e/264E6+g==
X-Received: by 2002:a05:6000:430d:b0:3e9:4fe4:2619 with SMTP id ffacd0b85a97d-40e43737150mr16415932f8f.25.1759128217461;
        Sun, 28 Sep 2025 23:43:37 -0700 (PDT)
Received: from ?IPv6:2001:818:ea56:d000:56e0:ceba:7da4:6673? ([2001:818:ea56:d000:56e0:ceba:7da4:6673])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-41855fc661esm9111191f8f.45.2025.09.28.23.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 23:43:37 -0700 (PDT)
Message-ID: <ffbb73aa801111ff0a645cbd2a5c3d03db70ab3a.camel@gmail.com>
Subject: Re: [PATCH 2/2] iio: dac: adding support for Microchip MCP47FEB02
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, Ariana Lazar
 <ariana.lazar@microchip.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>,  Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,  linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Date: Mon, 29 Sep 2025 06:44:30 +0100
In-Reply-To: <20250927181341.58c106d3@jic23-huawei>
References: <20250922-mcp47feb02-v1-0-06cb4acaa347@microchip.com>
	 <20250922-mcp47feb02-v1-2-06cb4acaa347@microchip.com>
	 <859d8472a8f9e8d28b890ad565f9d3ce11e162d5.camel@gmail.com>
	 <3457c119-2f49-43a3-b96b-736b8f5de99b@baylibre.com>
	 <02c26151da7af1e05aecadf0e2ce20552c2908e0.camel@gmail.com>
	 <20250927181341.58c106d3@jic23-huawei>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-09-27 at 18:13 +0100, Jonathan Cameron wrote:
> On Tue, 23 Sep 2025 09:21:30 +0100
> Nuno S=C3=A1 <noname.nuno@gmail.com> wrote:
>=20
> > On Mon, 2025-09-22 at 17:15 -0500, David Lechner wrote:
> > > On 9/22/25 3:10 PM, Nuno S=C3=A1 wrote:=C2=A0=20
> > > > Hi Ariana,
> > > >=20
> > > > Thanks for your patches. Some initial comments from me...
> > > >=20
> > > > On Mon, 2025-09-22 at 14:30 +0300, Ariana Lazar wrote:=C2=A0=20
> > >=20
> > > ...
> > > =C2=A0=20
> > > > > +static IIO_DEVICE_ATTR(store_eeprom, 0200, NULL, mcp47feb02_stor=
e_eeprom,
> > > > > 0);
> > > > > +static struct attribute *mcp47feb02_attributes[] =3D {
> > > > > +	&iio_dev_attr_store_eeprom.dev_attr.attr,
> > > > > +	NULL,
> > > > > +};
> > > > > +=C2=A0=20
> > > >=20
> > > > Not going to argue about the ABI for now but I don't think this is =
a
> > > > standard one? So
> > > > if acceptable you need an ABI doc.
>=20
> store_eeprom is existing ABI and documented in sysfs-bus-iio (2 drivers i=
mplement
> it from
> a quick grep)
>=20

Ack. Next time I should bother in grepping the docs :)

>=20
> > > > =C2=A0=20
> > > Here's a random idea. (I would wait for Jonathan to weigh in first be=
fore
> > > assuming it is an acceptable idea though :-p)
> > >=20
> > > The config registers are pretty much going to be a one-time deal. So =
those
> > > could be written to only if they need it during probe.
> > >=20
> > > For the voltage output registers, we could add extra out_voltageY cha=
nnels
> > > that are the power-on output state channels. So writing to out_voltag=
eY_raw
> > > wouldn't change any real output but would just be written to EEPROM. =
This
> > > way these voltages could be controlled independently from the real ou=
tputs
> > > and it uses existing ABI.
>=20
> In some devices I've come across, the eeprom write is a 'store all curren=
t
> settings'
> rather than individual register writes. For that a set of extra channels =
doesn't
> work.
>=20
> Also eeproms have very limited write cycles so you really don't want to m=
ake this
> too easy to do and we want to shout it's an eeprom.=20
>=20
>=20
> > >=20
> > > In any case, it would be interesting to hear more about how this chip=
s are
> > > actually used to better understand this EEPROM feature.=C2=A0=20
> >=20
> > I didn't really looked at the datasheet so this can be totally wrong. B=
ut we
> > have some LTC parts (mainly hwmon stuff) that are also packed with an E=
EPRON.
> > AFAIU, the usecase in there is to have some defaults you can program in=
 the
> > chips (and there's a feature we can enable so the chip can save things =
into the
> > eeprom automatically). Now, in those drivers we don't really support do=
ing
> > anything with the eeprom at runtime so I'm curious to see how this unfo=
lds :)
>=20
> Usecase for DACs is that on power on (usually at board power up not drive=
r load)
> they will start outputting the saved values.=C2=A0 That might well be par=
t of something
> fairly critical such as fan control or trip points so you don't want to w=
ait for
> the driver to load. The driver on an eeprom equiped part should not confi=
gure
> anything on probe but rather just report back what was already there.
>=20
> Userspace can then modify those values and 'commit' them via store_eeprom
> to apply on next power cycle as well as now (in some cases only on next p=
ower
> cycle).

Makes sense and it is a similar case of we have in hwmon given those LTC ch=
ips are
often controlling power of some fundamental blocks of the system.

- Nuno S=C3=A1
>=20
> Jonathan
>=20
>=20
> >=20
> > - Nuno S=C3=A1
>=20


