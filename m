Return-Path: <devicetree+bounces-264590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZB+iDXX9i2kYegAAu9opvQ
	(envelope-from <devicetree+bounces-264590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:54:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4AB121152
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAEDB3032069
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA36134FF62;
	Wed, 11 Feb 2026 03:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WX88eyc1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14C734FF4D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770782064; cv=pass; b=oTipjxmb89rLjEXzfiWjQ6hK7WNNO0IAQdLNp+fNEiCA9IGd/e0yCBLFZLta2xTA+iRETNVt8t+TNywDAAIi+VS1d9HPwGdkQWLkjLWqH/+qy15Sf5OTZ28Kd03uxJ8byOynGLSd1UUC+HlAaCvBssqaKHWZ52/Qf199hKk5D5U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770782064; c=relaxed/simple;
	bh=Kpndn7Ynt5Mhcbb3tZDmKrDZBVRVefJzjnWU6cq9rh8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HXt/0HOGRLVOQLh7ipLo0ROTsFdotbpA55Ol/TlvjILoI9A7NbsOkdBs7XynjAPQ2nQyLYLxpwMhB4wutnhEP95nqJbIypo6PGp5T2iXRhBcYgn5jYMTmPQYfwGeQ0RcQ0X4trV1hIVh5obCbIBQ7zgaGj4S5y+0/IxXYlJeY9A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WX88eyc1; arc=pass smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-5061cf5eb74so4778821cf.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:54:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770782062; cv=none;
        d=google.com; s=arc-20240605;
        b=TepjxG79yIjfHIzAbWlAgW2oIWIJpx2dXhe1r2hzAKTJiGA/9PWipA9kWyfR4QpErq
         +eG60H4Xn2cgl00xF8YuuhFghtMgzeT+fzrnrQGiR5jIafN/sJ3fap7Zj5/V2MwE4BJM
         zk6IqIlYcaVYQquoP5BfRuMKx98NOatGxcT769VK4/i2rXxbTWPLPwH5WRiyXSEsNiIW
         YhPhECOB2tFMLg1jBeMkA6PhW9/uCpln8QtJoY45cwVAReBNy1rVXLMsoFYe/SLfLgo/
         6RVCBjlioZe3WmNcWltIBmCVjq6e3jMwUL2kSL5K4XF/Sl44F+a0dlXXrs2DrRkJAWrc
         YX3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Qibh9Xb+pnsV0G7G7GmqkDCjhdOrXcRx1DU23MEWVA8=;
        fh=hHsA2h9ah3heOtBJ0OdbxfFoPP3tJUuKxeVwp4ard9c=;
        b=YMrUDLSCay1MwgvORg1T0ySlVAk4bQISKOaLCzsBOmObGaQHCeyZ9yLe0Jg36CpC5W
         JS/fwonFYpUTzsX8r33fnMOgl/ASeeitGjMAvCB1NoO0eulegs9nH1IIILm4fKR8OMbO
         5hBuV+9VIOhKorJq1wX2D2QYyshpLgwonGU8ykoPY3NFVMqvDrTwXhvSLdPmfZijQ83g
         MVd6K6Rx1fBhrhgPyLtPRV+xBEE/oCSMEDQSWKO2aXNMOaX7aWyyDHbsMIk8CQWWTLO7
         RjuSiMp+xotLw39a075E2MLx3NvTlHGJeFBzFJpJh1LULWHVByiSeyTfR0REpkWmZzJe
         dKZQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770782062; x=1771386862; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qibh9Xb+pnsV0G7G7GmqkDCjhdOrXcRx1DU23MEWVA8=;
        b=WX88eyc1c9ppZkoB+QHkqgiG7SLfrljDOLKxdmBJaRlVFILkgbuYVgUlZAlTRJjQD0
         yo48pH44vvsUFlz3yqgSlB2Fhu5jtHgL3ov6bLuFOTYnJ3v/7oQwfrmFLjkDohoaPeca
         C9c4+11M9hOkOypWo1cDHG1G/Xu1tUZ6hPQkWYKMiNdri6MllOj8FdBeF8zOxT+OGLFV
         HiuYU+uCN1Axrkv8YQjltPxFrlqbwcYwgmWfQyMke3iKfjEkxaY6sBB0f7ugLS2FFvKZ
         ZxoYtLOrehZUQh9LXkT45R5HjyEoyRjZL9EkY/rbkukde8Vq8QK3VHTz7qdWwttIR9tB
         2HDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770782062; x=1771386862;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qibh9Xb+pnsV0G7G7GmqkDCjhdOrXcRx1DU23MEWVA8=;
        b=kH0ogZw0WkNXYGqUj+br+R0UmxH+6WuQmoi3KRTZriIFLe16TfrG/tvuGliuh3rfMN
         TI/drirOvgUIxq+ePGatdO8oUnZcsf9GUzTGvt0mtQcEnmEIR5Czm2N9bkUBeyU/+Kyn
         dan4ld6Z1wDWgULJFFMbVAASSu2AjKWIWwDrXZ4L1vKl5oUIB1AJ2n48FCNakOmN818q
         gkd92PJWesOmrNeEOzWxZZI1hSDTMMhhxR6aCxIO+WGsGg6NMGy2EshYzYwqKATNrpk5
         Y5DiB57G/hkf6jJlxRDJviVuKVMFA7Nj/hyIFZvIj5PAdhjMXwXfuFE5VXbV5K0v9np1
         Q9oQ==
X-Forwarded-Encrypted: i=1; AJvYcCXn+/BrIENyfTm/7n8OLaV7LepjGkeRXv0KaMHPo8BnBbX6Zba9d1ICac0B0coumYTC8JcTt7f+4IOh@vger.kernel.org
X-Gm-Message-State: AOJu0YzCbYjK6MEwH1eRDG7oxaaI2Y6vvM6pHfPSRE+Ftr2Ut7qhhUvy
	N25yc5kvrhrBjWMkSl56/8n8OIEHxqeDNkLT2doZz8eDCkXDj0o0S8vD4vU+H6h29X2irkaedMF
	HzS1ZqWZ8HMBHSyT9wr+dv0QPoYW+8Nk=
X-Gm-Gg: AZuq6aI7ydw81v3PPyxDDkB9mLMObd8plMku074Uz//5yVCXDajFvNyD8c+IkavHHZy
	/DM+9Eu63dN3gisNBtlfNrBGSH/o2dg9W18qL0hkV2fVTu4ANp/42vMzyimqadY6kL7h7Hr96w5
	0+y5lTiM5raO3yiujmoXRzeaFRryHw6xHqpd2HEz3Mo5/lcDmPf6XN0NQApH4bu8eXel1pXxk78
	ZgX8OAkuFh4FNRc8xwronBN5XOpqxk1gjbWmarG+8DCrezlD1RAuyes06vutmRvYOX4Nh03XwpQ
	o1HuwJVkBcVJepYY+rfH0GYEe2uOmoLHQeXeQMf+/1uRJ50nHa84UOGmoxFE6+XwPVWfzZxD
X-Received: by 2002:a05:620a:46a4:b0:8c5:3892:a554 with SMTP id
 af79cd13be357-8cb2a2aefe9mr41885485a.3.1770782062644; Tue, 10 Feb 2026
 19:54:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-5-2b4d74e309d1@gmail.com> <aYmeeWeXRdPHZxRr@smile.fi.intel.com>
In-Reply-To: <aYmeeWeXRdPHZxRr@smile.fi.intel.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Wed, 11 Feb 2026 11:54:11 +0800
X-Gm-Features: AZwV_QhSTatCzBkN5UpJ1_YnFGgpQeEWJl9lfNopf4vG4Ke1r5HimKJXRSz0LG0
Message-ID: <CA+NOmzLXv8C-i-dHxdsQ2bCCYxhU4ay2ip6LXK-rcimWSZA-tQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] iio: proximity: hx9023s: add ACPI support
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264590-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6F4AB121152
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 4:44=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, Feb 09, 2026 at 11:37:06AM +0800, Yasin Lee wrote:
> > Extend the hx9023s driver to support ACPI matching by adding TYHX9023
> > to the ACPI device ID table.
>
> ...
>
> > +#include <linux/acpi.h>
>
> Why?
>

Ack. I Will remove this.

> ...
>
> > +static const struct acpi_device_id hx9023s_acpi_match[] =3D {
> > +     { "TYHX9023", 0 },
>
> No ', 0' part, please.
>

Agreed. Thanks.

> > +     { }
> > +};
>
> ...
>
> And since you added a new ID, please add to the commit message if this is
> in a wild (and hence the vendor and model of the device that it has) and
> also an excerpt from DSDT to the comment block (after '---' line).
>

Hi Andy,

Thanks for your comments.
Regarding the ACPI ID "TYHX9023", it is for a product currently in the
late stages of development. We are in the process of formally
registering the "TYHX" Vendor ID with the UEFI Forum.
To ensure everything is compliant, I will withdraw this ACPI support
patch (5/5) for now. I will resubmit it as a standalone patch once the
ID registration is officially confirmed and I can provide the verified
DSDT evidence.
I will send v2 for the rest of the series (1-4) with your other
suggestions addressed.

Best Regards,
Yasin

> --
> With Best Regards,
> Andy Shevchenko
>
>

