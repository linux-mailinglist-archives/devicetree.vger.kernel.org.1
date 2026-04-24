Return-Path: <devicetree+bounces-290133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iL88DU6l62mrPwAAu9opvQ
	(envelope-from <devicetree+bounces-290133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 19:15:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E85461BEA
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 19:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F6BC3070416
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E99D53E5570;
	Fri, 24 Apr 2026 17:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLp+9G0o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B573E51DB;
	Fri, 24 Apr 2026 17:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777050642; cv=none; b=bBr5c4itwUIxNW20nfPkm36WvATFPSegrgIWHbkyvUlByJxAhKsLqQipXcXr4623Bl3LGt8AdFiUwpPGWLC6jbveGpxXQXfE1C++xGAIdERYUmqPJnoS2oJ83L8X0MDU0cryVaq7kOQcf+w13v/pSvVlkI7EmkLBmVq7yOfvTMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777050642; c=relaxed/simple;
	bh=Ammc+9LMdTmtT/fzG979zu8syJ7zUShBhwZ/8YHoqXE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nSvrktB0tGJV4vGDkGlxONHZla1Z9HTXnXGZI4WzeBnM3uFLZeHgtFSV3Kl/VPoXX7xDscGstDmEKdiUauhlDF5Qa3TceqZGNhaOpwT4+wdyTXIgALejjpsRoRnhyEmWCpYZnnOSdcAb9k5rHtNbMwVcpRYTj2ydAzlK90FsLsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLp+9G0o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E09E4C19425;
	Fri, 24 Apr 2026 17:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777050642;
	bh=Ammc+9LMdTmtT/fzG979zu8syJ7zUShBhwZ/8YHoqXE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RLp+9G0oZHF26TKhq0clrLk7CySnxTuc9+JpkdUqYj3lc5xyEPSzjilNOvAGWxOzI
	 oEOOnRFGNagkfc9RCvqvG6d92ynU+duuyowy3mxOMnXO4MEUS02yXEnIJmSxt0KoHs
	 mAesDwegNtYtDUJwxvt7AzQppM2CHbPvyxULiEQG44d7Yo0qfk3oJsUr1OBmgsXaZC
	 asaqRFTUgYgfrCKRdllPl5kxtqCx7q1CWnelmzIhIiKjqq2yXccrCTJP1iu5CYA9GW
	 ZIcQB+lqEwbxigVF4o9w8Cfzana2pWmDCrqkQ1CvH/cxPNQJJ705/Nh3bji/rrezhq
	 ewl8rPUkjVROg==
Date: Fri, 24 Apr 2026 18:10:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>,
 rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Auchter
 <michael.auchter@ni.com>, linux-hardening@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees
 Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 14/22] iio: dac: ad5686: add support for missing power
 supplies
Message-ID: <20260424181031.2270a508@jic23-huawei>
In-Reply-To: <mr2roj56empkjsfmeptr4iemblzca4myxohcieobk7bx5ikpy4@5a2j52x7x7lo>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
	<20260422-ad5313r-iio-support-v1-14-ed7dca001d1b@analog.com>
	<20260423190524.12ef4acb@jic23-huawei>
	<mr2roj56empkjsfmeptr4iemblzca4myxohcieobk7bx5ikpy4@5a2j52x7x7lo>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A1E85461BEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290133-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]

On Fri, 24 Apr 2026 09:08:30 +0100
Rodrigo Alencar <455.rodrigo.alencar@gmail.com> wrote:

> On 26/04/23 07:05PM, Jonathan Cameron wrote:
> > On Wed, 22 Apr 2026 15:45:48 +0100
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> >   
> > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > 
> > > Get optional regulators for vdd, vlogic and vref input power pins. vdd is
> > > the input power supply, while vlogic powers the digital side. vref is
> > > replacing vcc, which is being deprecated, but still supported. The value
> > > of vref_mv is checked so that a device without internal voltage reference
> > > cannot proceed without an explicit supply. Error report uses
> > > dev_err_probe(), which helps debugging an init issue.  
> 
> ...
> 
> > > -	ret = devm_regulator_get_enable_read_voltage(dev, "vcc");
> > > +	ret = devm_regulator_get_enable_optional(dev, "vdd");
> > > +	if (ret && ret != -ENODEV)
> > > +		return dev_err_probe(dev, ret, "failed to enable vdd supply\n");  
> > vdd is very rarely optional.  Can we not rely on the stub regulator
> > that will be provided if there isn't one in DT?  
> 
> Corret, vdd should not be optional, but I havent made it required in the dt-binding
> doc. Should I be concerned on breaking existing dts in the driver implementation?

If we never read the voltage then the stub regulator you'll get
with devm_regulator_get_enable() should be fine.

Making the binding say that it is required is fine (as long as clear
reasons given) but the driver must continue working without it.
That can be via stub regulators though.


> 
> > > +
> > > +	ret = devm_regulator_get_enable_optional(dev, "vlogic");  
> > Also doesn't sound very optional.  
> 
> The same way, that is not required in the dt-binding doc. Also, there are different
> packaging for the same device, on which vlogic is internally connected to vdd and only
> vdd is exposed. Some board designs may also do the same externally.

Ugly if it's a packaging thing.  In some sense those different packaged
versions aren't compatible in that case.  It wouldn't be correct to use
a stub regulator in this case as we should be mapping it to the same
one connected to vdd (reference count should just end up as 2 for that one).

Any way we can detect the packaging difference?  I think for some similar
cases we've taken the view that this makes the parts incompatible so
they need different compatibles, but that seems overkill for this.

If not I think I'd go with a stub regulator (so drop the _optional)
and just not worry too much that it might ideally be the one on vdd.

> 
> > > +	if (ret && ret != -ENODEV)
> > > +		return dev_err_probe(dev, ret, "failed to enable vlogic supply\n");
> > > +
> > > +	ret = devm_regulator_get_enable_read_voltage(dev, "vref");
> > > +	if (ret == -ENODEV) /* vcc-supply is deprecated, but supported still */
> > > +		ret = devm_regulator_get_enable_read_voltage(dev, "vcc");
> > >  	if (ret < 0 && ret != -ENODEV)
> > > -		return ret;
> > > +		return dev_err_probe(dev, ret, "failed to read vref voltage\n");
> > >    
> 


