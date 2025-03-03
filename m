Return-Path: <devicetree+bounces-153227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 418AEA4BA51
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 10:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 795093AFC02
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6D71F0997;
	Mon,  3 Mar 2025 09:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="XoFckper"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604521E9B04
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740992634; cv=none; b=llWfBQuQIQFLkYtsvVFzfZt+jiGhOKKHGsWSe/jmDKhCE4KDrajLKZVnsjpPkXQtqXfsN0jnCBamGq+vtihEPjMpF/aUZ/kTK//xuiPkrSkY1iyB6HOVEDGgpqjFVa9gTt7zIPqqViKv02sMi+ewtO0SPHT6MnFwCFO4ocpQT1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740992634; c=relaxed/simple;
	bh=PNaNRxQFWDKjY8BZdQKeH+iyaP6Umk6pm1DEjJLlqXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mrd2+QgoagH3NII/hXIF8yQWq4qE61uymeNOqM728KrnBOzF90CJpIWOqRiopitC1UfsiktNVE8alyEE95wbbS+zcA+Wgi9ilhd09nm4qiRSfNw0oQwMcfdbXE7CHNllGDAqaNHHB4iNGsY3Dy1jL7wbOYGgAEfwTvta47t5+kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=XoFckper; arc=none smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740992634; x=1772528634;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=PNaNRxQFWDKjY8BZdQKeH+iyaP6Umk6pm1DEjJLlqXk=;
  b=XoFckpercxE2b9K3EhE8Zlb+Ak+AnmtOgwUo3uNKkmWDnOUtiox36vXU
   H02dK2isK5CXvgnt1UL3iGha2yVAyj8KI3ete+eCmQPDuKh4dM6ryHrbA
   XAKmqLRAJna1AJqAzPTz+Q77QVUXtUrzv37tYVNu7OdQCT05o3DA/LVVx
   pnibdQ08I/jlWYNT/VG7HDs8I4gGZaOaFIdlhnKWWJM0mvotcKn1bHYG1
   /j2QZfiWDz/lzgsR6q9x371G1s0l1qaIVYpYzCIpAjo3ouTrBplHR3GS/
   rUxvP1hfVSVGUcGUM9fW45ri8gDFsLcStEgxIL3pGof0T56OqTN3qohPv
   A==;
X-CSE-ConnectionGUID: pG9uTkbLR16VroGqb59+pg==
X-CSE-MsgGUID: aykxd/GSSVayXFODLuxpFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="64306544"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; 
   d="scan'208";a="64306544"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2025 01:03:53 -0800
X-CSE-ConnectionGUID: +gKGUrFOQVyFdSuTFIbX6g==
X-CSE-MsgGUID: wOhqLxr5Q2q5TxL/WRLPaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; 
   d="scan'208";a="122547368"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.94.0.53]) ([10.94.0.53])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2025 01:03:51 -0800
Message-ID: <b9f54209-0690-46ba-a08f-d6bacad6cf2d@linux.intel.com>
Date: Mon, 3 Mar 2025 10:03:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ASoC: codecs: add support for ES8389
To: Zhang Yi <zhangyi@everest-semi.com>, alsa-devel@alsa-project.org,
 broonie@kernel.org, devicetree@vger.kernel.org
Cc: tiwai@suse.com
References: <20250228100245.127413-1-zhangyi@everest-semi.com>
 <20250228100245.127413-2-zhangyi@everest-semi.com>
Content-Language: en-US
From: =?UTF-8?Q?Amadeusz_S=C5=82awi=C5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
In-Reply-To: <20250228100245.127413-2-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/28/2025 11:02 AM, Zhang Yi wrote:
> +	/* clock inversion */
> +	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
> +	case SND_SOC_DAIFMT_NB_NF:
> +		break;
> +	case SND_SOC_DAIFMT_IB_IF:
> +		break;
> +	case SND_SOC_DAIFMT_IB_NF:
> +		break;
> +	case SND_SOC_DAIFMT_NB_IF:
> +		break;
> +	default:
> +		break;
> +	}

This switch does nothing. Remove it?

