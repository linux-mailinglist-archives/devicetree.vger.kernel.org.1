Return-Path: <devicetree+bounces-232890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC7BC1CB2D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 367B41889BF8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A47F355026;
	Wed, 29 Oct 2025 18:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PV/xve4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 966C0350D6B
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 18:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761761450; cv=none; b=HhL7hgTgkHNtHttq5REtl9gYwg/98dhf5igpuGx0L2oOLB3nZRIZM53gaiujc7+rjsfiCsVwNhNard3E29t0Qq4U/RrkcLec2c0Egh5fLZin1+3uxWLNkYdco4OWWkL8b2QdyuqYQHMMKx0jYLnQ8eLTOvmR/b4zgrAXA0Jee+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761761450; c=relaxed/simple;
	bh=T1dDe4fF+Gy9LcvzjbTF78eafwB4w168lpzpr6gvaC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dqX9jachUfyLtbFj+EXZvESnni179baW9FDKh7bEu4wQQvlzHgqNJwLs4Bufv4ihmQm+rzxs77CLZHovrSpm8zsqQfoYjdM3ywc8yTx0j7N1TXl6gMwLgln7Rp1gawZx/zvqB1k2JFJ/ZEtYmF3b0ii7NsTsVc42eS5nR2hHcyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PV/xve4K; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7a26b9a936aso180003b3a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761761448; x=1762366248; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=agJFytMuXaOzzx9eJ7GjTw67SZ3daSqUTCtci+2uLtM=;
        b=PV/xve4Kv2VqBQFNxT6v5eWFw3bNkdIZBKjd/Ds0PBuIsQT+dy17EquEg+gKCLjbXa
         upFlDcG+SgpKbjCk98yUcfCOuUu19aGOovAg/obPTv+hzaRZfkaCbl9sXoM0QxKLq3d1
         hfC8Sb0NYBZPNBLCeU+IMTM8jPpxl8ks6qzYq6PmpWXFrB1xfbq86tHM8WsvyCePS6SB
         1PZ/xwURPDQKT+A1xUnUQ68MgNYvmCbqpmWF4S54Aunb71Gr0bzlNtyI5NXNrRyQHtmZ
         USZOoya9ppLX+A3DD4U9AmjtRrWToHpyMzQLusnJoqyBQbsktX3xoQuMTlXW+aqhcCjS
         6oiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761761448; x=1762366248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=agJFytMuXaOzzx9eJ7GjTw67SZ3daSqUTCtci+2uLtM=;
        b=FgLiozGfJt0Uou4AvOWlcdsdgoSncSDZP9Iq1JstWZM8Fp+ovOtrvqXc2FQgHcpu6I
         aeZS5aBk/26j3spWilP+Zho2nbb7VWq5a2+GvcNYa3VUZ99Kb6SYDnvwY5ZL9CxwIsFX
         mT3pLceZc2x+PfqZIJjHS4KqBE4ElK1EO4u5WvDqCFF9Pg8FM/qQPGtWQDkd4fmsEbhQ
         SjW/pMRXbNRvvDy9KqZzdklqBFN7BqtFKciWw4xB5mHJlFAfzrMB/RGkoSB9XMZeOsEH
         1Dmhn/q6N0H69+s9et5+MU6JsxSWa4p4O1puEeEJy6Wej1tTNKc4A+PlTbOQv3p90gCV
         SAnw==
X-Forwarded-Encrypted: i=1; AJvYcCVxBafkEAL0piPaJKLE4oCwcPm5T9QBwHmUhexIClCbUTvfPMAztzXFG3NmeHSKHjUPGMsJmMyJPzWA@vger.kernel.org
X-Gm-Message-State: AOJu0YwA5vdszOpTdeGGMF7lMcGdw1kEROdWoFTxVcTBXlU0w4tWkeJo
	TMilJyba0odc/15W3pa/pEj8ToraD0ZQ82mh1qYJfJKnCU27zMtY/xg6
X-Gm-Gg: ASbGncsEmxMF1SuJv4pRu49/FQ/zvMqL2tKLwvol6dW/VqFdugYSuyApHTi0V3aS/bG
	IMzYHpmWs2hziWB3Pjk9aMtf6hOl31vQvXOjojXsE88suy26fINMdT2sWm/FkYdHHaCksC1JZFs
	Gc/g3Uk8Q8AEW96kAlDCICe+vLfW/jajJFvG1mrPtpG0ME0fXBsm4rmQ0ITwFCFcBWgn178CxFR
	tSB/yPpsDI48ZFeDW/EcOx9wt0JzM1YXk0OfqTe6uhjgxo4bKJOHsvRcvUVjHdlKtkgKnokEore
	UbvTAFsqC4HDx5gkYTurW01U5PnpnkAMec1icg4c+QUgItftJIC3oPWlOuVyx1wCyLBjhiXMNrC
	nQC3I/vOLp+IzZo9BPKr4ThbCLb6YotLGFo+2On+ussNtgddzJXCVFgdZlIcMjGvmQKODrPl68h
	mOfq40IU6Pgw==
X-Google-Smtp-Source: AGHT+IHmC5Yrl54xcDnexWsIAzQgtJ1USAgaMzHIOfEboyM5+j4bp63GVlKTN5o/1wavfr3co1WYBw==
X-Received: by 2002:a05:6a20:3ca5:b0:33e:6885:2bb6 with SMTP id adf61e73a8af0-3478580e749mr390734637.23.1761761447662;
        Wed, 29 Oct 2025 11:10:47 -0700 (PDT)
Received: from localhost ([2804:30c:1653:6900:3b53:af9d:48d6:f107])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-b7128884e0asm14495232a12.16.2025.10.29.11.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 11:10:46 -0700 (PDT)
Date: Wed, 29 Oct 2025 15:11:57 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, michael.hennerich@analog.com,
	nuno.sa@analog.com, eblanc@baylibre.com, dlechner@baylibre.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net
Subject: Re: [PATCH v6 8/8] iio: adc: ad4030: Support common-mode channels
 with SPI offloading
Message-ID: <aQJY7XizVWbE68ll@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1760984107.git.marcelo.schmitt@analog.com>
 <3fadbf22973098c4be9e5f0edd8c22b8b9b18ca6.1760984107.git.marcelo.schmitt@analog.com>
 <20251027140423.61d96e88@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027140423.61d96e88@jic23-huawei>

On 10/27, Jonathan Cameron wrote:
> On Mon, 20 Oct 2025 16:15:39 -0300
> Marcelo Schmitt <marcelo.schmitt@analog.com> wrote:
> 
> > AD4030 and similar devices can read common-mode voltage together with
> > ADC sample data. When enabled, common-mode voltage data is provided in a
> > separate IIO channel since it measures something other than the primary
> > ADC input signal and requires separate scaling to convert to voltage
> > units. The initial SPI offload support patch for AD4030 only provided
> > differential channels. Now, extend the AD4030 driver to also provide
> > common-mode IIO channels when setup with SPI offloading capability.
> > 
> > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > ---
> > New patch.
> > I hope this works for ADCs with two channels. It's not clear if works as
> > expected with current HDL and single-channel ADCs (like ADAQ4216).
> > 
> > The ad4630_fmc HDL project was designed for ADCs with two channels and
> > always streams two data channels to DMA (even when the ADC has only one
> > physical channel). Though, if the ADC has only one physical channel, the
> > data that would come from the second ADC channel comes in as noise and
> > would have to be discarded. Because of that, when using single-channel
> > ADCs, the ADC driver would need to use a special DMA buffer to filter out
> > half of the data that reaches DMA memory. With that, the ADC sample data
> > could be delivered to user space without any noise being added to the IIO
> > buffer. I have implemented a prototype of such specialized buffer
> > (industrialio-buffer-dmaengine-filtered), but it is awful and only worked
> > with CONFIG_IIO_DMA_BUF_MMAP_LEGACY (only present in ADI Linux tree). Usual
> > differential channel data is also affected by the extra 0xFFFFFFFF data
> > pushed to DMA. Though, for the differential channel, it's easier to see it
> > shall work for two-channel ADCs (the sine wave appears "filled" in
> > iio-oscilloscope).
> > 
> > So, I sign this, but don't guarantee it to work.
> 
> So what's the path to resolve this?  Waiting on HDL changes or not support
> those devices until we have a clean solution?

Waiting for HDL to get updated I'd say.

> 
> Also, just to check, is this only an issue with the additional stuff this
> patch adds or do we have a problem with SPI offload in general (+ this
> IP) and those single channel devices?

IMO, one solution would be to update the HDL project for AD4630 and similar ADCs
to not send data from channel 2 to DMA memory when single-channel ADCs are
connected. Another possibility would be to intercept and filter out the extra
data before pushing it to user space. My first attempt of doing that didn't
work out with upstream kernel but I may revisit that.

We could maybe split the driver into two. One for supporting two-channel ADCs
and one for single-channel. Though, we would fall into the same issue when
handling offloaded data for the single-channel driver.

