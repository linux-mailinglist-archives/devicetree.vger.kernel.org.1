Return-Path: <devicetree+bounces-271844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHL8NumDqmmaSwEAu9opvQ
	(envelope-from <devicetree+bounces-271844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 08:36:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 681B421C82E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 08:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 748943059F0B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 07:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E2B374E79;
	Fri,  6 Mar 2026 07:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EM40PIl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E5C372ED4
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 07:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772782517; cv=none; b=sx952KSVKPnjvEHhfadN5vXSUvKk9pRxSj0q3YXr0e3Z0GpfBdGDccsPtb2fcwlLm8hIAlRvnrcY6fM7q/GtGU83jhhy5n+sQxGwk/ebc8Ik9DQA2mUPujLi0UBG3jtIdciVb+1PCnGsJ5O2BytBEk2KvT66bkByMhuQpfgwlo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772782517; c=relaxed/simple;
	bh=6UStxTN0ltHJ/GkEo7bx/EfcLlbOuCrV481hg4emXsc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=Y+ttAJvXuh/wFUhB0DbnvXRAUw9RzyoaYoxZRza6vTrbtqmEPX65Q19CdLaC4Y0E5CpgrFGcm8z55MQ6M4/Jh/meTk67c/04/RshAeK/uKkRlYDnGT88+4hW6+YHiVMMypTnCjRiyqTGFJQupL8mfaN4k6674ZNY26hgJhyhoN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EM40PIl3; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4836f4cbe0bso76806015e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 23:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772782513; x=1773387313; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6XoprPGy2obVCQE2uQgSeOts5auhhet8rC7x7T+9nI=;
        b=EM40PIl3oC8AvBM9s2nfJZo4h6hSmBkn1M3E60cXyupESAl/YpD9NcmBBp9xHqzvXP
         cVg1ms4rFDZH2YdNEIGFWeHchjBTPrg5aLsWX3Ix+UhXFKUOEcOcYzs1eZzPTdaoL/7+
         DWMn1/qN031qigecNUIXfnelZwDK1HTweTTcFkFd8oqbLH2Lk9sIn7uPwVCMAS9LhOot
         Gjr27j8tye7Ku02D94lqefFgmF3UniDvYfOvGYTTRJ0Ap8QZJNC2oohC6hpGZ78bP4n0
         ATCoCadkhQThOTpioqDYEA8qsE6xvakPTRBV+DQm9ah9MSEld+m+F1JBNEFwwtM8AvXI
         bQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772782513; x=1773387313;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y6XoprPGy2obVCQE2uQgSeOts5auhhet8rC7x7T+9nI=;
        b=fdGMeCTVq1bMmeqYz5TYKtdgRYLN/LHRICBn8SZRRMRqvE/t+Y/QcsZ0tRuTR2H8bo
         GE6WiMdyXXIRPMz7CmFNpHXkrqDlVG3TDIRbiXfb7Aj1QJsrNPnMyGlsRYADbQRrvWp5
         nKlcSQn715cK87zPJVCb8Z2ta9ZyljA+A6oLW8EvEODmJO4/OJcfWJOJrY2IPCfpKCuG
         Lqnon9z6z2ElZ23VABWtfFb0HJHzH1Q/jhtERH8Rze0LEFeVxe5nTxFBOHrboYR5/gZy
         rv+dfdFtV0dYUrM5+ZbcSMY1YgLlXvwRzHJ+J7ZyXVTc1junAydMEn4YBwWdMoBR14R8
         rYuA==
X-Forwarded-Encrypted: i=1; AJvYcCWBCJmHqq78kXNgqOdOMtfObRxuK4ggretONswdY40T3xzX2excCVjCfQe6ghNBtWPLdvXe4DXqoKs/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg4vwPuw6R/LNMOHlZuQ+ulxyvbJgHvxhoKyy/o2mjWvE3XRHt
	5YhghZRmDVT7FkUH3BcrKtaJygQsz6QI/2OXFP12ISaZ0CochNtka5XIAPPjHeYIUYk=
X-Gm-Gg: ATEYQzxi8FaDoobKanZ77qHH8A932K8wGPDr0pKmEzjcmDYmEvDLDwmk1GlYoTpkQw7
	FTTspgsEoikf72N30mfuoKx9pP6wMeq8bAG/U5zJNsjo2CQnpoX2i1+29YE7PIGT3ed9qoADp46
	fgdqWw4CVVYvvmmk0ONhaHJpDJZTL2uw0O2BeBmYsU5gIpxpoVLjMsyW2i4W7NarsgO6bAzAk8E
	gIg9WBAGrMEOJcE5sn/sUDf2VolL+NhcrYA1bIyqDroWO0zYNpURplgdkmBzqHtEgJhZDdSukrX
	3WnDSHBfikAVjQ4FLjN8K35MYFHNQKWhKdZ/TRhJElvRF1hNWb4hAEa0gvnshG81t8VKkEBzsJZ
	XrOMlDWTRY+Ohws1RlfsYEMabGJHDxebO3hwqVKUlGM5fDuAuXVC64F2pJou1jjWEU6iW4P3X+h
	RiTXol1/jV22B560Z2ppzCdIc4dX89YJGYTQMxVK0=
X-Received: by 2002:a05:600c:4e89:b0:45d:d97c:236c with SMTP id 5b1f17b1804b1-48526951430mr16785555e9.21.1772782512990;
        Thu, 05 Mar 2026 23:35:12 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2bdf8sm1953812f8f.25.2026.03.05.23.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 23:35:12 -0800 (PST)
Date: Fri, 6 Mar 2026 10:35:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Shenwei Wang <shenwei.wang@nxp.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	arnaud.pouliquen@foss.st.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Shuah Khan <skhan@linuxfoundation.org>, linux-gpio@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shenwei Wang <shenwei.wang@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com
Subject: Re: [PATCH v9 4/5] gpio: rpmsg: add support for NXP legacy firmware
 protocol
Message-ID: <202603060910.Q5zBquzF-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304211808.1437846-5-shenwei.wang@nxp.com>
X-Rspamd-Queue-Id: 681B421C82E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271844-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.linux.dev,linuxfoundation.org,vger.kernel.org,pengutronix.de,gmail.com,nxp.com,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,01.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,intel.com:mid,intel.com:email,imx_msg.id:url,git-scm.com:url]
X-Rspamd-Action: no action

Hi Shenwei,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shenwei-Wang/docs-driver-api-gpio-rpmsg-gpio-driver-over-rpmsg-bus/20260305-052440
base:   https://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git gpio/for-next
patch link:    https://lore.kernel.org/r/20260304211808.1437846-5-shenwei.wang%40nxp.com
patch subject: [PATCH v9 4/5] gpio: rpmsg: add support for NXP legacy firmware protocol
config: x86_64-randconfig-161-20260306 (https://download.01.org/0day-ci/archive/20260306/202603060910.Q5zBquzF-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
smatch: v0.5.0-9004-gb810ac53

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202603060910.Q5zBquzF-lkp@intel.com/

smatch warnings:
drivers/gpio/gpio-rpmsg.c:188 rpmsg_gpio_imx_send_fixed_up() error: buffer overflow 'imx_std_cmd_map' 7 <= 27

vim +/imx_std_cmd_map +188 drivers/gpio/gpio-rpmsg.c

49a0cb20cd49a59 Shenwei Wang 2026-03-04  176  static int rpmsg_gpio_imx_send_fixed_up(struct rpmsg_gpio_info *info,
49a0cb20cd49a59 Shenwei Wang 2026-03-04  177  				   struct rpmsg_gpio_packet *msg)
49a0cb20cd49a59 Shenwei Wang 2026-03-04  178  {
49a0cb20cd49a59 Shenwei Wang 2026-03-04  179  	struct rpmsg_gpio_nxp_packet imx_msg;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  180  
49a0cb20cd49a59 Shenwei Wang 2026-03-04  181  	if (msg->cmd >= sizeof(imx_std_cmd_map))

This looks like a sizeof() vs ARRAY_SIZE() bug.

49a0cb20cd49a59 Shenwei Wang 2026-03-04  182  		return -EINVAL;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  183  
49a0cb20cd49a59 Shenwei Wang 2026-03-04  184  	imx_msg.id = IMX_RPMSG_ID;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  185  	imx_msg.vendor = IMX_RPMSG_VENDOR;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  186  	imx_msg.version = IMX_RPMSG_VERSION;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  187  	imx_msg.type = msg->type;
49a0cb20cd49a59 Shenwei Wang 2026-03-04 @188  	imx_msg.cmd = imx_std_cmd_map[msg->cmd];
                                                                              ^^^^^^^^
Out of bounds.

49a0cb20cd49a59 Shenwei Wang 2026-03-04  189  	imx_msg.port_idx = msg->port_idx;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  190  	imx_msg.line = msg->line;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  191  	imx_msg.val1 = msg->val1;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  192  	imx_msg.val2 = msg->val2;
49a0cb20cd49a59 Shenwei Wang 2026-03-04  193  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


