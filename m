Return-Path: <devicetree+bounces-261507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jjZZN8isfmmhcgIAu9opvQ
	(envelope-from <devicetree+bounces-261507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 02:30:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF2EC494B
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 02:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1F9F300EAA5
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 01:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2DA1D5170;
	Sun,  1 Feb 2026 01:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="gYzK34zH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAC928E0F
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 01:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769909443; cv=pass; b=K23BLjOlLsblXqFzIvN7g7+NxffvYOHQvS8BX40tNwz9gx5Eyt5fGJYP34DTuuTwb+Oq+BPFmFiapeLPTfAFrkm33lMC0EE7ZCfj5ePUVeSTE3SnLHx0DJkL8xlkik/OisV6dWy/dS7Z3M2TJS/QIz7KiDU+xCHAICN2xvWn1uU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769909443; c=relaxed/simple;
	bh=YtJzQSsz3r19x6lp4EmF1fkbMg2fNMXsYEr5P8h6zJQ=;
	h=Mime-Version:From:References:In-Reply-To:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g204eoOymeZVuO78O62lZudOc75Pz37dvzz0eZ3zyY1d6ra2zlv9J7pztZ3Wml4AgRuiv8wdNUo63XX8f1x6wwOd0I2/TDUTmuPjBcQGv+eVvMVnqLb8YrpyTzhZjTpiWQHM/bsDfUtRaZQOWkExoWo4g5lFirduVNWIUzoNaLk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=gYzK34zH; arc=pass smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-794911acb04so30817157b3.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:30:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769909441; cv=none;
        d=google.com; s=arc-20240605;
        b=bKavi8r98DQWzJUty85MX208YECFL+jrGUuHfdNpgSWFUnJ8R2Yz9ID/bc/LHu2Kfi
         roe6gUjp6pvNINFy1E0eiXR4VBoIPD7ke3eLlMogNixxan6SkXFVTPxEWKfCk62ApNhf
         E7o6Sul3DtgrcHO8YJPABcBlzBBGkh965rlUuzCJdNWRbmBZ4XCOH21UGetW1GDb6OzM
         SbkdnVSZZIrCQu/sypjB5pTZkRsGj1p6MCRPYpZlBsxTJgg7DIMJCh7X7soYbq4gCZbU
         RmuHWSg3gvr2HxdSNWf98S2K3GAXi5sZGC+hVWwIZWRz3CatpDIAYPEj2vfNtX+kJFuf
         zE0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:from:mime-version:dkim-signature;
        bh=YtJzQSsz3r19x6lp4EmF1fkbMg2fNMXsYEr5P8h6zJQ=;
        fh=mE8CasiaACcwv2u6MdM3QaRFP8X0IeYON1CFGxewhZ4=;
        b=k87r9CbNPV0/Lwu70UNghouzRKDbmd2dLP1HDL8jqzySLi4wkvk6hdMcjlPmmpnRhY
         311wgVQ1Pl7NPhB+p2nEVl07+EO2xw0xqKyDh4s7DUr216Nd4LvNJ8f2TZutMNP6WAku
         3LOXXEYASWUXxpIwVTPM5Iyl8AZ3MbBlUUJNfRsHxmdNZu64oIgGUkFEI/rB39vECngI
         TDzwYv8D+yVsrBQAFVs90LsYn1fmTB9hvyvBKHoybYOfLt5MM7Zt8dEd0CJ+qqDnRIDz
         D+Axk3CPa46L5BXBmsIu5IrgqiqYX3RjO7LZPSnQ4wRKVQQPOoAS/CMrXRyYpoByc4wz
         79sw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1769909441; x=1770514241; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:from:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YtJzQSsz3r19x6lp4EmF1fkbMg2fNMXsYEr5P8h6zJQ=;
        b=gYzK34zHchmDkmR9qtexCQmBxxhV0NOwLpqlZuEpfWMn9GzSm+4RmX/qbO9tR5vnua
         vHAcJSuiowCdNBV0xE4IH8ewIDwYmkmDLwOZKmSEOeqxBSCHoUh2LpNUomo41xkYuObQ
         dTBufNx8j6jlKPMxmoGXJ6icHh21ne4AlUXuRZNGaQnShX5F5Q2z0OHLPbhetRAikpfJ
         nppmhIFLfeaQtBjJk3Ed2qKFek5a+pSeNU+8mY5tB9nUrluTbrVrksdfa5KLycJ4aEpf
         iAO/ENnzELfE0A/ZC5gPh8oZal+9WQY+XLBAf4g2t1PvN0L4G2Wxne1/MvgTxKb7WDuH
         KjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769909441; x=1770514241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YtJzQSsz3r19x6lp4EmF1fkbMg2fNMXsYEr5P8h6zJQ=;
        b=K8Bm8zgVbT8fvEm4sEZv25ZnSYrFND+2gOsK9u1+1GH5KISY688/Y9Hzwij5Ay0s1t
         lFISGbqfREnPneM/mzfQzrwqXMWTQGNouAfN4p8GKDD62GUeDYYVN/AGh0nwyZG0Fg5+
         SR5nO+q773LPyeLpZwGodLauJJLZixvJ6cqYbRHA+Cm71l+vfrBrCGbDV4yKA0CG79Qp
         xyUExw/6GxJFWBTHfnUGPiBrbabqtR+P0n9M4RHfulJLpoDn1l+oMocik+IBIuCFxgfG
         CCPfM9wpCItY27wii5klVJdQcT0JVsvMJ22VU4yIqM7gxfR6iI7lkFASsIGL0ITiWruV
         DB8g==
X-Forwarded-Encrypted: i=1; AJvYcCXEGbF7Jr4XzmWK516HXAvfo5JPH+a5s8u+VGkpiOzDmZDhzGxNR0rJe/Yqu05CR3UcSi1mVcWPKHcC@vger.kernel.org
X-Gm-Message-State: AOJu0YxShJdvZupgTm73ODVgwUw18EgaOuIz9Cgt0M+OBTo0fwyA2t8R
	WE7YPrDgNdE01YI5jfs2WfdepG1BO9d6F2r+xAmBPBiPyDH3XpTMyEiIv35OR+RYUwoV+rwl47d
	yXnOeHEqsalUIwj/eS6YxVdq95MSVdfFvR6OgI/W9RQ==
X-Gm-Gg: AZuq6aKdL2oq4ZQ3oLMWhONM+caTlysnrW/EVZufxW1o420nM8mCWDuhl98KjIj04t2
	dwsOAAAoyq9U+V+loCGwL+vyUnjEIbSlAPMfopRmE/A+G5J5b5WP+9JPmrVZ/BSMfTM8si7V9Wi
	2EGu6UoYE9oI0UtV3ZFWzIbJ+3716fnJb/h+EfWw5xsIppF67vesVYQKI86+ybiNFLDx639IWcS
	LBlGjnNG3mT+/CEqlrTvzN0V3vyh3YNswuDEeu/6m35spiJ/bN58NdG5zdM3bdVg8Ni9g3e
X-Received: by 2002:a05:690c:10:b0:786:25e9:387c with SMTP id
 00721157ae682-7949dea8009mr71339287b3.20.1769909441554; Sat, 31 Jan 2026
 17:30:41 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 31 Jan 2026 20:30:40 -0500
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 31 Jan 2026 20:30:40 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
X-Mailer: aerc 0.21.0
References: <20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai>
 <20260129-i2c-xiic-v7-1-727e434897ef@nexthop.ai> <ab9dc191-59c1-40a9-bbf1-e6c082af128a@lunn.ch>
 <2428D892-89F9-4013-9681-AD9BD76B0874@nexthop.ai> <aX3VqGlIUGCvMY5p@smile.fi.intel.com>
In-Reply-To: <aX3VqGlIUGCvMY5p@smile.fi.intel.com>
Date: Sat, 31 Jan 2026 20:30:40 -0500
X-Gm-Features: AZwV_QgjzkwTZse_VBoXXZ0HhPaLJE15hdM8B0uOOS1PwkXcf_ENvfshKOTUuzk
Message-ID: <CAGYn4vxRbPVFvzm1b_mk2KvnRcJSO0Ewmx1tCTEALaZAu+ZQJQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/6] i2c: xiic: skip input clock setup on non-OF systems
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Andrew Lunn <andrew@lunn.ch>, Michal Simek <michal.simek@amd.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	TAGGED_FROM(0.00)[bounces-261507-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nexthop.ai:dkim,lunn.ch:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1CF2EC494B
X-Rspamd-Action: no action

On Sat Jan 31, 2026 at 10:12 AM UTC, Andy Shevchenko wrote:
> On Thu, Jan 29, 2026 at 03:29:45PM -0800, Abdurrahman Hussain wrote:
>> > On Jan 29, 2026, at 2:43=E2=80=AFPM, Andrew Lunn <andrew@lunn.ch> wrot=
e:
>> > On Thu, Jan 29, 2026 at 09:43:13PM +0000, Abdurrahman Hussain via B4 R=
elay wrote:
>
>> >> The xiic driver supports operation without explicit clock configurati=
on
>> >> when clocks cannot be specified via firmware, such as on ACPI-based
>> >> systems.
>> >
>> > Are you saying it is technically impossible to specify a clock in
>> > ACPI?
>> >
>> > Maybe a more accurate would be:
>> >
>> > The xiic driver supports operation without explicit clock
>> > configuration when the clocks are not specified via firmware, such as
>> > when the ACPI tables are missing the description of the clocks.
>>
>> Actually, ACPI (since 6.5) added a ClockInput() macro that can be added =
to
>> _CRS of a device node. The ACPI subsystem in kernel could parse these an=
d
>> convert into proper clocks integrated with the CCF. But, AFAIK, this ide=
a was
>> rejected in the past.
>
> Rejected by which side? CCF?
> Because specification still has that.

I think the argument was that on ACPI based systems clocks are "owned"
by AML and there could be syncronizations issuebetween AML and the OS.

See https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1712165.ht=
ml

