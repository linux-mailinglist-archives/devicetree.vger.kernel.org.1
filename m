Return-Path: <devicetree+bounces-11329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1DA7D53D5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ED04B20F32
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FC82C85D;
	Tue, 24 Oct 2023 14:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="foxNKOQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCF9FBFB
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:24:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68D89129
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698157455; x=1729693455;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=L++4CmKz6BsAhZ7VdgtQs3hUhOH7wFF41ckdSy07qs0=;
  b=foxNKOQ9XSgDXH2qrCErY2/3Ci/lW5zuIHEirgV7KlSEUHl1OCS9iaM3
   i4hePmDRbjtPwAar0gf5/1xLdmX7EBKhpKbGFy06dLpOQDKlsLyxHukIo
   hU8EytsyaJbec4O+PK3l4z1HaDVAoOveKaSXtSxO9+e9EuLZAfaYWF0wh
   KWc0D0iWCqgwhUqluzyIllWcgA8eKOGFe5+DGGNCJlfSi+uolWbMokhXI
   vhdZEsN0CQS1zgkKHMMJVMxsXrgcKnhyEonuXuz/QiBn41agirpSgp7XX
   7JF86zws7nsS9HutL2FrwPk6IvTu7oIi+5lmiMzC3g+wEEYWTuPTkzL3P
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386873692"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="386873692"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 07:24:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758491431"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="758491431"
Received: from pwali-mobl.amr.corp.intel.com (HELO [10.209.188.4]) ([10.209.188.4])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 07:24:05 -0700
Message-ID: <3ce60545-ba2b-48cc-903d-288d761f2fe3@linux.intel.com>
Date: Tue, 24 Oct 2023 09:24:05 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] ASoC: makes CPU/Codec channel connection map more
 generic
Content-Language: en-US
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Bard Liao
 <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
 <8734y1lx3m.wl-kuninori.morimoto.gx@renesas.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <8734y1lx3m.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 10/23/23 00:35, Kuninori Morimoto wrote:
> Current ASoC CPU:Codec = N:M connection is using connection mapping idea,
> but it is used for N < M case only. We want to use it for any case.
> 
> By this patch, not only N:M connection, but all existing connection
> (1:1, 1:N, N:N) will use same connection mapping. Then, because it will
> use default mapping, no conversion patch is needed to exising drivers.
> 
> More over, CPU:Codec = N:M (N > M) also supported in the same time.
> 
> ch_maps array will has CPU/Codec index by this patch.
> 
> Image
> 	CPU0 <---> Codec0
> 	CPU1 <-+-> Codec1
> 	CPU2 <-/
> 
> ch_map
> 	ch_map[0].cpu = 0	ch_map[0].codec = 0
> 	ch_map[1].cpu = 1	ch_map[1].codec = 1
> 	ch_map[2].cpu = 2	ch_map[2].codec = 1
> 
> Link: https://lore.kernel.org/r/87fs6wuszr.wl-kuninori.morimoto.gx@renesas.com
> Link: https://lore.kernel.org/r/878r7yqeo4.wl-kuninori.morimoto.gx@renesas.com
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

The Intel CI did not detect any issues with this patch, see
https://github.com/thesofproject/linux/pull/4632, so

Tested-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

Note however the -W1 error below


> +static int snd_soc_compensate_channel_connection_map(struct snd_soc_card *card,
> +						     struct snd_soc_dai_link *dai_link)
> +{
> +	struct snd_soc_dai_link_ch_map *ch_maps;
> +	int i, max;

sound/soc/soc-core.c: In function
‘snd_soc_compensate_channel_connection_map’:
sound/soc/soc-core.c:1050:16: error: variable ‘max’ set but not used
[-Werror=unused-but-set-variable]
 1050 |         int i, max;
      |                ^~~

> +	/*
> +	 * dai_link->ch_maps indicates how CPU/Codec are connected.
> +	 * It will be a map seen from a larger number of DAI.
> +	 * see
> +	 *	soc.h :: [dai_link->ch_maps Image sample]
> +	 */
> +
> +	/* it should have ch_maps if connection was N:M */
> +	if (dai_link->num_cpus > 1 && dai_link->num_codecs > 1 &&
> +	    dai_link->num_cpus != dai_link->num_codecs && !dai_link->ch_maps) {
> +		dev_err(card->dev, "need to have ch_maps when N:M connction (%s)",
> +			dai_link->name);
> +		return -EINVAL;
> +	}
> +
> +	/* do nothing if it has own maps */
> +	if (dai_link->ch_maps)
> +		goto sanity_check;
> +
> +	/* check default map size */
> +	if (dai_link->num_cpus   > MAX_DEFAULT_CH_MAP_SIZE ||
> +	    dai_link->num_codecs > MAX_DEFAULT_CH_MAP_SIZE) {
> +		dev_err(card->dev, "soc-core.c needs update default_connection_maps");
> +		return -EINVAL;
> +	}
> +
> +	/* Compensate missing map for ... */
> +	if (dai_link->num_cpus == dai_link->num_codecs)
> +		dai_link->ch_maps = default_ch_map_sync;	/* for 1:1 or N:N */
> +	else if (dai_link->num_cpus <  dai_link->num_codecs)
> +		dai_link->ch_maps = default_ch_map_1cpu;	/* for 1:N */
> +	else
> +		dai_link->ch_maps = default_ch_map_1codec;	/* for N:1 */
> +
> +sanity_check:
> +	max = min(dai_link->num_cpus, dai_link->num_codecs);

sound/soc/soc-core.c: In function
‘snd_soc_compensate_channel_connection_map’:
sound/soc/soc-core.c:1050:16: error: variable ‘max’ set but not used
[-Werror=unused-but-set-variable]
 1050 |         int i, max;
      |                ^~~
> +
> +	dev_dbg(card->dev, "dai_link %s\n", dai_link->stream_name);
> +	for_each_link_ch_maps(dai_link, i, ch_maps) {
> +		if ((ch_maps->cpu   >= dai_link->num_cpus) ||
> +		    (ch_maps->codec >= dai_link->num_codecs)) {
> +			dev_err(card->dev,
> +				"unexpected dai_link->ch_maps[%d] index (cpu(%d/%d) codec(%d/%d))",
> +				i,
> +				ch_maps->cpu,	dai_link->num_cpus,
> +				ch_maps->codec,	dai_link->num_codecs);
> +			return -EINVAL;
> +		}
> +
> +		dev_dbg(card->dev, "  [%d] cpu%d <-> codec%d\n",
> +			i, ch_maps->cpu, ch_maps->codec);
> +	}
> +
> +	return 0;
> +}

