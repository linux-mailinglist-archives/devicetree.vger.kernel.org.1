Return-Path: <devicetree+bounces-10165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 620C77CFDE0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:32:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01DA4B20D2D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562192FE13;
	Thu, 19 Oct 2023 15:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="mj1MynCf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971DE31581
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 15:32:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34FD112A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697729534; x=1729265534;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=lAXEsiNfFv5qCpsZ+UzdFKERp6Sg56PDkraULpTuRe0=;
  b=mj1MynCfAUdECbpXS0MRtz3e+8N7YfO2cJSVv5bbhx9sLwM/UHBIV/H4
   0Byj8GRP6WdQ1L57q9bUvxzMpyzmdmFjOS0kZEB85xCnJbh3ZaU3fDjo5
   tdsU/ZLGfuzSsOZmef6yu8cCRQeUdjxFtw9MB1xyk60Ryb5C6KCWLaOb5
   2huacfyS5qyL0cpwBXljNAVpa1gUpKR0eiltITe+le3rSfq3ZsF2IbiRt
   fGCmmYysT9ojAtdDKUghZ6FQKPfZ+bWuSk8Bi4470pJ4M/OMVA4yI4D7R
   0Z77ru1aLzaEjeNXcB4EWH2a2rGmk2FNZksDNoZHHJtlLCVCaMsVeaHZT
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="365630927"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; 
   d="scan'208";a="365630927"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2023 08:32:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="847729709"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; 
   d="scan'208";a="847729709"
Received: from mttran4-mobl2.amr.corp.intel.com (HELO [10.213.160.204]) ([10.213.160.204])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2023 08:32:13 -0700
Message-ID: <246c670b-1d98-454e-b0d3-0fa40f7c5e03@linux.intel.com>
Date: Thu, 19 Oct 2023 10:32:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH][TEST-REQUEST] ASoC: makes CPU/Codec channel connection
 map more generic
Content-Language: en-US
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com
Cc: Mark Brown <broonie@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
 <87y1g3wdng.wl-kuninori.morimoto.gx@renesas.com>
 <d3c97c54-d149-4bed-9013-3f07bc6a7f52@linux.intel.com>
 <874jiokg1r.wl-kuninori.morimoto.gx@renesas.com>
 <5667241d-6976-4b44-8edd-79ee426415eb@linux.intel.com>
 <8734y8kd1a.wl-kuninori.morimoto.gx@renesas.com>
 <87y1fzpdxe.wl-kuninori.morimoto.gx@renesas.com>
 <87wmvjpdut.wl-kuninori.morimoto.gx@renesas.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <87wmvjpdut.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/18/23 21:04, Kuninori Morimoto wrote:
> Current ASoC CPU:Codec = N:M connection is using connection mapping idea,
> but it is used for CPU < Codec case only. We want to use it for any case.
> 
> By this patch, not only N:M connection, but all existing connection
> (1:1, 1:N, N:N) will use same connection mapping.
> Because it will use default mapping, no conversion patch is needed
> to exising CPU/Codec drivers.
> 
> More over, CPU:Codec = M:N (M > N) also supported in the same time.
> 
> Link: https://lore.kernel.org/r/87fs6wuszr.wl-kuninori.morimoto.gx@renesas.com
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

No issues detected with this patch by the Intel CI (other than the usual
suspend-resume timeouts that have nothing to do with this patch), see
https://github.com/thesofproject/linux/pull/4632

Tested-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

Thanks Morimoto-san!


> +				if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_PLAYBACK) &&
> +				    snd_soc_dai_stream_valid(cpu_dai,   cpu_playback))
> +					has_playback = 1;
> +				if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_CAPTURE) &&
> +				    snd_soc_dai_stream_valid(cpu_dai,   cpu_capture))
> +					has_capture = 1;
>  			}
> +		}
> +		/* .ch_map is from Codec */
> +		else {
> +			for_each_rtd_codec_dais(rtd, i, codec_dai) {
> +				cpu_dai = snd_soc_rtd_to_cpu(rtd, dai_link->ch_maps[i].connected_node);
> +
> +				if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_PLAYBACK) &&
> +				    snd_soc_dai_stream_valid(cpu_dai,   cpu_playback))
> +					has_playback = 1;
> +				if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_CAPTURE) &&
> +				    snd_soc_dai_stream_valid(cpu_dai,   cpu_capture))

while we're at it, can we also clean-up the weird extra spaces - unless
they were intentional?

> +					has_capture = 1;
>  
> -			if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_PLAYBACK) &&
> -			    snd_soc_dai_stream_valid(cpu_dai,   cpu_playback))
> -				has_playback = 1;
> -			if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_CAPTURE) &&
> -			    snd_soc_dai_stream_valid(cpu_dai,   cpu_capture))
> -				has_capture = 1;
> +			}
>  		}
>  	}
>  

