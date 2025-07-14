Return-Path: <devicetree+bounces-196214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D38BB047FC
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 21:39:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 886AD1AA00C5
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6DC22B8A1;
	Mon, 14 Jul 2025 19:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F+lEts+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34A9229B0D
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 19:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752521985; cv=none; b=U/swJLWGYyLERUcISr+AFJ+7Kfdl/PDYJwbsWpXy9ei/EjBrLzcN/x5lEED43po5QE8TiMILB1RFt1FqaYDSivSWEQK23aORIg1r5Xls+0zqqV7X564CZOkxq+j6NujgZgz9/6R7AP//4AYr+4ZNarqUMGZHlJFzbgWBL3VtC/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752521985; c=relaxed/simple;
	bh=5cSCYdKyaKnlsB59d7LA/sqcozRwuYbnW6S02DziChQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=G4jCbnxXix+kczkKXWv+h5RgVpJiNRlRTHXl2PpC9mvOtnKke6S4JvY3dj04dZXnfV+ukKdMPVwGUPVNnAUVHFgX/oS0cEjC2y6j1N85UJXxzaIlJLNn3oz4TIKqziW+tCZ1p3gO2WDqHDUwWJbERqefwQtZ5l+K537KmHhkWgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F+lEts+O; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2ff8d43619cso299294fac.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752521983; x=1753126783; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=urOya2QD0PAv3aRyUi92qVBccHFN0GyUQM4mpsavCC0=;
        b=F+lEts+OFVJIPuwVRnJK5F1pfmdT8s0b33WyPl3yTSpNzYc94+Ra3pdGqSBX9oXkZj
         zc5FeOr9OPpCrRH3OUAE2AHItRNZXv0JzsCwrS4IQlZexQ/8ObfrLmgTilXyv757B5rS
         sqTbM4JjI/euxM6GVNOWtBwz4PURIWU2GnNKOmguIxcWb2WuED7OQjtuH7NqUTcKCrcL
         56GOombgsGoU6TcZCI8HQpOlxRl1dEo3smb1sYZGU5ks/yd7qjJOcwAinl9CsqCsUncx
         V5T4qgOOy2+0ZK5j+7fhFq23EbhI9FM6PgC2MHLNaBRI5iN7mCjmUfEL5q7DQXkvT2D6
         vpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752521983; x=1753126783;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=urOya2QD0PAv3aRyUi92qVBccHFN0GyUQM4mpsavCC0=;
        b=J7lN/hEGUH9JqfQs5+qYblfTBVWnfnq0KRU7z2KtBXGQoE0bee+fBIHd8xbJCrcxf5
         cyeDiI/2WwMSM4mo/Ei4VgwjgTmqhmdxHZM9s/aOeZRd3B/UE5kmz1oXNM0m5TQy5UsI
         7jxO/ADzvg6QQGYvv1r6nsJ0bbjw9V0VN6B5t2qjryTUuisQj/eHyNRKIz/gniZWhqc1
         hTku2o9l+ihfErI2q8cU3QkLT2GEaNG14KwgymqlURWZIdgbg4fC0e2Kpy5L4KUhVHPH
         Uqyqr/sQF4nZ639tje8cVOCGSjoaFezXx0fVs4LxDWEjJ+ZHaAf5Af0XbkYQJ8P/jStN
         eeLw==
X-Forwarded-Encrypted: i=1; AJvYcCWxrexufhUoUb79nnknHYcl9CU3gk0behiBDaLjB0rFWIlQ0ioEadjw5u788PNIC43nfFWdk6zx8N/L@vger.kernel.org
X-Gm-Message-State: AOJu0YzEPvMFdIy4o+RgsUbXabaj2J3xKteYFigvuHvad5B7n16Yj0iI
	UQqwHmVmnlL3gRiPPh8GWDDOF47reqtjW9ywmI30JK/oqOajQj806Pj4O2jWwREa8iA=
X-Gm-Gg: ASbGncsfI7RKkqbmiQ2iNLHcVdTaiZqIe+npr8iEVanMOqbaELpk3c0bCCS+ST8cEdM
	BgG3G3rzhgQmMLjGa2vQj00EXNYFhxs2/e7x41/4igW8Q9YGu7VQC/r1HmCr8lxXoHgc9jqZORq
	k/yxYP8WfDzU3oou1wCHcA6qJfkgF9IgsCrw1Eme7HpeqhUBtDlvv+MhIo2H9AgXBfMHPfNEDmV
	b6I3cnN2xmZv0HDgTGzFLbAypQHs82RO79PtBfHhIlYH1muI9MNB/i1dDCUM75dGRVUjyS7fPpw
	RI6v4ZyYhhMgMr4GO3qX6n9UK+uAVqjtVK9XlgfBol/gxPxSsVvs3G8evp+ws8dPRY45h8CSAfw
	s0EfavdHHHSSeURBAfNS4YCUqUn2Biw==
X-Google-Smtp-Source: AGHT+IG9YCfy/a8BjNGBo1GzQjJuR8GmP8UR9cv+uwP5yDJexmfxPdWGAOu8EtDFH9IyIV9EN6mZeg==
X-Received: by 2002:a05:6870:c03:b0:296:bbc8:4a82 with SMTP id 586e51a60fabf-2ff2706c894mr10579426fac.27.1752521982792;
        Mon, 14 Jul 2025 12:39:42 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6bb2:d90f:e5da:befc])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73cf12b62e8sm1674368a34.60.2025.07.14.12.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 12:39:42 -0700 (PDT)
Date: Mon, 14 Jul 2025 22:39:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	=?iso-8859-1?Q?Cl=E9ment?= Le Goffic <clement.legoffic@foss.st.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jonathan Corbet <corbet@lwn.net>,
	Gatien Chevallier <gatien.chevallier@foss.st.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	Le Goffic <legoffic.clement@gmail.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Cl=E9ment?= Le Goffic <clement.legoffic@foss.st.com>
Subject: Re: [PATCH v2 09/16] perf: stm32: introduce DDRPERFM driver
Message-ID: <1fd92742-0958-4f64-8e50-4d0595fe74eb@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250711-ddrperfm-upstream-v2-9-cdece720348f@foss.st.com>

Hi Clément,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Cl-ment-Le-Goffic/bus-firewall-move-stm32_firewall-header-file-in-include-folder/20250712-030518
base:   d7b8f8e20813f0179d8ef519541a3527e7661d3a
patch link:    https://lore.kernel.org/r/20250711-ddrperfm-upstream-v2-9-cdece720348f%40foss.st.com
patch subject: [PATCH v2 09/16] perf: stm32: introduce DDRPERFM driver
config: sh-randconfig-r071-20250712 (https://download.01.org/0day-ci/archive/20250712/202507122125.eve8lg60-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.4.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202507122125.eve8lg60-lkp@intel.com/

smatch warnings:
drivers/perf/stm32_ddr_pmu.c:380 stm32_ddr_pmu_get_counter() warn: variable dereferenced before check 'pmu' (see line 376)
drivers/perf/stm32_ddr_pmu.c:380 stm32_ddr_pmu_get_counter() warn: variable dereferenced before check 'event' (see line 377)

vim +/pmu +380 drivers/perf/stm32_ddr_pmu.c

73af3c4ba702d7 Clément Le Goffic 2025-07-11  374  static int stm32_ddr_pmu_get_counter(struct stm32_ddr_pmu *pmu, struct perf_event *event)
73af3c4ba702d7 Clément Le Goffic 2025-07-11  375  {
73af3c4ba702d7 Clément Le Goffic 2025-07-11 @376  	u32 time_cnt_idx = pmu->cfg->time_cnt_idx;
                                                                           ^^^^^^^^

73af3c4ba702d7 Clément Le Goffic 2025-07-11 @377  	u32 config = event->attr.config;
                                                                     ^^^^^^^

73af3c4ba702d7 Clément Le Goffic 2025-07-11  378  	struct stm32_ddr_cnt *cnt;
73af3c4ba702d7 Clément Le Goffic 2025-07-11  379  
73af3c4ba702d7 Clément Le Goffic 2025-07-11 @380  	if (!pmu || !event)
                                                            ^^^^^^^^^^^^^^
Checks are too late.  The variables have already been dereferenced.

73af3c4ba702d7 Clément Le Goffic 2025-07-11  381  		return -EINVAL;
73af3c4ba702d7 Clément Le Goffic 2025-07-11  382  
73af3c4ba702d7 Clément Le Goffic 2025-07-11  383  	pmu->selected_set = GROUP_VALUE(config);
73af3c4ba702d7 Clément Le Goffic 2025-07-11  384  
73af3c4ba702d7 Clément Le Goffic 2025-07-11  385  	if (config == TIME_CNT) {

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


