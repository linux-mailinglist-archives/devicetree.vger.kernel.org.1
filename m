Return-Path: <devicetree+bounces-139657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD10A16801
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7FA71888C00
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903891922DD;
	Mon, 20 Jan 2025 08:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iMSZ7/Mu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AAB192B6D
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737360913; cv=none; b=usA1z8YG/ks+2S7yDxMFRtWMtZa11mktVLOFvnYFdznLNTDFt9x98E6jygRYqzR7ly46eGXA0HgxXozboSQnsdB9BqzNMsDtuJNVhk6z5AQdCMdq1888kUvDAgU6QofgrVxsJescBGzNFeRmq0fN8FQPHRBgl2BZMgCjSR4CutU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737360913; c=relaxed/simple;
	bh=qNU2pgojq4RxHg/p3aNjSgeJllAWkcFz7GgDPZJb/cI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=IzPGOxmyNSwSj7MlF0oKHRUIBUeuupYgOJinjwqympTpg2MtcYLQ13F8aaaLn/4iFf20mkIfIrNf61cCA1Z+w+1UMtAGiEa5QDv/8Wj4PnfJT//ROwGPI1rqaEOLjNkr8kx3gFnoTYjHpdCrOAhr500koVoPywS+Vb1ExhQfTx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iMSZ7/Mu; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4361b6f9faeso25889695e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 00:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737360909; x=1737965709; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A09ktfAOPPyu9exFxifvfSR4TKmqpkMAIRIJNi7aCSI=;
        b=iMSZ7/MudDttnuECrCN62mzoQCTmkNJCDCLsoyaM6d87EDunyhUkqJArFu4C/563Y5
         M5VBXcwUjyl0JvPLKDCsMcni57t3zl6cGUlXd5o8iDnmmBnFNmNswnAfIe2Kv89kkOXn
         WVIhj6An5apNFTvRqg0rT01j1rGvaJ5NgvFS5Bqbgern2TABxzMr4ca0PzdCFFErwmly
         gahmnp0eT7czY5ljeXJFCU55mcyCRe76jINEjnYdL34mUJhT6rrsPpiyRTJyPAqu1bjj
         gy2vTy9jI3uYsswgQJz3zOnRSGOw6aGnoxRZCzMAzDUSm2PrlrX8oMcf2ejwKIpe1sij
         koWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737360909; x=1737965709;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A09ktfAOPPyu9exFxifvfSR4TKmqpkMAIRIJNi7aCSI=;
        b=vtNNzC1zQBCz+MyIfTEc4F4BPEK6klzipBeVbsxENxM2rszBLkK6PqArmKDjPuZgL3
         MZkKkEU16cGsAmtXQB7U1OK5ZIP8ssgZ8rdeYIVWjjgcm4yACK/m38WhiQvc/jJregFO
         tdxDG+GteVOsEYw/j+Ae1iFZfJelUy/aflQt4sPaiAJB07GN6sC74GkM6q9PmLCG3Nba
         3jD7L7bLwEQMBTNxyLBULRWUiJRjOnLJgZI0hpPSmHp/ZmisL6hwZJJ83a3EKBpB1igS
         tysaA1PRzhKEzsJ8Kj+11KXBtvoLyh0rK4aY4/tfkqA99N940z34EWexn1TZ1YHCowHi
         Re7w==
X-Forwarded-Encrypted: i=1; AJvYcCXGgozus2EHiagPXyD0fUSWZsvwlsWjHRL0seyaXZBIxwVpAlGuVe+UNXFvte9vSaNByNP7ySQKVgmU@vger.kernel.org
X-Gm-Message-State: AOJu0YzaT7uRVxGNFL/sx/ALf71RUSsUhq8l6ufkg2DAhjPh8kRvyJ5W
	NBJsZ7ueND5mbAo/BQ8lq4wGhlDCmYW+qlQoTbzmUEnoW6UyvUv/Rb+83oVR9wCmNjg0PNCKCAx
	K
X-Gm-Gg: ASbGncvL7JpkMwdRK/b/KqP93Km/iCdRC+2jYE40hROzATctBTqqqPRJ5fUPoix/7rq
	3RM7PkmLT3AGFsJyspkR95qI0jKZ9MBiAcfdFF963ojB0SEsgNuTpuxbbgHqo+VoxmbDUdsz3/W
	mYqW7Mw7xOV/n7YRCgDRtmQDaQrcZPSDNiPNzo/0ppI4OTF9KTHwwqbTgOqSjRbo3s6dcarPVGB
	6pCTRjk+9ShIMcn5ZmvCWP2rxJSh3sVWlYdKXxS/DYlpojn7ZLexcWLNuouZamfSySr8P2IJyU=
X-Google-Smtp-Source: AGHT+IEWHv9ynMnrEE8ZJOOYjOCTr5BrSCFg9p7EuLheqv8DchREXYYPN0l/9TjEXyDyPhS98pE9uA==
X-Received: by 2002:a05:600c:4452:b0:436:e3ea:64dd with SMTP id 5b1f17b1804b1-437c6b2dd76mr176517855e9.11.1737360909177;
        Mon, 20 Jan 2025 00:15:09 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43890462195sm128375705e9.30.2025.01.20.00.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 00:15:08 -0800 (PST)
Date: Mon, 20 Jan 2025 11:15:05 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
	Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Odelu Kukatla <quic_okukatla@quicinc.com>,
	Mike Tipton <mdptipton@quicinc.com>,
	Vivek Aknurwar <viveka@quicinc.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 1/5] interconnect: core: Add dynamic id allocation
 support
Message-ID: <0bca7854-aa27-48c6-8612-bcecc7b68c65@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250111161429.51-2-quic_rlaggysh@quicinc.com>

Hi Raviteja,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Raviteja-Laggyshetty/interconnect-core-Add-dynamic-id-allocation-support/20250112-001756
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250111161429.51-2-quic_rlaggysh%40quicinc.com
patch subject: [PATCH V7 1/5] interconnect: core: Add dynamic id allocation support
config: arm-randconfig-r072-20250118 (https://download.01.org/0day-ci/archive/20250120/202501201530.UTAPd4lC-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project c23f2417dc5f6dc371afb07af5627ec2a9d373a0)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202501201530.UTAPd4lC-lkp@intel.com/

smatch warnings:
drivers/interconnect/core.c:889 icc_node_create_alloc_id() warn: inconsistent returns 'global &icc_lock'.

vim +889 drivers/interconnect/core.c

65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  867  struct icc_node *icc_node_create_alloc_id(int start_id)
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  868  {
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  869  	struct icc_node *node;
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  870  	int id;
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  871  
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  872  	mutex_lock(&icc_lock);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  873  
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  874  	node = kzalloc(sizeof(*node), GFP_KERNEL);

Do this allocation before taking the mutex_lock(&icc_lock).  Otherwise
you'd have to unlock before returning.

65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  875  	if (!node)
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  876  		return ERR_PTR(-ENOMEM);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  877  
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  878  	id = idr_alloc(&icc_idr, node, start_id, 0, GFP_KERNEL);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  879  	if (id < 0) {
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  880  		WARN(1, "%s: couldn't get idr\n", __func__);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  881  		kfree(node);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  882  		node = ERR_PTR(id);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  883  		goto out;
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  884  	}
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  885  	node->id = id;
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  886  out:
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  887  	mutex_unlock(&icc_lock);
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  888  
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11 @889  	return node;
65971f5d716cb8 Raviteja Laggyshetty 2025-01-11  890  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


