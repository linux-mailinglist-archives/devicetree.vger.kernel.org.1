Return-Path: <devicetree+bounces-317974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7i8TBJv2Q2rXmAoAu9opvQ
	(envelope-from <devicetree+bounces-317974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:02:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2FE6E6B76
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:02:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=sJlu2lqW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317974-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317974-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5ABD6306B3FC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C0B3D75C2;
	Tue, 30 Jun 2026 17:02:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B83E2D837C
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:02:04 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838925; cv=pass; b=NlyQOtWIBAs3Zz4VTnl8Ykyw84iXXpr3c1+r6WJvM2qchVo3gWGaxgqqHuY8dSzzWMhKdmCKlDLwadTeMjjkR91fJGYM4NpFM8OltIC8uNrIEh/uCmuIdA7LiQE3GfP5o8EbzTL4dJSJAtBdePzG4owJVLggNnPIPi1F4qHG7WA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838925; c=relaxed/simple;
	bh=u7rHJs9jICEwL0rR8cg3yrWmOb4tQOeogxpk6eKkbX4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lfIIdFmGsPZCpyQhoUbPcN67j4hOUoSHdBpzG9W7xnZqefF+tZkCB8f5VpEWPSH6UfWonoj7UdEglhVC0K9Aji+tVj7vUUBIL4n+0xcDY1VzLfAyz5CX3RCZjSfFV3vc65xaSaVHA9wOGywGVjtsn4yr0yvuDVq+SmN9z4YQGsg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sJlu2lqW; arc=pass smtp.client-ip=209.85.215.182
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c88973b6965so457964a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:02:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782838923; cv=none;
        d=google.com; s=arc-20260327;
        b=N1ArQj+7PNYfSapM7VnDma+xPmqz3DcAKdF+I08BR5CA/TnoS9AOP4/nhouSVg3HDT
         nSi+6hHyEDguct3Gq1i10Bqj70cjnosRCAaZ3eMuJH1b+edTCx34Z7y/r432vhiQp9wr
         fAepJPO7ajLd00AVMfW4KfQmYT0aS0QcdYs+TQPsEcLOmD5EZa3ZMjs1w80w4usHguoB
         CDtU7d2yOJMCiyjInXttzlpIq3mpNTMDomMBZEzuEl1c4FVfMev6i0pzGNqM4zJDOd7s
         FInMPLl6iE7Q6h+vD28TsUBQMogEQUPVLFfg5ecMAX4kegDB+wRVMvY1aasWYnOku3E8
         tDuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=u7rHJs9jICEwL0rR8cg3yrWmOb4tQOeogxpk6eKkbX4=;
        fh=y9xzJLgLBVnZSX9kCzOhbsiMN+1biyhvWboHwxXYBms=;
        b=rM/NlTpqED9oiNdcCVZlStOGGOSMvRN8/seluj6tdxs0SJG/2L4hXxsunLgPJg6AT5
         lL/3a1Bv7eKe4QGbeMwoj+YFnifj6v7Tiu4YSEoWzwfzN6Y15w2I15uZRejSkluOnQOY
         FK8wNYvRbp/49kw1xfrnC1KGtS3Q4mA1HS13WMr5RMDp9VbFw3g2pe6MmFA8e+jjdS17
         Anh9kZNWBy2+GCVM4S3v3ThzGFeRh/3d0ynZiRqwLBXqFfGZYvYSwBoYm7If1g732GaQ
         ANK85kEvK51w6BClyCbVvC4R+PXAS0KJuHCY3+YvVjz1O3MlhFjyOB28KA6hXN8sjWkH
         oFXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782838923; x=1783443723; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u7rHJs9jICEwL0rR8cg3yrWmOb4tQOeogxpk6eKkbX4=;
        b=sJlu2lqWliD2z5vyLfVuatTv0PiEUP3GyDgnd25UYxRaELNn32tyiH613zrvHBKky/
         y0+nClePzMGKK21o5Jjd0dUCsvvYztlV4p5Ayt7TrwemaLJHl0IEbnfOLcMT3lU76kQm
         Nff9vhDjnlgwzZZfmfAEM7EzNwL+gayyW+jAfy58/G/2ErPSzMsIT2CTe0gCGurUB4rT
         S+BTyBO4VsmfWbs5IeER5A6FPDOjmJtEUMj+8mb9purXp8GhFFvEjXl3t9uxpPviC2u2
         a5E8riX88pCoXt2v4+5wGeebnxwrZNUHFSrfur+X5CvZ6e8Yef9bn6HLOKzlgydvRZ5T
         21Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782838923; x=1783443723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u7rHJs9jICEwL0rR8cg3yrWmOb4tQOeogxpk6eKkbX4=;
        b=YaBzPZjQ290RIJNoNNjjYI9fbaeKMXfeFJ58RrYBrqK6F/dZtIaAftXf4O5b8VyBrY
         qAzDKj2O2VBDIb+AfvmnoGh+Twjh1ncYvjAtq4yJwZsv/Gpo03dXZ9HjRBtqJK/cj+9e
         vo1gGRjJYwOqUJFo2hdJnclPB/+LtYToEnAHfIJtUTuNZGjS5wObvAA2OocHubjhCbi3
         M42lyfdP4fz4bNnvQ6OqRe8Zd3KjgFv/AgGZgbYDowKIvoLJrnPL2M5BPDawQX6EMHgl
         6lmnGh/VmHAUK+yJmBR1E/SnxU7iqSYmYa4RythfIc2KCzDaAn1DVGubzTeq1fYdQYHo
         mCXw==
X-Forwarded-Encrypted: i=1; AFNElJ81hSZgITVA51w39TKkVM0f/p7H5FNPs7+kz/871xcwcnDcbdX0imR/dvC5N6F4sXBhxFmBXpHXZI9l@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc3joA10epqtv+fBuQ/SQ3/v3cyH/5PMF48CJ0n1uJ+JSQlljl
	iyl8L+647IK6ECJvFKE+4RwkAqdYNwqaYeK9v3uLE3MuEu0vnxPs6pi6XaBP8zV3XXibKfDsEbV
	DVRMXab6FCZitYoQ4tOlDntacRS4N+Wk=
X-Gm-Gg: AfdE7clYU1aL3V3P+6nSR7pKQvYkjTzjKNRcKebj2uBSyqc0rZHJpJJ2fErzrQmqs+5
	JZ3EvwlZ//O03QMF1vOR8d7EEhFERBJTHjNo7+eIEh20jGTUdCMSnr2v+58CKcO+zoB743I4Vek
	fk5+CCFllc3zCw5XgoD/+Hx2edpNKFOlbD2353t1ZFoKRt3YGhelaJuJoYYUv5m5PXACHGfuVmw
	RzzTa75b9THmU7KoXsgn50Se7FwQkCWpjwtbBt+baLIgGfGGOF5IKN3ct++X+Pfke7UIZMiIKWD
	zzafcAAiYvELOgSgI+hLQsbqaa0HUq3D+trQazCxZg==
X-Received: by 2002:a05:6a21:1bc6:b0:3bf:9bd9:cf54 with SMTP id
 adf61e73a8af0-3bfd2637dc8mr2029537637.8.1782838923351; Tue, 30 Jun 2026
 10:02:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
 <20260622221550.374235-2-jakubszczudlo40@gmail.com> <ajpO9zaZbIl3x1uC@ashevche-desk.local>
 <20260629235118.1abc4067@jic23-huawei> <akOqIVDibovrbBAK@ashevche-desk.local>
 <e966a0dd-d8ef-4009-b609-546a48bd16f4@gmail.com> <akO2XF2dejbao6Zn@ashevche-desk.local>
In-Reply-To: <akO2XF2dejbao6Zn@ashevche-desk.local>
From: =?UTF-8?Q?Jakub_Szczud=C5=82o?= <jakubszczudlo40@gmail.com>
Date: Tue, 30 Jun 2026 19:01:52 +0200
X-Gm-Features: AVVi8CdVri3EHATATvfuvom6TGocFdcDcnlRg5z8nfjRm7v4mPHz7kxTZkawjRA
Message-ID: <CA+gq5JiQV3n_t1OA6++_ZVqJdsCZmg-mnz2sHVpFsCZyp=QVgQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Matti Vaittinen <mazziesaccount@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
	linux-iio@vger.kernel.org, andy@kernel.org, antoniu.miclaus@analog.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com, 
	duje@dujemihanovic.xyz, jishnu.prakash@oss.qualcomm.com, 
	jorge.marques@analog.com, joshua.crofts1@gmail.com, krzk+dt@kernel.org, 
	linusw@kernel.org, linux-kernel@vger.kernel.org, marcelo.schmitt@analog.com, 
	mike.looijmans@topic.nl, nuno.sa@analog.com, robh@kernel.org, 
	sakari.ailus@linux.intel.com, wens@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:mazziesaccount@gmail.com,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317974-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,analog.com,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,topic.nl,linux.intel.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E2FE6E6B76

>
> On Tue, Jun 30, 2026 at 03:08:42PM +0300, Matti Vaittinen wrote:
> > On 30/06/2026 14:36, Andy Shevchenko wrote:
>
> Thanks, Matti!
>
> > Just my random 5 (or so) cents.
>
> 5 because Finland doesn't have 1 or 2-cent coins :-)
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
Thanks for all reviews, I will include them in v6 version

Best regards,
Jakub Szczud=C5=82o

