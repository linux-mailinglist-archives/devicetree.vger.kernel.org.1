Return-Path: <devicetree+bounces-209213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB66CB35368
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 07:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C0AE3B7C1D
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 05:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B368E2EDD78;
	Tue, 26 Aug 2025 05:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OCZe3bDn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFFF2E7635
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756186571; cv=none; b=pleQZ0GLZjmZrnBHVxY6gmIcmRG98JeolVrqiOOCq1BXagMrTBifx9N60FDWOp08ieSbIfCd0VMD5XEpbbk6DH61sGS4dcCEOL0DqhAUa0buIcKdM5i6bzI4Zpq3nuvregCXCOd8PzBZmYraRZjRGBNivKJ5KNMy68/sPCmxCZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756186571; c=relaxed/simple;
	bh=Vc8HqLk1oNkBJVvIOq+E2XUgPQ4z9TxRdkU64UpWBIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lqtE9AKt4549a7XHFnmMVRil/cGHDiqg40ElPe1e2/Z9CUVC8NU292IMpaYqWB5s3eP7lx17Kzzf/M7eE8vdlZToEgQnUEOGcSfHcUL66Vv6E5D+mdaWBN23MTN3aAx/82awtru0Jsd7zCvlkeOn0s4aouk8aq5mm3HU/8ndTy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OCZe3bDn; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-3254e80ba08so3289973a91.1
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756186569; x=1756791369; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+T8E42RqnU9AlmkM6EHxWJjzsznN4WvgoYoMrFYbi0w=;
        b=OCZe3bDneGBpEZ6VDbisda62W5hTC6i4U/27+v+8qx67MI5qdfNlloEr8QF4XGZ9ua
         /SZY6tnaifxaLsUuYUCZDjH0x4opJ8hzF+/HgcpPzbc/UCU7iyWv4SUGPYN+W47WqU6b
         vsH2uKvYlwsHDrJahQEyzoDWNFeUGWRKdntYoDlMlJx7AwipCuJ5dk7p3gNT0xGScDEk
         q1aD0oBeOw4KurRQ6jsuX91ZRB+1e8LNiK2f+hO9/Zw03e/IzhpQQ/MwkuXFu1v03gwh
         hE7sXeThdVaqpMuXZM3jypg9W2XejQBIaddpRn8BjE2g4IKiJJcLEmfL40w7OfEg7XRm
         uPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756186569; x=1756791369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+T8E42RqnU9AlmkM6EHxWJjzsznN4WvgoYoMrFYbi0w=;
        b=jRgQ7cXAFI6faLgLUXf8PBf48IGDnOX/hsFYC2WDTUn4o7Jt0SnmOFPaNdWtRXkZWw
         qICi7/eSst3OvQnQHdRynQaD60keoIKZqK0ma8sGfhLZWQT7z0YZGf9ac4mlm9xPMi+o
         1nv/6buVk3zc1xKz3doXxFNAzyLA+khTT/5SAuCvQYeBMH4UKjuCR1NjEHsi0tk7BvRX
         /YJ1wo1MozGeuBs8fMT20l9a/RL2wuKSkv2su7Eq6F3dhrqhEPmuItSBHRv8K/NoUp8I
         RpayNoe+SvVQXvdFHKHOjXHRCmoVIYRE9+7K4waH5578/xD0HlN1+GeTX4a5c2U+fNNA
         EvTg==
X-Forwarded-Encrypted: i=1; AJvYcCVJqltLewBx7ettJiGDoHzFrTcVLzEOMd4GUyXVEs1TnR6c6z9KxA46ylGwPdAQOAxGhcUb7se23URZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ1RuHm93IzK+y9JBnOeCPr9niKblJGaR8Dczn6r7u6f5PIQFE
	xdMH9tDgTSA/bf00dZDGacmHygMra8bVah49vIeqjvZAkpPzhMv7kcMwqzHTWnmZMyI=
X-Gm-Gg: ASbGnctfRjqy6qiW9XYOHof5nXrCcVmmkUOPmW2DrHBUua9H+ncd+oKUvjU58q8XvZJ
	TtF3HXQi9L0N3GJD3sy+C9AijoLH3RNL0LmG4qJLU16B66KWBAa9Re5SE736ivl2VOWjeIYkcAR
	s6zHEkVT3aG4ftlbMorUPqbsNAoEReMVqxSHyfiIvVv8jTyGbOptNMH+aE0BnrwB6oDr2jtE3oV
	2V0oEzQxhcp0d0y6knU/yahYFyAGk7Wjkra6+YZ0Bis6DoT8cAvbAQOhrx5n0XlHSqrxuHyaFjC
	KakXjyMEE0Ain/2FJp8evvaQVgctSASNZQZsdfekphEupOUXwMpycucxyZrY3SpOgY9UG44xJzd
	ARFYOsxd2wXP30XBzHmtsC4jGJv4LBmYmM+s=
X-Google-Smtp-Source: AGHT+IGfTwYFjftBJaGFXjmow3/nCWDDyflG6zroy2YezNtKf+oppQf+YsobL05QgCGAZlmQXU0dtw==
X-Received: by 2002:a17:902:c408:b0:240:2281:bd0e with SMTP id d9443c01a7336-2462edecaa4mr206705865ad.2.1756186569430;
        Mon, 25 Aug 2025 22:36:09 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246ed91ee20sm32288035ad.136.2025.08.25.22.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:36:08 -0700 (PDT)
Date: Tue, 26 Aug 2025 11:06:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/7] OPP: Add support to find OPP for a set of keys
Message-ID: <20250826053606.zktmwgfdwymizv6k@vireshk-i7>
References: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
 <aKyS0RGZX4bxbjDj@hu-wasimn-hyd.qualcomm.com>
 <20250826052057.lkfvc5njhape56me@vireshk-i7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826052057.lkfvc5njhape56me@vireshk-i7>

On 26-08-25, 10:50, Viresh Kumar wrote:
> On 25-08-25, 22:14, Wasim Nazir wrote:
> > Kernel log:
> > Unable to handle kernel NULL pointer dereference at virtual address 0000000000000016
> > ...
> > Call trace:
> >  _read_bw+0x0/0x10 (P)
> >  _find_key+0xb8/0x194
> >  dev_pm_opp_find_bw_floor+0x54/0x8c
> >  bwmon_intr_thread+0x84/0x284 [icc_bwmon]
> >  irq_thread_fn+0x2c/0xa8
> >  irq_thread+0x174/0x334
> >  kthread+0x134/0x208
> >  ret_from_fork+0x10/0x20
> 
> Hmm, this happened because it is possible for the `opp` to be invalid
> (error) even if `_compare_floor()` returned true, if the target key is
> lower than the lowest freq of the table.
> 
> Dropped the patch for now anyway.

Can you help me testing this over your failing branch please ?

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 81fb7dd7f323..5b24255733b5 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -554,10 +554,10 @@ static struct dev_pm_opp *_opp_table_find_key(struct opp_table *opp_table,
        list_for_each_entry(temp_opp, &opp_table->opp_list, node) {
                if (temp_opp->available == available) {
                        if (compare(&opp, temp_opp, read(temp_opp, index), *key)) {
-                               *key = read(opp, index);
-
-                               /* Increment the reference count of OPP */
-                               dev_pm_opp_get(opp);
+                               if (!IS_ERR(opp)) {
+                                       *key = read(opp, index);
+                                       dev_pm_opp_get(opp);
+                               }
                                break;
                        }
                }

-- 
viresh

