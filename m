Return-Path: <devicetree+bounces-46568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3128386A1F3
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 22:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFEAC282DB7
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88EC214F965;
	Tue, 27 Feb 2024 21:52:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1932D60B
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 21:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709070736; cv=none; b=moYkesMNkPNL+l3ffvPU7H7tW3JBk9/b36LLwsJha8u+fqz3oSkwujBF7oyOVj6hgaPHn838jotZf1VNgsCjRy0gyNnIlAOnw6Ze198b7DG4in1kpyca8e6V1++Cr7aPw/PWBXpqZBFg3HM+/W9qbGmKRjyHGmevIxiKnhsvd0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709070736; c=relaxed/simple;
	bh=j3jujo60ThgsF30NVPNRGmItvZF+fe0I/ExrkBXukrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rPqi/ehooIBE4svwN/pvhcu5qyD6zF4UpI/zXnb3V3NYKPf3a6qMnlrnBuDUB2V6xmMVXhJrX0xH1yQokcvDmOJx5wyFpkQbSFvGGh4k4MVafw/P1MUzlU84WWroUL6wZYqiB4HmoWuqe6mIA9FQ4z/8bc+9z2ST3Tzk5Z+ZMP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rf5Ml-00070G-0s; Tue, 27 Feb 2024 22:51:59 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rf5Mk-003Gyk-0j; Tue, 27 Feb 2024 22:51:58 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rf5Mj-00AiBy-2z;
	Tue, 27 Feb 2024 22:51:57 +0100
Date: Tue, 27 Feb 2024 22:51:57 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, lars@metafoo.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, hns@goldelico.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: iio: gyroscope: bosch,bmg160: add
 spi-max-frequency binding
Message-ID: <20240227215157.3uuohzijesy6zcu5@pengutronix.de>
References: <20240221174305.3423039-1-m.felsch@pengutronix.de>
 <91f29265-36fd-4d0e-99b1-61eaada59601@linaro.org>
 <20240226124036.zzj5p7tlubc332r3@pengutronix.de>
 <29cc9d21-6fb5-40fc-abba-c0913cd175af@linaro.org>
 <20240227192308.52fd3a57@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240227192308.52fd3a57@jic23-huawei>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-27, Jonathan Cameron wrote:
> On Mon, 26 Feb 2024 14:18:00 +0100
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
> > On 26/02/2024 13:40, Marco Felsch wrote:
> > > On 24-02-26, Krzysztof Kozlowski wrote:  
> > >> On 21/02/2024 18:43, Marco Felsch wrote:  
> > >>> Make use of the common spi-peripheral-props.yaml to pull in the common
> > >>> spi device properties and limit the spi-max-frequency to 10 MHz as this
> > >>> is the max. frequency if VDDIO >= 1.62V.  
> > >>
> > >> The example uses i2c, so I would expect to see in commit msg explanation
> > >> which devices are SPI devices.  
> > > 
> > > All listed devices can either operate in I2C or in SPI mode.  
> > 
> > Such information in commit msg would be enough.
> > 
> > with the changes:
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > Best regards,
> > Krzysztof
> > 
> 
> Added the note whilst applying.

Thanks a lot :)

Regards,
  Marco

> Applied to the togreg branch of iio.git and pushed out (briefly given
> timing) as testing for 0-day to take a first look.
> 
> Thanks,
> 
> Jonathan
> 

