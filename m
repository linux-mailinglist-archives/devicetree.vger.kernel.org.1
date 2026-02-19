Return-Path: <devicetree+bounces-266574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WONlNjCzlmmRjwIAu9opvQ
	(envelope-from <devicetree+bounces-266574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:52:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E38C15C82E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 463703014123
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA360326953;
	Thu, 19 Feb 2026 06:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sOpAMsQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF0832142E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771483947; cv=none; b=i1FjGqoydr1Arwwd2D8SuNLdZThT6m7a5AwtwTpLs6UqROHLli5Ig2wzRKamapsztUpyZ05dtFg7pB3JfTxjTvIXlpBAZzuDtM7lcoymvVrgabC/KUkYBZ+8rG3vyB8XkAhZqnaWPYNQisdO+F5ak4xRnLIeU360rl81CX2yvoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771483947; c=relaxed/simple;
	bh=a9gIIuUbYtr3xbL1BkLiyFYBOn2YLV4QKHmbdYOIfKg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=f9bhVqtEfNE1Uc+W8KjE1BZU8CyzSFCqZ6Z119vOiZHX6Gv6+b7uluJeCfzeWTbuwQmXnfsF7/GB0NPSVgacRcQKejWelTjypL6HCQ/qS58f6yrl/ax56in1Qn4roVMrtM8vAQwHf90jFgP6OzTkXBO62tWhM9OFMO3EBZVI+dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sOpAMsQ1; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-4362c635319so556746f8f.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 22:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771483937; x=1772088737; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3EBP5eZrSw5SNu4AKLCAw7ge8STkhI5WlLpg3XWzOaM=;
        b=sOpAMsQ1MVE4s7cCbsAdLmUB7thK8ePn2HjuQra1Ycn1RVNxOw3NgPxjpLLY1XHPFa
         lRvz16iiJtU4pTsZkKkLTG34wrLk4sJIe9MvS9mRzxIz4tHo58U+H3/vn4oQRgJpDinA
         JdB4RpAKhq+jK/sLfedkJRha7zs95pJW3vYId2cGjGtQ8AZ1ECoQTBPmj2LoWIwJvQNj
         7zlzEbIVeXJg5tIUIvwQM3lvdIywkjGefejv1WOaePKSlhyzSiLicUMVQsljnd3ofwz/
         X3Fz7Hh5bxgRL+M2XOx/jxpNnpoRiXAXEmRx2BZoat29D3xWNKBRUsGfz/VEgsDeW9Tz
         vS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771483937; x=1772088737;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3EBP5eZrSw5SNu4AKLCAw7ge8STkhI5WlLpg3XWzOaM=;
        b=EdpTzklYb3ESqBdzyy9oYdgpa/pzmWiSHue/SdQuPa7iRVsO98Jywx9jk0HEMYArgA
         UeLWJae9G5dzDuPPm6uQOd5ENPPBH88ryB3hsdy9oJLhdU2A1V1cHde15uLM16olQeGk
         LvdT1Vwb3i3d5++dqR/OOdkKOmr9tMmGaq0BgUA4NTYpd+ADW3npsq7l1cPfwMA6jxA2
         oE/6yzyK9MlfVq8VtFVWZc5xUAGvDJNkS4cDezrr4GEF6Or6ozK1HgYtk3CsZZIo0Jwi
         8iL54OjkXvfMvgjmrCEZOLFDCnzU+bWfDgku88/b0cM8gvpla4aU34dOhSMfPHFXSoaW
         89jQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbmoDXJOT6AUWzKsO6TxfsiALyEZvcDxS7SCpehCK8qUzylPcFrUgd6V/1kX3L3lmX9+OOr7tQ0oIS@vger.kernel.org
X-Gm-Message-State: AOJu0YzPre0txfAIgpa5Zhr7NxWdM1MPSFdwHwAx4vFRIywgk/decdcj
	h+n8RaHwzcxvGCJ6d7w9dGXn8O/EXhW9sfLmZfDqSPN7EOZfJScNtSqaE0QrmyEiGqw=
X-Gm-Gg: AZuq6aJZr3AK529vXIPzGCJnVpnkPyrUX/laP0s4i9p8fK8Ts8j+fjLzQuqd69BoMu8
	I9gtTznuXyBYIVNMhpaHLrgqKQNySP6x3DyoqX3rlWLvkWueWVqrUG6SapNajN22Dh5Z22LtuuD
	VmP87G4dNVRbVHkV2JeGSxZXZnguB1MWzYSvQ5SrBu4ZZCMsM4Wv1XG7UUqqyKyCdjg64Xz2fbe
	aN8eHcHLNQlva1q4HRNeDPHe85WZGgbf03/d/KqUKJ07LBQELcteWn0JEHRmbPAJlJXvCdYx0XE
	NeMGLUuKkehBZb33WiCm+lPbM9voNWaIx5FcxXrp4/iMCeKpQlBLYaJtSk3eWF28Nq4StDoE8PW
	09Fch6GF1LyTV1YnoR3EuCjxg8oV+TLSrmUt0m0/Zl7WJXWKZLS6zFhSW9j0qc2dCQxlfPMjaCt
	PPmsSyl5wQkiv0Dzjb/YxOZw56vTZOxgP0qhqqKlg=
X-Received: by 2002:a05:6000:401f:b0:430:f5dc:d34a with SMTP id ffacd0b85a97d-43958e4a636mr7655865f8f.29.1771483937384;
        Wed, 18 Feb 2026 22:52:17 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acf5b9sm45905510f8f.34.2026.02.18.22.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 22:52:17 -0800 (PST)
Date: Thu, 19 Feb 2026 09:52:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Harry Austen <hpausten@protonmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Michal Simek <monstr@monstr.eu>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Harry Austen <hpausten@protonmail.com>
Subject: Re: [PATCH v4 2/2] clk: clocking-wizard: add user clock monitor
 support
Message-ID: <202602151704.qepyfVlc-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214180933.42143-3-hpausten@protonmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266574-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.linux.dev,amd.com,vger.kernel.org,lists.infradead.org,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.linux.dev,protonmail.com,baylibre.com,kernel.org,monstr.eu];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:mid,intel.com:email,01.org:url]
X-Rspamd-Queue-Id: 3E38C15C82E
X-Rspamd-Action: no action

Hi Harry,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Harry-Austen/dt-bindings-clock-xilinx-add-description-of-user-monitor-interrupt/20260215-021554
base:   ea7282e99ead6d2a294cef40acd2a29ada3ab71d
patch link:    https://lore.kernel.org/r/20260214180933.42143-3-hpausten%40protonmail.com
patch subject: [PATCH v4 2/2] clk: clocking-wizard: add user clock monitor support
config: microblaze-randconfig-r072-20260215 (https://download.01.org/0day-ci/archive/20260215/202602151704.qepyfVlc-lkp@intel.com/config)
compiler: microblaze-linux-gcc (GCC) 14.3.0
smatch version: v0.5.0-8994-gd50c5a4c

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202602151704.qepyfVlc-lkp@intel.com/

smatch warnings:
drivers/clk/xilinx/clk-xlnx-clock-wizard.c:1183 clk_wzrd_user_mon_work() error: dereferencing freed memory 'dump' (line 1182)

vim +/dump +1183 drivers/clk/xilinx/clk-xlnx-clock-wizard.c

68614f228e6cbe Harry Austen 2026-02-14  1176  static void clk_wzrd_user_mon_work(struct work_struct *work)
68614f228e6cbe Harry Austen 2026-02-14  1177  {
68614f228e6cbe Harry Austen 2026-02-14  1178  	struct clk_wzrd *clk_wzrd = container_of(work, struct clk_wzrd, work.work);
68614f228e6cbe Harry Austen 2026-02-14  1179  	u32 *dump = vmalloc(WZRD_NUM_DUMP_REGS * sizeof(*dump));
68614f228e6cbe Harry Austen 2026-02-14  1180  
68614f228e6cbe Harry Austen 2026-02-14  1181  	ioread32_rep(clk_wzrd->base, dump, WZRD_NUM_DUMP_REGS);
68614f228e6cbe Harry Austen 2026-02-14 @1182  	dev_coredumpv(&clk_wzrd->pdev->dev, dump, WZRD_NUM_DUMP_REGS * sizeof(*dump), GFP_KERNEL);
68614f228e6cbe Harry Austen 2026-02-14 @1183  	iowrite32(dump[WZRD_INTR_STATUS / sizeof(*dump)], clk_wzrd->base + WZRD_INTR_STATUS);
                                                          ^^^^
dev_coredumpv() can free dump.

68614f228e6cbe Harry Austen 2026-02-14  1184  }
68614f228e6cbe Harry Austen 2026-02-14  1185  
-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


