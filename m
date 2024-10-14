Return-Path: <devicetree+bounces-111078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEFF99CC42
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 16:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76924B23569
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 14:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED3E1AB52F;
	Mon, 14 Oct 2024 14:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DYbi4wBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903091AAE0B
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728914768; cv=none; b=fzMjOS7Q7e1GO+Kd9vZwfSYN2PzjmjT5FiZYW13B3NZDZQ9QI1Vr6debTWXBqmrzyQKLvuUwE0yIcHljquXG5iCAecePyche4A3qzBePTtuniFkKeMR0piz4NiT6o9gxBFdUZHY9+wr2LXU2nOBuSu6TyhKSdttSS0ZuTBVGYSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728914768; c=relaxed/simple;
	bh=qhFTW7QIPjVVpSRlDT+6fXtgWvhKWttXIIqOIcfGqAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BC9NO/slRu4S7YN/bCavpEo+rJCxDLZvvU5GahMvHL1kqRpYrx18DVaxT93MfmyaR3ao1w1mQH/vyVhXd4ijzl1jkEeIQSRT2RO2KPDuQ3j7+6SjMR6Ry+b+wmeF0z1Q4Brs+UcUTOgpXht7GOOe0ARXI4mVMnYN8vVDarGzh2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DYbi4wBl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4311fd48032so21058265e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728914764; x=1729519564; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PLfXdr9BsaIn75yQ115wB7w9fRCYY4Q6oR31SITc134=;
        b=DYbi4wBltw6y/LlcUyS4dNi7u07Y37z2PA2wTiECbWcw9IBA2/Z6p5iYMK5F8axZ8i
         spnQlmER56l1V/Q8NJ+pGYLUVoGqXPeb/DeebAVuZtLzpCWLjTY2sCcaQuUFHPHPCit6
         GpZt/pNdJ0D1alBxsmZ9F6mafbPFv1tkdJpDaXrRvA4EpEbZqK6AE4+esJW01k9i9Ivc
         UGR4WjMfImadJT+Uq1m/B81cIc+OUqrP1+2OrtgXY77pha0Puv8DRTF+yy1rfdcdysyI
         f7gMVq3chTKfDyfHN3vIUBUgA0BnG0IHPRstYmseYEWEbAoLQyzB0ZnSgvwrd0U/9HWF
         XGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728914764; x=1729519564;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLfXdr9BsaIn75yQ115wB7w9fRCYY4Q6oR31SITc134=;
        b=qFeWeHVDSmwvYVnReHh2DNGzKoOGmb3kljgiziaQEBTROQSzhprp2lU7J1g+cAVHsv
         y71rlANBxUykkjdaxYRWcbAZaCs8q3HPRsfFl+gAXQzgbjnraYKS/zWEko4SSGUlFZan
         jGBTnPfa8tOZHr+MqObaaNV0lNQPMTvNJmzFW99NVb/DAXQSSR7mYt2Axtmt8q6Fuwz7
         WDWporbH9ucCfNIvnV60lx/+C0tycAzXuihgnR+VhIyrqkxsqJ/BYPNlIRxUcT4mRGKn
         XqdvV5dREgjcBmEYTNqKXp2cNAL3puQW0ueDkpeU925imOrtgG99a6a0pfCxgjKET2sk
         X6ng==
X-Forwarded-Encrypted: i=1; AJvYcCXXIKnqU+VnG8W4JOlQNkmBbJwlCEOUUMSNYiwrLRHsHHPyKkd703my/G1haPIZ5km8oczi1Xhlvh7b@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuo+1e+PEmkirCVlk+REqIRnxo9JiWcEeTXajnLZjhKTs4GyFJ
	twEe4wDkbF2beI3Uj5VfP2h6CAarOq6dDJXybmXAh7ifCnEYah/80WFdkuS6lJs=
X-Google-Smtp-Source: AGHT+IGJIKE0j3n+bSOYnhn8s9A4HLTrtvBewTwoHkoBGYIhcVUnPXMQGUvU/Re1B6fDK5qaBVgmVw==
X-Received: by 2002:adf:8b54:0:b0:37d:52b5:451e with SMTP id ffacd0b85a97d-37d551fc226mr7228923f8f.33.1728914763671;
        Mon, 14 Oct 2024 07:06:03 -0700 (PDT)
Received: from dfj (host-79-45-239-138.retail.telecomitalia.it. [79.45.239.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6bfc8csm11484743f8f.45.2024.10.14.07.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 07:06:03 -0700 (PDT)
Date: Mon, 14 Oct 2024 16:04:35 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-iio@vger.kernel.org, Olivier Moysan <olivier.moysan@foss.st.com>, 
	Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dlechner@baylibre.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>
Subject: Re: [PATCH v6 2/8] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
Message-ID: <r2gmorclmtcrykws4sd7l3hkjzg6f72vbh7ulh3ml2jsnev35z@on2stvxr36qm>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-2-eeef0c1e0e56@baylibre.com>
 <172890486251.793259.16216468875581353928.robh@kernel.org>
 <20241014133823.GA1018400-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241014133823.GA1018400-robh@kernel.org>

Hi Rob,

On 14.10.2024 08:38, Rob Herring wrote:
> On Mon, Oct 14, 2024 at 06:21:02AM -0500, Rob Herring (Arm) wrote:
> > 
> > On Mon, 14 Oct 2024 12:08:08 +0200, Angelo Dureghello wrote:
> > > From: Angelo Dureghello <adureghello@baylibre.com>
> > > 
> > > Add a new compatible and related bindigns for the fpga-based
> > > "ad3552r" AXI IP core, a variant of the generic AXI DAC IP.
> > > 
> > > The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
> > > generic AXI "DAC" IP, intended to control ad3552r and similar chips,
> > > mainly to reach high speed transfer rates using a QSPI DDR
> > > (dobule-data-rate) interface.
> > > 
> > > The ad3552r device is defined as a child of the AXI DAC, that in
> > > this case is acting as an SPI controller.
> > > 
> > > Note, #io-backend is present because it is possible (in theory anyway)
> > > to use a separate controller for the control path than that used
> > > for the datapath.
> > > 
> > > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > > ---
> > >  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 56 ++++++++++++++++++++--
> > >  1 file changed, 53 insertions(+), 3 deletions(-)
> > > 
> > 
> > My bot found errors running 'make dt_binding_check' on your patch:
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.example.dtb: dac@0: spi-max-frequency: 66000000 is greater than the maximum of 30000000
> > 	from schema $id: http://devicetree.org/schemas/iio/dac/adi,ad3552r.yaml#
> 
> This is at least the third time this issue has been reported. Don't send 
> more versions until you fix it.
> 

as stated in the patch message, this patch applies to linux-iio testing,
where there are no errors, from my tests.

Error is due to the spi-max-frequency fix already applied in iio testing,
but still not where your bot is testing, proably in mainline.

Regards,
angelo

> Rob

