Return-Path: <devicetree+bounces-198451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F0CB0D0CD
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 06:10:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2DF63A9D17
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 04:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6991628BAB0;
	Tue, 22 Jul 2025 04:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wr/BPF+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C3823FC52
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753157452; cv=none; b=b2Cjmqja1iYkBiN+HyNjCd5e6w1Msz1ShO/jjIzqoGQhBHoZV0/OzLMSDo/FTBwnSZr/7jxmHC6pR++Uj24u0zd19Ed+mrW+qW3+yFFj2OzfPZlJ38YQpmFtYpFN7QtJYUrUzimCEbaIOa3i/pPea9OAE7i8HRB6lGufKszY2G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753157452; c=relaxed/simple;
	bh=OqCNRS+72uajszDzG6n+T34z5A+LL4ACekiWWd6EEzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uCi8tVqjMvQIv5SyAaD2ZiGGnnKP1kTLeYnx706dCHWejBExzr0dct9BO6rKLwoQjZV92j1Tus0RAvm736oNdMzedrego9q8x7Fmi3ar56nHaCd3LZZiMz1iEcMOjgm/gQZrZhB+6xN2KJpdfy88dikcBBv3t2GnLFkR7hENpTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wr/BPF+v; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7490acf57b9so3414794b3a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753157449; x=1753762249; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nlBEY6HRx3gs6GmX9n8FOaCyjO7em88PtYwWGu+mg9c=;
        b=Wr/BPF+vf/8Jh980foQMoEUznzRA7ZAjuL3JQ+v8LvyydzqW1nNIZBWDXvAzE4qfAG
         xKz54LHvoq4IRfpFzYo2PWvqNb7t9Jsw5K5qRJl3rzI9EDyaMs+MAEx5wHm7BVGSJCni
         XBbs/wnGUmxlDyTtf6pIynJrBFtYJpk4pKxb7wvl/ct4gRuVTJXPB9WoVCdAMW3Z3RZK
         kA/r/AG90FM0V03YkXEJB5LwLCONJir1WUq7x2BkeFD/5LRLfr3bgZgBWqYN3ZGAQSsI
         uqa11XqJPLt0hXQmtGJHoCmLLj6v6MkaDP9QqdCCD5OrKqxIEpzhKbhOOWkiODpImmDh
         VqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753157449; x=1753762249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nlBEY6HRx3gs6GmX9n8FOaCyjO7em88PtYwWGu+mg9c=;
        b=GIZmJMDNPG73X9Xno+sVyfYjr3d/0n/KwIwq6oUYNIU9oOH1QOwbcnvL1hiZ6wZzQy
         87cMEOLThBrsWqfF/+iL4X51zKTPwtW13GUHDsSo963ULnUvyo/bXO/AvCfY4JOG+WaW
         BMZTf9vIzERLSAHVGfczjOfGbPw2CAmJLn+h7JwBQWBxNh2xtLXM/YHaHzWHMn9w3Nsx
         a19EidT9FlG68V2Wgrgx8xN+2/3a9R/qTN9Dyi5oRTckZ5pKzIrYmbHBPlKcl/XyqgL7
         5VBw3ynjowdLE0DzP12/w/VNKj8pXEHyWQbWIUeZnQ3q79gFdWnG08VyffWTAUebb0NU
         O2uA==
X-Forwarded-Encrypted: i=1; AJvYcCUtoa++TEIvWHelbCnQYPncZ0LLXtH40nFZzgTvNVsFGJz4Jo1J8ehHTf+mOcA7P6kyllpjoV/a89zL@vger.kernel.org
X-Gm-Message-State: AOJu0YyShqUGIP9+V/tuFPvqWxyIoHNl/EnMw5n3TS1vyWeJqA7ns6bh
	EnPJbaLIYWBI8ny6OKWogHMTHGmdQpMeTEbBylpq7WFLV83CIWF0irrmy8Q5aQEY6Rw=
X-Gm-Gg: ASbGncvbtOKPgDkD3hg/0OzknCt15+Gmw15Yl2T4Z8y5szIGwfhFARGCxlM3WvR4FvK
	0s9YynVv5ZREHGw4Q7G4p51WOABbyZMym0I10/UTFD7c7lt+i6RVQVQZW0SnSajW2Lfp7vPz+s2
	hrmK8BQzvlowHzFq4WOmGwAXZUlE7xoJLkK2Zu+m7Eslb+W0Pmq7ug/p6oRMz+X1Lm5+F6Gg2D5
	2vsh2KoaFRZ5XE+XtHRM47dGQwKJiufctGoTJfjvlRDBEi/trs9eSZ8W/pgoOJ4wcOCIe64bvJc
	++ub2UAJfXRKEKrntsrtv+olyUd42ggo6u/mzEkW0AdHDDO5rCG2b6LGiUse/9o4GCNKf+8ClV4
	8GgtALB9i7HBYRRim56DzG/EXh7ZKOj0D+w==
X-Google-Smtp-Source: AGHT+IHOKWMEzyu46KKsaJPjgo0xgycpcDzWx6CxVzgF6SZy+41yLFML71qXIxEHlqlltMpTlo5GzA==
X-Received: by 2002:a05:6a21:648a:b0:231:4bbc:ff09 with SMTP id adf61e73a8af0-2381313ca9bmr31553876637.36.1753157449486;
        Mon, 21 Jul 2025 21:10:49 -0700 (PDT)
Received: from localhost ([122.172.81.72])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759c84e2c91sm6537501b3a.5.2025.07.21.21.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 21:10:48 -0700 (PDT)
Date: Tue, 22 Jul 2025 09:40:46 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kernel@collabora.com, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 0/4] MT8196 CPUFreq Support
Message-ID: <20250722041046.lf4b267bmolm4exq@vireshk-i7>
References: <20250716-mt8196-cpufreq-v3-0-d440fb810d7e@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716-mt8196-cpufreq-v3-0-d440fb810d7e@collabora.com>

On 16-07-25, 19:51, Nicolas Frattaroli wrote:
> This series adds the necessary bindings and driver changes to integrate
> MT8196 CPUFreq into the existing mediatek-cpufreq-hw driver. This
> necessitated two preparatory cleanup patches to the driver.
> 
> The CPU frequency was verified to actually be changing by comparing
> sysbench cpu numbers between fdvfs being enabled and it not being
> enabled.
> 
> Enablement in the DT will be done once the MT8196 DT lands, so don't be
> surprised that no node uses these new compatibles so far.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
> Changes in v3:
> - bindings: changed title as per angelo's suggestions
> - bindings: dropped the fdvfs magic register range
> - bindings: dropped redundant description for #performance-domain-cells
> - driver: made fdvfs frequency divisor a `#define` instead of part of
>   the variant struct
> - driver: dropped fdvfs magic check
> - driver: reworked performance domain resource offset
> - Link to v2: https://lore.kernel.org/r/20250714-mt8196-cpufreq-v2-0-cc85e78855c7@collabora.com

Applied. Thanks.

-- 
viresh

