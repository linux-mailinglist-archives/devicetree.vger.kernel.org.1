Return-Path: <devicetree+bounces-305940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZOAZHLvBH2oRpgAAu9opvQ
	(envelope-from <devicetree+bounces-305940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:55:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AA86346E6
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:55:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HkYX8sM4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305940-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305940-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 015E03007342
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 05:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C41367B99;
	Wed,  3 Jun 2026 05:48:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B49D3EF0A8;
	Wed,  3 Jun 2026 05:48:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780465731; cv=none; b=pwGJEGSMKLkNm4FSvXCfbB+LTb8XVysZXe0BXZ2E+w/qwMXzecg3bsiJ+7eP2bBZuwGMeJKpqWLOyfs4kXaUYT6N057oTcwTA5VUWDdlRRcxWgJOU4KtOZWgdWBob3Ql8bIorRqXhWmnI0ln6Kt3jyQEGx4HcZckBMDa+VO+uFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780465731; c=relaxed/simple;
	bh=XWZigbnEuQVJIIQT2lJGXUC3oafte6N33qqOOF6iAcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gGk3Erl6sPk1/WBI8jpSbTTyOlp81saf0Hazhh6bhCvbC2aogvzdnfq9zxrdITaFEKqrdVAW88wJGLqtCwudp/nGs2nMAq7Bq/2cV7FZ5cGbtUiec8+WlMJl4RWqFapElY11xbeN9viuAtJs7VQbSE7ZTztsTF1hSIZfV13YGZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=HkYX8sM4; arc=none smtp.client-ip=198.175.65.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780465729; x=1812001729;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=XWZigbnEuQVJIIQT2lJGXUC3oafte6N33qqOOF6iAcU=;
  b=HkYX8sM4uhZeGHukTwuy8BCW3ZRbTUYJ7IdBLTBuoIWrET63v7qdIsfA
   VL3AhFB1kAXUdFqGRCbaJzjQ3bNPBUKgN821UhciLLeFGZQ0M0zqzEDWt
   JLHTzA/D83ep8HpKarDjSELzAfADL1drKEkZj4rcmlmy74uZBcARXqktU
   kM8MptELhpARLLdyvPHh/NVXTkmiaI52zKX+iEiLKphW/mxT75Oh1Nh5/
   eQGIH/Smx6H9IIqHQZQxOKTcuSOMKwGtkXd8FBcKs0/lKcM5ljEx6lEV1
   zsSyk/9SlO/2awdSj7JX9IqfJc+708Wpip2xBpREEjo8LE37UN9mulPfN
   Q==;
X-CSE-ConnectionGUID: 5qGbOmWTS6eREQ/kJW82ZA==
X-CSE-MsgGUID: YRknBBhiRMSzKQYPqnNQCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81442662"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="81442662"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 22:48:48 -0700
X-CSE-ConnectionGUID: cdnWUDoyQAeR4M44AoQvhA==
X-CSE-MsgGUID: KLwj8J98S1K8BltGtrQ1Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="282228661"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 22:48:44 -0700
Date: Wed, 3 Jun 2026 08:48:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Lianfeng Ouyang <lianfeng.ouyang@starfivetech.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: =?utf-8?B?5Zue5aSNOiBbUEFUQw==?= =?utf-8?Q?H?= v2 0/3] i2c: Add
 Starfive JHB100 I2C master/slave support
Message-ID: <ah_AOjTY9effYDtb@ashevche-desk.local>
References: <20260527085039.44435-1-lianfeng.ouyang@starfivetech.com>
 <ah9Yrt_gO8uGaPw_@ashevche-desk.local>
 <ZQ0PR01MB12690FA279708FD6A6DB063282132@ZQ0PR01MB1269.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQ0PR01MB12690FA279708FD6A6DB063282132@ZQ0PR01MB1269.CHNPR01.prod.partner.outlook.cn>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305940-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lianfeng.ouyang@starfivetech.com,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mika.westerberg@linux.intel.com,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,vger.kernel.org:from_smtp,ashevche-desk.local:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5AA86346E6

On Wed, Jun 03, 2026 at 05:31:38AM +0000, Lianfeng Ouyang wrote:
> > -----邮件原件-----
> > 发件人: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > 发送时间: 2026年6月3日 6:27
> > On Wed, May 27, 2026 at 04:50:36PM +0800, lianfeng.ouyang wrote:

> > > The Starfive JHB100 I2C controller is a variant of the widely-used
> > > DesignWare I2C IP, with a distinct register layout and enhanced features
> > > such as SMBus Alert and programmable FIFO depths.
> > >
> > > The series is structured as follows:
> > > 1.  Adds the device tree binding document for the starfive,jhb100-i2c
> > >         compatible.
> > > 2.  Prepares the existing i2c-designware-core by exporting and making
> > >         certain key functions overridable, allowing code reuse.
> > > 3.  Introduces the new i2c-starfive-* driver, with separate modules for
> > >         master and slave functionality, based on the 2023-07 revision of
> > > 	the Synopsys IP manual.
> > >
> > > Currently, due to the following differences, i2c designware cannot be
> > > fully reused
> > > 1.  For high and low level counting settings at different rates, i2c
> > >         starfive can use IC_SCL-H/LCNT to set SS, FM, FM+, UFM
> > > 2.  Interrupt clearing is achieved by writing 1 to the corresponding
> > >         bit of INTR_CLR, while designware reads different clearing
> > > 	registers
> > > 3.  Master and slave require separate probe callbacks and cannot rely
> > >         solely on the runtime mode switching provided by
> > i2c_dw_set_mode()
> > > 4.  The value of FIFO depth is not obtained through registers, but
> > >         written through DTS
> > 
> > NAK in this form. We well discourage code duplication and ugly ifdeffery with
> > full of __weak annotations that may not be present in the regular driver. There
> > is not even a tiny bit of justification for this nonsense.
> > 
> > TL;DR: this series needs much more work.
> > 
> > > I have written some poorly styled code to reduce changes to i2c designware
> > > and reuse its functions by keeping aa always true, for example
> > > 1.  the implementation of i2c-d w_probe_master() differs only for the two
> > >         IPs in i2c_dw_set_timits_master(). In order to reuse
> > > 	i2c_dw_probe_master(), i2c_dw_set_timits_master is declared as
> > > 	__weak. A better approach is to use a callback function, but using
> > > 	a callback function requires changing more i2c designware files.
> > > 	I don't know what the attitude of the community is
> > > 2.  For the operation of clearing interrupt flags, i2c designware reads
> > >         and i2c starfive writes. Therefore, in order not to modify the
> > > 	relevant logic of i2c designware, I added a write operation to
> > > 	sf_reg_read()
> > > So I think this version of the code is not allowed to merge, but I don't
> > > know how to handle this situation because if i2c designware is not changed
> > >  at all, we will have to write code that is similar to i2c designware.
> > >  Will this type of IP not be allowed to merge?
> 
> Thanks for the review.
> 
> In the future, the designware will be changed to the form of callback functions, 
> and then callback functions will be passed in i2c starry - * and implemented 
> using designware as a library

Why you can't specify your own regmap as it was done in Baikal case? What are
the obstacles to achieve that?

-- 
With Best Regards,
Andy Shevchenko



