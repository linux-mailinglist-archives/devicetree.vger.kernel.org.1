Return-Path: <devicetree+bounces-267148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xZ5HCvDTmmnOkQMAu9opvQ
	(envelope-from <devicetree+bounces-267148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:01:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B256916ECF8
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:01:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 092FC300C0CA
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07E11F151C;
	Sun, 22 Feb 2026 10:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PTuWuP+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D46A001
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771754476; cv=none; b=tT4O5VOzmJsKIVlzcG3nqz1bWRLvvP2uOAFuxBdfe6XMNTlpPgDuddo4A5Slw1ya58Og6l8P5XuiRDAylVlzaXPTDQ7YHuTuQRB2p/Ly6QErUEdoj9gKKlEh8B09GRZm1lipuvv8f4AVwGCBF+ztMNGquhvMa0jBeprVCbA2fa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771754476; c=relaxed/simple;
	bh=UJ58ZtPtWKCa+LTOvGOjw26gzTFytJa7PejQgGVSY1A=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A3V1n1i29yFasYuxizy5tOi1hFpa9zh8xABFE47MTMXsskPEi+bu1I0PwW8cmDaq92xDDj0doVcRQJ221iTbO7x5KgJ1qUtetq18CGqjovWwGKjNF7nIrpksuQAdM1E/V7A58XaQFdd2pZnCkayi+n5AsobbHdbgvUBa3/JHaQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PTuWuP+B; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43770c94dfaso3423688f8f.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 02:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771754473; x=1772359273; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P4BA9m7stgw+QUUpwZn/xgPy8Z/NcUc9HLfI6tL9Gcc=;
        b=PTuWuP+B29OjZ1jzV9DRI60iwq+HDw0rdYyXhsNZX9Nqz1qfx9WbbDHK7adgdRgSp/
         ZIIAPQCawvqlPGtPQR/OmyEkEe2vNa+b3kQ8/4o86ncuwLVMOdJhdQOf8qXS4RMKSwas
         6JAFAcahyIGQO/4dTVsyF6hm2PvAId1Iva6nDTAxzXs1RnJUntkGmhNSme8KRHA136Nw
         C5fbi1XDo1C/e7IbFQxYpz09SAGx0+3CZJSQqrxAS2jWtHlUYK8SPAZiICNCZ6hp3rKz
         Qx2xdz3chqF7910sBwJlu2x5HJdB30mHblnNBEv5Dpewohpqa9titi/E3SEuPc/G0uca
         q6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771754473; x=1772359273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4BA9m7stgw+QUUpwZn/xgPy8Z/NcUc9HLfI6tL9Gcc=;
        b=fG1EGCsfanJFmFV5plmpCewXUrEH0I6r8bNSXcQo3dFdtcQVjMLiPe7A0Us6BWLRfW
         i8YuVfIecDBQOh4k5EcIm1dlkQSDbOW9c7kpOLupQBvW2wI64KqoEzWo2XmWr2tJ36GS
         6mD2ZxrV9YjJXVO46OGCYiW2654MGcnZpMHXGdSoF/DGqWRbttEJ7VjfWv5uo3ApZGEb
         XpWFpcLVBEjI658Cz3dWdzoenISXEytb+yzPrCfWQxIgp+mQV7vXqZJ7hFHyLWHwIkNy
         CDPAWqWHRjjCqTn8p2WE68chfkRAvGjoWgAV9Tb4XG9C2eyptqmHkPA/DPNUVpAvQfmo
         gPDw==
X-Forwarded-Encrypted: i=1; AJvYcCX4yz/wqJSOYHa9ELCl5aJFLc4wmAvrhadzdrspe7nVF5NyPceN1z+v1TzfYNdU6ZB4wmJMA5cnEScP@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfz4p9jfkN1RRoOUBakel35Sl6ktTt8xzTCcEjOXonHfCvq/tD
	IT6rpeVvGD1u/coMHmFow4v1r9QtMvz0I0CVdPTHc4Uq9ID4yiov1aMm
X-Gm-Gg: AZuq6aIBYc9ge4GUd7nPtPJOxuZYzWSStfdQGjVpw4HBC2wNkW3gLnhJQZz3C0hGe7I
	aMaMLtGYzN3+/fAqLGAgEuvovnfInRQHy1x/MdMCyFx1w50RQUBbmoXQ+hQTMx9eSXYbDh/9HcW
	5zFHFrkvdBnQhXs7vFtXfND8V4+kwTgsKL55xydRYrOjhLHazGVcsMBTPZEWex9Smxkha3fyDJz
	R/6dY7Q1p+OVkK8QvKgdAvV6XRVhOsoBfVuNPA+uS3lXHA3OgH3t6Vdc+V/6zLHpExeLm9fdjT5
	R57L5bhUxw7vPtixuvL6HS9bsVaeZNtzryo9Tin87X2Xq2zKI2e0mX+09Nr5BcrVWhk9641/s+i
	F4BCvfQb/QPZYtMNK7IN0lj3YyD9As+G3niM1hUUr7nzDN5krfxX95Cy0OfMczxDUqld71+Iy0P
	hEhKwCxEna91C7WAq07TXCVM/R48IycaxMzTVk+ylcNEy/Gm3dSttVRUUZQV0BicF53LQfaCgrU
	Pblkgsc9XWDaHOXgB47YlUJxfQsD9l6TxRbka3JJVoQdVfnqVg=
X-Received: by 2002:a05:6000:2283:b0:437:81b0:6650 with SMTP id ffacd0b85a97d-4396f189ffbmr10513863f8f.56.1771754473210;
        Sun, 22 Feb 2026 02:01:13 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970c00768sm11530327f8f.10.2026.02.22.02.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:01:12 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Sun, 22 Feb 2026 10:01:06 +0000
To: David Lechner <dlechner@baylibre.com>, rodrigo.alencar@analog.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 0/8] AD9910 Direct Digital Synthesizer
Message-ID: <2k4ouimpaxjuhnk67qmrues2375zj43ehru7h5as6w6kf7yak3@2ndr72co5trh>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <a72b2d62-3b91-4789-a1b1-ff1429e80ed5@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a72b2d62-3b91-4789-a1b1-ff1429e80ed5@baylibre.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267148-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B256916ECF8
X-Rspamd-Action: no action

On 26/02/21 02:16PM, David Lechner wrote:
> On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
> > This patch series adds support for the Analog Devices AD9910 DDS.
> > This is an RFC so that we can agree/discuss on the design that follows:
> > 
> > The AD9910 DDS core can be driven through several independent mechanisms:
> > single tone profiles, a digital ramp generator, an internal RAM playback
> > engine, a parallel data port, and output shift keying. Each of these
> 
> This makes is sound more like a DAC than a frequency generator. altvoltage
> specifically means an AC voltage (sine wave), so these arbitrary outputs
> don't fit that.

Most applications for this part are in fact for frequency generation, like:
- Agile local oscillator (LO) frequency synthesis
- Programmable clock generators
- FM chirp source for radar and scanning systems
- Fast frequency hopping

The device has been made to be too flexible, so that its operation modes
have sub-operation modes that allows to handle frequency, scale and phase.
But at a specific timestamp, the output signal will always be a CW, i.e.
a sine or cosine wave.
 
> > represents a distinct signal path into the DDS accumulator, so the driver
> > models them as separate IIO output channels (all IIO_ALTVOLTAGE type).
> 
> Generally IIO channels represent the physical input/output, not the
> internal channels.

That is part of the reason for this RFC. Dividing those top-level modes
into channels allows for better organization, as they can operate together,
i.e., phase or scale can be provided by single-tone profile, while
frequency is controlled by the digital ramp generator (see Mode Priority
section in the datasheet). Also, it allows to explore the most of standard
ABIs like, scale, frequency, phase, sampling_frequency and enable.
Putting everything into a single channel would make things a lot messy
to interface with.

> Ideally we would just have the one channel here with a mode selection
> attribute. Documentation can tell us which modes use which attributes.
> 
> > This per-channel separation allows userspace to configure each mode
> > independently through its own set of sysfs attributes, and to
> > enable/disable modes individually via IIO_CHAN_INFO_ENABLE, relying on
> > the hardware's own mode selection architecture.
> > 
> > The AD9910 register map is not suited for the regmap framework: register
> > widths vary across the map (16, 32, and 64 bits). The driver instead
> 
> Does it break things if you read/write 64 bits from/to non-64-bit registers?

Yes, the exact amount of bytes needs to be sent when writing specific registers.

> In other drivers for chips like this, we've just created 2 regmaps, i.e.
> one for 16-bit regs and one for 32-bit regs. Seems better than
> re-implementing a reg cache.

I would have to have 3 configs, one of them for a single 16-bit register.
Also, regmap_spi does not seem to support 64-bit registers (maybe I am wrong).
Additionally, single tone modes and RAM control modes are profile based and
they share the same registers, so I suppose that having to control the
register cache manually would be beneficial to switch RAM mode ON/OFF.
I understand that the digital design of the chip is not one of the best,
and a lot of unneeded complications are pushed to be handled in software.

> > implements direct SPI access helpers with a software register cache, using
> > type-specific read/write/update functions (ad9910_reg{16,32,64}_{read,
> > write,update}) that handle endianness conversion and cache coherency.
> > 
> > Registers are cached for several reasons. The control/function registers
> > (CFR1, CFR2) are frequently queried to determine the current operating
> > mode (e.g., checking RAM_ENABLE before every profile register access),
> > and caching avoids repeated SPI read transactions for what are
> > essentially state checks. The cache also enables efficient
> > read-modify-write updates on multi-byte registers: the update functions
> > merge new field values with the cached register content without issuing
> > a SPI read, and skip the write entirely when the value is unchanged.
> > Finally, the profile registers serve dual purposes depending on whether
> > RAM mode is active -- they hold single tone parameters (FTW, POW, ASF)
> > in normal operation but are repurposed for RAM playback configuration
> > (start/end address, step rate, operating mode) when RAM is enabled. A
> > shadow register array (reg_profile[]) preserves the inactive mode's
> > settings across transitions, so no state is lost when switching between
> > single tone and RAM operation.
> > 
> > RAM data is loaded through a write-only binary sysfs attribute
> > (ram_data). Userspace writes the waveform data as a raw binary buffer
> > (up to 4096 bytes for the full 1024x32-bit RAM), and the driver
> > transfers it to the device in a single SPI transaction. Per-profile
> > start/end addresses and playback parameters (operating mode, step rate,
> > no-dwell control) are configured through the RAM channel's ext_info
> > attributes.
> > 
> > Streaming data to the DDS core through the parallel data port at the
> > PD_CLK rate is not covered by this series. That functionality would
> > be added in a separate patch series, building on top of the IIO backend
> > infrastructure to provide a proper buffered data path.
> > 
> > As I am pushing implementation, as lot has been done already without much
> > supervision or agreement, still I would be interested on hearing about
> > the design choices discussed above. Here is the output for the iio_info
> > at this point:
> > 
> > 5 channels found:
> >     altvoltage1:  (output)
> >     9 channel-specific attributes found:
> >         attr  0: en value: 0
> >         attr  1: frequency_offset value: 0.000000
> >         attr  2: frequency_scale value: 1
> >         attr  3: label value: parallel_port
> >         attr  4: phase_offset value: 0.000000
> >         attr  7: sampling_frequency value: 100000000.000000
> >         attr  8: scale_offset value: 0.000000
> >     altvoltage3:  (output)
> >     13 channel-specific attributes found:
> >         attr  0: address_end value: 1023
> >         attr  1: address_start value: 0
> >         attr  2: destination value: frequency
> >         attr  3: destination_available value:
> >           frequency phase amplitude polar
> >         attr  4: en value: 0
> >         attr  5: frequency value: 0.000000
> >         attr  6: label value: ram_control
> >         attr  7: operating_mode value: direct_switch
> >         attr  8: operating_mode_available value:
> >           direct_switch ramp_up bidirectional
> >           bidirectional_continuous ramp_up_continuous
> >           sequenced sequenced_continuous
> >         attr  9: phase value: 0.000000
> >         attr 12: sampling_frequency value: 100000000.000000
> >     altvoltage2:  (output)
> >     27 channel-specific attributes found:
> >         attr  3: decrement_sampling_frequency value: 100000000.000000
> >         attr  4: destination value: frequency
> >         attr  5: destination_available value: frequency phase amplitude
> >         attr  6: en value: 0
> >         attr  7: frequency_decrement value: 0.000000
> >         attr  8: frequency_increment value: 0.000000
> >         attr  9: frequency_max value: 0.000000
> >         attr 10: frequency_min value: 0.000000
> >         attr 11: increment_sampling_frequency value: 100000000.000000
> >         attr 12: label value: digital_ramp_generator
> >         attr 13: operating_mode value: bidirectional_continuous
> >         attr 14: operating_mode_available value:
> > 		  bidirectional ramp_down ramp_up bidirectional_continuous
> >         attr 15: phase_decrement value: 0.000000000
> >         attr 16: phase_increment value: 0.000000000
> >         attr 17: phase_max value: 0.000000000
> >         attr 18: phase_min value: 0.000000000
> >         attr 22: scale_decrement value: 0.000000000
> >         attr 23: scale_increment value: 0.000000000
> >         attr 24: scale_max value: 0.000000000
> >         attr 25: scale_min value: 0.000000000
> >     altvoltage0:  (output)
> >     6 channel-specific attributes found:
> >         attr  0: frequency value: 0.000000
> >         attr  1: label value: single_tone
> >         attr  2: phase value: 0.000000
> >         attr  5: scale value: 0.000000
> >     altvoltage4:  (output)
> >     8 channel-specific attributes found:
> >         attr  0: en value: 0
> >         attr  1: label value: output_shift_keying
> >         attr  2: pinctrl_en value: 0
> >         attr  5: sampling_frequency value: 100000000.000000
> >         attr  6: scale value: 0.000000
> >         attr  7: scale_increment value: 0.000000
> > 3 device-specific attributes found:
> >         attr  0: ram_data ERROR: Permission denied (13)
> >         attr  1: sysclk_frequency value: 400000000
> > 1 debug attributes found:
> >         debug attr  0: direct_reg_access value: 0x2
> 
> 
> This is a lot of custom attributes!

yes, specially for the digital ramp generator, where we have range
sets of increment, decrement, min and max for each DDS parameter:
scale, phase, frequency.

> It looks like a lot of these are just exposing registers directly, which
> usually isn't the best if we want something that can be reused. However,
> this looks pretty complex so coming up with something generic is probably
> not worth the effort. 

Not directly, there is often a conversion whenever we are dealing
with scale, phase, frequency or sampling frequency.

> Instead, I would suggest to create a firmware file format that
> describes how the chip should be programmed. And in the driver call
> firmware_upload_register() to create a sysfs interface where the
> firmware can be loaded/replaced at runtime. This way, there is just
> one attribute write needed to set all of the parameters at once.
> 
> This could probably be as simple as something that just contains
> the value of each register to be programmed and the driver can
> write all of the registers just before enabling the output.

Not sure, if that makes things simpler, specially for the application
the would interface with this. I think having the attributes as is
would be the whole point of using the IIO subsystem.

-- 
Kind regards,

Rodrigo Alencar

