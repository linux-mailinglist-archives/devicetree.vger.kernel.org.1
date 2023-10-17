Return-Path: <devicetree+bounces-9442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B687CD0AB
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 01:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 341E9B21C6A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 23:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAAC33FE27;
	Tue, 17 Oct 2023 23:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Z23AeWUW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF693C096
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:23:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3116120
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697585014; x=1729121014;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=+nR7voVu9E6cM5UVFVpm5Nh+7Uh8hmXLmgaIcz+rKVA=;
  b=Z23AeWUWjBc6r3bre5ffgYIZFoOcjIcH9LLp9eUIK9WdtiVBv2EOHx9l
   YrLckHK6fwpZwX/L7ZwHpZhIyHd/a0dK/XJLicmf7Bh+H7BhZ3zooE8+P
   n1AOSpr0glsTPU9zqMz54Nnlj6kQZek3IluxiA+reH/jxMAqsimicFtBq
   PvVDF+fubddbgd7vyDKJWGg87GMHP13lfpXw+VdwNuSK4/dPltpscpHzn
   16F8JRhWqNaOzLCdds+otC+skI60bJUMvoqo4rWRNAUgEJ2N/6AnV11zk
   HaRMEfmMAzJCkA52Njf7K85EYGazUISKB116J893aJMHc79tXbuBWZE69
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="384778259"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; 
   d="scan'208";a="384778259"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 16:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="826637534"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; 
   d="scan'208";a="826637534"
Received: from asprado-mobl2.amr.corp.intel.com (HELO [10.212.55.179]) ([10.212.55.179])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 16:23:32 -0700
Message-ID: <5667241d-6976-4b44-8edd-79ee426415eb@linux.intel.com>
Date: Tue, 17 Oct 2023 18:16:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] ASoC: makes CPU/Codec channel connection map more
 generic
Content-Language: en-US
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Mark Brown <broonie@kernel.org>,
 Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
 <87y1g3wdng.wl-kuninori.morimoto.gx@renesas.com>
 <d3c97c54-d149-4bed-9013-3f07bc6a7f52@linux.intel.com>
 <874jiokg1r.wl-kuninori.morimoto.gx@renesas.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <874jiokg1r.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/17/23 18:03, Kuninori Morimoto wrote:
> 
> Hi Pierre-Louis
> 
> Thank you for your test.
> 
>>>  		/*
>>>  		 * construct cpu channel mask by combining ch_mask of each
>>>  		 * codec which maps to the cpu.
>>> +		 * see
>>> +		 *	soc.h :: [dai_link->ch_maps Image sample]
>>>  		 */
>>> -		for_each_rtd_codec_dais(rtd, j, codec_dai) {
>>> -			if (rtd->dai_link->codec_ch_maps[j].connected_cpu_id == i)
>>> -				ch_mask |= rtd->dai_link->codec_ch_maps[j].ch_mask;
>>> +		if (rtd->dai_link->num_cpus >= rtd->dai_link->num_codecs) {
>>> +			/* .ch_map is from CPU */
>>> +			ch_mask = rtd->dai_link->ch_maps[i].ch_mask;
>>
>> ... and for a FE dailink there's no ch_maps so this results in a kernel
>> oops.
> 
> Hmm... this is strange...
> 
> New snd_soc_compensate_connection_map() will add default ch_maps for all
> dai_link...
> 
> Oh, is it using topology or something which doesn't call
> snd_soc_bind_card() ? If so could you please try to call
> snd_soc_compensate_connection_map() ?
> (I guess it is using soc_tplg_fe_link_create() ?)
> 
> If it could solve your issue, v5 will handle it.

Sorry, not following what the suggestion is.

Yes all our solutions are based on the topology, and I don't really
understand the benefit of a ch_map for an FE? the codec_dai is a dummy
one...

