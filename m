Return-Path: <devicetree+bounces-9279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C13F7CC621
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:46:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1D161F231E5
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 14:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880D5436A3;
	Tue, 17 Oct 2023 14:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OrETLw15"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E212405D6
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:46:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A9E3BA
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 07:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697553969; x=1729089969;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=lFUwUxTqgUoKPf+e6xix+hIX2T1tys85l9kPE+lIogk=;
  b=OrETLw158r+v2CKtkl888rsq7W1wKao8KLCOT0MFt2pof+xd1EPpbfll
   UH4f03wDkJQ6UciBAqD3ttucnMBVUoCuJ5tUEymrBrXACuZm/v+V6ymJA
   McASZ3RDAV9C49IfzxmBpDy4q8PmCccGizIO2AaW4+iUQeyy2J0M0ILyl
   yAwsaaNPWP8gH35K7CpqyMNi2vEJ/cKXi7MnNG79GW8DaoE3NVYKyhuw4
   y+BCGH4kcNLgb9wURgsaRpJT9VuUDOLMnsktbqlXnoRy7JYC9yl87fLfN
   3fjNhTMtH53Nvaz7FGW41+lB+ar+FW9mc6Bu6qf2p18dN8B52vFfsANVq
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="366060398"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="366060398"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 07:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="826474115"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="826474115"
Received: from asprado-mobl2.amr.corp.intel.com (HELO [10.212.55.179]) ([10.212.55.179])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 07:46:08 -0700
Message-ID: <d3c97c54-d149-4bed-9013-3f07bc6a7f52@linux.intel.com>
Date: Tue, 17 Oct 2023 09:45:55 -0500
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
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Bard Liao
 <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
 <87y1g3wdng.wl-kuninori.morimoto.gx@renesas.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <87y1g3wdng.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Morimoto-san,
we're facing an across-the-board regression with this patch, even in
regular 'nocodec' configurations with dummy dais and no codec.

> @@ -1055,22 +1054,28 @@ static int __soc_pcm_hw_params(struct snd_soc_pcm_runtime *rtd,
>  		/* copy params for each cpu */
>  		tmp_params = *params;
>  
> -		if (!rtd->dai_link->codec_ch_maps)
> -			goto hw_params;

By removing this test, we now proceed and deal with both FE and BE...

>  		/*
>  		 * construct cpu channel mask by combining ch_mask of each
>  		 * codec which maps to the cpu.
> +		 * see
> +		 *	soc.h :: [dai_link->ch_maps Image sample]
>  		 */
> -		for_each_rtd_codec_dais(rtd, j, codec_dai) {
> -			if (rtd->dai_link->codec_ch_maps[j].connected_cpu_id == i)
> -				ch_mask |= rtd->dai_link->codec_ch_maps[j].ch_mask;
> +		if (rtd->dai_link->num_cpus >= rtd->dai_link->num_codecs) {
> +			/* .ch_map is from CPU */
> +			ch_mask = rtd->dai_link->ch_maps[i].ch_mask;

... and for a FE dailink there's no ch_maps so this results in a kernel
oops.

> +		} else {
> +			int j;
> +
> +			/* .ch_map is from Codec */
> +			for_each_rtd_codec_dais(rtd, j, codec_dai)
> +				if (rtd->dai_link->ch_maps[j].connected_node == i)
> +					ch_mask |= rtd->dai_link->ch_maps[j].ch_mask;
>  		}
>  
>  		/* fixup cpu channel number */
>  		if (ch_mask)
>  			soc_pcm_codec_params_fixup(&tmp_params, ch_mask);
>  
> -hw_params:
>  		ret = snd_soc_dai_hw_params(cpu_dai, substream, &tmp_params);
>  		if (ret < 0)
>  			goto out;

Bard suggested the following diff (being tested now), comments welcome.

diff --git a/sound/soc/soc-pcm.c b/sound/soc/soc-pcm.c
index 0bfff2ea111d..ce84d9c1d8be 100644
--- a/sound/soc/soc-pcm.c
+++ b/sound/soc/soc-pcm.c
@@ -1054,6 +1054,9 @@ static int __soc_pcm_hw_params(struct
snd_soc_pcm_runtime *rtd,
                /* copy params for each cpu */
                tmp_params = *params;

+               /* ch_map is only set in BE dai link */
+               if (rtd->dai_link->dynamic)
+                       goto run;
                /*
                 * construct cpu channel mask by combining ch_mask of each
                 * codec which maps to the cpu.
@@ -1075,7 +1078,7 @@ static int __soc_pcm_hw_params(struct
snd_soc_pcm_runtime *rtd,
                /* fixup cpu channel number */
                if (ch_mask)
                        soc_pcm_codec_params_fixup(&tmp_params, ch_mask);
-
+run:
                ret = snd_soc_dai_hw_params(cpu_dai, substream,
&tmp_params);
                if (ret < 0)
                        goto out;




