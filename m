Return-Path: <devicetree+bounces-270669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM/iJNgbp2kUeAAAu9opvQ
	(envelope-from <devicetree+bounces-270669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:35:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1071F4B05
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBDB43040A85
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A383E7162;
	Tue,  3 Mar 2026 17:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dj/nG3x/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F83A6EED
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 17:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772559170; cv=none; b=asVD+jXOcRj6VN/73vICfIXRjVe80dONRi5Z5X4AizJ3mZ6sPbQzjU8/6M6N5IN4J/SrNLNwj2cmN5geBQ7GoGd00wiuD1IqqiIlHz0Kv9z7Psa5vNx+OH69MLzfZC5v8AGes0SWHa0ti3PrmRFVRMKgj0zEeRhCWAHLNQDEWkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772559170; c=relaxed/simple;
	bh=Uv+o3nt24VubCi5V74qWOzNcGTqTlP471f1shfVhHpY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z0BuVCIA7gCNNXdrdOMYW5tSchz434XIG3QFY+MUxcqLfZyViFC4ULmUnWnnviEUcYx/SMpSXec1O+BVYZ3fMZtoltS053Po9xpPor0+sARbAL5unQI073Wz+Q70CL2vS1cxNX5XE5LPRPgKSzxFRUqN5nRVSDAgbYiCRJsUV9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dj/nG3x/; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439c56e822eso321216f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 09:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772559168; x=1773163968; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+43wN2GkmwxjptarzmeXzSaDAouW4OQGUiQFosj4E50=;
        b=dj/nG3x/91hBIarAD6Y1FWlnUlA2ovWaZzYT3pmNcWPPgFayqv6ojDeZ6PLEciQv9T
         hIDOvAuFP1gpfMAglEg0yRk8NS/c+d3XEOkeYuOPq7emGwz6YYUWWOCUb3ugEnb3BcNS
         9yGom0y0POETKE0oEVhNMPlBrm+nx7kt++vTzcLdC1y6qhV3Gp2x5qHfejFTfMd97TrN
         PNne+oloIQzl5i8CYeni3x5CBOLRnz1D7DbINoGhCYLtJwEjK+Chxziz3aedNF1Z2p4d
         i7lZDzVaOJ/SKgR2M0Mz0TNgUd0g+IU5jkFeZJT9sxzzIypYr8VPSQY80YaidglqoJco
         fozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772559168; x=1773163968;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+43wN2GkmwxjptarzmeXzSaDAouW4OQGUiQFosj4E50=;
        b=JMnYf3H9Y2PaowyGxNnE7DT7LZcXSi7trxf9VOOIvsCoy9wNxVMEJkgQCvLFT3FQCP
         9nPQNZ0vGUa4Oz3QpS6hZ6v9exDFv5ddNSbyrFs9XkuIG/wO2ZhmK0kbS5JJHhzt0wVH
         kM2+HKtlao/1aOpEVhdZl9+A9s58M0vzu16TKVFoFXRbBmU+B8x8w3isrYOfXxlJdW+K
         lrPn+RvYr0LfpM8+VA/lbk7zVoapxxfrQLpfSGPfbt6qaK5PrOFbMJEdL2h3lGOweIsE
         V1PiRfQtFXtPbw9QOlppqtSr/SsmORqv8NUmusle8UxFRgUHFght/dtFDuaygGQrwyJe
         c08Q==
X-Forwarded-Encrypted: i=1; AJvYcCXpbmRhlssi3spiCi5YPU4k8G3fHSHMu+MSk1SQYcE5TPwjTMs+9GQK33p3qne0NfzmngOVsBw9zctT@vger.kernel.org
X-Gm-Message-State: AOJu0YwC20gQsPZYJYFopYQoImmVDG6+MyNr2c9vv6zgR1cTRqFRHePW
	GDmht7zvvXrnI/wVCd6IWZAe/HqZqBf4NV6wJCJRQcuG/vW/1Is2VMPr
X-Gm-Gg: ATEYQzwi/Oub96NpRBAm59W9hIrryo3QGtgBqxF7qNN5vRKuWaDAVA5VoSdqeJoEcDa
	l7pkKMusKkWNgEeFK/dvScgijedg+FA+tPJzkQxfj4tgxoMx4x1ZdcLSonE9IMz9L3WbF51Pxrl
	DJsKngf3UncO/8tTAHUb990Pf1eQEfq1IOr7AbAp5GkOKCyC3y7BhM75ZZ6Gee7dR8Go6NbEFyL
	h9oIvU8tX5uiEdV8KYBewRJxUowo4EtUSHC2UcbVD/oi7/p3U/NVg0fVxkIpMruZSagThbqqMtN
	9u65b5k74Jt4VEAWbIY+Zb50MLBGXaftwXmOBRSvCiUyo8VrrtNhKw8pSilM9NR2wMDNUGQ3+wy
	biCUT/tp6y2q54qfPLFC0uIi5Ig9bZ9INMMEuJlIiHdkbSp5sxNIWZSAOPgKIhx34mO9xX1EKyL
	UrSshw1nK4DRoVd798PPkvQNDqd/XIjlmSRPYa/pPaW69Sk7b7a9X500Qw/afFzhyE2mgyTznkQ
	l8aLxIZ5Z7JztDmYjaBSCKX8yMIpv1lbulIMHSbHeJjMHkN5GE=
X-Received: by 2002:a05:6000:2005:b0:439:bddb:cc77 with SMTP id ffacd0b85a97d-439bddbcd0dmr9732037f8f.37.1772559167203;
        Tue, 03 Mar 2026 09:32:47 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ac9f3e5bsm27475071f8f.37.2026.03.03.09.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 09:32:46 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 3 Mar 2026 17:32:44 +0000
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <cb55v4gbaqp2n2jmstq3lhrrqoybxbwfa3oek32xstzwwn4uw5@ilhclierj3wo>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
 <20260301133153.7f2f8501@jic23-huawei>
 <4rzqg6gax4r3symyoimekikz7p4pfwjzhfamjudk64f32675oj@nlrz53u56p55>
 <59c3c6324ca971dc081624e0c31131b9e7dc9c63.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <59c3c6324ca971dc081624e0c31131b9e7dc9c63.camel@gmail.com>
X-Rspamd-Queue-Id: EA1071F4B05
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270669-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Action: no action

On 26/03/03 05:16PM, Nuno Sá wrote:
> On Tue, 2026-03-03 at 15:32 +0000, Rodrigo Alencar wrote:
> > On 26/03/01 01:31PM, Jonathan Cameron wrote:
> > > On Fri, 20 Feb 2026 16:46:10 +0000
> > > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> > > 
> > > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > > 
> > > > Add RAM channel with support for profile-based control. This includes:
> > > > - RAM data loading via binary sysfs attribute (ram_data);
> > > 
> > > I'm not sure that's a long term viable path.  We either need
> > > to figure out how to do it as firmware file load, or via an output buffer.
> > 
> > Could you develop on this? it is not viable because iio would drop that
> > support? using sysfs_create_bin_file() directly would be better?
> > 
> > > Firmware load would probably be too static and I'm not sure quite
> > > how we map these to IIO output buffers.
> > 
> > will investigate this buffer route. At this point, we can have multiple
> > buffers, right? I have the DMA engine buffer working with the parallel port.
> > 
> > ... 
> 
> In theory yes but we do have some issues with the implementation. I have some
> fixes but for code that, unfortunately, cannot land upstream anytime soon and with
> no users, these fixes can be an hard sell. So if we go the multi buffer support it
> could be a great opportunity for these.
> 
> That said, the fixes are only meaningful if we do need to restrict channels to a specific
> buffer. Not sure if that will be the case here.

Without design changes, that is exactly the case. A triggered buffer
for the RAM control channel, and a DMA engine buffer for the parallel port
channel.

-- 
Kind regards,

Rodrigo Alencar

