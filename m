Return-Path: <devicetree+bounces-260545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FBzAwpBemmr4wEAu9opvQ
	(envelope-from <devicetree+bounces-260545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:02:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB26DA67D6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89DF630B690D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171B1313E20;
	Wed, 28 Jan 2026 16:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="lHKFJgAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC5C26B2D7
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769618426; cv=none; b=Y8UhycB0ZvgjBy8McofbtvWctnj+LRDtNxNKiCQUY/syIFCrAo3uX7Y8hQOy3AUNdvslLgSFG7tnDG04VG6yfhYxLy5HLQ1g5xWilQCut+o/Wp+mlD6zz3YTMZNoy5f6KdBVPsqd5weod7fIQpHHfLkMV1171wRrKOH4F/z3p4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769618426; c=relaxed/simple;
	bh=iYk18bX7cRzr0uBEytpgIQTDx3Sgm8mS05n6bJfcUrs=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=CEzVonQfoNU4acYW1sjEfAjdPLE6CWSqUDRtv6XJJQpf4edGaZKvETTcx9RHr+RbirZGs6w2oOhEWeK7rBvelMkGDoVz67PEIaOiMe4XNK952RoNxdQoYfqePbLLl2gk4KHvCKZ0sXeDbsJgeAkwbSBdgeXgmxhl8xsI+v6cnaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=lHKFJgAD; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-bde0f62464cso440a12.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1769618424; x=1770223224; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYk18bX7cRzr0uBEytpgIQTDx3Sgm8mS05n6bJfcUrs=;
        b=lHKFJgADm9tyGKkB2Bboes1J/ZIyyziOl+/Lg36VOjmwAUzt+C0LACvG0wZz8qgl/U
         PM6AE6QLSN19WbZs6KnS8EHe3Yp6CjzC6AmLID02NOzm/S0P90TPEhQGuRREDqYqJ9HA
         nicms5CzV4meOzjfigTODNJ24XOWeO0VCAPyMbMs7HAzJ6IvKWqVk/9FB30nsolvm7VR
         Q4w+ompDxprtU4fkQmHl/7eiU8Mr9tvLprZx4a7WiGWfJvsw/FHB58jFJhHSJRmMIkSY
         PPclUwurZ+N49eK1DWSF164HQy6mZPuGTW6H7m5lsQZ4KG8tqrp1EdJaSdhY7zwz/Xpp
         nbaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769618424; x=1770223224;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iYk18bX7cRzr0uBEytpgIQTDx3Sgm8mS05n6bJfcUrs=;
        b=c8+dbtn09tVoYMWZgVZikb4W25aFFioE5akET4sS/Uz13WEohnjl8itVxWZ+LBO+gq
         bAuXe7ZaEPphVelwmZngaqey6/g4I9fU2YN3VpmKsVEHAxacKz3IvyhjGi1sG/Jf+m7i
         IeFKnxocSu+T8boGn0PZriz0wkRhJ/LiTzH71jTAu0tzLElAJZ7uzyL8gRjF9sC9Foni
         WQ1ZHivBM5NLMHSGPoHimpP0gOry9wyWbrZxnMTLeaqpbnzADy4D0hDmzXAK5WvuzRRR
         bMLMMGG9ufrM3yRUvA2tgGdXrxKpJgkPSZJQ0UGSsNu2SSq3OUa+FKzqKC5XOaWMzr2v
         lwoA==
X-Forwarded-Encrypted: i=1; AJvYcCUsN/ZyQd/N7u/Zq/rOVuir5bhWMa5HJP2yva7rwtKWRaS53dnn/p11LwuABfD1CZeKnGzothPKclrx@vger.kernel.org
X-Gm-Message-State: AOJu0YyTPp18PqSMdn/Y+ZUchTK8FJfoI9K6jWQXe5AFoM9AmAq49R3W
	PHZYkfamK+HuKzHe4itKRiHq8FC+Rj0AokUtAjYf9oVFv76RRtg4MKv6J7UnVpTbm3Y=
X-Gm-Gg: AZuq6aIgSb7/gZJjZ6pk+U3imlmdk0qc9G6G1dxKbnJfhPH+qbmTaymg/rNt+By4Sq7
	gDuL+AriflxwYJxtd/OhmW37UXnk2m6/Qh1Vv+3RX1r1jMzbub0yAMAX8dhb0Me8Ud6eKWF/Fid
	p+RfoVeYOGUQ5lr9wUV1m99LvgIJGXWBeb3jd97EM/iqklxQ+N3OAW0/COraByPNyHctNUttKkA
	EG34tpmhyNujrLe0+bc+Fap1Wm16V6Yi9X/bs1a+O4MEQu/tavgiLHsCckhOuLmC1jstdyRitwO
	DlZtF12GDkGS1DnkxSeRxAjAJRln9rQE+qnTwmBERXE2QfkeMwMbx7EXHBE+4/dDrXPdxt8siF/
	5EBP1hBPh/OD/x8h55GGSnQf6gVUb4A7TK3kI4jt8YX1M6LTUvdNVyppSVjJTD6fJhh0OahpfBg
	RAORDZgpIMmDzQ3Z7Wwb8enGLaqfZOJ1FkXqQ56mGLhCFU0g==
X-Received: by 2002:a17:90b:3c11:b0:352:c995:808a with SMTP id 98e67ed59e1d1-353fecda875mr5481744a91.14.1769618423968;
        Wed, 28 Jan 2026 08:40:23 -0800 (PST)
Received: from smtpclient.apple ([2601:602:8700:e32a:245f:3d9c:239d:6b19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f61e0007sm5993765a91.12.2026.01.28.08.40.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jan 2026 08:40:23 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v6 1/7] dt-bindings: i2c: xiic: make clocks optional
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <aXoul5n9sA1UmqoS@smile.fi.intel.com>
Date: Wed, 28 Jan 2026 08:40:11 -0800
Cc: Michal Simek <michal.simek@amd.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 info@mocean-labs.com,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <E2D1B484-CBF0-4763-908C-DF293332D2B1@nexthop.ai>
References: <20260127-i2c-xiic-v6-0-e82e2f6f657c@nexthop.ai>
 <20260127-i2c-xiic-v6-1-e82e2f6f657c@nexthop.ai>
 <20260128-remarkable-airborne-chihuahua-a1a16c@quoll>
 <66c7435c-a936-413e-a016-c860d448c971@amd.com>
 <fc00f8cf-b566-4694-82fe-76010d2f7c78@lunn.ch>
 <aXog-KBw7Bp-VEC4@smile.fi.intel.com>
 <5dc423be-c1f4-4a59-abcc-807f63b25f3f@amd.com>
 <aXoul5n9sA1UmqoS@smile.fi.intel.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260545-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nexthop.ai:mid,nexthop.ai:dkim]
X-Rspamd-Queue-Id: AB26DA67D6
X-Rspamd-Action: no action



> On Jan 28, 2026, at 7:43=E2=80=AFAM, Andy Shevchenko =
<andriy.shevchenko@intel.com> wrote:
>=20
> On Wed, Jan 28, 2026 at 04:00:30PM +0100, Michal Simek wrote:
>> On 1/28/26 15:45, Andy Shevchenko wrote:
>>> On Wed, Jan 28, 2026 at 03:34:02PM +0100, Andrew Lunn wrote:
>>>> On Wed, Jan 28, 2026 at 12:21:41PM +0100, Michal Simek wrote:
>>>>> On 1/28/26 11:37, Krzysztof Kozlowski wrote:
>>>>>> On Tue, Jan 27, 2026 at 09:03:55PM +0000, Abdurrahman Hussain =
wrote:
>>>>>>> The xiic driver is designed to operate without explicit clock =
configuration
>>>>>>=20
>>>>>> And if you change this in the driver, then you change bindings?
>>>>>>=20
>>>>>> You miss here explanation based on hardware - how does the =
hardware work
>>>>>> if nothing ticks it clocks?
>>>>>=20
>>>>> Hardware obviously have clock input which needs to be connected. =
Without it
>>>>> it won't work.
>>>>=20
>>>> Should ACPI potential limitations be making the DT description less
>>>> accurate?
>>>>=20
>>>> Would it not be better that the driver has an DT binding and an =
ACPI
>>>> binding? Where there are common properties, common functions can be
>>>> used to retrieve them. However, if ACPI lacks usable clocks, use =
the
>>>> of_ method to get the clock from DT, and skip it for ACPI.
>>>=20
>>> Why should we use of_ methods? If this is required we can check the =
type of
>>> fwnode and act accordingly, but I think this should go deeper into =
some
>>> treewide available helpers, because now some drivers repeat the =
mantra.
>>>=20
>>> But how do the driver get the clock frequency (if needed for some =
register
>>> settings and/or calculations)? DT seems to have well established =
property
>>> 'clock-frequency' for that. Can we consider it as "ACPI binding" as =
well?
>>=20
>> "clock-frequency" property in i2c is used for selecting i2c speed =
100/400kHz.
>>=20
>> Clock frequency in this driver is about describing clock coming to IP =
itself.
>> Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
>=20
> Ah, I see, then is_of_node() probably is the compromise how to deal =
with
> this setup.
>=20

Thanks for all the feedback!

So, if everyone agrees, I can make the changes to:

- Remove the DT bindings change.
- Make the driver fetch the clock only on OF by checking is_of_node().

Does this sound acceptable?

Best regards,
Abdurrahman



