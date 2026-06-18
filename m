Return-Path: <devicetree+bounces-313542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kF0QCnoNNGq5MQYAu9opvQ
	(envelope-from <devicetree+bounces-313542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 17:23:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3CA6A134B
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 17:23:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ziepe.ca header.s=google header.b=X8uNSplf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313542-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313542-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67CE03010498
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1103ECBE4;
	Thu, 18 Jun 2026 15:17:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A62D2D9EE4
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 15:17:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781795871; cv=none; b=tuLbPqBYx4rY0vD2x6nbF9CX35vblOyNKs5RHzNTjQhm10/lec2ZESGKG3juuIDJcI28a9rei/u4IpZnfBztGXmrdGc2Dd7Sa+Fr1ujnwPX+fx+DEHbjAByNzOFz5kS1HgrubbKwiP24GcsBUsRVNETzmgpJHv2VdCOvXzQ9WWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781795871; c=relaxed/simple;
	bh=fb4jtdv5mW6uUnsvCDcww1wfNGkPXw/cVhax9OAz1ag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dj2jB87h+0M9sNZcDrGFlvoduWnJR3TdzUdYcDhEe+H/QGduAwfmNGbq+zRj76ZR3H6tgehEYT2RFD6fcFoRSX20y4kYoJGwfTeiM0a9JJxSfagyiulPm2F5kqqTx1EZtoVvCmnKbpH7ghyiHd1XeQsZwDnkp1iLOvS9rx32Uqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=X8uNSplf; arc=none smtp.client-ip=209.85.167.170
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-486badc02ecso458521b6e.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 08:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1781795867; x=1782400667; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fb4jtdv5mW6uUnsvCDcww1wfNGkPXw/cVhax9OAz1ag=;
        b=X8uNSplfsvhwJKKtsW0F5KOS3WOJgc2xKTcpoVGlUzCwjHQXOIQO+n1s0vBjMEGQd3
         xzUotFeriHqWLB7Jmzt+BF8QRVi9Sdoi4RKmzHBQF3FDuE/PHnwtGDi65xw1NMexjtqq
         gs0dA8h6ZaeaFxsQK+HDYXogEkcQzYZdk/z26Ruqbb59zshnZgsiet8Yq/sdY+BTUrfl
         nCNCRX3rX0M0UyzIgo+oWxw6jeNbCIQb+kYpMcYLBZJi04t2zLkWRGphHbJmtgyD1f9+
         8AUYxNvwq2PP1FL3VRDSVRIls7k2E+GFGyFZI82aF50ap3p1McFMXikazYRRDle/PP2/
         r4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781795867; x=1782400667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fb4jtdv5mW6uUnsvCDcww1wfNGkPXw/cVhax9OAz1ag=;
        b=feZHSJ+C8ZRTbmy2ysvvugXnUsOnSsfe8za81aMGgzkxmoB+vxXWLnpwLToNnwYpyA
         aK9EUxhPsI70Gfc+K1tbJMpSzN10pGf4UMUdRk5HQnV2j55ubfARUv/K26nbc047R3re
         p1i1iPpUr207YV5Itp/aqGZKDKfArbAd/XciCq02xzFYuFVqBfk2/17q7o/wWnq3l2NQ
         81mK5gagxEfSI4Z2rdzPHEt7USmQIginsxyWl9Qay1PDQL0Pspgr3M0iIEJcW0yay7Qn
         KUVoVxOE//bDH1zfHBninWFAUll+rfhcNjsvAbD5abQIECqEh5/igNo7qHTKIsG9id36
         /4Zw==
X-Forwarded-Encrypted: i=1; AFNElJ+bQZMVsMUlhjBgzzPHRoaWYALoaIO8Cx/191BslC2D+tIVKyiuPTuKysvSa9KOYznorDoz0rK/eKro@vger.kernel.org
X-Gm-Message-State: AOJu0YxeJzRSbcH+JuhAwCzW00MhfFJ4OLng4m2koSooYTOXFr48oZea
	9u2Zzf2d3G5WJsINFp4JZ/vE3lqmc5Y3+z/HVrZbhxmxbvqwFTJMplBHy2WNn4AvxC4=
X-Gm-Gg: Acq92OGpXkydAeDmGsgis2h7VcWglq7PAMyOTntcuQDM3x5aJDFMjSXVEjH9J0u9lZL
	eJTH9Fj0E/g0rUTyBNf/7uGS481XSg7ofQI+jFKEX2p8S1evRv3vsBXjS6eI4XvAG569U/IjeXD
	wowCTpkQX16u1rU2FEVba5woMKMJE/eU+ogVsU6n1PUojnPIgpwjr0JSY9f87JBGgBzUqvzgINW
	1saTk44wfY3HwSAgJv3kpP9suJuFAV0dbAZBhSd+VZSBA7Vw5llwqkJI3NbGwPPlQb9mSFfaqLM
	KgnlFc/jgAPWynL8RbRZJD+sPYNvp3xKmsYC/zufBdiEuF2uFVyaWTDkoYz9VJPFcPQbY6+f5qJ
	zk+7NSXCrHuvgFamCI8rxAdGYD7gCGyxebsZKfZ4TiE5Bmwb7BljHdvBFziMolThQbLRhX4eVe6
	D/XQ6iLmY7XTQY98w2HL8MXri8E0FgDm3uZ9DS5kZXbDu4XGbDE3569bk12OSLHrDz1kVVq8QcX
	SBsdA==
X-Received: by 2002:a05:6808:690c:b0:485:48da:132c with SMTP id 5614622812f47-489444e5528mr6402027b6e.18.1781795866966;
        Thu, 18 Jun 2026 08:17:46 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ddc8d99d7bsm8073486d6.12.2026.06.18.08.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 08:17:46 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1waEUz-00000002rrM-2pkZ;
	Thu, 18 Jun 2026 12:17:45 -0300
Date: Thu, 18 Jun 2026 12:17:45 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
	Robin Murphy <robin.murphy@arm.com>, joro@8bytes.org,
	will@kernel.org, m.szyprowski@samsung.com, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, dikshita.agarwal@oss.qualcomm.com
Subject: Re: [PATCH] dma-iommu: Introduce API to reserve IOVA regions for
 dynamically created devices
Message-ID: <20260618151745.GD231643@ziepe.ca>
References: <20260119054936.3350128-1-busanna.reddy@oss.qualcomm.com>
 <cfd23f75-8952-4463-abd5-815b995031b0@arm.com>
 <bb59f07e-ca7e-f012-6a4b-0a148350b69c@oss.qualcomm.com>
 <20260612172649.GM1066031@ziepe.ca>
 <da77c21d-25b3-46c3-a48f-71f0549e9f5f@oss.qualcomm.com>
 <20260615125257.GS1066031@ziepe.ca>
 <dcc0d02e-91fb-ddbe-399a-0191bab94c4f@oss.qualcomm.com>
 <20260617194038.GC231643@ziepe.ca>
 <e9e76c9f-b3b1-4ffd-9547-183556f6bb60@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9e76c9f-b3b1-4ffd-9547-183556f6bb60@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313542-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:busanna.reddy@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vikash.garodia@oss.qualcomm.com,m:robin.murphy@arm.com,m:joro@8bytes.org,m:will@kernel.org,m:m.szyprowski@samsung.com,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:dikshita.agarwal@oss.qualcomm.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jgg@ziepe.ca,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ziepe.ca:dkim,ziepe.ca:mid,ziepe.ca:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB3CA6A134B

On Thu, Jun 18, 2026 at 01:57:40PM +0200, Krzysztof Kozlowski wrote:

> Same with interrupt-map.

> There are PCIe controller nodes which have interrupt-map and no
> interrupts property ever uses them.

PCIe is quite a different situation because we expect Linux to
dynamically create the child nodes based on PCIe discovery, and the
various maps are all searched based on the PCI BDF based on HW
properties of real discovered child devices.

Here they created "vpu_bus" and create a bunch of devices for some
reason, but they are all hard coded in the driver. It is not a dynamic
discovery, and it is not creating "real" child devices.

> Because DT person - me - told that creating child device nodes just to
> configure iommus is abuse of DT. There are no child devices in terms of
> hardware or firmware. The iommu ranges here are no real hardware.

That doesn't seem to be what Vishnu is saying. Review the earlier two
emails explaining what the HW issue is here:

https://lore.kernel.org/all/bb59f07e-ca7e-f012-6a4b-0a148350b69c@oss.qualcomm.com/
https://lore.kernel.org/all/cb37e7cc-4fb0-4c24-8f89-f6f9eb08a107@oss.qualcomm.com/

The VPU HW diagram with different IOVA requirements for different
stream IDs seems to be an entirely HW based thing: "each context bank
enforces a different IOVA range"

The original patches just created a 0 based IOVA space per stream and
justified that by increasing the IOVA address space (make sense). The
email above now says some of the streams only function with a limited
range of IOVA because the HW uses the IOVA itself to select the
streams (insane!)

IOW this entire device is completely mis-designed if it is going to
easially support the Linux DMA API :( That's all HW mess, which is
motivating hacks to try to make the Linux DMA API do something usable
by this device.

Anyhow..

In Linux if you use DT iommus the SW sets things up so every stream
shares the same translation. If your driver/device doesn't like that
there is no SW way to opt out of sharing. I think that is the first
core issue that VPU was struggling with.

If you have one "device" then I would argue the DT should describe all
its streams using iommus in the normal way. The introduction of
iommu-map for VPU is only being done because that is a convenient hack
to allow Linux to unbundle the streams. It would be much harder to
unbunble the streams directly from the DT iommus property, but that
would probably be the cleanest, software agnostic, DT modeling.

So, if we are going to do a hack in DT to accomodate Linux, I argue to
choose explicit child devices so VPU does not need to create a special
bus, call of_dma_configue, or hack in new DMA API things that only it
will ever use. Then the explicit children can properly describe how
the HW decodes IOVA into each streams in the DT (which sounds very
much like a HW property to me) so that Linux produces IOVA that the HW
mangling properly routes to the expected stream.

Then the VPU driver just has to assemble itself from many struct
devices, which I admit is also a troublesome task.

> However, said all this, since I pushed folks to come with the iommu-map
> approach, I will revoke my disagreement to child device nodes in DT, if
> you really believe that is the approach. IOW, I will agree to device
> nodes in DT representing fake hardware-children, just for the sake of
> Linux driver model limitations.

I would wait for Robin, he knows this better, but I belive this was
broadly his point in the original email..

Jason

