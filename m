Return-Path: <devicetree+bounces-4793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9577B4079
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E0A30281C64
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 13:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DC2F9DB;
	Sat, 30 Sep 2023 13:29:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639F9524E;
	Sat, 30 Sep 2023 13:29:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 786BCC433C8;
	Sat, 30 Sep 2023 13:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696080572;
	bh=i0Cj8+zi1/vHkGVilLWk62xFTOKNFQoM8Abg5edGgjc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=p94r9rVQFN59iFpiWFk/ENZwkqmWs6JRBQpTRt8RXhyJDU9eq8FlMSrDiKouQETgV
	 cxBaBQnGh+LxbFWKKn5F+QdBNP866Cgt648s0IXD1+OiM9SwOzdgpLdGnYpA8mkng2
	 EdJK1EhghA2oD4utaE28AgzOU2TM22OwlCUBqEK6eZqGHWtJpfbvuBB/XtilQWkzbq
	 V3+euyGGhH/RPxXfl4xFnj0GYs+s97l9fGpmTKIFa5kyMSqhoxisD8F3nJlRsJLaWo
	 gW93BzsnzvPQT85Udhr0/X5Rrw/rrksBBOgukJp7n8D0lWVhnaKt0bBiFy/FLzX32M
	 hfOkUgGHj9mgA==
Date: Sat, 30 Sep 2023 14:29:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Dumitru Ceclan <mitrutzceclan@gmail.com>, oe-kbuild-all@lists.linux.dev,
 linus.walleij@linaro.org, brgl@bgdev.pl, andy@kernel.org,
 linux-gpio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Michael Walle <michael@walle.cc>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 ChiaEn Wu <chiaen_wu@richtek.com>, Niklas Schnelle
 <schnelle@linux.ibm.com>, Leonard =?UTF-8?B?R8O2aHJz?=
 <l.goehrs@pengutronix.de>, Mike Looijmans <mike.looijmans@topic.nl>, Haibo
 Chen <haibo.chen@nxp.com>, Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: adc: ad7173: add AD7173 driver
Message-ID: <20230930142921.38006137@jic23-huawei>
In-Reply-To: <202309290756.MgmIdaDl-lkp@intel.com>
References: <20230928125443.615006-2-mitrutzceclan@gmail.com>
	<202309290756.MgmIdaDl-lkp@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 07:29:01 +0800
kernel test robot <lkp@intel.com> wrote:

> Hi Dumitru,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on jic23-iio/togreg]
> [also build test WARNING on linus/master v6.6-rc3 next-20230928]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Dumitru-Ceclan/iio-adc-ad7173-add-AD7173-driver/20230928-205802
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git togreg
> patch link:    https://lore.kernel.org/r/20230928125443.615006-2-mitrutzceclan%40gmail.com
> patch subject: [PATCH v2 2/2] iio: adc: ad7173: add AD7173 driver
> config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20230929/202309290756.MgmIdaDl-lkp@intel.com/config)
> compiler: sparc64-linux-gcc (GCC) 13.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230929/202309290756.MgmIdaDl-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202309290756.MgmIdaDl-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/iio/adc/ad7173.c:829:23: warning: initialization of 'long unsigned int' from 'const struct ad7173_device_info *' makes integer from pointer without a cast [-Wint-conversion]  
>      829 |         { "ad7172-2", &ad7173_device_info[ID_AD7172_2], },
>          |                       ^
>    drivers/iio/adc/ad7173.c:829:23: note: (near initialization for 'ad7173_id_table[0].driver_data')
>    drivers/iio/adc/ad7173.c:830:23: warning: initialization of 'long unsigned int' from 'const struct ad7173_device_info *' makes integer from pointer without a cast [-Wint-conversion]
>      830 |         { "ad7173-8", &ad7173_device_info[ID_AD7173_8], },
>          |                       ^
>    drivers/iio/adc/ad7173.c:830:23: note: (near initialization for 'ad7173_id_table[1].driver_data')
>    drivers/iio/adc/ad7173.c:831:23: warning: initialization of 'long unsigned int' from 'const struct ad7173_device_info *' makes integer from pointer without a cast [-Wint-conversion]
>      831 |         { "ad7175-2", &ad7173_device_info[ID_AD7175_2], },
>          |                       ^
>    drivers/iio/adc/ad7173.c:831:23: note: (near initialization for 'ad7173_id_table[2].driver_data')
>    drivers/iio/adc/ad7173.c:832:23: warning: initialization of 'long unsigned int' from 'const struct ad7173_device_info *' makes integer from pointer without a cast [-Wint-conversion]
>      832 |         { "ad7176-2", &ad7173_device_info[ID_AD7176_2], },
>          |                       ^
>    drivers/iio/adc/ad7173.c:832:23: note: (near initialization for 'ad7173_id_table[3].driver_data')
> 
> 
> vim +829 drivers/iio/adc/ad7173.c
> 
>    827	
>    828	static const struct spi_device_id ad7173_id_table[] = {
>  > 829		{ "ad7172-2", &ad7173_device_info[ID_AD7172_2], },  
>    830		{ "ad7173-8", &ad7173_device_info[ID_AD7173_8], },
>    831		{ "ad7175-2", &ad7173_device_info[ID_AD7175_2], },
>    832		{ "ad7176-2", &ad7173_device_info[ID_AD7176_2], },
Cast these to kernel_ulong_t as done in similar drivers like the ad7192

Jonathan


>    833		{ },
>    834	};
>    835	MODULE_DEVICE_TABLE(spi, ad7173_id_table);
>    836	
> 


