Return-Path: <devicetree+bounces-257576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yA4uI4Lob2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-257576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:41:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E5B4B7A0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CA2053ADD36
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2880451048;
	Tue, 20 Jan 2026 19:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="ZA7c3uoi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D04611F4
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768936318; cv=none; b=t2nemlskr2rBBZZruowEoMC9e9s2qcklYVzz8wa+lQUlebGzqYGHJ2NgmexqhJNILs/d0vmbUT6RU3+CVb3qXAIh0yEgrpN3I1c2GttrTThXUmLEYmUfyTRDCGzxklJ3ywDjiGKoulH7uSwgG7hK9EZl96nKSBPkP1aDOoK3QvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768936318; c=relaxed/simple;
	bh=XUTTZ+LQ8ip5e05hxZlANkRvBkum9oiZ0Z+yc+zZoDU=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=cScz6WgC2D/rYVLggdVlidIiLWwTj/QJKZyZ8W2jA4lImfiKNC/8TAZPRzTk3M/f1XR8IezMODOiU4Le0CPgOo9dKGmdAD28C1lScHmUt+/NjzGOtuD+zZfsX3ketpcdVbIfDUJ6Ys9pC1SvIz4L15P4141UptYePFQ5VRZJkrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=ZA7c3uoi; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7b75e366866so1696653b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1768936316; x=1769541116; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ub8N3tY8GwCy8TqVlqK7eFFGB7gNEjREB31fE0IlsTg=;
        b=ZA7c3uoiMSZWwTlRM4WmuRk+7pB6wSBc4pw/xD6IFTRB7g8zjejFCIjFefLhIZdj/C
         I4y3mwuWtf12iCXyINo6re4QpV8bMzVYxeVuzvv2eR8aboxALlIqwq6WaPqo9jQY4SVA
         B+RmkaXB5tOEke/DTdeLQx3XvbsJqm6Gxe1mVGMiczyO0T3kyzpIIMniLRh4TPpoo90C
         6iRTp94Cx9TbtySnIipFDbXQlhS6KM6O1abNa/85DzJlZeqbnaaHWbtb4e5IfwgV90BN
         xnLQSUUq/+91m1iywRYNsN1dH/yOPNioo5fr24tbR3CoEuoUFOp3nSxT1MFhQnFfYIrZ
         InIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768936316; x=1769541116;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ub8N3tY8GwCy8TqVlqK7eFFGB7gNEjREB31fE0IlsTg=;
        b=XAcxsG5P8/cNU0Wkc+KRRCXZwpcNhIJwWSdqAwz+1zsplsIrnV7RU7ElN9+SqboL7n
         TaaHC+eMRVxbVbh+0NclwWkrQFpn3NYv3PGlCdFkQz5hpmzhSGX5LQ0kbXBkFEl8iv3x
         HjkZ9K+jJeoRwGu32By6J9bcnNpGldqld69EwTWO6Q4zeC7Jf+uVB9p5fqWOkww/kaAa
         CIFiDyi5FwNXHDAdja/Xs4k6FpQJea7B/UIrNx2digNNVHbhl4YTjaszbM0/vYaB05PH
         DqJTjOqoONvpe3DHUBBpcNuyAzh4+lQsJ9snk8aBUFl7qWTE4i7h5cnyttD/l6mIRv2s
         tPHg==
X-Forwarded-Encrypted: i=1; AJvYcCVmjmhOtqxrqoMANSY8vxHCHxK/82oGVUPirHU/NhpCrXdOMIcERTH49YdrblHlQ4h8cDQ6hL4ynmd9@vger.kernel.org
X-Gm-Message-State: AOJu0YxRRAoY/ROzsbsjMSbPtUnVM481b5o4j9e4Ww9pEoPtq0DB1sZY
	ioIHiXptjkD6l6fcBPEJykrlwovnPiDpDiQprw5/9S2pXQ7t7euqIHj23hFSyyUHHF8=
X-Gm-Gg: AY/fxX7BchnQODac7hE/RACMEYqgl+InUCuF86QxXxACN29zVKYUHsjwa+3McZ+7HWl
	w2IcF6vZJrd15hcYGN9ntIUlQgghrI5gb81Nn4+nhEM2iqG9v9TojwE3LHAQTQMiUSFBSNHempr
	znE1Qg6IA7TsXp3i9z//Y+MX21gKKGEh6ijZX/+ecwmR0XD2ugJJ0qtg/q49f3rlDlf/uia1s1w
	86bzwFKzG/c8fTQJ75YiAFdh2D0r+lqXmq2vgxbaD3nt8Vgthnzd/T71Zi/26k48qBegB7Wvr8I
	IV+LLaOm1E9xdjoOztEP92cDHvzuYtIAJGhEeQbs0gk3rffZTEJQTuVhztAidq2jWPB7pNw74PW
	pLPQf2Bqq0LVSQdfL8OvqZa5DSGUbFbblPqFEKdHvxUzrwAsGZqCky2ITSMASdtZyrlNuUHxSKg
	5WkRF9n/RRwbvkKLdteDWyclNDUWsZIriWDXbGC4DEWCUHMAIKIp4rhfSs6f7OTtaRuUntnwU=
X-Received: by 2002:a05:6a21:7305:b0:36c:2cf5:9b06 with SMTP id adf61e73a8af0-38e45eacbfamr2933705637.79.1768936316195;
        Tue, 20 Jan 2026 11:11:56 -0800 (PST)
Received: from smtpclient.apple (c-24-16-26-157.hsd1.wa.comcast.net. [24.16.26.157])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf354b24sm12357331a12.28.2026.01.20.11.11.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jan 2026 11:11:55 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v3 3/3] spi: xilinx: use device property accessors.
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <c3fc04a4-4b09-4c6a-a0f1-e5aa92a22976@sirena.org.uk>
Date: Tue, 20 Jan 2026 11:11:44 -0800
Cc: Michal Simek <michal.simek@amd.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>,
 linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <80A8F67E-7A01-4F9F-9D84-29722678A2CE@nexthop.ai>
References: <b1b79de0-a078-486d-b3e9-96899354407c@sirena.org.uk>
 <3D1B59A7-6E57-4C8C-AA95-EA7AA115264F@nexthop.ai>
 <b9ad8ab8-7985-4c89-a82b-c7f31d32c167@sirena.org.uk>
 <a6d57890-89c1-445e-836c-d8239d20c621@amd.com>
 <b03307f7-93f6-4680-9241-cf28b5456fd0@sirena.org.uk>
 <a3fcef3a-d1e9-4b46-b114-3a82575e052e@amd.com>
 <980ad372-a2c7-417c-91f9-4958d3d1aaca@sirena.org.uk>
 <4831B269-DFC1-40E0-96B7-67981AC72562@nexthop.ai>
 <6e06696e-09a4-46e0-98fa-252690b888e0@sirena.org.uk>
 <BF71A04E-7FFB-42D1-8C8D-6FD13415EED5@nexthop.ai>
 <c3fc04a4-4b09-4c6a-a0f1-e5aa92a22976@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257576-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,nexthop.ai:mid,nexthop.ai:dkim]
X-Rspamd-Queue-Id: 36E5B4B7A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> On Jan 20, 2026, at 10:45=E2=80=AFAM, Mark Brown <broonie@kernel.org> =
wrote:
>=20
> On Mon, Jan 19, 2026 at 04:20:06PM -0800, Abdurrahman Hussain wrote:
>=20
> To repeat once again:
>=20
> | Please fix your mail client to word wrap within paragraphs at =
something
> | substantially less than 80 columns.  Doing this makes your messages =
much
> | easier to read and reply to.
>=20
>>> On Jan 19, 2026, at 3:20=E2=80=AFPM, Mark Brown <broonie@kernel.org> =
wrote:
>=20
>>>> But rather, to re-use the existing drivers as much as possible by =
relying on the
>>>> special DT namespace link "PRP0001":
>=20
>>> What is the goal in avoiding using native ACPI bindings?  PRP0001 is =
a
>>> workaround for cases where you have things that ACPI has never =
dreamed
>>> of and can't abstract well but which have already been handled by =
DT,
>>> it is not something we're aiming.  The hardware you have described
>>> seems like fairly normal server style hardware and like it should =
fit
>>> well with normal ACPI.  Adding ACPI IDs to existing drivers is =
pretty
>>> common and standard, I'd class that as reuse.
>=20
>> I did not intentionally avoid introducing new ACPI _HIDs, but at the =
same time
>> don=E2=80=99t understand the need to, especially when PRP0001 =
workaround works and
>> it works well. We don=E2=80=99t own the spi-xilinx driver and neither =
do we own the i2c-xiic.
>> These are standard Xilinx IP platform drivers that could be made =
usable on ACPI platforms
>> by just switching to device_property APIs. Which is what these series =
is trying to do.
>=20
> It's just not idiomatic ACPI, indeed some other OSs actively reject =
the
> idea of binding to PRP0001 described devices.  In general we don't =
want
> to encourage people needlessly creating unusual hardware descriptions,
> that provides better future proofing so we're less likely to have to
> work around our own past decisions and avoids causing hassle for other
> OS vendors with having to deal with Linux special firmware =
descriptions.
>=20
>>> As far as I can see from the example you posted the devices are all
>>> fairly standard and just need IDs assigning to work naturally with =
ACPI.
>>> There's possibly an argument for using PRP0001 for the flash given =
that
>>> it's not especially idiomatic to have OS visible flash on ACPI =
systems,
>>> usually flash would only be visible to UEFI, but equally the =
description
>>> would trivial and systems wouldn't have to use it.
>=20
>> You mention =E2=80=9Cidiomatic=E2=80=9D a lot. Are you implying the =
SPI NOR-flash devices should
>> not be exposed to user-space? Then why does the spi-nor driver even =
exist?
>=20
> Flashes are widely used on non-ACPI systems where exposing them to the
> OS is a perfectly normal and standard thing to do.  Usually on a =
system
> with ACPI NOR flashes would be purely for the firmware to store itself
> and it's data, storage exposed to the OS would be at least eMMC or
> something.  ACPI has a very strong idea of what the systems it is used
> with should look like.
>=20
>> We have a SPI device that needs to be accessible from users-space in =
order to
>> =E2=80=9Cflash" various FPGAs. How do you suggest we do that?
>=20
> You should probably register the device, it's just a question of if =
it's
> weird enough that it does actually fit with PRP0001 or if it's =
something
> with general enough application in ACPI systems that a HID should be
> allocated.
>=20
>> Also, there are hundreds of drivers in the DT namespace that are =
missing the ACPI IDs today.
>> Do you suggest adding ACPI IDs to every driver just so it=E2=80=99s =
more =E2=80=9Cidiomatic=E2=80=9D to use?
>=20
> To drivers that are used on ACPI systems, yes.  Many devices wouldn't =
be
> used on ACPI systems, or would be expected to be exposed differently
> (for example, hidden behind AML).

This is not for a normal off the shelf server. In our case we are =
building an embedded
switch with an AMD CPU and Xilinx FPGAs that happens to use EDK2 based =
BIOS and ACPI.

We, as a vendor, have full control of the BIOS/ACPI and would like to =
use it describe
hardware and make as much use of the standard Linux drivers as possible. =
We have dozens of
I2C devices like temp sensors, voltage regulators, DCDC converters, =
EEPROMS, SPI-NOR flash
devices behind the Xilinx IP blocks. Most of the devices we use don=E2=80=99=
t have proper ACPI _HIDs.

>=20
>> I am just trying to get this 2-line small change merged so we can =
start using the standard spi-xilinx driver today. I am not trying to =
boil the ocean.
>=20
> I mean, adding a HID wouldn't take substantially more code.

We could, but we don=E2=80=99t own the Xilinx IP blocks. Are we not =
justified in using PRP0001
hack until the driver owner adds the HIDs? Wasn=E2=80=99t PRP0001 =
created as an escape hatch for
these kind of scenarios?


>=20
>>> There is the bit where there's a PCI bus in the way and you don't =
use
>>> ACPI particularly idiomatically...  I can see the dodging out on the =
PCI
>>> bus description, but the way the devices behind the PCI bus are
>>> described seems confusing.
>=20
>> What exactly about this usage is not idiomatic? Our PCI device =
description in ACPI looks like
>> this (GPP5 is the PCIe bridge under which the FPGA is located):
>=20
> The use of PRP0001.

Understood.



