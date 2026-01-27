Return-Path: <devicetree+bounces-259842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIgPDsGjeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:38:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A7993B0E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8ED29301586E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 673B7347BA5;
	Tue, 27 Jan 2026 11:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VeXTgXJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0D3308F32
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513916; cv=none; b=clikLRNbuPebHnh9VZaBpBsHJoQGz7JLKp9UTR755HE8eXAmzXzphp0wemqSxIHOKmNBYJOwxeqyBAFY6p2LoHhQhyIcQjmL9Q4K4g6PUzcd1EVqwiMRDd1pIT2zgPTcPAXSwbXwBjRLIMz+VySmofQd9NI07in5Selwhq4Ql1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513916; c=relaxed/simple;
	bh=3K9aBDr/ArfdtgOK1jMZcCRg52z6zlVpVc/LOShdI0w=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o5hZj2N4aiy7jxbfU2b4NZIvXRem3+ZZPmUovUuKBd7cL9+R/hOtju/j5Rou/4foIdqF+60yPNPxFjcjOsPZ0fwJb+AoFc4ukGe5UfVnWFZ3LTFWvW4Zo/5rGjZ8kCWYyr1J2PinGL0yObqk18k4l1AzP5rISKX//KTNjWet0Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VeXTgXJK; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so47600245e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769513913; x=1770118713; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AASlxAZ4aYaHvKBg73VpYx8embHwR8icb+WKnSC8l4A=;
        b=VeXTgXJKEOQZICQQnEWpueYYCwBUiIhJgU7y5bErDw+JS0lOYIOEucTgdh08TxhBVq
         +J/7H64ZXS7ISt9wlClbdwHG9BAinVChxTyFHeYBcQ/PTMLaGftGM0tHOu2r0lRCui9e
         k2sfvB/6bXl7/iyDdv+LURBou6/0LlsUqi/spFi1WPEZxb+0QkdIGl04YgQ6+qRd0dY2
         dV3oOn8vsykIZchwF2NBICS8yxrsbReEDdypDTgDwLy0jKxENVa8/76YX9IXgKVj4xsU
         jTRuwaaFXQR3bILjL0MdQHB5vY1JNzt19IYtz6jow+KB+3jOJJEJs0IYMOpdWVoE1JCC
         kFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769513913; x=1770118713;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AASlxAZ4aYaHvKBg73VpYx8embHwR8icb+WKnSC8l4A=;
        b=cy+pIfTNWhUNIyCZCy1n0Ar1H55UByZB02iJnv16sPBjOR0ItmLL4jN7YODrnXPxCx
         05zfdSCJ6eCOxsDlRHA5CFJFMyNZFs/kqHQioPZZMCJvGow9n2v5kKpqr7L98Gbu6gH3
         P0lJDodk080aYPsMX9gZFUlvYViMI3ENfCSwiZjp4wsqgRrFbGiWIadAu22SUN+TQf04
         JO3s+btydUqyO4C/j+xJhC5P+P/OP5BHKkE65k0OlN+YJKYnA77kNiHTzARahQ6rxA/N
         lLMqHf/WHL2DGrdf2ry9Gxlg7c45WxOnD4RWNoCZ2SP3iwx6PRN2ZkZLoAo4wquLZs5n
         wUKg==
X-Forwarded-Encrypted: i=1; AJvYcCX/DGb8RYUhnj51Vui3mvUrJk2VXsUR5pyAb3rAf2AJfP1myBEr+8TSJDJ9L2A41gg3p+WdNYGyWj9v@vger.kernel.org
X-Gm-Message-State: AOJu0YyiSN7gaZeGSL0NcRtb1bt/+KPjfaNIrNCoY9JtTnNOvMgXusCx
	NGI3M1wfOCN/ojuen+sXn9Yg4MlRt5/YpgyJgpJqWMGhu/DVKRg4U7vq
X-Gm-Gg: AZuq6aKdSl8su85UslSV9YslSoMIxYfeH0Zk8Fdd7yueIgZqvydxRZvq2/48NIwqk24
	1nFNtLVIkdkh21rOhxg9PnyEJTfK+XGx29Lz45iVMbG0EAtNPnQ7r3wCG+W2bMuKkvA+gbPQw+y
	4LTU2aBHRm1Hea9a3o0SSaU4k6LwXXkpnj2JweGwsv676UTRbq3Gd+fe0qXYJNqg7KfH/WMPOop
	txtCpNP54ic0xdqAKtks6aWQmLTAuUjv22IbvCJTPoDkmTjFxdH2GFPX9Y5ZQtv4kkU2wWj6OHT
	PEQZkNi7g7Ig58B+DkggafNv6VW0oXnjqUwtoGuRT2mfX0hHfSs2FN7remLS8e3Kz5/z9YgE2Gm
	FXFp4vZbVlaA3ufYxUUFLaB5ofSuO/o1rUX/h6fq5PDXOEiMe83/FSnjj2kbOdhW6LLqaRidIT1
	CKgEfJafgXOwhnIrDWkd4iHk3pLKCVk+a7w7LhNMd/jLk4urQ18pCu+cYzizIvknQ/oSk9Bw062
	Ews
X-Received: by 2002:a05:600c:4587:b0:47d:403a:277 with SMTP id 5b1f17b1804b1-48069e24034mr18944385e9.4.1769513912960;
        Tue, 27 Jan 2026 03:38:32 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c428basm58082165e9.12.2026.01.27.03.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 03:38:32 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 27 Jan 2026 11:37:52 +0000
To: Conor Dooley <conor@kernel.org>, rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 2/6] dt-bindings: iio: amplifiers: Add AD8366 support
Message-ID: <rzco2g6psoblzaaqrdnmpmhs44hl7kqusa2kuafpkjx635dug2@rtwebhwztfkd>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-2-c9a4d31aeb01@analog.com>
 <20260126-porous-hurdle-bfc510f113bb@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-porous-hurdle-bfc510f113bb@spud>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259842-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: A2A7993B0E
X-Rspamd-Action: no action

On 26/01/26 08:11PM, Conor Dooley wrote:
> On Mon, Jan 26, 2026 at 01:51:03PM +0000, Rodrigo Alencar via B4 Relay wrote:
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add device tree binding documentation for amplifiers and digital
> > attenuators. This covers different device variants with similar
> > SPI control.

...

> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,ad8366
> > +      - adi,ada4961
> > +      - adi,adl5240
> > +      - adi,adrf5720
> > +      - adi,adrf5730
> > +      - adi,adrf5731
> > +      - adi,hmc271a
> > +      - adi,hmc792a
> > +      - adi,hmc1018a
> > +      - adi,hmc1019a
> > +      - adi,hmc1119
> 
> Why do none of these devices use fallback compatibles? Please put the
> rationale in the commit message.

Will do. Each device has their own gain range/step. 

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vcc-supply:
> > +    description: Regulator that provides power to the device.
> > +
> > +  reset-gpios:
> > +    maxItems: 1
> > +
> > +  enable-gpios:
> > +    maxItems: 1
> 
> How come enable-gpios is optional? Is it optional on all devices?
> Do all devices support enable-gpios and/or reset-gpios?

Board designs often hardwire powerup or serial mode enable signals
to high voltage level, so there will not be a reason to add the
enable-gpio.
I went over the device datasheets and I could not find the
reason for the reset gpio. I left it there because it was being used
in the current driver implementation, and I would not like to
invalidate designs that might be currently using it. I will ask around.

-- 
Kind regards,

Rodrigo Alencar

