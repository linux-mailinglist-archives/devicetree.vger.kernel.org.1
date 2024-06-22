Return-Path: <devicetree+bounces-78670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B8E913105
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 02:03:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57E87282DAD
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 00:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AAA389;
	Sat, 22 Jun 2024 00:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qf/VQCAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55A9384
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 00:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719014632; cv=none; b=JnDm2dgmWLjxIWih+rdthKbYfl9KnZ3MWN1Q3RV9yd3QVeOWzN0k5sJe+AtlmtWdt5h0caAQB7DJH6YCsQQvUhxbTEUCprXKbnG+HWN1WMfYfaz7nXp4zvyuNNzcDpG+pXdyby/D2Iw00LvTWfqI2XNVXc6jpCQMBnYuxiXkY20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719014632; c=relaxed/simple;
	bh=W5jmkF9VzOPRk95mJ6Uru/a0aagONyomCnSUey+WzXU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lSp6IJDDM3saQlXo0/QbgyqLFW0ddsGTaE9NHco6wSeZHSNhxSxZGbpNJofayJazjcbsw7htF4VTeqEIKDg69IzYuN+J+hbEdFwOY4ff7vMXPREtn5ldfKj9Ur7AXcoKvgrexkOpRuB2k2uS7hmkOIP3RGbV6E34fwTKRur5h1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qf/VQCAE; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f70ec6ff8bso230755ad.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 17:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014630; x=1719619430; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iCP6tSo+yOJ1rdS9lI43GF2KwMHtS2oiHIov1YTCtMg=;
        b=qf/VQCAEv45NVv13My8Aw/fM2MlQ8DCHE8SycuA8wuvHPIXmTslvx1HAeterKs5VYZ
         KrvsQ7aGCLGUlU7+4dTiY/P37JwM2RgTNFBrcfvU5MAzhe2lWn0euZ1vZfNp+dtWBzOw
         hLPrBNTgcVD230pKefghXYFV3InIxdRaYj66ybtQhsDvlCJDPXGWpFL0NhwqBucftzJ8
         MwrpBv4rzaGkRRvxwIf0bwKr7d4g9dvehywZo/YEuvyiDqoNCKOnsrEvB/LI8GORRrun
         6ZxibytDeLgVcejaLwTUQktVHZ46FCHaDCHjqhIuO0K1+uK5Mkzx2RjP5O5Aq30YFe05
         2OVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014630; x=1719619430;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iCP6tSo+yOJ1rdS9lI43GF2KwMHtS2oiHIov1YTCtMg=;
        b=rPLqJCN/hPErS/tSA+tGCOnSN5aNp4TXarRzIgfiGtOkQc+C0l24JMndzWHXggt0tI
         Z/mNyHBFfBpaXPgjVVC7aZcU2EohffT8JZ1Bp1k8cEbo52CN9JVJTFE1FraEUdQRZ+4m
         Sw21BNjcUjdpzSEERWJ79a6a4mMW37NgJetB1ewIUmzlaMdjuaELdLhoeY+mb9LxjfPc
         soYCi39A717n1LUtZ+FQqFHvADipFLRU8DOpzE7lfgjzCrryTeDGh/dozYM9OMLv8PNE
         yj9fWdvNFk7dS/6MTdhzYDNfSB9AP1zRmwqzqd8hX6QjLFOSstQnutCXvO9CHlJFiTJ3
         esYg==
X-Forwarded-Encrypted: i=1; AJvYcCUdndWNXqJoGaYux44NiOBYeEEaJRVLCcAP1DdUagk4BQZVctTDGU+64FGxzh5qozEAvteoxQWM2IEXI9pnVHLpR3NRJjI4K9qeYA==
X-Gm-Message-State: AOJu0YzB2pZLvf+211SIxwWj06No47hCy60drMCt/u8VZ+zXCE1ut/fa
	R1QtOMSs7dYUUYGzu1sorCCEaCyahIJyW9C4iGmkE5mWpU5rs7iAgnFthO7roQ==
X-Google-Smtp-Source: AGHT+IFrgq8EqsNgVRlmEQB59B81JAeqM0bNnsNDFjNdU+51VRyc9DEIl9c7EVj/qaXXGfrlVQcJ9A==
X-Received: by 2002:a17:902:bc46:b0:1f8:6250:dfa5 with SMTP id d9443c01a7336-1fa0a29eedemr769945ad.28.1719014629760;
        Fri, 21 Jun 2024 17:03:49 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9ebbc8dbcsm19672865ad.307.2024.06.21.17.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:03:49 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:03:45 -0700
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 4/6] phy: exynos5-usbdrd: convert (phy) register
 access clock to clk_bulk
Message-ID: <ZnYU4TRR3gUbadWR@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>

On 06/17/2024, André Draszik wrote:
> In preparation for support for additional platforms, convert the phy
> register access clock to using the clk_bulk interfaces.
> 
> Newer SoCs like Google Tensor gs101 require additional clocks for
> access to additional (different) register areas (PHY, PMA, PCS), and
> converting to clk_bulk simplifies addition of those extra clocks.
> 
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

