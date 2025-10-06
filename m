Return-Path: <devicetree+bounces-223928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7F4BBF410
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 22:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E65B1898D2A
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 20:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71AE6223DD1;
	Mon,  6 Oct 2025 20:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="GCDzfRFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFFE1EA7CE
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 20:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759783601; cv=none; b=gLYK+2+RCMgjfoLfizsR1oXdl9Gq7+I6TPrQPdJhi9kh6xo34XeJFW0bZ3jvwaxSR3QKGRGGcvmdIosW5wx3ksBOovpE0HQ64GpIicbFDhoIvdoJzFvB/2bv9GMaLjsX1EgTpd31U/R+tN4OM4YiuyZUVsovhns7+RplAjUZdCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759783601; c=relaxed/simple;
	bh=SNn25SP8RN6pWqmSc/GRYPqOHyhFDltxDZKAFV0He5w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=teYYnptZSPL30LoDe18uzOsAG4FzjpAc2Ad50hwynHFQ2P8B3EtDkrmVR57v8uKsNEasdiLVHT98Cg+MYzY1x87NhjrkhI7wruT2oiOtsYtqYVI+8VbQtRQwQ5jZeLJBRlnOG6NfUPgXRBuepcJG8oapY+H0lp14H8g10hkYfBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=GCDzfRFQ; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e3cdc1a6aso40559025e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 13:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1759783598; x=1760388398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9BlcIzAnxPBl00JkhegNemLQFSjZaV1d8VwEuCMFuEw=;
        b=GCDzfRFQv8qDpBNXU3LZ+kr3z7ZBvYqvvKLxJVfcMrIXWoep/kiru7T/UFYcWVUmVk
         kiLWvd/AcTyzYTJCUsNUMwZ524mBZl/FnFbmsVl0jSXwJZVxKegHMon4Frt4Jwf2v4Q8
         FOUC/2FB8vC+lZ7yCi9H4rGT/QbPXtnJDV7m7nQrLRMj8TDGOH12SaKWW6wtbOvZDd8Y
         xY4TvgHvurEMaJEafno+wCGwfD/qzde1k2xoOghNnYP2gLxG1oUUPYL3j6VlRFmHHC7L
         sMq3y+I2NpzFvsA1s7RfWTGMbw+O3EYG0TmoHK51MySBgMSIO/G/C3ufzJHrYLfiwTRE
         BUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759783598; x=1760388398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9BlcIzAnxPBl00JkhegNemLQFSjZaV1d8VwEuCMFuEw=;
        b=YbRBl+RvJhXxdK5UTS16Z8fSAZ+0kPgFsl+vMJimNdHjx62mwe2NGSSGJOJ/SbnwfL
         qrJLP/pw0oAFjQvMnOldDyLE0YL2l0mduw8R+OyTd8LE023L6c/A19RMGsoS7hsMavyp
         xOj2A8MzRY5axpIRUyVWYRlM7uBS4di2PEwFTXznRdzp/UfA4oZhhKa9WSanPlXD1JgA
         JMEJ7pGeW97fMu6NLlDMSPIOTpz8JsS+1b0H+uIoo/RoQAQiJ5RHxeVxFQcabn5eXtXl
         xf7nKtolkHaXUnRKps0G8fbg4NVFCpkieERe6Yygq7ejuLZ6BzJdmjyEbCE05IPVgs50
         cLcA==
X-Forwarded-Encrypted: i=1; AJvYcCUD5iH7pRoP+/JfxR1UXxBm57RHy+ncQVq3ercVEHGdr40lUbYq8pM0gA2N3lFLUOhCvYELk5PXhl2L@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/P9YMSyr9YHsaKMtM4kxR/Wn0H2ZHgofAu23wMsr4T1ncCDhT
	bu63Rk+cjF3kal7VPXvK7VZTQ3BNytICcDDXi7tI0zKjn+i25QDsdnETu7EVbHVdqUs=
X-Gm-Gg: ASbGncsYAtfy391pyVEhrWXshj4aS+U1P3n60VQ3NyKV8lt85gPwjaXRyjpFJmpnLek
	qWvlIRMU0XwnjpwG2onhHUvBDj8ZuGqVSSHdNvXPJ9wZy29oLGcDwiCOF5FYSGpvHxNKSNCoBLx
	B+z2uzOuLaof/7BHRFhCXtDfUyD2w+7lzM920gT/mrW+aeDw3vDjschBkc3DQuLD7U07F/iwYiT
	Coq/v9kmBBP6+UjSg33RkSSJpuJiWnA+2hkXoj1d9M1xsV5vZ2ePNUxFave5dl1ZJ9tLD02tn4L
	b9AJ/3ufWL74Tqtpnh/8gHbaS/t17x734ebxu6zcdUw8qXt3NDiX9g8NJjcQi87tXikJcXF66Gy
	l0uUc1LnMhwHLahlSPpCGKoqpfrq2ijW+K/nwYwhXhj8Hgyz2bUYw+L033J/C11+Z
X-Google-Smtp-Source: AGHT+IF3LqxtVXrNGdfXaMNgDxuJdRN9Z4hNbv3BfE0st6zqrEEEfexPut4mEl4vFq6cZL4Q9vgY1Q==
X-Received: by 2002:a05:600c:6c4c:b0:46e:25f2:705c with SMTP id 5b1f17b1804b1-46fa29f13d4mr4607925e9.13.1759783597372;
        Mon, 06 Oct 2025 13:46:37 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:585:f4d5:21f3:a5e0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e72362344sm175818755e9.15.2025.10.06.13.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 13:46:36 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: kieran.bingham@ideasonboard.com
Cc: asmirnou@pinefeat.co.uk,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hverkuil@xs4all.nl,
	jacopo.mondi@ideasonboard.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v5 2/2] media: i2c: Pinefeat cef168 lens control board driver
Date: Mon,  6 Oct 2025 21:46:35 +0100
Message-Id: <20251006204635.17501-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <175969431602.1246375.2429212814766056041@ping.linuxembedded.co.uk>
References: <175969431602.1246375.2429212814766056041@ping.linuxembedded.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sun, 05 Oct 2025 20:58:36 +0100, Kieran Bingham wrote:

> > The focus distance reported by the lens is the distance between the
> > camera's sensor and the subject currently in focus, measured in meters.
> > It correlates with the focus position - higher positions correspond to
> > greater distances - but the relationship is non-linear.
> 
> What's measuring this distance ? Something in the lens, rather than the
> sensor?

It doesn't actively measure the distance. The lens contains a distance
encoder that maps motor steps to an approximate focus distance, calibrated
for that lens model/type at the factory.

> > the Linux V4L2 API does not allow the minimum and
> > maximum values to be changed while the driver is running.
> 
> Have you tried with __v4l2_ctrl_modify_range() ?
> 
> We should make sure this also generates an event that libcamera can
> subscribe to to make sure it knows there's been an update.

Thanks. The unlocked variant of this function works. Previously I tried
its locked variant that led to locking issues, that's why I though it
is not possible.

I'll use that approach and get rid of the custom control.

> I see, so a user interaction can update it too. Does the driver have to
> poll to get this update? Or does it just find out on the next read ?  

The driver reads all lens data at once, so it knows the focus range on
the next read. 

I hope it is ok to modify the focus range straight in g_volatile_ctrl,
when the focus value is requested and read from the lens.

> We're also pushing for a core control for this I think. That's something
> we 'need' in libcamera globally for all cameras. Unfortunately I can't
> point you at an existing control yet ;-(

Good to know. Then for now, I'll keep the custom control for the lens ID,
and switch to a common one once it becomes available.

One suggestion was to use the device name to store the lens ID, but I
couldn't find a way to modify the name after probe, since the lens might
be disconnected and replaced with another. Also, for I2C devices, the
device name appears to be assigned by the kernel.

> I'll see if I can find time to order a kit, and get a compatible lens. I
> have a Nikon DSLR though so I don't have lenses to match this yet :-(

We will be happy to provide a product sample for free, just let us know
the delivery address by email.

