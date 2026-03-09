Return-Path: <devicetree+bounces-273013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCreJobormlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:34:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E0823BC29
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:34:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 513E1309C49D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4040E3E715B;
	Mon,  9 Mar 2026 15:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="I6KBtG6H"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330803E51FC;
	Mon,  9 Mar 2026 15:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069883; cv=none; b=IhmLYEYGAb1XF1WVt9miOWQP6hSzFoo4f5sJ/xcrrlNN6EIfmenMfdh4EPnJPcmQHuRpNANSVp6RyhmBgY0QanlDEH2WNs4OoZlu6zZzNCU3FttDlmO8r0HxDWZ7QP4NG2oYcI3ukzvwxonYPWQts9Ah2fttlbNP0UsQHnauM6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069883; c=relaxed/simple;
	bh=Zm+H19KovkZIyk2JXUEuxV8cjqsBV83xuyYTiMBB5sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rTteofoJOOwBxQ67HURJ4ETe/4prT9eFQpiqBppirt4/eDwAA4/pWJuEEmXul6CsBFAsP0uDYXcixS/hbJBCjHXZ/f5zP5TIzm1sLGiopLuQ8paA2P/PImIF8ECoJhTad2ljZVPcoC0l7KhETmH6Z5UHcKBl/jjWVlByrjGcEWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=I6KBtG6H; arc=none smtp.client-ip=192.198.163.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773069881; x=1804605881;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Zm+H19KovkZIyk2JXUEuxV8cjqsBV83xuyYTiMBB5sQ=;
  b=I6KBtG6H6k15gZq/TAjCvcxg8MHB/D8IckT4Ag9kc2MBZ0Ndo1Sjh8qU
   3M2QnbUwPtQK9Q9sy6YGPX/Q4f7pYmckr+XzWyF3J67e3m7SxyWuVgXrE
   +9jagiWdg9tdFP71DQRV28xJdcH35yE0cJBxJutJLILhw35kfus7wj21E
   8Pgy3+wCCu09MJLgBddmlchfuRJIQFAmU8XZweF++s7l76pLucpAFS3FA
   jCAYW3u1jC28L+n3+tQGbpn43G/Bne4pjecx3jshGmRZwFh+y3EuToN+Z
   CFRJPxk38yKJLdZXIc0u7PDzR+Zdpw0KuyyOSG40NH3Y+BWwG01eWEbw3
   A==;
X-CSE-ConnectionGUID: NnM9MDQ9Sbq0q+xQwd9Jfg==
X-CSE-MsgGUID: ZhX4hQIvSEycuAws9+hPgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="85444713"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; 
   d="scan'208";a="85444713"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2026 08:24:40 -0700
X-CSE-ConnectionGUID: ayXV64CsT3aJxsGeowFNCw==
X-CSE-MsgGUID: 3KdhRDAqR827wiM7B0Hpfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; 
   d="scan'208";a="216700210"
Received: from lkp-server01.sh.intel.com (HELO 434e41ea3c86) ([10.239.97.150])
  by fmviesa010.fm.intel.com with ESMTP; 09 Mar 2026 08:24:35 -0700
Received: from kbuild by 434e41ea3c86 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vzcTA-000000000Qi-0jhd;
	Mon, 09 Mar 2026 15:24:32 +0000
Date: Mon, 9 Mar 2026 23:23:58 +0800
From: kernel test robot <lkp@intel.com>
To: Hermes Wu via B4 Relay <devnull+Hermes.wu.ite.com.tw@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw,
	Hermes Wu <Hermes.Wu@ite.com.tw>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm/bridge: Add ITE IT6162 MIPI DSI to HDMI
 bridge driver
Message-ID: <202603092305.W1fFHKL5-lkp@intel.com>
References: <20260309-upstream-6162-v2-2-debdb6c88030@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-upstream-6162-v2-2-debdb6c88030@ite.com.tw>
X-Rspamd-Queue-Id: 14E0823BC29
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273013-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.981];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,Hermes.wu.ite.com.tw,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url]
X-Rspamd-Action: no action

Hi Hermes,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 2622649ad6cdbb3e77bfafc8c0fe686090b77f70]

url:    https://github.com/intel-lab-lkp/linux/commits/Hermes-Wu-via-B4-Relay/dt-bindings-display-bridge-Add-ITE-IT6162-MIPI-DSI-to-HDMI-bridge/20260309-174457
base:   2622649ad6cdbb3e77bfafc8c0fe686090b77f70
patch link:    https://lore.kernel.org/r/20260309-upstream-6162-v2-2-debdb6c88030%40ite.com.tw
patch subject: [PATCH v2 2/2] drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge driver
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20260309/202603092305.W1fFHKL5-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260309/202603092305.W1fFHKL5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603092305.W1fFHKL5-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/bridge/ite-it6162.c:728:7: warning: variable 'cp_status' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     728 |                 if (it6162->hdcp_sts != hdcp_sts ||
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     729 |                     it6162->hdcp_sts == NO_HDCP_STATE) {
         |                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/ite-it6162.c:759:57: note: uninitialized use occurs here
     759 |                 drm_hdcp_update_content_protection(it6162->connector, cp_status);
         |                                                                       ^~~~~~~~~
   drivers/gpu/drm/bridge/ite-it6162.c:728:3: note: remove the 'if' if its condition is always true
     728 |                 if (it6162->hdcp_sts != hdcp_sts ||
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     729 |                     it6162->hdcp_sts == NO_HDCP_STATE) {
         |                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/ite-it6162.c:703:15: note: initialize the variable 'cp_status' to silence this warning
     703 |         u64 cp_status;
         |                      ^
         |                       = 0
   1 warning generated.


vim +728 drivers/gpu/drm/bridge/ite-it6162.c

   695	
   696	static void it6162_hdcp_handler(struct it6162 *it6162)
   697	{
   698		struct regmap *regmap = it6162->regmap;
   699		unsigned int tx_status, sink_cap;
   700		enum hdcp_state hdcp_sts;
   701		struct it6162_hdcp_cfg *hdcp_cfg = &it6162->hdcp_cfg;
   702		u8 hdcp_ver;
   703		u64 cp_status;
   704	
   705		if (hdcp_cfg->hdcp_version == NO_HDCP || !it6162->en_hdcp) {
   706			drm_dbg(it6162->drm, "HDCP not enabled, skip hdcp check");
   707			return;
   708		}
   709	
   710		regmap_read(regmap, OFFSET_TX_STATUS, &tx_status);
   711		regmap_read(regmap, OFFSET_SINK_CAP, &sink_cap);
   712	
   713		drm_dbg(it6162->drm, "Tx status %x", tx_status);
   714		drm_dbg(it6162->drm, "SINK capability %x", sink_cap);
   715	
   716		if (!GET_TX_VIDEO_STATUS(tx_status)) {
   717			drm_dbg(it6162->drm, "video not stable, skip hdcp check");
   718			return;
   719		}
   720	
   721		hdcp_sts = GET_TX_HDCP_STATUS(tx_status);
   722		hdcp_ver = GET_SINK_CAP_HDCP_VER(sink_cap);
   723		drm_dbg(it6162->drm, "hdcp status: %x->%x, version: %x-%x",
   724			it6162->hdcp_sts, hdcp_sts,
   725			it6162->hdcp_version, hdcp_ver);
   726	
   727		if (it6162->hdcp_version != NO_HDCP) {
 > 728			if (it6162->hdcp_sts != hdcp_sts ||
   729			    it6162->hdcp_sts == NO_HDCP_STATE) {
   730				it6162->hdcp_sts = hdcp_sts;
   731				cp_status = DRM_MODE_CONTENT_PROTECTION_DESIRED;
   732				switch (hdcp_sts) {
   733				case AUTH_DONE:
   734					drm_dbg(it6162->drm, "HDCP AUTH DONE");
   735					it6162_update_hdcp(it6162);
   736					cp_status = DRM_MODE_CONTENT_PROTECTION_ENABLED;
   737					break;
   738				case AUTH_FAIL:
   739					drm_dbg(it6162->drm, "HDCP AUTH FAIL");
   740					if (hdcp_ver == HDCP_23) {
   741						drm_dbg(it6162->drm,
   742							"HDCP 2.3 auth fail, change to HDCP 1.4");
   743						it6162_tx_hdcp_setup(it6162,
   744								     HDCP_14,
   745								     true);
   746					} else {
   747						it6162_tx_hdcp_disable(it6162);
   748					}
   749	
   750					break;
   751				default:
   752					drm_dbg(it6162->drm, "HDCP NO AUTH");
   753					it6162_tx_hdcp_setup(it6162,
   754							     it6162->hdcp_version,
   755							     true);
   756					break;
   757				}
   758			}
   759			drm_hdcp_update_content_protection(it6162->connector, cp_status);
   760		}
   761	}
   762	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

