Return-Path: <devicetree+bounces-100370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4FB96D6E7
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 13:17:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA2E228420C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D06301991AC;
	Thu,  5 Sep 2024 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NybE7+gt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AF3198E74
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 11:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725535070; cv=none; b=XqsOmOfNRkROzPmi9FyR9rzn11uUpHgCn7XZ+LEVDw4fqom/NE30MAa4z51pt2fbmwLWA2/Sv1OE8+yGmZJe4BP9KJMCUETAyN0WS3V+zYJIl8ObDfu2FX/L3lDL2q2JEtj+mCSRk3ZcFhWFYhkYOM+Trj9lVtD/tYP3GIm3pxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725535070; c=relaxed/simple;
	bh=vPUn6re8Uj82w7s/Fyl1AyTq234x7kw8QPi20CeiT1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T3utyzBr3681jtPvAmPw4tF93DswLy2PbrXcKIOA1a83LqDWKm9cuWH1AeJE1wL8nkcM7Pv2VSF4j8LfaLOqR22OTzT/Qi16EWnxaYo95eiatq+xrs0vUiAwCjoZ/nOXA4pRKPnbG8FAKH6D5kKI/Qf/2bt447iMkdJKnuNHZjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NybE7+gt; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42bb885f97eso10022235e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 04:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725535067; x=1726139867; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ffRT4aVlFIoy+SJCPT9/0AbVdCswilOZ4FdXzH9abNM=;
        b=NybE7+gtH+5+KcHsPUzb41Mhgk6tu95hz0HEKA70QAmdb1+SxBPVBwmmsn4kJNvBJf
         s9fCrrwdRCW8FwMyxlJ+feUe0rOffMXxoLwZIRRc1tIlJ1mO4xT+V4ohFBDVve2bnxEp
         Sl7vlBeciK/BCoRYLrfhnOvTiL9+L6uiUiwEAxpZlJhTW2lxXS9nhAoMJoOpfUW6VlPt
         S6GAPokLDbLC8/XU3/2WZwUBtKXNXCrKYP6sLkwIOBfn2RK+YtwDQulIxwcRHm28jfo2
         GlWvt7OOGHKQ7oLneqY3xac3ksFbBHwb9OKiNhB9MIzCP9xJfpa9MWis+wHQADYTqZj5
         C13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725535067; x=1726139867;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ffRT4aVlFIoy+SJCPT9/0AbVdCswilOZ4FdXzH9abNM=;
        b=b5m6SGezrqRpQ97XUZ6kVoEP/LlDQLA2OqsCEN2pKRFmKIuIYaeLmJkrHL2IZiI8Rp
         9E5EQ+3BH7rxniyjIoYMC89DLS+8zUcN5Gx21Utsj3HB+9eMLe1hCP1PF2ZIAEHIsWQO
         srg0ttmgEyqW7lV6qESfixRFf+0ktBWNsDE9k6IPeP5PXvbyqgCYJlew38/b+7z+8zyQ
         Y+PY4t7ivqj6TxFpljDo3R5UT1IbRC/kmhJwaaKF3IFXYP3bTO+WiGnTv3TZQ0qTg7y7
         s5cMpz5maeYEe2b5Qo1C+T34hMBYNSEi6bX9JrwEod6n0W/T9/+QaIfBDsOaBFzdhq2c
         w5FQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYvd729jhv/2F8nAytPFZdo6g9HEXFVuVKi6HGq+e/KfKbdnJY7g3PgACrwFYGda7FqBEW6VMaZ8xJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyqA/6L3DTAKhwGiCZ1bDcSmnM+ZsPtP757Ierw7pSWk8F8Hka/
	zANbJ4OjezMFsIxQzVSACgAYb+CTie9ujya6btDNHwHLOiS2DCveirxlQd7Nr+g=
X-Google-Smtp-Source: AGHT+IEa6nuK40tyVgTJgq3Cc17+kugiwOuMUccmsKCFKvFm34OnuXk0VpndEU4xLhJuo+ltCV+nIA==
X-Received: by 2002:a5d:614e:0:b0:374:cb84:13d3 with SMTP id ffacd0b85a97d-37799f5e2b3mr3245739f8f.12.1725535066614;
        Thu, 05 Sep 2024 04:17:46 -0700 (PDT)
Received: from blmsp ([2001:4091:a247:83d8:caa7:e645:3612:56b6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb6df0a0asm230754015e9.13.2024.09.05.04.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 04:17:46 -0700 (PDT)
Date: Thu, 5 Sep 2024 13:17:45 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Vibhore Vardhan <vibhore@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: ti, sci: Add property for
 partial-io-wakeup-sources
Message-ID: <sisw3whyzr7itjtuznvt5t6cbmfxzop5c4nfrxwpxjil6rxqzc@cfnb5panavxe>
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-2-msp@baylibre.com>
 <f0f60af7-8561-433a-a027-811015fc5e16@kernel.org>
 <ti4ffymrixcpptlrn3o5bytoyc4w5oovdrzgu442ychai2fjet@wtdhrmwrozee>
 <44feed5a-95a7-4baa-b17e-514c0f50dae6@kernel.org>
 <sf2pklbnlkpgnkemv3wevldpj55kk2xqh4fabbmkcbh2tvnbzr@gg3gxgztq6pt>
 <d2eb4faf-c723-453b-a9d8-68693c96fb42@kernel.org>
 <fa11631e-48f9-4e95-95c4-20b77cb0a1be@kernel.org>
 <h4kapqs5vpparh5b3tter54fbnxubq6gpnb4yrqjdio66tj37w@l3xzum2bq5sz>
 <58f5f778-9f0a-4a05-8c33-949f3b3d1f49@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <58f5f778-9f0a-4a05-8c33-949f3b3d1f49@kernel.org>

On Thu, Sep 05, 2024 at 12:41:05PM GMT, Krzysztof Kozlowski wrote:
> On 05/09/2024 11:49, Markus Schneider-Pargmann wrote:
> > On Thu, Sep 05, 2024 at 11:25:48AM GMT, Krzysztof Kozlowski wrote:
> >> On 05/09/2024 11:15, Krzysztof Kozlowski wrote:
> >>> On 05/09/2024 11:08, Markus Schneider-Pargmann wrote:
> >>>> On Tue, Aug 06, 2024 at 10:03:00AM GMT, Krzysztof Kozlowski wrote:
> >>>>> On 06/08/2024 09:11, Markus Schneider-Pargmann wrote:
> >>>>>> Hi Krzysztof,
> >>>>>>
> >>>>>> On Tue, Aug 06, 2024 at 08:18:01AM GMT, Krzysztof Kozlowski wrote:
> >>>>>>> On 29/07/2024 10:00, Markus Schneider-Pargmann wrote:
> >>>>>>>> Partial-IO is a very low power mode in which nearly everything is
> >>>>>>>> powered off. Only pins of a few hardware units are kept sensitive and
> >>>>>>>> are capable to wakeup the SoC. The device nodes are marked as
> >>>>>>>> 'wakeup-source' but so are a lot of other device nodes as well that are
> >>>>>>>> not able to do a wakeup from Partial-IO. This creates the need to
> >>>>>>>> describe the device nodes that are capable of wakeup from Partial-IO.
> >>>>>>>>
> >>>>>>>> This patch adds a property with a list of these nodes defining which
> >>>>>>>> devices can be used as wakeup sources in Partial-IO.
> >>>>>>>>
> >>>>>>>
> >>>>>>> <form letter>
> >>>>>>> This is a friendly reminder during the review process.
> >>>>>>>
> >>>>>>> It seems my or other reviewer's previous comments were not fully
> >>>>>>> addressed. Maybe the feedback got lost between the quotes, maybe you
> >>>>>>> just forgot to apply it. Please go back to the previous discussion and
> >>>>>>> either implement all requested changes or keep discussing them.
> >>>>>>>
> >>>>>>> Thank you.
> >>>>>>> </form letter>
> >>>>>>
> >>>>>> I tried to address your comment from last version by explaining more
> >>>>>> thoroughly what the binding is for as it seemed that my previous
> >>>>>> explanation wasn't really good.
> >>>>>>
> >>>>>> You are suggesting to use 'wakeup-source' exclusively. Unfortunately
> >>>>>> wakeup-source is a boolean property which covers two states. I have at
> >>>>>> least three states I need to describe:
> >>>>>>
> >>>>>>  - wakeup-source for suspend to memory and other low power modes
> >>>>>>  - wakeup-source for Partial-IO
> >>>>>>  - no wakeup-source
> >>>>>
> >>>>> Maybe we need generic property or maybe custom TI would be fine, but in
> >>>>> any case - whether device is wakeup and what sort of wakeup it is, is a
> >>>>> property of the device.
> >>>>
> >>>> To continue on this, I currently only know of this Partial-IO mode that
> >>>> would require a special flag like this. So I think a custom TI property
> >>>> would work. For example a bool property like
> >>>>
> >>>>   ti,partial-io-wakeup-source;
> >>>>
> >>>> in the device nodes for which it is relevant? This would be in addition
> >>>> to the 'wakeup-source' property.
> >>>
> >>> Rather oneOf. I don't think having two properties in a node brings any
> >>> more information.
> >>>
> >>> I would suggest finding one more user of this and making the
> >>> wakeup-source an enum - either string or integer with defines in a header.
> >>
> >> I am going through this thread again to write something in DT BoF but
> >> this is confusing:
> >>
> >> "Partial-IO is a very low power mode"
> >> "not able to do a wakeup from Partial-IO."
> >> "wakeup-source for Partial-IO"
> >>
> >> Are you waking up from Partial-IO or are you waking up into Partial-IO?
> >>
> >> And why the devices which are configured as wakeup-source cannot wake up
> >> from or for Partial-IO?
> > 
> > Sorry if this is confusing. Let me try again.
> > 
> > Partial-IO is a very low power mode. Only a small IO unit is switched on
> > to be sensitive on a small set of pins for any IO activity. The rest of
> > the SoC is powered off, including DDR. Any activity on these pins
> > switches on the power for the remaining SoC. This leads to a fresh boot,
> > not a resume of any kind. On am62 the pins that are sensitive and
> > therefore wakeup-source from this Partial-IO mode, are the pins of a few
> > CAN and UARTs from the MCU and Wkup section of the SoC.
> > 
> > These CAN and UART wakeup-sources are also wakeup-sources for other low
> > power suspend to ram modes. But wakeup-sources for suspend to ram modes
> > are typically not a wakeup-source for Partial-IO as they are not powered
> > in Partial-IO.
> > 
> > I hope this explains it better.
> 
> Yeah, it's kind of obvious now that just use wakeup-source. Your
> hardware does not have two different methods of waking up. System is
> sleeping - either S2R or partial-IO or whatever - and you want it to be
> woken up.
> 
> Entire property is unnecessary... and as I said before - you added it
> only for your driver. If same feedback is repeated and repeated, there
> is something in it...

It's not obvious for me. Maybe you can elaborate a bit.

The hardware has a different set of wakeup sources depending on the
power mode it is in and I would like to describe these different sets of
wakeup sources in the devicetree as for me this is a hardware property,
not a driver thing.

Best
Markus

