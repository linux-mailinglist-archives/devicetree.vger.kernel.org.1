Return-Path: <devicetree+bounces-269603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJypOZ0Eo2kJ8wQAu9opvQ
	(envelope-from <devicetree+bounces-269603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 16:07:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FDA1C3CE6
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 16:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 910F33060CCA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 784B344DB6F;
	Sat, 28 Feb 2026 15:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuXMEwSY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30EC44D6BA;
	Sat, 28 Feb 2026 15:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772291226; cv=none; b=PdfBsxZpxtwGLJ01cMAfPEF/BKBS7BVlyH5xE3baEfaL/el/1FvR6uzG8wezd3oKINY5KjqDigMn1osHQPq6BOifmJLHAO1yxizgNBI9uoGGzr8BufcSisrn96ISKrPu117oIdSI2zL1ueiQEi4wGdM+QQigWP9h0rqpICrgN3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772291226; c=relaxed/simple;
	bh=QUEf1RxQq8AvEMEHGrXzduqFCSjXkJXhNVRjIL5JFTY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rqzkDF2G9AFHY6gKmejTdj9gaohflgavQkmMnHRKyuYWq9SkPJlsNADTDye/bTaTMJk4cqoy5bTaTzGR6BA5RRJFhAioDsspaT83IaxTKgcehsbONP3APABzzkw7X+k/ObHFtpeW0v2edA57tIsVUrTXlXWeVA4wMVTElg9Jf60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuXMEwSY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0A71C116D0;
	Sat, 28 Feb 2026 15:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772291225;
	bh=QUEf1RxQq8AvEMEHGrXzduqFCSjXkJXhNVRjIL5JFTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VuXMEwSYgvOeavnsKJETp09iBjUB7dudOLHvcAXin8xayEIpxgXwUdRXpr3oASc+K
	 0oFZY+1g+RyTn8kuPrPj7lceBfvlUYipQ5Zqkt0EI9TWzsCMEgLOrOe2oEM+Xy+5Rz
	 g92sSr7DPvJAWLIJIYoOiiVcurzti5MIWVpnkgjtX6v3jUWgQ3tMx1mcIanUv3/n1E
	 y/zy2GHklkRMh6aREYt5IhTfvMNiYfv/A86AcyrrCkXP94jliL1vMAvIL9RzHp2+IL
	 79pkNy15m56kcpsxPKlqkZ47CK6S7mQiUD2m3i+CKRcywDlenY5xGEGK1/PJeCMpC1
	 GlU/OPpo1Fswg==
Date: Sat, 28 Feb 2026 20:36:49 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: zhangsenchuan <zhangsenchuan@eswincomputing.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, bhelgaas@google.com, 
	krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, p.zabel@pengutronix.de, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	christian.bruel@foss.st.com, shradha.t@samsung.com, krishna.chundru@oss.qualcomm.com, 
	thippeswamy.havalige@amd.com, inochiama@gmail.com, Frank.li@nxp.com, ningyu@eswincomputing.com, 
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, ouyanghui@eswincomputing.com
Subject: Re: [PATCH v11 2/2] PCI: eic7700: Add Eswin PCIe host controller
 driver
Message-ID: <2rpd6fo7ksa5tqzqhm3335fyekwyaisjtreo5asmw4xctyzxiq@c6mv4hpioocf>
References: <20260227171554.GA3898780@bhelgaas>
 <28f8d39b.3add.19ca33cb23a.Coremail.zhangsenchuan@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <28f8d39b.3add.19ca33cb23a.Coremail.zhangsenchuan@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269603-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,google.com,pengutronix.de,vger.kernel.org,foss.st.com,samsung.com,oss.qualcomm.com,amd.com,gmail.com,nxp.com,eswincomputing.com,einfochips.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,eswincomputing.com:email]
X-Rspamd-Queue-Id: 63FDA1C3CE6
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 03:53:09PM +0800, zhangsenchuan wrote:
> > Subject: Re: [PATCH v11 2/2] PCI: eic7700: Add Eswin PCIe host controller driver
> > 
> > On Fri, Feb 27, 2026 at 07:18:08PM +0800, zhangsenchuan@eswincomputing.com wrote:
> > > From: Senchuan Zhang <zhangsenchuan@eswincomputing.com>
> > > 
> > > Add driver for the Eswin EIC7700 PCIe host controller, which is based on
> > > the DesignWare PCIe core, IP revision 5.96a. The PCIe Gen.3 controller
> > > supports a data rate of 8 GT/s and 4 channels, support INTx and MSI
> > > interrupts.
> > 
> > Does "4 channels" mean "4 lanes", i.e., what we typically call a "x4
> > link"?
> 
> Hi Bjorn,
> 
> "4 channels" indeed refers to "4 lanes", in the next version of the patch, i
> will update the comments, changing "4 channels" to "4 lanes". Apart from this 
> issue, do you have any other suggestions? May I send the next patch?
> 

I can ammend the commit log while applying if this is the only requested change.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

