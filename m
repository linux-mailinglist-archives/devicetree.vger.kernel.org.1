Return-Path: <devicetree+bounces-11959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FAD7D730F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B3B9B21077
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE5E30FB5;
	Wed, 25 Oct 2023 18:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="hkhEh2n0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3572771A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:16:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76A0293;
	Wed, 25 Oct 2023 11:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698257793; x=1729793793;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=l26QKq7EILoWpWB0yHdqaizdI+WWdlawNjV7kFBCamk=;
  b=hkhEh2n00GasnpkF6FfQhjl8kxgLAJa5ONPZTGfFjo6FP12s1xDEGapu
   WcGYOu+u0/rAtqplnEgC8u6TERBN4vcndJm0BxheSzCJgd4MmU7mLdNNH
   sX7zSYGS7OZEU0Oui8EtGN1FmDmJpIJZYbihdFm0oWoNkx/+c4QsmcJ1P
   7UQCcPfx9q7bVCor6L2CDwuiK846sfHxD7Xp5LKIq/uUyiUvxIvBs7ci/
   hCMyA3vnVh9QuTRAvS0gRV0d+dBNFljOG0m/AUY+wjh7WEG1lO5/2Q/bJ
   5oLo/Yfle+wpvQBOUZdoBl4ZBrhl92JX1zmsUMuwQNnBjMXtDNecGhKCb
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="384579859"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="384579859"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2023 11:16:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="829322954"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="829322954"
Received: from ahunter6-mobl1.ger.corp.intel.com (HELO [10.0.2.15]) ([10.252.32.107])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2023 11:16:27 -0700
Message-ID: <bb3ea46e-069d-4a31-a3fe-70098a7e53ce@intel.com>
Date: Wed, 25 Oct 2023 21:16:21 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] mmc: sdhci: add __sdhci_execute_tuning() to header
Content-Language: en-US
To: Jisheng Zhang <jszhang@kernel.org>, Drew Fustini <dfustini@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor@kernel.org>,
 Robert Nelson <robertcnelson@beagleboard.org>,
 Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>,
 Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
 <20231023-th1520-mmc-v3-2-abc5e7491166@baylibre.com>
 <ZTk0VcFd3FcXIABW@xhacker>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
In-Reply-To: <ZTk0VcFd3FcXIABW@xhacker>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/10/23 18:29, Jisheng Zhang wrote:
> On Mon, Oct 23, 2023 at 02:07:03PM -0700, Drew Fustini wrote:
>> Expose __sdhci_execute_tuning() so that it can be called from the
>> mmc host controller drivers.
>>
>> In the sdhci-of-dwcmshc driver, sdhci_dwcmshc_th1520_ops sets
>> platform_execute_tuning to th1520_execute_tuning(). That function has
> 
> Hi Drew,
> 
> Just FYI, my th1520 version patch in my local repo overrides the
> mmc_host_ops.execute_tuning as the following:
> 
> host->mmc_host_ops.execute_tuning = dwcmshc_execute_tuning;
> 
> In dwcmshc_execute_tuning(), I will do some necessary setting then
> call sdhci_execute_tuning();
> 
> So I don't need to export __sdhci_execute_tuning(). The main reason
> is that the __abc symbol is expected to be used internally. However,
> I have no big preference. I would leave the decision be made by
> mmc maintainers @Ulf @Adrian, can you please comment?
> 

It is OK.  We try to consider SDHCI as more of a library, so
sharing any reasonably well-defined function is OK.


