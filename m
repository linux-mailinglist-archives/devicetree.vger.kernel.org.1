Return-Path: <devicetree+bounces-11524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5317D6137
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:34:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E48FF1C20D02
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 05:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B946F9F5;
	Wed, 25 Oct 2023 05:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="C9ulLBk/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A007C2D636
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 05:34:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8CFF128
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 22:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698212049; x=1729748049;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=L2T6Nw3MpwaPL3b3z/0nc2iregjQVSzrt5QZ6CyMq/4=;
  b=C9ulLBk/MMbVLlWBPsBBokBlNZTgMARTSGF+QLgRu04NCTUm25uUVLwQ
   m369sSQjSSIb7EHD9GT9MnY5FnoXgVPk/p/k3HrFYZPU05B+QYMZsJMxk
   +FrhZub7mj8cVBkUkSfrlPZLn89M+J648QsUtpuX+ci6dMl41JRMxq1fD
   o5eXIeaBJpWZlgeWXYpRJxWbfgvTQS3aI0kztyMXg8TmGrEzybgMszpzQ
   /e45iv9n4uThnVCcyM5A61cARyg3eJ7SM7QCXOdwyIJG+Q2qqR61m0+cs
   yvBKF1ZF4HtYF8epX07nxidGxzUCWfs7gh0SMxTe4OGIbWRD7DtFmnKAs
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="377610486"
X-IronPort-AV: E=Sophos;i="6.03,249,1694761200"; 
   d="scan'208";a="377610486"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 22:34:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="849402751"
X-IronPort-AV: E=Sophos;i="6.03,249,1694761200"; 
   d="scan'208";a="849402751"
Received: from yungchua-mobl2.ccr.corp.intel.com (HELO [10.92.2.114]) ([10.92.2.114])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 22:34:06 -0700
Message-ID: <2c8fe1f5-0f5f-4299-bda9-223418df8458@linux.intel.com>
Date: Wed, 25 Oct 2023 13:33:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] ASoC: makes CPU/Codec channel connection map more
 generic
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Mark Brown <broonie@kernel.org>, bard.liao@intel.com,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <87fs1zbg2g.wl-kuninori.morimoto.gx@renesas.com>
 <87edhjbg1u.wl-kuninori.morimoto.gx@renesas.com>
Content-Language: en-US
From: "Liao, Bard" <yung-chuan.liao@linux.intel.com>
In-Reply-To: <87edhjbg1u.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2023/10/25 上午 10:18, Kuninori Morimoto wrote:
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
> Tested-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Tested-by: Jerome Brunet <jbrunet@baylibre.com>


The change looks good to me.

Reviewed-by:  Bard Liao <yung-chuan.liao@linux.intel.com>


> ---
>   include/sound/soc.h              | 56 ++++++++++++++++++-
>   sound/soc/intel/boards/sof_sdw.c | 28 ++++------
>   sound/soc/soc-core.c             | 95 +++++++++++++++++++++++++++++++-
>   sound/soc/soc-dapm.c             | 45 ++++-----------
>   sound/soc/soc-pcm.c              | 44 +++++----------
>   5 files changed, 185 insertions(+), 83 deletions(-)
>
> diff --git a/include/sound/soc.h b/include/sound/soc.h
> index 7792c393e238..f3803c2dc349 100644
> --- a/include/sound/soc.h
> +++ b/include/sound/soc.h
> @@ -655,8 +655,45 @@ struct snd_soc_dai_link_component {
>   	struct of_phandle_args *dai_args;
>   };
>   
> -struct snd_soc_dai_link_codec_ch_map {
> -	unsigned int connected_cpu_id;
> +/*
> + * [dai_link->ch_maps Image sample]
> + *
> + *-------------------------
> + * CPU0 <---> Codec0
> + *
> + * ch-map[0].cpu = 0	ch-map[0].codec = 0
> + *
> + *-------------------------
> + * CPU0 <---> Codec0
> + * CPU1 <---> Codec1
> + * CPU2 <---> Codec2
> + *
> + * ch-map[0].cpu = 0	ch-map[0].codec = 0
> + * ch-map[1].cpu = 1	ch-map[1].codec = 1
> + * ch-map[2].cpu = 2	ch-map[2].codec = 2
> + *
> + *-------------------------
> + * CPU0 <---> Codec0
> + * CPU1 <-+-> Codec1
> + * CPU2 <-/
> + *
> + * ch-map[0].cpu = 0	ch-map[0].codec = 0
> + * ch-map[1].cpu = 1	ch-map[1].codec = 1
> + * ch-map[2].cpu = 2	ch-map[2].codec = 1
> + *
> + *-------------------------
> + * CPU0 <---> Codec0
> + * CPU1 <-+-> Codec1
> + *	  \-> Codec2
> + *
> + * ch-map[0].cpu = 0	ch-map[0].codec = 0
> + * ch-map[1].cpu = 1	ch-map[1].codec = 1
> + * ch-map[2].cpu = 1	ch-map[2].codec = 2
> + *
> + */
> +struct snd_soc_dai_link_ch_map {
> +	unsigned int cpu;
> +	unsigned int codec;
>   	unsigned int ch_mask;
>   };
>   
> @@ -688,7 +725,9 @@ struct snd_soc_dai_link {
>   	struct snd_soc_dai_link_component *codecs;
>   	unsigned int num_codecs;
>   
> -	struct snd_soc_dai_link_codec_ch_map *codec_ch_maps;
> +	/* num_ch_maps = max(num_cpu, num_codecs) */
> +	struct snd_soc_dai_link_ch_map *ch_maps;
> +
>   	/*
>   	 * You MAY specify the link's platform/PCM/DMA driver, either by
>   	 * device name, or by DT/OF node, but not both. Some forms of link
> @@ -775,6 +814,10 @@ struct snd_soc_dai_link {
>   #endif
>   };
>   
> +static inline int snd_soc_link_num_ch_map(struct snd_soc_dai_link *link) {
> +	return max(link->num_cpus, link->num_codecs);
> +}
> +
>   static inline struct snd_soc_dai_link_component*
>   snd_soc_link_to_cpu(struct snd_soc_dai_link *link, int n) {
>   	return &(link)->cpus[n];
> @@ -808,6 +851,12 @@ snd_soc_link_to_platform(struct snd_soc_dai_link *link, int n) {
>   		     ((cpu) = snd_soc_link_to_cpu(link, i));		\
>   	     (i)++)
>   
> +#define for_each_link_ch_maps(link, i, ch_map)			\
> +	for ((i) = 0;						\
> +	     ((i) < snd_soc_link_num_ch_map(link) &&		\
> +		      ((ch_map) = link->ch_maps + i));		\
> +	     (i)++)
> +
>   /*
>    * Sample 1 : Single CPU/Codec/Platform
>    *
> @@ -1163,6 +1212,7 @@ struct snd_soc_pcm_runtime {
>   	     ((i) < (rtd)->dai_link->num_cpus + (rtd)->dai_link->num_codecs) &&	\
>   		     ((dai) = (rtd)->dais[i]);				\
>   	     (i)++)
> +#define for_each_rtd_ch_maps(rtd, i, ch_maps) for_each_link_ch_maps(rtd->dai_link, i, ch_maps)
>   
>   void snd_soc_close_delayed_work(struct snd_soc_pcm_runtime *rtd);
>   
> diff --git a/sound/soc/intel/boards/sof_sdw.c b/sound/soc/intel/boards/sof_sdw.c
> index 3312ad8a563b..2faf7372bad0 100644
> --- a/sound/soc/intel/boards/sof_sdw.c
> +++ b/sound/soc/intel/boards/sof_sdw.c
> @@ -570,16 +570,14 @@ int sdw_hw_params(struct snd_pcm_substream *substream,
>   		  struct snd_pcm_hw_params *params)
>   {
>   	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
> +	struct snd_soc_dai_link_ch_map *ch_maps;
>   	int ch = params_channels(params);
> -	struct snd_soc_dai *codec_dai;
> -	struct snd_soc_dai *cpu_dai;
>   	unsigned int ch_mask;
>   	int num_codecs;
>   	int step;
>   	int i;
> -	int j;
>   
> -	if (!rtd->dai_link->codec_ch_maps)
> +	if (!rtd->dai_link->ch_maps)
>   		return 0;
>   
>   	/* Identical data will be sent to all codecs in playback */
> @@ -605,13 +603,9 @@ int sdw_hw_params(struct snd_pcm_substream *substream,
>   	 * link has more than one codec DAIs. Set codec channel mask and
>   	 * ASoC will set the corresponding channel numbers for each cpu dai.
>   	 */
> -	for_each_rtd_cpu_dais(rtd, i, cpu_dai) {
> -		for_each_rtd_codec_dais(rtd, j, codec_dai) {
> -			if (rtd->dai_link->codec_ch_maps[j].connected_cpu_id != i)
> -				continue;
> -			rtd->dai_link->codec_ch_maps[j].ch_mask = ch_mask << (j * step);
> -		}
> -	}
> +	for_each_link_ch_maps(rtd->dai_link, i, ch_maps)
> +		ch_maps->ch_mask = ch_mask << (i * step);
> +
>   	return 0;
>   }
>   
> @@ -1350,15 +1344,17 @@ static int get_slave_info(const struct snd_soc_acpi_link_adr *adr_link,
>   	return 0;
>   }
>   
> -static void set_dailink_map(struct snd_soc_dai_link_codec_ch_map *sdw_codec_ch_maps,
> +static void set_dailink_map(struct snd_soc_dai_link_ch_map *sdw_codec_ch_maps,
>   			    int codec_num, int cpu_num)
>   {
>   	int step;
>   	int i;
>   
>   	step = codec_num / cpu_num;
> -	for (i = 0; i < codec_num; i++)
> -		sdw_codec_ch_maps[i].connected_cpu_id = i / step;
> +	for (i = 0; i < codec_num; i++) {
> +		sdw_codec_ch_maps[i].cpu	= i / step;
> +		sdw_codec_ch_maps[i].codec	= i;
> +	}
>   }
>   
>   static const char * const type_strings[] = {"SimpleJack", "SmartAmp", "SmartMic"};
> @@ -1453,7 +1449,7 @@ static int create_sdw_dailink(struct snd_soc_card *card, int *link_index,
>   		*ignore_pch_dmic = true;
>   
>   	for_each_pcm_streams(stream) {
> -		struct snd_soc_dai_link_codec_ch_map *sdw_codec_ch_maps;
> +		struct snd_soc_dai_link_ch_map *sdw_codec_ch_maps;
>   		char *name, *cpu_name;
>   		int playback, capture;
>   		static const char * const sdw_stream_name[] = {
> @@ -1530,7 +1526,7 @@ static int create_sdw_dailink(struct snd_soc_card *card, int *link_index,
>   		dai_links[*link_index].nonatomic = true;
>   
>   		set_dailink_map(sdw_codec_ch_maps, codec_num, cpu_dai_num);
> -		dai_links[*link_index].codec_ch_maps = sdw_codec_ch_maps;
> +		dai_links[*link_index].ch_maps = sdw_codec_ch_maps;
>   		ret = set_codec_init_func(card, adr_link, dai_links + (*link_index)++,
>   					  playback, group_id, adr_index, dai_index);
>   		if (ret < 0) {
> diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c
> index b2bd45e87bc3..4ca3319a8e19 100644
> --- a/sound/soc/soc-core.c
> +++ b/sound/soc/soc-core.c
> @@ -1015,6 +1015,94 @@ static int soc_dai_link_sanity_check(struct snd_soc_card *card,
>   	return -EINVAL;
>   }
>   
> +#define MAX_DEFAULT_CH_MAP_SIZE 7
> +static struct snd_soc_dai_link_ch_map default_ch_map_sync[MAX_DEFAULT_CH_MAP_SIZE] = {
> +	{ .cpu = 0, .codec = 0 },
> +	{ .cpu = 1, .codec = 1 },
> +	{ .cpu = 2, .codec = 2 },
> +	{ .cpu = 3, .codec = 3 },
> +	{ .cpu = 4, .codec = 4 },
> +	{ .cpu = 5, .codec = 5 },
> +	{ .cpu = 6, .codec = 6 },
> +};
> +static struct snd_soc_dai_link_ch_map default_ch_map_1cpu[MAX_DEFAULT_CH_MAP_SIZE] = {
> +	{ .cpu = 0, .codec = 0 },
> +	{ .cpu = 0, .codec = 1 },
> +	{ .cpu = 0, .codec = 2 },
> +	{ .cpu = 0, .codec = 3 },
> +	{ .cpu = 0, .codec = 4 },
> +	{ .cpu = 0, .codec = 5 },
> +	{ .cpu = 0, .codec = 6 },
> +};
> +static struct snd_soc_dai_link_ch_map default_ch_map_1codec[MAX_DEFAULT_CH_MAP_SIZE] = {
> +	{ .cpu = 0, .codec = 0 },
> +	{ .cpu = 1, .codec = 0 },
> +	{ .cpu = 2, .codec = 0 },
> +	{ .cpu = 3, .codec = 0 },
> +	{ .cpu = 4, .codec = 0 },
> +	{ .cpu = 5, .codec = 0 },
> +	{ .cpu = 6, .codec = 0 },
> +};
> +static int snd_soc_compensate_channel_connection_map(struct snd_soc_card *card,
> +						     struct snd_soc_dai_link *dai_link)
> +{
> +	struct snd_soc_dai_link_ch_map *ch_maps;
> +	int i;
> +
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
> +
>   /**
>    * snd_soc_remove_pcm_runtime - Remove a pcm_runtime from card
>    * @card: The ASoC card to which the pcm_runtime has
> @@ -1121,8 +1209,13 @@ int snd_soc_add_pcm_runtimes(struct snd_soc_card *card,
>   			     int num_dai_link)
>   {
>   	for (int i = 0; i < num_dai_link; i++) {
> -		int ret = snd_soc_add_pcm_runtime(card, dai_link + i);
> +		int ret;
> +
> +		ret = snd_soc_compensate_channel_connection_map(card, dai_link + i);
> +		if (ret < 0)
> +			return ret;
>   
> +		ret = snd_soc_add_pcm_runtime(card, dai_link + i);
>   		if (ret < 0)
>   			return ret;
>   	}
> diff --git a/sound/soc/soc-dapm.c b/sound/soc/soc-dapm.c
> index 4e2beda6f9bf..233ebc74c313 100644
> --- a/sound/soc/soc-dapm.c
> +++ b/sound/soc/soc-dapm.c
> @@ -4438,11 +4438,14 @@ static void soc_dapm_dai_stream_event(struct snd_soc_dai *dai, int stream,
>   void snd_soc_dapm_connect_dai_link_widgets(struct snd_soc_card *card)
>   {
>   	struct snd_soc_pcm_runtime *rtd;
> +	struct snd_soc_dai *cpu_dai;
>   	struct snd_soc_dai *codec_dai;
> -	int i;
>   
>   	/* for each BE DAI link... */
>   	for_each_card_rtds(card, rtd)  {
> +		struct snd_soc_dai_link_ch_map *ch_maps;
> +		int i;
> +
>   		/*
>   		 * dynamic FE links have no fixed DAI mapping.
>   		 * CODEC<->CODEC links have no direct connection.
> @@ -4450,39 +4453,15 @@ void snd_soc_dapm_connect_dai_link_widgets(struct snd_soc_card *card)
>   		if (rtd->dai_link->dynamic)
>   			continue;
>   
> -		if (rtd->dai_link->num_cpus == 1) {
> -			for_each_rtd_codec_dais(rtd, i, codec_dai)
> -				dapm_connect_dai_pair(card, rtd, codec_dai,
> -						      snd_soc_rtd_to_cpu(rtd, 0));
> -		} else if (rtd->dai_link->num_codecs == rtd->dai_link->num_cpus) {
> -			for_each_rtd_codec_dais(rtd, i, codec_dai)
> -				dapm_connect_dai_pair(card, rtd, codec_dai,
> -						      snd_soc_rtd_to_cpu(rtd, i));
> -		} else if (rtd->dai_link->num_codecs > rtd->dai_link->num_cpus) {
> -			int cpu_id;
> -
> -			if (!rtd->dai_link->codec_ch_maps) {
> -				dev_err(card->dev, "%s: no codec channel mapping table provided\n",
> -					__func__);
> -				continue;
> -			}
> +		/*
> +		 * see
> +		 *	soc.h :: [dai_link->ch_maps Image sample]
> +		 */
> +		for_each_rtd_ch_maps(rtd, i, ch_maps) {
> +			cpu_dai   = snd_soc_rtd_to_cpu(rtd,   ch_maps->cpu);
> +			codec_dai = snd_soc_rtd_to_codec(rtd, ch_maps->codec);
>   
> -			for_each_rtd_codec_dais(rtd, i, codec_dai) {
> -				cpu_id = rtd->dai_link->codec_ch_maps[i].connected_cpu_id;
> -				if (cpu_id >= rtd->dai_link->num_cpus) {
> -					dev_err(card->dev,
> -						"%s: dai_link %s cpu_id %d too large, num_cpus is %d\n",
> -						__func__, rtd->dai_link->name, cpu_id,
> -						rtd->dai_link->num_cpus);
> -					continue;
> -				}
> -				dapm_connect_dai_pair(card, rtd, codec_dai,
> -						      snd_soc_rtd_to_cpu(rtd, cpu_id));
> -			}
> -		} else {
> -			dev_err(card->dev,
> -				"%s: codec number %d < cpu number %d is not supported\n",
> -				__func__, rtd->dai_link->num_codecs, rtd->dai_link->num_cpus);
> +			dapm_connect_dai_pair(card, rtd, codec_dai, cpu_dai);
>   		}
>   	}
>   }
> diff --git a/sound/soc/soc-pcm.c b/sound/soc/soc-pcm.c
> index 8c168dc553f6..7198f017c167 100644
> --- a/sound/soc/soc-pcm.c
> +++ b/sound/soc/soc-pcm.c
> @@ -1042,6 +1042,7 @@ static int __soc_pcm_hw_params(struct snd_soc_pcm_runtime *rtd,
>   	}
>   
>   	for_each_rtd_cpu_dais(rtd, i, cpu_dai) {
> +		struct snd_soc_dai_link_ch_map *ch_maps;
>   		unsigned int ch_mask = 0;
>   		int j;
>   
> @@ -1055,22 +1056,20 @@ static int __soc_pcm_hw_params(struct snd_soc_pcm_runtime *rtd,
>   		/* copy params for each cpu */
>   		tmp_params = *params;
>   
> -		if (!rtd->dai_link->codec_ch_maps)
> -			goto hw_params;
>   		/*
>   		 * construct cpu channel mask by combining ch_mask of each
>   		 * codec which maps to the cpu.
> +		 * see
> +		 *	soc.h :: [dai_link->ch_maps Image sample]
>   		 */
> -		for_each_rtd_codec_dais(rtd, j, codec_dai) {
> -			if (rtd->dai_link->codec_ch_maps[j].connected_cpu_id == i)
> -				ch_mask |= rtd->dai_link->codec_ch_maps[j].ch_mask;
> -		}
> +		for_each_rtd_ch_maps(rtd, j, ch_maps)
> +			if (ch_maps->cpu == i)
> +				ch_mask |= ch_maps->ch_mask;
>   
>   		/* fixup cpu channel number */
>   		if (ch_mask)
>   			soc_pcm_codec_params_fixup(&tmp_params, ch_mask);
>   
> -hw_params:
>   		ret = snd_soc_dai_hw_params(cpu_dai, substream, &tmp_params);
>   		if (ret < 0)
>   			goto out;
> @@ -2818,35 +2817,20 @@ static int soc_get_playback_capture(struct snd_soc_pcm_runtime *rtd,
>   			}
>   		}
>   	} else {
> +		struct snd_soc_dai_link_ch_map *ch_maps;
>   		struct snd_soc_dai *codec_dai;
>   
>   		/* Adapt stream for codec2codec links */
>   		int cpu_capture  = snd_soc_get_stream_cpu(dai_link, SNDRV_PCM_STREAM_CAPTURE);
>   		int cpu_playback = snd_soc_get_stream_cpu(dai_link, SNDRV_PCM_STREAM_PLAYBACK);
>   
> -		for_each_rtd_codec_dais(rtd, i, codec_dai) {
> -			if (dai_link->num_cpus == 1) {
> -				cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
> -			} else if (dai_link->num_cpus == dai_link->num_codecs) {
> -				cpu_dai = snd_soc_rtd_to_cpu(rtd, i);
> -			} else if (rtd->dai_link->num_codecs > rtd->dai_link->num_cpus) {
> -				int cpu_id;
> -
> -				if (!rtd->dai_link->codec_ch_maps) {
> -					dev_err(rtd->card->dev, "%s: no codec channel mapping table provided\n",
> -						__func__);
> -					return -EINVAL;
> -				}
> -
> -				cpu_id = rtd->dai_link->codec_ch_maps[i].connected_cpu_id;
> -				cpu_dai = snd_soc_rtd_to_cpu(rtd, cpu_id);
> -			} else {
> -				dev_err(rtd->card->dev,
> -					"%s codec number %d < cpu number %d is not supported\n",
> -					__func__, rtd->dai_link->num_codecs,
> -					rtd->dai_link->num_cpus);
> -				return -EINVAL;
> -			}
> +		/*
> +		 * see
> +		 *	soc.h :: [dai_link->ch_maps Image sample]
> +		 */
> +		for_each_rtd_ch_maps(rtd, i, ch_maps) {
> +			cpu_dai	  = snd_soc_rtd_to_cpu(rtd,   ch_maps->cpu);
> +			codec_dai = snd_soc_rtd_to_codec(rtd, ch_maps->codec);
>   
>   			if (snd_soc_dai_stream_valid(codec_dai, SNDRV_PCM_STREAM_PLAYBACK) &&
>   			    snd_soc_dai_stream_valid(cpu_dai,   cpu_playback))

