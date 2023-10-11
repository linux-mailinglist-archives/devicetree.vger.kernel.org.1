Return-Path: <devicetree+bounces-7632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B73D67C4F70
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:55:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C24B41C20CF1
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2B11DA22;
	Wed, 11 Oct 2023 09:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="gKq+2lzn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09D91A282
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:55:54 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13CB092;
	Wed, 11 Oct 2023 02:55:52 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8898036E;
	Wed, 11 Oct 2023 11:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697018148;
	bh=QqAZDP8c+BoKZR30I5rLj7+JZPa+bTaCbUaWKgC/pVs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=gKq+2lznn2lLXEY/ibkcotqM6Kf2r4GgUxWFYtUbTgI2/IlYVbyXjhWiXV4vxjo7k
	 oBhOZErQ3f5Q0BfINhGmSzDqel+dwuvYZKv+T/THmAO3q19MZ42x7Y3Jh02Z8djYHz
	 Ub4AvXRCej3Wrmw4a0uUdMPS5gyleuqcpVffH+BM=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202310101224.43dpo3Ng-lkp@intel.com>
References: <20231010005126.3425444-3-kieran.bingham@ideasonboard.com> <202310101224.43dpo3Ng-lkp@intel.com>
Subject: Re: [PATCH 2/5] media: i2c: imx335: Enable regulator supplies
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: oe-kbuild-all@lists.linux.dev, Sakari Ailus <sakari.ailus@linux.intel.com>, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org
To: devicetree@vger.kernel.org, kernel test robot <lkp@intel.com>, linux-media@vger.kernel.org
Date: Wed, 11 Oct 2023 10:55:48 +0100
Message-ID: <169701814855.277971.16947852004431316034@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting kernel test robot (2023-10-10 05:10:17)
> Hi Kieran,
>=20
> kernel test robot noticed the following build warnings:
>=20
> [auto build test WARNING on media-tree/master]
> [also build test WARNING on sailus-media-tree/streams linus/master v6.6-r=
c5 next-20231009]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>=20
> url:    https://github.com/intel-lab-lkp/linux/commits/Kieran-Bingham/med=
ia-dt-bindings-media-imx335-Add-supply-bindings/20231010-085313
> base:   git://linuxtv.org/media_tree.git master
> patch link:    https://lore.kernel.org/r/20231010005126.3425444-3-kieran.=
bingham%40ideasonboard.com
> patch subject: [PATCH 2/5] media: i2c: imx335: Enable regulator supplies
> config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/202310=
10/202310101224.43dpo3Ng-lkp@intel.com/config)
> compiler: m68k-linux-gcc (GCC) 13.2.0
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20231010/202310101224.43dpo3Ng-lkp@intel.com/reproduce)
>=20
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202310101224.43dpo3Ng-lkp=
@intel.com/
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/media/i2c/imx335.c:159: warning: Function parameter or member =
'supplies' not described in 'imx335'
>=20

Aha, thank you KTR - I'll fix this.
--
Kieran

