Return-Path: <devicetree+bounces-270596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YC3mE1z/pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:33:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD3B1F2B61
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D45603011161
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B32A348C8C2;
	Tue,  3 Mar 2026 15:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Phmrstvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4E348C41B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551983; cv=none; b=WQJlzCbP45L70cYdD31y4ZUs+oEPfDQkAXs+f+ICwWYIbsqFUoVibqKd+ul75j03tNWwdPX7gxTUXm4jFa4C37G9iMbdNEiz8LiSNNSlSUL0TWiBhjfoxJaxXCTCiQTqBv5rcWMfaoquZaJo11Rix9RaFXaljlg9zGzKd1Qyato=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551983; c=relaxed/simple;
	bh=knwC9kgWxCDIFBJO3vP9PPOshHwAvt3OG83B1MAcs88=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tfk+wKSELbk33MUYDnGRYJLa8nT7lHRBy0q/fJQnDbmmpR7n2Z3AP0jG8wOFvVr8fcbN1eWRBsNzfxqiyT+jKJHFiSjbgTNK57YRxRgg5HWpmWIL2i/lpHostXwf9BIU4TZ9QPBuwegRoA/XjRD94sI3MRIl5wSON5o0ovYKdJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Phmrstvm; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-899fa9610bbso36049196d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772551981; x=1773156781; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wPgQdUkfXvNqe1a6vfoPwswDnD6ALDbRdn40tHYbZAE=;
        b=Phmrstvmz+v8S/ut++d3KkKxW7MdTVBqTkAd7t2DhrB3DKpEFTh4o7dLITJqdJtHfZ
         Gc0rh48A+HvBA6/oGinmUFS7dxTH4XV1dENC8kYosVIqS0jcKM3BJ5nUBYvIWRUUH/v0
         9yssB+FilG7N6In2MXgHWqrMwf0ru6+1CjfbyxKXGGj9XpJAZL9KpETTc9xSZRZtvwtv
         DJmFuKqln0OVESlsy1gFeX12JIW2wBNMR9uomm3NE99rCLMTs1E0sDBuZN9zGIvA3w6T
         nBnpeJLCgIl0jffeUXD770QZ+ZsxnZlmVYoBQorzIBM/PdARlzlbTSAr+gy9X7vGfK0c
         L1sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551981; x=1773156781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wPgQdUkfXvNqe1a6vfoPwswDnD6ALDbRdn40tHYbZAE=;
        b=H7QfDc5TyOj9Vx+p39qSkJwlLs7ZjaYWQ9UI36Q5WGdo8HBaGKduXREy4GNCkEW6pq
         YOLQgym5rl/s8Xgzb6ozvQa0aWMNC3XTQFuTzfQwXVFnTL1SxflX9c8z3aWA4rks4Bzh
         A877PGMsRS+WpVy/uQevfYN8a4iy/RoXWbwMe72BYeLAv5V4lA1kwjSBVXEwOfX/96Zg
         B1DjTb1wv8qnv/j0f8/9xqE2SCmHGJtYS3D6h3xIonRl0mGtHz6PDWdQZnmboEogOh4q
         LRqHofXsrIQW3f0qpdsdMUyaXMGr2sYmBpvXAubCovquzzGH6hAk8yNGDt1xsasgNWvW
         /lmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMTSi0ypOUbuHbvz9kmFnUKILrlfjHyNhhvZ3oZzDjIZwmZODbss2Cr65bX3AXcMcWqGrbqYZVcHxf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6+fFhxFYtgLKX8SUHQuxtW81GYSZgi1HG5yuAIgIPNRSjVl5K
	HI7O5n3QdhtjqQsSDrvg9l9ephCmI8mC2n2dNYbol17Sx4qdjq3k2O5K
X-Gm-Gg: ATEYQzxCJ7AcbazJsi5n08hKCx+lV+4khSt8I5toot7tDrGkYO+l1P9YXYnfzHu2pDj
	DlD11GmJU9YPXTZGl2aaHieiQvEiXw/7hw4N+zCYKwFC+wKH62TPOhTTxkmZ1y0rOigKcf7j4pO
	g67+YeVXRHuTl4sPN169O0F34HQIvDGSn1GqT3BA6E3XXd39VjVp+1Nr2N8VS8E8RdkKrIcohyc
	m2RzTsPrlkkJKI5G7tRK5gpboNcSQXm7tjohh0KtM94GHkbvStF0uyKR6yeD+lq5k4T4qtj6OCZ
	Z47Rh3p38YYozBJwtPMPyPzLhgVZ+l6v79pEq0sJoTAFGVTSGxEopYI6CVHsUZSDCI1HKadBhqj
	kbXv5a0vzlKF+QGikhAPA5+yoWHk9bHIha5U3U8SE3eGgTn8QUI0XWqOD9pKfStSjTsqJ5kDeGL
	ULkANizOkdr2r3rW0rPJ/gZY1yzo16mZ/u1F+8c0/PeP3+JMepXgFtRGs9UJwQrG5eK56WbFVLM
	/EFFsKrSAVGZDvxVFqQdbsiiqzpw9M/LsHFbkSoaekKhNPJbh8=
X-Received: by 2002:a05:6214:19c2:b0:89a:360:3b72 with SMTP id 6a1803df08f44-89a0360409fmr84242466d6.46.1772551981046;
        Tue, 03 Mar 2026 07:33:01 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a04849cb3sm31946746d6.6.2026.03.03.07.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:33:00 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 3 Mar 2026 15:32:49 +0000
To: Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <4rzqg6gax4r3symyoimekikz7p4pfwjzhfamjudk64f32675oj@nlrz53u56p55>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
 <20260301133153.7f2f8501@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301133153.7f2f8501@jic23-huawei>
X-Rspamd-Queue-Id: 0FD3B1F2B61
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270596-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 26/03/01 01:31PM, Jonathan Cameron wrote:
> On Fri, 20 Feb 2026 16:46:10 +0000
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> 
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add RAM channel with support for profile-based control. This includes:
> > - RAM data loading via binary sysfs attribute (ram_data);
> 
> I'm not sure that's a long term viable path.  We either need
> to figure out how to do it as firmware file load, or via an output buffer.

Could you develop on this? it is not viable because iio would drop that
support? using sysfs_create_bin_file() directly would be better?

> Firmware load would probably be too static and I'm not sure quite
> how we map these to IIO output buffers.

will investigate this buffer route. At this point, we can have multiple
buffers, right? I have the DMA engine buffer working with the parallel port.

... 

-- 
Kind regards,

Rodrigo Alencar

