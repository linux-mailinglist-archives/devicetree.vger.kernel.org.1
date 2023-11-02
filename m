Return-Path: <devicetree+bounces-13537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2827DEC44
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 06:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1956AB20E92
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 05:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7161FCA;
	Thu,  2 Nov 2023 05:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kU2w6Jhj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B311851
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 05:30:20 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26896116
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 22:30:16 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-280137f1a1bso549273a91.1
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 22:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698903015; x=1699507815; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JKCEzf5yVHcpzkImikTuiO91O0VK+CR5uA5YIy3x1ew=;
        b=kU2w6Jhj8XZy/W2bEICFrHfug8qqWmT1twPkLkSsHbXASZ4b4Nmw4XyfHANykw7ON2
         ZANemY5oNRoXQQEB4XxPfUS5+kr6dZtGp+WGchK1phtfc+IRPMw9YtB/GRQPcn/tf+Gn
         sch+K7b7OAPTvYrSumF/83GyzifyKRfKCVy9WrrdK1vGPFHHCarMjMJYQ2bu1usCQSeP
         lcKaxfYC88Y3iC3Uet/q1llpCFpBEk9teiqCIvxHZNevLw4sVBML4t04kaW6qEuivMiT
         asCfSojo9rkXEW1KJ3/IqI/iS7Ig7DxtojT/gguGFCWLRjYLxRe45Te7XsotbqSBVUEM
         MPiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698903015; x=1699507815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JKCEzf5yVHcpzkImikTuiO91O0VK+CR5uA5YIy3x1ew=;
        b=YeD1mwughuTsRL9RnS/0fWfDt/u2V3IfGZBu3VU0KuqPgoURsOBarUX43jqXwCt2CT
         MPKmozkVYo4yQtzVWYE3QfKJ3BT6dQVsg0DsKo2+U+0TWXpHpcolJmqYN1y4iqkkDHxg
         JgWIGtiCRJetFKEq/kv18HFbtlvkVpRMcosAJC4fCGrU/qeC9brc8yjWJC0yHQrT/v6i
         cwziOl97EfBf1IPQMaMiItkiqVfG8JFxkMKhFiHrjI9r1ZRnPVYXLR0g5yrczjBAVb3A
         YP7mnWrMNgFz8YWi7HzlA7ugHW+7OKBBJsQWQ152s+UWH9+A8Yf2eObr15dfMQaKiMJP
         GqcQ==
X-Gm-Message-State: AOJu0Yx1TW53/UwhO8OEi4oUG/oWYrl5UzWvpd0eVFhRbxdNSD4LBjJq
	0o1y7HphX9oLHV/RmCzZGF4ErA==
X-Google-Smtp-Source: AGHT+IG3F8uXNqd5WC2MJ/q+sokfpm9k5oUWZuAemt4onAJ/8yGMHkAdTP+qn3Wq/lucbP1uCp1EJQ==
X-Received: by 2002:a17:90a:9b03:b0:280:1d6c:a6a8 with SMTP id f3-20020a17090a9b0300b002801d6ca6a8mr13213526pjp.23.1698903015532;
        Wed, 01 Nov 2023 22:30:15 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id i1-20020a17090aee8100b0028012be0764sm1648185pjz.20.2023.11.01.22.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 22:30:15 -0700 (PDT)
Date: Thu, 2 Nov 2023 11:00:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 5/5] PCI: qcom: Add OPP support to scale performance
 state of power domain
Message-ID: <20231102053013.7yt7pxin5awlu7w7@vireshk-i7>
References: <1694066433-8677-6-git-send-email-quic_krichai@quicinc.com>
 <20231101221742.GA101112@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101221742.GA101112@bhelgaas>

On 01-11-23, 17:17, Bjorn Helgaas wrote:
> Can you expand "OPP" somewhere so we know what it stands for?  I'm
> sure everybody knows except me :)

It is "Operating Performance Points", defined here:

Documentation/power/opp.rst

-- 
viresh

