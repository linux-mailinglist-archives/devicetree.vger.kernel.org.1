Return-Path: <devicetree+bounces-264789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Im4BaOJjGmHqgAAu9opvQ
	(envelope-from <devicetree+bounces-264789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:52:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7979C124F69
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 114B9300F5EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6758831619C;
	Wed, 11 Feb 2026 13:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K1pCuEWR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDA33148A8
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817950; cv=none; b=lxwr5VWRymc+zv4TgKrkwpydevCzmqpv9KJ3yBlY0ZTU4pJTNSFlZjqvpX+ciFzsClzub0+HXprNU4wKixm+5Sdzehku0w3snkiXcNEJCrvTSgOEcfFZTkCY4/RUp3HFvRKtD1PuqYQzT7v8FqmrdqVfe/INsAVUKlAZsG8Y52A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817950; c=relaxed/simple;
	bh=xwxehR5oQQHV52su04cZTdDPKzeRjgxC3haKlVGJdcM=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cFwMFy5Jv3DuP6FyWWAntcPF+L2SiLBJ8AcdtlUpx99jZsoY9Ez+fUD0WmaRq33WEhFzw+WvsSCrsUzDPITXv26GwjKCpjyCAPGhvomFJ8/ND58ymOMQ+rh5CEs86HpBr0uiSqeTBmlzC3l1q1mduD7JjgewcAMBtrDIqFjgV9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K1pCuEWR; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-480706554beso57380775e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770817947; x=1771422747; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PvZw46mbzAoDzNjnv6pKObISf6Xw2iB0KdRFCcx6jrQ=;
        b=K1pCuEWRddPvzYzgWciyTOo5xx4v7sKUEMDB17KNfeFkp7ihE/iFjuSIv5i4vet0Oh
         wabxSuSVIun6vDXr8JRh7J8OpbhG1pI7JMHBGeZyFGWStxsPzkBVrRu8qAB2Oc7PkARu
         mmsHOUQZXTO4FJYIpsX9J/PgOfW0IhFK/KdMNUIg33Nl52csOJqwGp7Ab056KMNYd+Z1
         M3B6pNH2CHAA1rDwAfs61McXQPhi2LoAuxGqrNBUYR/zuapZhxwynymVpGXNUywoZyR+
         x8/i/bfgDc6DiOfvbmK/DuShTz5/k7EbfI27veLMjsS0fyg7JdNO1CpdhNgal86i7J9N
         4EPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770817947; x=1771422747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PvZw46mbzAoDzNjnv6pKObISf6Xw2iB0KdRFCcx6jrQ=;
        b=fxI77FEL591+gLJir17e1v3cRXHvr3wwUSvKBFPfgvBJKNNNJFskJsCnyq/PvGdF2f
         bj97oXGLpVsZSBRBai62Wjw+ZKcwg9ldln/ppE7LN0j843B+94Qq7ciWGN5RwSNUiKLG
         Q76eN0e0opiEXKaNufmvMI1ByK7SbkubcrLFqQQeQz5+xAgXWZ1Z/dr0jvvOCQvKovmb
         QfsPgfZtijyrXF8cda3cKVd6rok0BSByGh6zaEkmDUmbN2EDjf2zI1ETWtOv/OEYhC5B
         /X5g4LhuCRDkY9ErEsSo4qedMAqTQHXpA0tSMZQ/5XAvSyfmUnN2lGkXU92PVPNL/KRS
         VnCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGoz2CBW+CBI5zkd53KKHC4W9wjQgrVscfcVNzN9erUYjYGobwGnvtJB/WQN3aBHXpiW9iaop4yht/@vger.kernel.org
X-Gm-Message-State: AOJu0YxCxJlxeOR+FNNiUdLXhgB0fVeHIIGzO/uRJOvvPp0Own2v/GYc
	H1H17nTAGIHzBcQCW2fuJXgRy8uXG2CHvd82ziTnBag9LFAdoa9tHFIP
X-Gm-Gg: AZuq6aLlnKAgyhAIxLIEuVp0DiDt2vyoOGaBMS6AzKpgHQPw4kVJd0PS1E8na8hl3IZ
	eV4CnsXq8RJqUWbxcOMxN/ajm1fA3VBE3mGqVlB65zAk+18Xtg/ltQjCkw3DpuueLP0V5zFeYLI
	bNPq5UA/5xe/NuD0i4MiiZXGqpJv6ko/simDOzWC0bCJYFdpmwyXM5IyuY4sBTQMwoSLN0n60Uf
	VZBBDxPZRqipY09czrLVp7Qj1gJJILXhYbABDdPY4wFpxQbEyZeOJE8m3gkhrzSbkyCYbHORvOH
	tEERrsaKjuZM4IRN+n/mMM48RTSpDUTmXy0gkbw+9FSoyg+aU6P1ePv8jDDd85Ba9rtRhgKUNWB
	MQs3JRjTdsqeuiyjU/VDIqkbeL9hY9AX2CDnv+C7zbL175f+w+ospZJrd7I5LzXTgdHHFmapUtn
	jqrudzV3E5CfR1WLYYEA+cVOkrE6ybTDKjoeYlLUh0h0OuvMK4ETuEyTQtFyJ3N9uujNeIXvL3j
	cuDdh+nrpzi0MbV
X-Received: by 2002:a05:600c:34ce:b0:479:2a3c:f31a with SMTP id 5b1f17b1804b1-4835b8f8aa9mr35063395e9.1.1770817946925;
        Wed, 11 Feb 2026 05:52:26 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7e50casm121420995e9.8.2026.02.11.05.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:52:25 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 11 Feb 2026 13:52:18 +0000
To: Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v6 8/8] Documentation: ABI: testing: add common ABI file
 for iio/frequency
Message-ID: <ecfpri6dr4kidvecyulzip7m2bmuw5refocls7vdtruqinrklc@dzm5vmk7ul5r>
References: <20260130-adf41513-iio-driver-v6-0-cf46239026bc@analog.com>
 <20260130-adf41513-iio-driver-v6-8-cf46239026bc@analog.com>
 <20260207172458.7f2cca90@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260207172458.7f2cca90@jic23-huawei>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264789-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7979C124F69
X-Rspamd-Action: no action

On 26/02/07 05:24PM, Jonathan Cameron wrote:
> On Fri, 30 Jan 2026 10:06:49 +0000
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> 
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add ABI documentation file for PLL/DDS devices with frequency_resolution
> > sysfs entry attribute used by ADF4350 and ADF41513.

Here it mentions that this would also work for ADF4350.

> > 
> > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > ---
> >  Documentation/ABI/testing/sysfs-bus-iio-frequency | 11 +++++++++++
> >  MAINTAINERS                                       |  1 +
> >  2 files changed, 12 insertions(+)
> > 
> > diff --git a/Documentation/ABI/testing/sysfs-bus-iio-frequency b/Documentation/ABI/testing/sysfs-bus-iio-frequency
> > new file mode 100644
> > index 000000000000..1ce8ae578fd6
> > --- /dev/null
> > +++ b/Documentation/ABI/testing/sysfs-bus-iio-frequency
> > @@ -0,0 +1,11 @@
> > +What:		/sys/bus/iio/devices/iio:deviceX/out_altvoltageY_frequency_resolution
> > +KernelVersion:	6.20
> > +Contact:	linux-iio@vger.kernel.org
> > +Description:
> > +		Stores channel Y frequency resolution/channel spacing in Hz for PLL
> > +		devices. The given value directly influences the operating mode when
> > +		fractional-N synthesis is required, as it derives values for
> > +		configurable modulus parameters used in the calculation of the output
> > +		frequency. It is assumed that the algorithm that is used to compute
> > +		the various dividers, is able to generate proper values for multiples
> > +		of channel spacing.
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 0d9b7cf86aec..748eeb6f5bd2 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -1639,6 +1639,7 @@ M:	Rodrigo Alencar <rodrigo.alencar@analog.com>
> >  L:	linux-iio@vger.kernel.org
> >  S:	Supported
> >  W:	https://ez.analog.com/linux-software-drivers
> > +F:	Documentation/ABI/testing/sysfs-bus-iio-frequency
> I wouldn't add this here. Whilst for now we only use the defined
> ABI in this one driver, I'd not expect it to stay that way.
> 
> If we do think it is very drive specific move the file to
> sysfs-bus-iio-frequency-adf41513

The file Documentation/ABI/testing/sysfs-bus-iio-frequency-adf4350
contains the same ABI description, should that be removed there
in favor or this one? If so, in MAINTAINERS, what is the best place
for this ABI file?
If not, for simplicity, I may just rename the file to
sysfs-bus-iio-frequency-adf41513, as you suggested.
 
-- 
Kind regards,

Rodrigo Alencar

