Return-Path: <devicetree+bounces-21272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B8A802FC0
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 11:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E04A28168A
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E421EB4F;
	Mon,  4 Dec 2023 10:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="fCv5j0F9"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A00103;
	Mon,  4 Dec 2023 02:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701684699; x=1733220699;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=p6Klwtsa8H36R/4ygyuhGjGbPY4N4JOBgFJRY200D3g=;
  b=fCv5j0F9Qs1aDVJX6gr128V8zIlKZNaaS7J9rAdeUdxPXC7ehadcGmks
   vBGn5SCarlAoM+jS85T8XPj77j+FSCBykDl+MvvQWcsIHORYGUNPyXiS2
   Qi8eKbqkvAT3/CbvQSHNwbO9NekK2tDJiX22505tkhxOc1WDP6p5EqyF8
   upja/cc14kFBl9RRcsnpHuS8fZyKONAMVwFWEx/RXvlOIX34u+tNKcQt4
   Wb9sTG0OqL8ek2tl/bV56zKVcp2Nr9vqEHbx+VLOFA7KH81I8RKJEdzz1
   KOkr8RxZjtMlUoE63yzTgREJsW+qrFxQlaIUOzJyDqzVtE7LMV5wD9DiK
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="458033399"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="scan'208";a="458033399"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2023 02:11:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="840975746"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="scan'208";a="840975746"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2023 02:11:33 -0800
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 0EC7311FB88;
	Mon,  4 Dec 2023 12:11:31 +0200 (EET)
Date: Mon, 4 Dec 2023 10:11:31 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vincent Knecht <vincent.knecht@mailoo.org>
Cc: Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] media: i2c: ak7375: Prepare for supporting
 another chip
Message-ID: <ZW2l087NKicEcacg@kekkonen.localdomain>
References: <20231201181350.26454-1-vincent.knecht@mailoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201181350.26454-1-vincent.knecht@mailoo.org>

Hi Vincent,

On Fri, Dec 01, 2023 at 07:13:48PM +0100, Vincent Knecht wrote:
> In view of adding support for at least one other chip,
> change the driver to move chip-specific properties and
> values in a common structure.
> 
> No functional changes.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>

The patches seem fine, thank you! I'll merge them soonish.

Somehow the DKIM check fails in b4 while it was successful when receiving
them patches via my mail server. Just FYI.

-- 
Regards,

Sakari Ailus

