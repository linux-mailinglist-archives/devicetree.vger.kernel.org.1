Return-Path: <devicetree+bounces-289959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEE1JNg+62nFKAAAu9opvQ
	(envelope-from <devicetree+bounces-289959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 11:58:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B1E45CA0B
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 11:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 648BF3026C29
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0FF35AC29;
	Fri, 24 Apr 2026 09:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ClK+t9Ao"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E92C35A938;
	Fri, 24 Apr 2026 09:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777024690; cv=none; b=nU2GpPbTxghXcFqjSrmAkm0QKhyK8pBb+idjL2AeIYJaL8uoL/IM7vpHXtXIX61JJ0Wg/tttmNImB8IY3DwaandoG9gWfdjkIz6qyeH0Lao+7VNSzGCG3SbPeO+lVVHP5eDGFy1oacXxJnk0FoqF6fq9vQ1Cr30pSoQYGZ1xf+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777024690; c=relaxed/simple;
	bh=aMzRaQGPcbJXEzShNriK1H0VOmBVn5aR4ZpHPSZRFXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=obu9ZX8B9xn3W3YVgpNqbP6l7o5twNaF9rAlgdeowAkashbRX1zw3y1uTtNC3mX8FJCme9NHZ0xh8X/TcOv8wutdUFSWRxVlisxKI72ULFs29dAmXL8HDp4lUFRdleqP8BzcidDmQTYwDP3qUIhLQ1o4iGqDAPMuGBlghavUyyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ClK+t9Ao; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777024689; x=1808560689;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=aMzRaQGPcbJXEzShNriK1H0VOmBVn5aR4ZpHPSZRFXg=;
  b=ClK+t9Ao8NJL8bbIsQLhMQxNYBxzgvFv9G/UcLlFZmm+U6QD5VPUHVUQ
   7WyoCu26kK33mxbYbzjIEzemrUC/nfMRBRKn2YrO/oYc+t1NNx1YDlvLK
   FCQmsK1XVETwvrxwkmYCmpf9r/8SHjU8wxhwfyqidryE9rlsM5niFnHrj
   OA3q/iHtlGAT/ZKiUyWhgOHzcTsn7vSv7Kt3kED69hrL8Ex+hAVIYx31Y
   QUcLhbPOK3TYvJJIXtU7t2XOwz5KJS4udLug6C0/XQkNCnd8FWEQm/O7w
   zIZpc3JD3kzC0lFFMAmomjbwDr24t+E1wgI+gzuAMspS9iMS6Mxx5MfI3
   Q==;
X-CSE-ConnectionGUID: d2R5hod2QXyK2Gifd++5rw==
X-CSE-MsgGUID: GuulNTcQQ0Gm8bUEgSSocA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81610187"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; 
   d="scan'208";a="81610187"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2026 02:58:08 -0700
X-CSE-ConnectionGUID: OqNbak6vS+uSahwuqFslqA==
X-CSE-MsgGUID: uGHSkmPrShy6N71Wm+mYzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; 
   d="scan'208";a="237969085"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.71])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2026 02:58:04 -0700
Date: Fri, 24 Apr 2026 12:58:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 0/4] serial: 8250_dw: Add support for UltraRISC DP1000
 UART
Message-ID: <aes-qdaT_9wMbTsm@ashevche-desk.local>
References: <20260424-ultrarisc-serial-v4-0-1765a0b4c4a0@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260424-ultrarisc-serial-v4-0-1765a0b4c4a0@ultrarisc.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 13B1E45CA0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289959-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:dkim,intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Fri, Apr 24, 2026 at 01:39:27PM +0800, Jia Wang wrote:
> This patch series adds support for the UltraRISC DP1000 UART controller.
> 
> The series includes four patches. The first two are preparatory cleanups;
> the last two add the DP1000 compatible and fixed CPR handling.
> 
> The patches have been tested on an UltraRISC DP1000 development board with
> Linux v7.0-rc7, verifying basic UART functionality.

Now it looks good to me, thanks!
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
(except DT bindings, not an expert, no tag)

-- 
With Best Regards,
Andy Shevchenko



