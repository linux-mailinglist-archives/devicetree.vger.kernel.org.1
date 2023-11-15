Return-Path: <devicetree+bounces-15870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 819627EC1C5
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 12:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BD56281308
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 11:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3877917753;
	Wed, 15 Nov 2023 11:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="PNZfJUdo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092B21798F;
	Wed, 15 Nov 2023 11:57:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4A18122;
	Wed, 15 Nov 2023 03:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700049439; x=1731585439;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=16w+40d0xLLcfCPMxmhTbWzTg032nxyn4BeL0NpQz0U=;
  b=PNZfJUdoTG4knPVq+6eUmG2OJZn0DqIvInOC+iaCghBm3gaOFCJbfIDy
   aRMdgnIDmbqWkf2jAeEKi3aknPXLhz3UaaJ06i8HUyNN4uaoWwNpW6YGv
   7Mw7URB2KJX1eLTaBaqP1bUyklytHNsuo2y8/7BVRAIfJ6A6zodkBVvPJ
   4i+ob/DUnacKYsnU2VbjoxCuG91D8AFvjlSktEJ7Vgx3bYe9sl4PAPy+v
   rp+/JImr5FihRt9TK3godglHDZRyseY6zuSX6brqWkGZ3iLi+mFUDCcjo
   jo/NUh2oreaJchPtrTEhgrsLX2khV09J+Zaw7Nro5+VW6AoNPXXpsdwxP
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="12411016"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; 
   d="scan'208";a="12411016"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2023 03:57:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; 
   d="scan'208";a="6377009"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
  by fmviesa002.fm.intel.com with ESMTP; 15 Nov 2023 03:57:13 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r3EW6-0000J1-2q;
	Wed, 15 Nov 2023 11:57:10 +0000
Date: Wed, 15 Nov 2023 19:56:22 +0800
From: kernel test robot <lkp@intel.com>
To: Romain Gantois <romain.gantois@bootlin.com>, davem@davemloft.net,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
	Romain Gantois <romain.gantois@bootlin.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, thomas.petazzoni@bootlin.com,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Robert Marko <robert.marko@sartura.hr>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: [PATCH net-next v3 5/8] net: qualcomm: ipqess: add bridge
 offloading features to the IPQESS driver
Message-ID: <202311151907.EpWA1jzi-lkp@intel.com>
References: <20231114105600.1012056-6-romain.gantois@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114105600.1012056-6-romain.gantois@bootlin.com>

Hi Romain,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Romain-Gantois/dt-bindings-net-Introduce-the-Qualcomm-IPQESS-Ethernet-switch/20231114-185953
base:   net-next/main
patch link:    https://lore.kernel.org/r/20231114105600.1012056-6-romain.gantois%40bootlin.com
patch subject: [PATCH net-next v3 5/8] net: qualcomm: ipqess: add bridge offloading features to the IPQESS driver
config: x86_64-randconfig-003-20231115 (https://download.01.org/0day-ci/archive/20231115/202311151907.EpWA1jzi-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231115/202311151907.EpWA1jzi-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311151907.EpWA1jzi-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/dsa/qca/qca8k-8xxx.c:1982:5: warning: no previous prototype for 'qca8k_dsa_port_fdb_dump' [-Wmissing-prototypes]
    1982 | int qca8k_dsa_port_fdb_dump(struct dsa_switch *ds, int port,
         |     ^~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/dsa/qca/qca8k-8xxx.c:1988:6: warning: no previous prototype for 'qca8k_dsa_port_stp_state_set' [-Wmissing-prototypes]
    1988 | void qca8k_dsa_port_stp_state_set(struct dsa_switch *ds, int port,
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/dsa/qca/qca8k-8xxx.c:1995:6: warning: no previous prototype for 'qca8k_dsa_port_fast_age' [-Wmissing-prototypes]
    1995 | void qca8k_dsa_port_fast_age(struct dsa_switch *ds, int port)
         |      ^~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/dsa/qca/qca8k-8xxx.c:2000:5: warning: no previous prototype for 'qca8k_dsa_set_ageing_time' [-Wmissing-prototypes]
    2000 | int qca8k_dsa_set_ageing_time(struct dsa_switch *ds, unsigned int msecs)
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/dsa/qca/qca8k-8xxx.c:2005:5: warning: no previous prototype for 'qca8k_dsa_port_vlan_filtering' [-Wmissing-prototypes]
    2005 | int qca8k_dsa_port_vlan_filtering(struct dsa_switch *ds, int port,
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/dsa/qca/qca8k-8xxx.c:2012:5: warning: no previous prototype for 'qca8k_dsa_vlan_add' [-Wmissing-prototypes]
    2012 | int qca8k_dsa_vlan_add(struct dsa_switch *ds, int port,
         |     ^~~~~~~~~~~~~~~~~~


vim +/qca8k_dsa_port_fdb_dump +1982 drivers/net/dsa/qca/qca8k-8xxx.c

  1981	
> 1982	int qca8k_dsa_port_fdb_dump(struct dsa_switch *ds, int port,
  1983				    dsa_fdb_dump_cb_t *cb, void *data)
  1984	{
  1985		return qca8k_port_fdb_dump(ds->priv, port, cb, data);
  1986	}
  1987	
> 1988	void qca8k_dsa_port_stp_state_set(struct dsa_switch *ds, int port,
  1989					  u8 state)
  1990	{
  1991		qca8k_port_stp_state_set(ds->priv, port, state,
  1992					 dsa_to_port(ds, port)->learning, true);
  1993	}
  1994	
> 1995	void qca8k_dsa_port_fast_age(struct dsa_switch *ds, int port)
  1996	{
  1997		qca8k_port_fast_age(ds->priv, port);
  1998	}
  1999	
> 2000	int qca8k_dsa_set_ageing_time(struct dsa_switch *ds, unsigned int msecs)
  2001	{
  2002		return qca8k_set_ageing_time(ds->priv, msecs);
  2003	}
  2004	
> 2005	int qca8k_dsa_port_vlan_filtering(struct dsa_switch *ds, int port,
  2006					  bool vlan_filtering,
  2007					  struct netlink_ext_ack *extack)
  2008	{
  2009		return qca8k_port_vlan_filtering(ds->priv, port, vlan_filtering);
  2010	}
  2011	
> 2012	int qca8k_dsa_vlan_add(struct dsa_switch *ds, int port,
  2013			       const struct switchdev_obj_port_vlan *vlan,
  2014			       struct netlink_ext_ack *extack)
  2015	{
  2016		return qca8k_port_vlan_add(ds->priv, port, vlan, extack);
  2017	}
  2018	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

