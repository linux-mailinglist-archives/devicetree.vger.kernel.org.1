Return-Path: <devicetree+bounces-266986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GAnBq1wmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:33:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CFD1685F6
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:33:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7DEE53006131
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC8B2765C4;
	Fri, 20 Feb 2026 14:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="NIKOiXNx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB1C1487E9
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597993; cv=none; b=Um2vB71yI69LiBLBJSMH5nHxSft4GLisKotJFMsi66We6i+B4j7Ig4+maHL3YkBvAcQ2pBKBOLBlhomt4WTrtAeY9fjyZDJpyKDx7JLbzw7XUtU0wzl0Bhc5l1fMd5jlreEeIJUPm+BN+Qd/4zFhYbNU+hjmaqXJMFi54StFjpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597993; c=relaxed/simple;
	bh=TYJ30ChM6gcCS6QYe5Ckg+2S4lGk8QCdkrY13mptiiI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VRJhvBZVZrf9S9Nlv+MZcI6+hrlAZsYp2LV8QluOQY75EL35u9VcElO2vHXvWLiC8c2HQToN7ziUcxShPyrFSgfksCd3DTW0qs43YMAeaoIquqUdNEdr8Jid60Mn21QjAg+ZJrNQMBpmsH7Ya1/oAEDe5W1tXPYz7KUujDkhHEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=NIKOiXNx; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1771597987; x=1771857187;
	bh=qlD/PNnYcqmWY7VC/XbBl5Mb7IvYgw6IfOHsy2m/ZS8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=NIKOiXNxYonLwfO4TAlXq4EB63vyM7/6bACW7FQTM7bkdXmHrz3sQWJqmbCXYc03l
	 vkf4UlJQ87xHUfiigBjjjyuBTqG0wn4IAE70I/Y6HoT7rW59eEMgZMNVOdgJyzYX+w
	 VBSWuYgy2OoAIvuuHcWYeWLFQQeYvTQ9XMGJiYhZrD2A3cVobzY/redLaChLZmcGV3
	 /7g+N3bfKy5mLVkxrSS/uUhYBEDcI3YV/iq2yWVAalvylDSHVDYMn3Tc4ChuCbW5s+
	 hIdtUr6Ya1BJm8KM8hqxUA4euBLiYlyd5S087cNIEPFjHvkU26oJyJc7uFc1Z11oVp
	 +UwP/nH92sP2g==
Date: Fri, 20 Feb 2026 14:33:04 +0000
To: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev, Harry Austen <hpausten@protonmail.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <monstr@monstr.eu>
From: Harry Austen <hpausten@protonmail.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] clk: clocking-wizard: add user clock monitor support
Message-ID: <DGJV2ICCB72N.39T6HN62PUHPE@protonmail.com>
In-Reply-To: <202602151704.qepyfVlc-lkp@intel.com>
References: <202602151704.qepyfVlc-lkp@intel.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 5b0edd8755628df423df7963b1dc7428928e5e67
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266986-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,lists.linux.dev,protonmail.com,baylibre.com,kernel.org,monstr.eu];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpausten@protonmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[protonmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,intel.com:email,01.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,protonmail.com:mid,protonmail.com:dkim]
X-Rspamd-Queue-Id: A9CFD1685F6
X-Rspamd-Action: no action

On Thu Feb 19, 2026 at 6:52 AM GMT, Dan Carpenter wrote:
> Hi Harry,
>
> kernel test robot noticed the following build warnings:
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Harry-Austen/dt-bi=
ndings-clock-xilinx-add-description-of-user-monitor-interrupt/20260215-0215=
54
> base:   ea7282e99ead6d2a294cef40acd2a29ada3ab71d
> patch link:    https://lore.kernel.org/r/20260214180933.42143-3-hpausten%=
40protonmail.com
> patch subject: [PATCH v4 2/2] clk: clocking-wizard: add user clock monito=
r support
> config: microblaze-randconfig-r072-20260215 (https://download.01.org/0day=
-ci/archive/20260215/202602151704.qepyfVlc-lkp@intel.com/config)
> compiler: microblaze-linux-gcc (GCC) 14.3.0
> smatch version: v0.5.0-8994-gd50c5a4c
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202602151704.qepyfVlc-lkp@intel.com/
>
> smatch warnings:
> drivers/clk/xilinx/clk-xlnx-clock-wizard.c:1183 clk_wzrd_user_mon_work() =
error: dereferencing freed memory 'dump' (line 1182)
>
> vim +/dump +1183 drivers/clk/xilinx/clk-xlnx-clock-wizard.c
>
> 68614f228e6cbe Harry Austen 2026-02-14  1176  static void clk_wzrd_user_m=
on_work(struct work_struct *work)
> 68614f228e6cbe Harry Austen 2026-02-14  1177  {
> 68614f228e6cbe Harry Austen 2026-02-14  1178  =09struct clk_wzrd *clk_wzr=
d =3D container_of(work, struct clk_wzrd, work.work);
> 68614f228e6cbe Harry Austen 2026-02-14  1179  =09u32 *dump =3D vmalloc(WZ=
RD_NUM_DUMP_REGS * sizeof(*dump));
> 68614f228e6cbe Harry Austen 2026-02-14  1180
> 68614f228e6cbe Harry Austen 2026-02-14  1181  =09ioread32_rep(clk_wzrd->b=
ase, dump, WZRD_NUM_DUMP_REGS);
> 68614f228e6cbe Harry Austen 2026-02-14 @1182  =09dev_coredumpv(&clk_wzrd-=
>pdev->dev, dump, WZRD_NUM_DUMP_REGS * sizeof(*dump), GFP_KERNEL);
> 68614f228e6cbe Harry Austen 2026-02-14 @1183  =09iowrite32(dump[WZRD_INTR=
_STATUS / sizeof(*dump)], clk_wzrd->base + WZRD_INTR_STATUS);
>                                                           ^^^^
> dev_coredumpv() can free dump.

Whoops. That makes total sense. Pretty sure this can be easily resolved by =
moving the
dev_coredumpv call after iowrite32. Will do in next patch version.

>
> 68614f228e6cbe Harry Austen 2026-02-14  1184  }
> 68614f228e6cbe Harry Austen 2026-02-14  1185
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

Thanks for the report!
Harry


