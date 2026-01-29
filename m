Return-Path: <devicetree+bounces-261054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AET5Icbte2kMJgIAu9opvQ
	(envelope-from <devicetree+bounces-261054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 00:31:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A6AB5B44
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 00:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9338300D96F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 23:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C9ED37649E;
	Thu, 29 Jan 2026 23:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="DTCU4fKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BD036CDF1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 23:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769729398; cv=none; b=CY026D9U1JwnvWaJ2p4PRf0Trm1B01gUotWKl7+lwWGR18EuLI73nMNnX34+5hnUvXnP1gFGjYP6/LnVE78mo7FAZm3JYOiKxFMIw3KvgJ4kJ8Vzm6OFduHlVVA0iSEdDiuHErj7U4QXUis3+Olm4BDUArZIJXZJeTzXjmirWwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769729398; c=relaxed/simple;
	bh=tApPpTDpzWHbB1pWe+VsiMG5gGDF6f3x7Nan38A1rbo=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=LPpP934dtEiznCfjh39xeEuSD8WPW++ANZgPS8jnuiWjAWsGO15fbMv/6XxnG9RLJu7WQ369G2HL++oI0PEN3gyG/0+4m0SHzGaENE5DeQkA0+aIpGtHtf9fxYH8Q5UaVM+Tgup8SmHETkYSg2hbMN5fYGMcdVVQKW6MtPX8npI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=DTCU4fKT; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-81dab89f286so762933b3a.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 15:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1769729396; x=1770334196; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tApPpTDpzWHbB1pWe+VsiMG5gGDF6f3x7Nan38A1rbo=;
        b=DTCU4fKTTkBJVk0rl0M0yDldZu+5uj0u7VonTLzBtXktv4WH0jS4bteu1I2eRXhcSo
         9w87JWRxr99O2sedgFUsTqjZlpZ4i4jBhPFN9o1AqzDAkjqIeo9VIW7VC5SwX7uRY4nu
         brzxBnQjssYZl1d9gEz3l4S0pz9AxLEZsLbMHOIUwWDHkgwXz89UgFYbXkxKOEhzhNQ4
         PP5L1xFIx47MhpAxVgyD+uEiCIx/RHZosY3C6rWQfkydmlbkKeI8OgG9FvFZHosi4/AV
         f1U1E7BT8r9AIH2T+ShL7nppyQjSu+LCMcXbZ5m0Tla6VSS7+iTxUXS1Cd+eY2fY+Fxt
         KRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769729396; x=1770334196;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tApPpTDpzWHbB1pWe+VsiMG5gGDF6f3x7Nan38A1rbo=;
        b=VC3qYhN8lAFxILZjGg+QwzL7xnTUFmfSd/Brb6qwRqNSkBF5wwFhqFkvyr3UJykkLQ
         5JOA8Z7UDlZTPU3M7WK0e3725BVSNam8gX7dvR+am7Q/5j8K3CTAtqv7sbhn8FmLldNd
         MJl5OWaUueMOWmfucBJWtjRG7dvQo3wuKhoKC1pJKIsCj+TLrRYmsbKFAbjPVYMskrVn
         lfmf9ChyRqYh254sCrXsZdXTISs60KTRZqfgaqzDNOeAaF57fKEtLDqT7KDfQtuP/cy/
         Indl5h/E5Cn3U3rkc1xqbxJlwSvOAjUD73ZF/ZHA9ikYMqGlgfDvGCeApRkacoBxjWZC
         Axtg==
X-Forwarded-Encrypted: i=1; AJvYcCWVqXNAa062wlRd6x6Ya93G7s3dCmMo7nkY42yx85RA6CBC7jr90FEfjc8Y3P3UGV2xzHCirNpSm/XW@vger.kernel.org
X-Gm-Message-State: AOJu0YwdiDCATRdFAn/kx6K5+r3b83jOpdysZj+FRxv+IkJg9BZf56jk
	RwMxtg2nGvP+m35XyUPFe18oAu2Vprh6NOFvMdR1h1MqcP/XYv9OrPP6X1ccIeem5Ug=
X-Gm-Gg: AZuq6aLh5OPcS/1zJXBacGnyc+EHnlu0MIUFO/mYk1SG/EXoF9zfEwoVYxxbJ7h0Vr5
	qK3a2acqXeuKAaMZhbA3bjlztYzyM+OBWOfFFisNn7rSxDQsZ/fQ3+UHwTZdIjCHkpmtqrYxeVp
	ezCChekHg/lxR6IjzHAZHk+o9xI1MGGMoG6xDTogmpaGQHeqTWhrsYkNN+j0iKVGJj4A9AGw4IY
	upjqjRbpp1rNIhwfD8+6iW8qX9yltO9VQn3SoRKpGLtxWrsuPpr9wG9pfFkh703JRYRMAgsRJ5V
	iDNv89vujj7tu4eCoC5TxsL00V94aNSnJu24RcjhT3wuez+ThV1n6qM0RXevA8YfIs9mNNVdGzt
	R9IiSpcJ4F8P++h8tUjTRi/1ghmmAQwN0lpqxjuZg/IiE9lmwcpFQoKiVRfSHv+g7hRKvKpjDRm
	X91zkr3s+xesQJGuM0AZFVzuPkzZGlfB38lY0ySEy7JY0Lfc2TU7IS6rkuZPYzFWeJyszwqmI=
X-Received: by 2002:a05:6a00:7584:b0:81b:13c5:b6b2 with SMTP id d2e1a72fcca58-823aa71186emr720685b3a.33.1769729396526;
        Thu, 29 Jan 2026 15:29:56 -0800 (PST)
Received: from smtpclient.apple (c-24-16-26-157.hsd1.wa.comcast.net. [24.16.26.157])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c64b4esm6363964b3a.69.2026.01.29.15.29.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jan 2026 15:29:56 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v7 1/6] i2c: xiic: skip input clock setup on non-OF
 systems
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <ab9dc191-59c1-40a9-bbf1-e6c082af128a@lunn.ch>
Date: Thu, 29 Jan 2026 15:29:45 -0800
Cc: Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <2428D892-89F9-4013-9681-AD9BD76B0874@nexthop.ai>
References: <20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai>
 <20260129-i2c-xiic-v7-1-727e434897ef@nexthop.ai>
 <ab9dc191-59c1-40a9-bbf1-e6c082af128a@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	DMARC_NA(0.00)[nexthop.ai];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261054-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nexthop.ai:email,nexthop.ai:dkim,nexthop.ai:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lunn.ch:email]
X-Rspamd-Queue-Id: 06A6AB5B44
X-Rspamd-Action: no action



> On Jan 29, 2026, at 2:43=E2=80=AFPM, Andrew Lunn <andrew@lunn.ch> =
wrote:
>=20
> On Thu, Jan 29, 2026 at 09:43:13PM +0000, Abdurrahman Hussain via B4 =
Relay wrote:
>> From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
>>=20
>> The xiic driver supports operation without explicit clock =
configuration
>> when clocks cannot be specified via firmware, such as on ACPI-based
>> systems.
>=20
> Are you saying it is technically impossible to specify a clock in
> ACPI?
>=20
> Maybe a more accurate would be:
>=20
> The xiic driver supports operation without explicit clock
> configuration when the clocks are not specified via firmware, such as
> when the ACPI tables are missing the description of the clocks.
>=20
> Andrew

Actually, ACPI (since 6.5) added a ClockInput() macro that can be added =
to
_CRS of a device node. The ACPI subsystem in kernel could parse these =
and
convert into proper clocks integrated with the CCF. But, AFAIK, this =
idea was
rejected in the past. So, technically, it's the kernel that lacks =
support on
ACPI systems.

What about this wording then:

The xiic driver supports operation without explicit clock configuration =
when
the clocks specified via firmware are ignored, such as on ACPI systems.

Abdurrahman=

