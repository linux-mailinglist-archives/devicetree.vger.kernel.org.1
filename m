Return-Path: <devicetree+bounces-9705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E63B7CE0CD
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:11:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FD4B1C20CEF
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE5838BB7;
	Wed, 18 Oct 2023 15:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9u2P+Ie"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF3E37CA4;
	Wed, 18 Oct 2023 15:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE3BC433C8;
	Wed, 18 Oct 2023 15:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641881;
	bh=t4tXL0Adgab+7/6pwQR6SO/7Tzc1LZ1Z+r/uoKttlg4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D9u2P+Ieca9LBIZSIBtAFH34jR/TC+qLjrLOlif7N0M6gMOjLHeXyoojzaOhXIVlg
	 23W/HrzJ9rC8JV7UEgofYEOr4wy+xuFJ11rOmI6tii2rc+sRpOI8xuXFUYAmAZXKJ4
	 S3NoseUDTPSvVgNOQRmDuNnNtE0QxlXGL5AXEAW94B5Y0j3XPyENbhDknUOs9S3CFm
	 c3QuV0clBw19JS5Di2BuANIkNh2238NKCOpo9VoNKkC/D8Qg5hUwNIpqAN/92amsnK
	 TO8vWliVJJk9CYhhVZKSKWSnLDmEWEipeJgjUQJgyslXeSEApXmEQQ71q5DAOz+O9e
	 +zgl8+1A7UL5Q==
Message-ID: <f5ce51a4-d47d-4074-9498-8632b09791e6@kernel.org>
Date: Thu, 19 Oct 2023 00:11:14 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 16/26] PM / devfreq: rockchip-dfi: Add perf support
Content-Language: en-US
To: kernel test robot <lkp@intel.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-rockchip@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231018061714.3553817-17-s.hauer@pengutronix.de>
 <202310181557.GIXGL21M-lkp@intel.com>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <202310181557.GIXGL21M-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Sascha, 

Could you plesae fix the following kernel build report?

On 23. 10. 18. 16:58, kernel test robot wrote:
> Hi Sascha,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v6.6-rc6]
> [cannot apply to next-20231018]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Sascha-Hauer/PM-devfreq-rockchip-dfi-Make-pmu-regmap-mandatory/20231018-142228
> base:   linus/master
> patch link:    https://lore.kernel.org/r/20231018061714.3553817-17-s.hauer%40pengutronix.de
> patch subject: [PATCH v8 16/26] PM / devfreq: rockchip-dfi: Add perf support
> config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20231018/202310181557.GIXGL21M-lkp@intel.com/config)
> compiler: m68k-linux-gcc (GCC) 13.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231018/202310181557.GIXGL21M-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202310181557.GIXGL21M-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/devfreq/event/rockchip-dfi.c:203:13: warning: 'rockchip_ddr_perf_counters_add' defined but not used [-Wunused-function]
>      203 | static void rockchip_ddr_perf_counters_add(struct rockchip_dfi *dfi,
>          |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> --
>>> drivers/devfreq/event/rockchip-dfi.c:79: warning: Function parameter or member 'write_access' not described in 'dmc_count_channel'
> 
> 
> vim +/rockchip_ddr_perf_counters_add +203 drivers/devfreq/event/rockchip-dfi.c
> 
>     66	
>     67	/**
>     68	 * struct dmc_count_channel - structure to hold counter values from the DDR controller
>     69	 * @access:       Number of read and write accesses
>     70	 * @clock_cycles: DDR clock cycles
>     71	 * @read_access:  number of read accesses
>     72	 * @write_acccess: number of write accesses
>     73	 */
>     74	struct dmc_count_channel {
>     75		u64 access;
>     76		u64 clock_cycles;
>     77		u64 read_access;
>     78		u64 write_access;
>   > 79	};
>     80	
>     81	struct dmc_count {
>     82		struct dmc_count_channel c[DMC_MAX_CHANNELS];
>     83	};
>     84	
>     85	/*
>     86	 * The dfi controller can monitor DDR load. It has an upper and lower threshold
>     87	 * for the operating points. Whenever the usage leaves these bounds an event is
>     88	 * generated to indicate the DDR frequency should be changed.
>     89	 */
>     90	struct rockchip_dfi {
>     91		struct devfreq_event_dev *edev;
>     92		struct devfreq_event_desc desc;
>     93		struct dmc_count last_event_count;
>     94	
>     95		struct dmc_count last_perf_count;
>     96		struct dmc_count total_count;
>     97		seqlock_t count_seqlock; /* protects last_perf_count and total_count */
>     98	
>     99		struct device *dev;
>    100		void __iomem *regs;
>    101		struct regmap *regmap_pmu;
>    102		struct clk *clk;
>    103		int usecount;
>    104		struct mutex mutex;
>    105		u32 ddr_type;
>    106		unsigned int channel_mask;
>    107		unsigned int max_channels;
>    108		enum cpuhp_state cpuhp_state;
>    109		struct hlist_node node;
>    110		struct pmu pmu;
>    111		struct hrtimer timer;
>    112		unsigned int cpu;
>    113		int active_events;
>    114		int burst_len;
>    115		int buswidth[DMC_MAX_CHANNELS];
>    116	};
>    117	
>    118	static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>    119	{
>    120		void __iomem *dfi_regs = dfi->regs;
>    121		int ret = 0;
>    122	
>    123		mutex_lock(&dfi->mutex);
>    124	
>    125		dfi->usecount++;
>    126		if (dfi->usecount > 1)
>    127			goto out;
>    128	
>    129		ret = clk_prepare_enable(dfi->clk);
>    130		if (ret) {
>    131			dev_err(&dfi->edev->dev, "failed to enable dfi clk: %d\n", ret);
>    132			goto out;
>    133		}
>    134	
>    135		/* clear DDRMON_CTRL setting */
>    136		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
>    137			       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
>    138	
>    139		/* set ddr type to dfi */
>    140		switch (dfi->ddr_type) {
>    141		case ROCKCHIP_DDRTYPE_LPDDR2:
>    142		case ROCKCHIP_DDRTYPE_LPDDR3:
>    143			writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
>    144				       dfi_regs + DDRMON_CTRL);
>    145			break;
>    146		case ROCKCHIP_DDRTYPE_LPDDR4:
>    147		case ROCKCHIP_DDRTYPE_LPDDR4X:
>    148			writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
>    149				       dfi_regs + DDRMON_CTRL);
>    150			break;
>    151		default:
>    152			break;
>    153		}
>    154	
>    155		/* enable count, use software mode */
>    156		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
>    157			       dfi_regs + DDRMON_CTRL);
>    158	out:
>    159		mutex_unlock(&dfi->mutex);
>    160	
>    161		return ret;
>    162	}
>    163	
>    164	static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
>    165	{
>    166		void __iomem *dfi_regs = dfi->regs;
>    167	
>    168		mutex_lock(&dfi->mutex);
>    169	
>    170		dfi->usecount--;
>    171	
>    172		WARN_ON_ONCE(dfi->usecount < 0);
>    173	
>    174		if (dfi->usecount > 0)
>    175			goto out;
>    176	
>    177		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
>    178			       dfi_regs + DDRMON_CTRL);
>    179		clk_disable_unprepare(dfi->clk);
>    180	out:
>    181		mutex_unlock(&dfi->mutex);
>    182	}
>    183	
>    184	static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *res)
>    185	{
>    186		u32 i;
>    187		void __iomem *dfi_regs = dfi->regs;
>    188	
>    189		for (i = 0; i < dfi->max_channels; i++) {
>    190			if (!(dfi->channel_mask & BIT(i)))
>    191				continue;
>    192			res->c[i].read_access = readl_relaxed(dfi_regs +
>    193					DDRMON_CH0_RD_NUM + i * 20);
>    194			res->c[i].write_access = readl_relaxed(dfi_regs +
>    195					DDRMON_CH0_WR_NUM + i * 20);
>    196			res->c[i].access = readl_relaxed(dfi_regs +
>    197					DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>    198			res->c[i].clock_cycles = readl_relaxed(dfi_regs +
>    199					DDRMON_CH0_COUNT_NUM + i * 20);
>    200		}
>    201	}
>    202	
>  > 203	static void rockchip_ddr_perf_counters_add(struct rockchip_dfi *dfi,
>    204						   const struct dmc_count *now,
>    205						   struct dmc_count *res)
>    206	{
>    207		const struct dmc_count *last = &dfi->last_perf_count;
>    208		int i;
>    209	
>    210		for (i = 0; i < dfi->max_channels; i++) {
>    211			res->c[i].read_access = dfi->total_count.c[i].read_access +
>    212				(u32)(now->c[i].read_access - last->c[i].read_access);
>    213			res->c[i].write_access = dfi->total_count.c[i].write_access +
>    214				(u32)(now->c[i].write_access - last->c[i].write_access);
>    215			res->c[i].access = dfi->total_count.c[i].access +
>    216				(u32)(now->c[i].access - last->c[i].access);
>    217			res->c[i].clock_cycles = dfi->total_count.c[i].clock_cycles +
>    218				(u32)(now->c[i].clock_cycles - last->c[i].clock_cycles);
>    219		}
>    220	}
>    221	
> 

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


