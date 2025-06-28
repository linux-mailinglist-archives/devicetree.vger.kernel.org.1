Return-Path: <devicetree+bounces-190633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BB1AEC463
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 05:06:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97EBD7B4D6D
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 03:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0723A1E7C1C;
	Sat, 28 Jun 2025 03:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jsoz9RS1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6091371747
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751079987; cv=none; b=YLhWb+SAWTYvw/mSnGM+sbSwrpKorZVElw9q7viIm31rnGadNTwgzkXge0BDr+HcQvLFGMheyh7x4tmJMX6bG1KplDUEOH9LGX+WM7X3yqTgYpQhjDXQGnvOGQLDwgt4ioAA0UgIsYSpznHF1sLSAD1iZQ2ZRriy7vufMBVG89o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751079987; c=relaxed/simple;
	bh=m8m69wBxoa70iYG/AkNYrAydwapxurq3re3bN3EdVPo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=noL+9abUtK7xK8rHNTlJ4xEZByZ0sQEYjn5NKX6b8SjjBNDlCagps1e5GVoe9+6fkSsyBVbzyZsyDU+aSj0SGe0sSlNrNQEaQ4PTdRuNDvllVe2wmMoRv0fBxHlJakUuZ3cUNSokY+Gh5flwAKwXTJk8zyBbx4UMjvdIFmQvlqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jsoz9RS1; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-407a6c6a6d4so912941b6e.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 20:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751079984; x=1751684784; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+DXADkH4z/dqRdq68mh0r6FXp5vcnYDgDeOvMHMlJB4=;
        b=jsoz9RS18CJbXJTZPtfCZRxrOby0rMJjz6RRlfoll4rkoql0GQWxSiZSTgFeoCvWGe
         gFI7ykzmUrgjXd8wCINgBb6wlo1C8T/QROMei3c1XdF/rS4uNj/r18QkFeSjN7wqWlwr
         QmyKeGSn0FeNDY9izOPli74Zi2rcWYPTsrPCZWmsG3De9Oq/gpbpb9o82IiD8h7w7Y/G
         I8Ovg/hXSkGYJDCzkGnMZA+b4IS95IhViVwDMrQczIDBac3/hhAXkp9y8MYNLJvTl+GS
         /B1QBxlvDrP1g8WV4pMQ9cDkdFlcnB/+Ptzvs5MFYVQaZIF5+XOLmyPSiDqcJ1W2e5bJ
         DTWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751079984; x=1751684784;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+DXADkH4z/dqRdq68mh0r6FXp5vcnYDgDeOvMHMlJB4=;
        b=VAFBIjaYe6v3Ddwx+cJmNLxsdsv+Xb9AREE1p74pMqq2KS6kBFKbZcSkJcFl6Fk7um
         YLnOYzkgljJYXMnJB5x4VVBzdRt92gcukYtczs082A5TylxIrvMRoGuqyBTrYvvBsUqB
         7jlaJW4sSAdvcf8IAerlbrMS7QtO01KRQFhIQkQYtqB+TphCliIU954l2uNB8LCFXHty
         KUsNI2rWmRc2b1Dq1UToiiLjRMuSIGqkg/MT89qqmbqaowgxMnuy5jaX871eRUXTAV3N
         N2SwlZTzXyviS21EnLSfSDHbKcwufHj9xAg6GmKi9otTPijZ64+8e8rutL2JxY+DeNCF
         RVIw==
X-Forwarded-Encrypted: i=1; AJvYcCXqp6JK+b9vjQyiBkI6vNbDXGh5uQYyyM4T7w/pRsdDYavNER3/Ssopt7trXPhnk9fdnWZet2/raQJS@vger.kernel.org
X-Gm-Message-State: AOJu0YzYqVV7FWDD8s1DW09vt4jFrlP7YuaJBKzEzYIAnvH0KlU5Rd8C
	QsABvU7wfrWsvC+Urbxs4FlPpU8FzaNJCsMdDZq9pVh1A2CN+zoNCiK8h6/Ik14W8GU=
X-Gm-Gg: ASbGncvfr9vfzix8k7v5NpvUBNPWBozNO8pWqqcgkJQpW0GHL6txf0QA7PtQU3JL72A
	i6l/wJAW9M2B9RDHqnt7/grs7jVGmb6MHSEMRVuxIF+ruGGpzr6Xc9L9CPvWKSTyBHSkvAAW0r5
	9HRdRn2q1lXjJn2JOMMId4Sx5jxP3USnZm8vftTqbEx+BbR4HsTssYsiEsKpCerhz661O5VYwrc
	r9mKlvyz32QjYvnbZXkdRggtNkxCvrL/QTXdB84OMFCcKrC6jhkbuBTQbHSiAXvfeNnRYqfDkgJ
	AZcoC4dc4e6MFSY171jC6m1fd4aIUaRC4doQm4DpWfnT91nRu/W29yqB/JpRJqXKjgVZKg==
X-Google-Smtp-Source: AGHT+IEJK35BgYnFuVJFF0JcThYpOULgF65Vp04oXBqm1k+Bh5TYhhKk0mrjvzQiO5c5WlsFNnYEiA==
X-Received: by 2002:a05:6808:1688:b0:403:51ac:2400 with SMTP id 5614622812f47-40b33c6cd8amr4677760b6e.11.1751079984347;
        Fri, 27 Jun 2025 20:06:24 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:f3a4:7b11:3bf4:5d7b])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b322c1e25sm645446b6e.20.2025.06.27.20.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 20:06:23 -0700 (PDT)
Date: Sat, 28 Jun 2025 06:06:21 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] soc: qcom: pmic_glink: Add support for subsystem
 restart (SSR)
Message-ID: <92cbdf26-7205-40bb-8863-b35b6fabd32b@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250624225535.2013141-3-anjelique.melendez@oss.qualcomm.com>

Hi Anjelique,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Anjelique-Melendez/dt-bindings-soc-qcom-qcom-pmic-glink-Add-qcom-subsys-name-property/20250625-070209
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250624225535.2013141-3-anjelique.melendez%40oss.qualcomm.com
patch subject: [PATCH 2/2] soc: qcom: pmic_glink: Add support for subsystem restart (SSR)
config: x86_64-randconfig-161-20250627 (https://download.01.org/0day-ci/archive/20250628/202506280819.vRUvImej-lkp@intel.com/config)
compiler: clang version 20.1.7 (https://github.com/llvm/llvm-project 6146a88f60492b520a36f8f8f3231e15f3cc6082)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202506280819.vRUvImej-lkp@intel.com/

smatch warnings:
drivers/soc/qcom/pmic_glink.c:360 pmic_glink_probe() warn: passing zero to 'PTR_ERR'

vim +/PTR_ERR +360 drivers/soc/qcom/pmic_glink.c

58ef4ece1e41ac Bjorn Andersson    2023-01-31  301  static int pmic_glink_probe(struct platform_device *pdev)
58ef4ece1e41ac Bjorn Andersson    2023-01-31  302  {
ff642773b6b5b8 Neil Armstrong     2023-03-21  303  	const unsigned long *match_data;
56e992f9beb5f6 Anjelique Melendez 2025-06-24  304  	const char *subsys_name = NULL;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  305  	struct pdr_service *service;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  306  	struct pmic_glink *pg;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  307  	int ret;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  308  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  309  	pg = devm_kzalloc(&pdev->dev, sizeof(*pg), GFP_KERNEL);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  310  	if (!pg)
58ef4ece1e41ac Bjorn Andersson    2023-01-31  311  		return -ENOMEM;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  312  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  313  	dev_set_drvdata(&pdev->dev, pg);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  314  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  315  	pg->dev = &pdev->dev;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  316  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  317  	INIT_LIST_HEAD(&pg->clients);
9329933699b32d Bjorn Andersson    2024-04-30  318  	spin_lock_init(&pg->client_lock);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  319  	mutex_init(&pg->state_lock);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  320  
ff642773b6b5b8 Neil Armstrong     2023-03-21  321  	match_data = (unsigned long *)of_device_get_match_data(&pdev->dev);
4db09e7b967b90 Dmitry Baryshkov   2023-10-25  322  	if (!match_data)
4db09e7b967b90 Dmitry Baryshkov   2023-10-25  323  		return -EINVAL;
4db09e7b967b90 Dmitry Baryshkov   2023-10-25  324  
ff642773b6b5b8 Neil Armstrong     2023-03-21  325  	pg->client_mask = *match_data;
ff642773b6b5b8 Neil Armstrong     2023-03-21  326  
f79ee78767ca60 Rob Clark          2024-02-17  327  	pg->pdr = pdr_handle_alloc(pmic_glink_pdr_callback, pg);
f79ee78767ca60 Rob Clark          2024-02-17  328  	if (IS_ERR(pg->pdr)) {
f79ee78767ca60 Rob Clark          2024-02-17  329  		ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->pdr),
f79ee78767ca60 Rob Clark          2024-02-17  330  				    "failed to initialize pdr\n");
f79ee78767ca60 Rob Clark          2024-02-17  331  		return ret;
f79ee78767ca60 Rob Clark          2024-02-17  332  	}
f79ee78767ca60 Rob Clark          2024-02-17  333  
ff642773b6b5b8 Neil Armstrong     2023-03-21  334  	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI)) {
ff642773b6b5b8 Neil Armstrong     2023-03-21  335  		ret = pmic_glink_add_aux_device(pg, &pg->ucsi_aux, "ucsi");
58ef4ece1e41ac Bjorn Andersson    2023-01-31  336  		if (ret)
f79ee78767ca60 Rob Clark          2024-02-17  337  			goto out_release_pdr_handle;
ff642773b6b5b8 Neil Armstrong     2023-03-21  338  	}
ff642773b6b5b8 Neil Armstrong     2023-03-21  339  	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE)) {
ff642773b6b5b8 Neil Armstrong     2023-03-21  340  		ret = pmic_glink_add_aux_device(pg, &pg->altmode_aux, "altmode");
ff642773b6b5b8 Neil Armstrong     2023-03-21  341  		if (ret)
ff642773b6b5b8 Neil Armstrong     2023-03-21  342  			goto out_release_ucsi_aux;
ff642773b6b5b8 Neil Armstrong     2023-03-21  343  	}
ff642773b6b5b8 Neil Armstrong     2023-03-21  344  	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT)) {
58ef4ece1e41ac Bjorn Andersson    2023-01-31  345  		ret = pmic_glink_add_aux_device(pg, &pg->ps_aux, "power-supply");
58ef4ece1e41ac Bjorn Andersson    2023-01-31  346  		if (ret)
58ef4ece1e41ac Bjorn Andersson    2023-01-31  347  			goto out_release_altmode_aux;
ff642773b6b5b8 Neil Armstrong     2023-03-21  348  	}
58ef4ece1e41ac Bjorn Andersson    2023-01-31  349  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  350  	service = pdr_add_lookup(pg->pdr, "tms/servreg", "msm/adsp/charger_pd");
58ef4ece1e41ac Bjorn Andersson    2023-01-31  351  	if (IS_ERR(service)) {
58ef4ece1e41ac Bjorn Andersson    2023-01-31  352  		ret = dev_err_probe(&pdev->dev, PTR_ERR(service),
58ef4ece1e41ac Bjorn Andersson    2023-01-31  353  				    "failed adding pdr lookup for charger_pd\n");
f79ee78767ca60 Rob Clark          2024-02-17  354  		goto out_release_aux_devices;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  355  	}
58ef4ece1e41ac Bjorn Andersson    2023-01-31  356  
56e992f9beb5f6 Anjelique Melendez 2025-06-24  357  	if (device_property_present(&pdev->dev, "qcom,subsys-name")) {
56e992f9beb5f6 Anjelique Melendez 2025-06-24  358  		device_property_read_string(&pdev->dev, "qcom,subsys-name", &subsys_name);
56e992f9beb5f6 Anjelique Melendez 2025-06-24  359  		if (!subsys_name) {
56e992f9beb5f6 Anjelique Melendez 2025-06-24 @360  			ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->ssr_handle),

s/PTR_ERR(pg->ssr_handle)/-EINVAL/;

56e992f9beb5f6 Anjelique Melendez 2025-06-24  361  					"failed to read subsys_name string from dt\n");
56e992f9beb5f6 Anjelique Melendez 2025-06-24  362  			goto out_release_aux_devices;
56e992f9beb5f6 Anjelique Melendez 2025-06-24  363  		}
56e992f9beb5f6 Anjelique Melendez 2025-06-24  364  		pg->ssr_nb.notifier_call = pmic_glink_ssr_callback;
56e992f9beb5f6 Anjelique Melendez 2025-06-24  365  		pg->ssr_handle = qcom_register_ssr_notifier(subsys_name, &pg->ssr_nb);
56e992f9beb5f6 Anjelique Melendez 2025-06-24  366  		if (IS_ERR(pg->ssr_handle)) {
56e992f9beb5f6 Anjelique Melendez 2025-06-24  367  			ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->ssr_handle),
56e992f9beb5f6 Anjelique Melendez 2025-06-24  368  					"failed adding ssr notifier\n");
56e992f9beb5f6 Anjelique Melendez 2025-06-24  369  			goto out_release_aux_devices;
56e992f9beb5f6 Anjelique Melendez 2025-06-24  370  		}
56e992f9beb5f6 Anjelique Melendez 2025-06-24  371  	}
56e992f9beb5f6 Anjelique Melendez 2025-06-24  372  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  373  	mutex_lock(&__pmic_glink_lock);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  374  	__pmic_glink = pg;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  375  	mutex_unlock(&__pmic_glink_lock);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  376  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  377  	return 0;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  378  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  379  out_release_aux_devices:
ff642773b6b5b8 Neil Armstrong     2023-03-21  380  	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
58ef4ece1e41ac Bjorn Andersson    2023-01-31  381  		pmic_glink_del_aux_device(pg, &pg->ps_aux);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  382  out_release_altmode_aux:
ff642773b6b5b8 Neil Armstrong     2023-03-21  383  	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
58ef4ece1e41ac Bjorn Andersson    2023-01-31  384  		pmic_glink_del_aux_device(pg, &pg->altmode_aux);
ff642773b6b5b8 Neil Armstrong     2023-03-21  385  out_release_ucsi_aux:
ff642773b6b5b8 Neil Armstrong     2023-03-21  386  	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
ff642773b6b5b8 Neil Armstrong     2023-03-21  387  		pmic_glink_del_aux_device(pg, &pg->ucsi_aux);
f79ee78767ca60 Rob Clark          2024-02-17  388  out_release_pdr_handle:
f79ee78767ca60 Rob Clark          2024-02-17  389  	pdr_handle_release(pg->pdr);
58ef4ece1e41ac Bjorn Andersson    2023-01-31  390  
58ef4ece1e41ac Bjorn Andersson    2023-01-31  391  	return ret;
58ef4ece1e41ac Bjorn Andersson    2023-01-31  392  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


