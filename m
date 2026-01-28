Return-Path: <devicetree+bounces-260277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLgYG1XZeWlI0AEAu9opvQ
	(envelope-from <devicetree+bounces-260277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:39:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 913F39EEC0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 577E6300B50D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F0734A3C5;
	Wed, 28 Jan 2026 09:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BPf7vn5I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A8C34B186
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769593160; cv=none; b=OzTNo6beUqV89a8FG9eZmaTzvusjRXDNVEW2TPVkBGppR628Snr16bj4QZwWwpiRCKscIcEd20t5/D/y/Idr0zhcNduqVit61Bk7VqUcQMk31slzCuyvy5D+Lgq3wsMeBDgm39OtNovHi1mIhimAdWBUlKKmt2iG+ykrArP5sd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769593160; c=relaxed/simple;
	bh=820pRQvBOUdwrO9VFOFFKHDDQblAqy5yU34fM/4UmhM=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SDn1aqhcYcE+wbQ4EKHm0/5tXq72/iKoJ0YU5sHHv32T7Wtf+HYdWszZ2cpXBKFtf2RSCLp8P/zW7jsvfi4/3V2PtHQb1GSc0RJGBE88FZiUfi0DAAfxBTa/hqx8z1rTY4YVHNiwG9n70ZAk+toGkbICw85MBVDmxax3w+bxOFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BPf7vn5I; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4805ef35864so27325845e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 01:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769593157; x=1770197957; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YsYt9EtdSjP81eOEg7+PTgUVAYz631PUhGc1E+G2uEY=;
        b=BPf7vn5ILMtu3IHSiTLh11soD+66YnO3diYCo1HfNGadq90VPZSz54rLAcTEnyns2d
         3EjAU9rAImZ3D4ibUiOxCFI0rhCJ0j2QwJD5af3Q2dnwBEY9RhmCBNDiIfOU7pWHBlaX
         1DgYu9dwHTZCmPVze+fhz4sw1wza8czmqpmqtNbjCYB2B0UJ4qBNXAxqoW6PDd3O4fkp
         mET0HyB87s7F6qfJzC1JLjiLh09A7sdSilbeTv52pyJ2F2Jq4DlpeWQfwD3SqNOSUge3
         79ARBSu/AzHaBKd2qo5KqhSFlue0HbznLX05hTAVVbaQ6tj1Ao8Cctbiy1u/mwDA0E35
         rOAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769593157; x=1770197957;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YsYt9EtdSjP81eOEg7+PTgUVAYz631PUhGc1E+G2uEY=;
        b=G+pEurstwHLa4emw5HBEPR7V9Jhv2lJQ74MVvohdKau9tMZvRtRwFa2p1iNYFcQmMr
         roObL4p8mN+dl5zUmXXCUnIBKgmsqtNC4GwQSOGvR3Tc1z4yXPVZDY0GZVzAaIKMRJDV
         /InUdQN92DIUvxCIp6vyGT0HKzESbS9zB8nPOdW3lWv8t9ignxR5p0Gl7CeNA0WBMfwe
         pArSjXhGnFFLKKBgPgvNTK33CVkJkiXplXkWyO8isfubkZUFc3Du/4w47cnA/xo/f6ki
         tAmSVrfDfQjlY0gdS3vmSXiA6I0N5hKmNExIcoed4WWJp7cLYOc5w6tzP+AkIO/ZftgT
         q8oQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFaMAOanX6LYx3nvk21xicPa1XW28L82XfpK58Usn/FtpolLtbzOYQFw3M1yZZX6a6jUhS5Hg20mhb@vger.kernel.org
X-Gm-Message-State: AOJu0YzR+Yk1dZW++BeJLFD+i6kPpwgoeDotUzCHC0jy98/q34nYxljQ
	7WDTFsPDlii7NEsRVELWIGrwyQAHksxecpRfNhq1usuM4QzI2plRC78l
X-Gm-Gg: AZuq6aIhypBl8IjkmAkhvZ9wVREBagufdJW61IBUbQwGch/SRWJsklTvtPVuAlrhim1
	c96VCXaE0PueE2lO/0P2LFcm2bP3AlQUsuaCvOJ4PKBj1QWjYogv919RP1RO4HzeCVnA6SSg7h8
	AqqI/j1gf2TX2UQp2vmGTp2Zef9irQmubAJRpl2IeX7raAwtwcaBIgz0FXHBOOIDtcmuIYH9S7l
	VcM50lJzJvgMxFWV3VpT4jXelk0UUcYawF6RPNPnyrEU2/iDAfgP3n56DtVaHhMJWuO/w+sn8Wb
	twqSaQ8F8nc4TQimgp9v9pQZQkxOIKnP8qYSv4aN1vWHwCeyWw9bTxBboLgf69gfdKNup7JNYzQ
	Bj321UVJ3t2JFbpw2VwevWMHUEM9rQUP3qljpgd26S/gxAk/f3SwSetkOVIwIwoDRs4oNW1sf1Y
	STjlUb6Ypfgyqm57nYipb0FxKMNwoYfivEf0ckEPD1Ji2mZh2cRbrvX59O5be3ouBpV7y4Fpl/2
	ejbe+dbF5scFow=
X-Received: by 2002:a05:600c:8b30:b0:480:1e8f:d15f with SMTP id 5b1f17b1804b1-48069bfaa0bmr55650235e9.2.1769593156788;
        Wed, 28 Jan 2026 01:39:16 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1322eefsm5572266f8f.30.2026.01.28.01.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 01:39:16 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 28 Jan 2026 09:39:12 +0000
To: Conor Dooley <conor@kernel.org>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 2/6] dt-bindings: iio: amplifiers: Add AD8366 support
Message-ID: <4dkomm5sskte4olhvjtkuae2t34qim5alp6ptsn3a2m6cyqqrt@kemulszlm3ta>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-2-c9a4d31aeb01@analog.com>
 <20260126-porous-hurdle-bfc510f113bb@spud>
 <rzco2g6psoblzaaqrdnmpmhs44hl7kqusa2kuafpkjx635dug2@rtwebhwztfkd>
 <20260127-goes-grandpa-891eb0dc413a@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-goes-grandpa-891eb0dc413a@spud>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260277-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 913F39EEC0
X-Rspamd-Action: no action

On 26/01/27 07:38PM, Conor Dooley wrote:
> On Tue, Jan 27, 2026 at 11:37:52AM +0000, Rodrigo Alencar wrote:
> > On 26/01/26 08:11PM, Conor Dooley wrote:
> > > On Mon, Jan 26, 2026 at 01:51:03PM +0000, Rodrigo Alencar via B4 Relay wrote:
> > > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > > 
> > > > Add device tree binding documentation for amplifiers and digital
> > > > attenuators. This covers different device variants with similar
> > > > SPI control.
> > 
> > ...
> > 
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      - adi,ad8366
> > > > +      - adi,ada4961
> > > > +      - adi,adl5240
> > > > +      - adi,adrf5720
> > > > +      - adi,adrf5730
> > > > +      - adi,adrf5731
> > > > +      - adi,hmc271a
> > > > +      - adi,hmc792a
> > > > +      - adi,hmc1018a
> > > > +      - adi,hmc1019a
> > > > +      - adi,hmc1119
> > > 
> > > Why do none of these devices use fallback compatibles? Please put the
> > > rationale in the commit message.
> > 
> > Will do. Each device has their own gain range/step. 
> > 
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  vcc-supply:
> > > > +    description: Regulator that provides power to the device.
> > > > +
> > > > +  reset-gpios:
> > > > +    maxItems: 1
> > > > +
> > > > +  enable-gpios:
> > > > +    maxItems: 1
> > > 
> > > How come enable-gpios is optional? Is it optional on all devices?
> > > Do all devices support enable-gpios and/or reset-gpios?
> > 
> > Board designs often hardwire powerup or serial mode enable signals
> > to high voltage level, so there will not be a reason to add the
> > enable-gpio.
> 
> I don't see anything about all devices supporting enable-gpios, adl5240
> doesn't appear to have one? I'm not going to check all of the datasheets
> to see about the others, but you should disallow the property on devices
> that don't have an enable pin.

Understood. I will prepare the following for v3:

allOf:
  - $ref: /schemas/spi/spi-peripheral-props.yaml#
  - if:
      properties:
        compatible:
          contains:
            const: adi,hmc271a
    then:
      properties:
        reset-gpios:
          maxItems: 1
  - if:
      properties:
        compatible:
          contains:
            anyOf:
              - const: adi,ad8366
              - const: adi,ada4961
              - const: adi,adrf5720
              - const: adi,adrf5730
              - const: adi,adrf5731
              - const: adi,hmc792a
              - const: adi,hmc1018a
              - const: adi,hmc1019a
              - const: adi,hmc1119
    then:
      properties:
        enable-gpios:
          maxItems: 1
          description: Power-up or Serial Mode Enable GPIO.

> > I went over the device datasheets and I could not find the
> > reason for the reset gpio. I left it there because it was being used
> > in the current driver implementation, and I would not like to
> > invalidate designs that might be currently using it. I will ask around.
> 
> If none of the devices have a reset pin, then you should delete the
> property from the binding and the driver. Not like you're going to break
> something if none of the supported devices even have the pin!

The pin might have been there due to an old revision of the ada4961 device
(the reset_gpio was added to the code when ada4961 support was included)
which I can't find related documentation. However, it turns out that
hmc271a contains a reset pin, as you can see above.

-- 
Kind regards,

Rodrigo Alencar

