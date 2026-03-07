Return-Path: <devicetree+bounces-272400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDu+IF//q2m7iwEAu9opvQ
	(envelope-from <devicetree+bounces-272400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:35:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FC622B15B
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:35:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9E2F302D093
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3C54345753;
	Sat,  7 Mar 2026 10:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEzcuPkA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962CE1F4634
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 10:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879670; cv=none; b=WtyeZlWoPAEcEZxL3JKLl4k232/yh2ASv/N3ksEy4HusX7jj9B7Qm/UgP77CIgkLbNuRc3t4MbzIeLQlc9p9hGZ07l4MXL5o5Nv3uQVOO/J0DlOeSDX9HI6BQypn3lCpVZloTspG50VdEYTzIO25ftdgGtcfOXqSmVzrLYjYfe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879670; c=relaxed/simple;
	bh=fwuYyrVoHIBAjWZjcE2VqZ+xtyZyFt51gzt4bZUEsLE=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kqQxG74ptOpweYdCunCgNkElWxjycnvAUIx5DlYjPmEssvCwBABaEQWJWM/TLXZV2Ng0TMl8NcSizObnGPM2lpc7EK19xGwb4IremQcUqr8Wu+nhD7YN3TOcN2iam+6LTnMTNw780FZ08dlZb+EQutIz8JoTPwNdAt0rZfeIep4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEzcuPkA; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852fdb36a8so3814115e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 02:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772879668; x=1773484468; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kxAFLIo2duFLvyleCapVzvrjVC+/uI+OGdjb9IusDqg=;
        b=BEzcuPkAUlz3ROc2F5dsbiteQGU9ZDeemtrYX0ojqlsAWDVOWaA1VJ9JKVFQc9pF/Y
         5UXGmzTBilz+dzywVT7a0DqljzspDBHzxtbKkwc6qDcNvzVZXZX+GdiADAj9xAFVuCsR
         ZkMbDxXT5MqdZXCBG8nTcY2m1lym/UO5NodTfmh92M8evKckSnAOk6tDrJOKbubGtShZ
         HrFg/mf2SBsJ9mDR7bxPJ4FDVHGPAEIHmZvi9aE8mVqcJB9DG8xVOSRdA5JeMVILcEpm
         11gCb+vnA9VkVcEJQt5/Qdh3GCOhFhnpDrxWQu+MXtUGoSBX2Ns+QUYYfeQYhfSBtxpI
         Vjxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772879668; x=1773484468;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kxAFLIo2duFLvyleCapVzvrjVC+/uI+OGdjb9IusDqg=;
        b=QGYVHvc23UjkgSAIMCdvgKcmv70VoWAkimc3M2BGvYY+4C6e85Kh7VW08K8s+2Ydxc
         OLUEVVb4mbSRmU0HuNAIC+5DGbjXNRZKEX5GAy0IGT3z7G5fCZzyJ+i9JFbM+tpmSC13
         wquOU6BRFbDy9HjJGJDPSgm2gBKB6F+AZSqFQMGP1QyzpFmfeYVbQWr5wpME1CkGAJYi
         mYBtVD8c60zy+wVVC6wUJMjHiFGy+xUy/mXQVMz1c6lNZ+lKvrk7E7eqmtO31Ie146i9
         1y0Jm0Z9fe6n0itTVMIVZa5IQk1ReC+gEzDwn6j4TpAEVHH9EUHSj4TR1ajFd+deGbI5
         /ZLg==
X-Forwarded-Encrypted: i=1; AJvYcCUp150lDy6fXEZ0p7SpLEngwJdZFaotQeK0dHJYWqD54bvD49q8UBGrRoALSleXpeCp9QOlD7z3yhX/@vger.kernel.org
X-Gm-Message-State: AOJu0YzTePgfdmSoaUwRKmnyf0rJwv5p7NSB1jyi/+dv26KyaYGebzs8
	pJG1XEO108XHR7ILVEMZ9jI7fWTNZhGVXLYRQ/0zH/X7E3rH1LCF+eaV
X-Gm-Gg: ATEYQzwgGW/rXow4eHooQoxPqTBjNlpjM3H0kkUO1COL/uFl1ENn/HvE6OYQU2p9VhH
	TMoR+BIj8U7Dj7fqLhcp/cdlwicgDqC44UdsD7oVMmAzaLcLDscpNe/F33b5stVsKSxtwdX3ZdV
	N3wiIryObnzZi7CvGjHpcSI7w6K/f3FpOQ/ubI9UyiXAtHGwwBYLpj9hTijHIC6y5WOCvAX+xfI
	ofzTfhKj3ky4zjkxDjxWdIi5upTrFiWIjqsJw98IP3EpIpYqCGa1s42wtjzvOGOH7xhORBAbPXW
	dG69g2mPuVN1+n3OT5gRBaF1EvaP0Eyo3k3O58Bhx4L++x8ckBudA08d29NQlpd00vvBdcahzPc
	7Ve3pG05MiuM2KwecQw47o0J0DZcMeJTaNk+SvnXdOGDMSgfJTfunaHqHrxLi8ECHF1YkdEpbLO
	MxyNX3oRBOUVPfvQlh4kwqnYk3EjOThQJ/1T+riIMSKY3XnUnwiF8xcQ==
X-Received: by 2002:a05:600c:46c3:b0:483:47ae:7c00 with SMTP id 5b1f17b1804b1-4852695aeaemr87092055e9.20.1772879667658;
        Sat, 07 Mar 2026 02:34:27 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485245dbcffsm38878465e9.18.2026.03.07.02.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:34:26 -0800 (PST)
Message-ID: <69abff32.050a0220.5ba1d.41cf@mx.google.com>
X-Google-Original-Message-ID: <aav_L8PiXANOR4cV@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 11:34:23 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-3-ansuelsmth@gmail.com>
 <20260307-strange-dinosaur-of-joviality-e6bc72@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307-strange-dinosaur-of-joviality-e6bc72@quoll>
X-Rspamd-Queue-Id: E1FC622B15B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-272400-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.944];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mx.google.com:mid,infradead.org:email]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 11:31:05AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 08:01:51PM +0100, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> > for the USB controller.
> 
> 
> A nit, subject: drop second/last, redundant "documentation for". The
> "dt-bindings" prefix is already stating that these are docs.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> > 
> > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > mode currently configured on the system for the relevant USB port.
> > 
> > To correctly calibrate, the USB 2.0 port require correct value in
> > "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> > selecting one of the 4 monitor clock for calibration (internal clock not
> > exposed to the system) but each port have only one of the 4 actually
> > connected in HW hence the correct value needs to be specified in DT
> > based on board and the physical port. Normally it's monitor clock 1 for
> > USB1 and monitor clock 2 for USB2.
> 
> ...
> 
> This must contain the header you are also adding/referencing here.
>

Thanks ok will squash the 2.
 
> 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 364f0bec8748..d75f59118a9a 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -779,6 +779,12 @@ S:	Maintained
> >  F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
> >  F:	drivers/spi/spi-airoha-snfi.c
> >  
> > +AIROHA USB PHY DRIVER
> > +M:	Christian Marangi <ansuelsmth@gmail.com>
> > +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> 
> No maintainers for the header?
> 
> > +
> >  AIRSPY MEDIA DRIVER
> >  L:	linux-media@vger.kernel.org
> >  S:	Orphan
> > -- 
> > 2.51.0
> > 

-- 
	Ansuel

