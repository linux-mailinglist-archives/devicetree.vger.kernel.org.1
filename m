Return-Path: <devicetree+bounces-122420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9D9D0867
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 05:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB0E3B215B3
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 04:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BCC13B5AF;
	Mon, 18 Nov 2024 04:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B4/KSTPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AA07F460
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 04:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731904164; cv=none; b=Mk3zxyJxTYxbKF0Bw8Dk+8rGr90i1WMBDUMssODK3S/rCv4VE27U8Z0WHbpWyVnJKJcbg7Nc5UC7C4LqSCDDDPWCIUZGWk3h3D5JAeECzouGJSV9acPXkNzp7aOFlOCvdVbToQM7wWG9BigGNfr8yV6arlD651B8RnaXyXJldV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731904164; c=relaxed/simple;
	bh=c2FNU8VAqZPHoHfsNxtkxDSwUZw0mk7UWoaRmwhIM8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VYFaTYlBA9p1nJghVRwb7Wqp8WOwPvuS1qRMztO/FLsTXHqAyEBcVm7obtPzfsnpePNvXuAu4m5AoOfbPXmtoTyaPkaLtrvznyPYpDeMpdjl5qsImZvhXO7hCfFgK8ej+md5fJ4YORLOe2cpgBVH6FMcXZyzwDDxxPZAQZUYq60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B4/KSTPC; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7f8095a200eso2579953a12.1
        for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 20:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731904162; x=1732508962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aRkzvR9JmsuEZqEzWfsXbEtv0Qql+USooOaHLs0v1jE=;
        b=B4/KSTPCoshvGy7HGueX5eUHsNduJli91Wg+XW6TeBtPz9u9s0CPr2RnkA+9nJ5Kbh
         vXF5pdaT4LcQrl5CyOLfRdnHwPfVe0SU4qE/lG+FKnCE5fUjH1MYjdX/Teab3z5ttW2V
         Ek14xJdvbrn2Sm8gVSudv2ds8lJ0cswybPtNNTAQhvcd7wEBCMsvsESv32kkBxXRM1DY
         /CGEVS7nswWVFexy56CNXFjgGLY2fEHDcDMr7W90kn33hYWG3UtEvoYugjbxDbhY54WE
         u+xxCe9qOm0WAW30HnHbJ8I7cgoPfpKg28em+s9yxjPpwW1Sc8Uw4Q5HBW6yrEMOaoJN
         W6qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731904162; x=1732508962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aRkzvR9JmsuEZqEzWfsXbEtv0Qql+USooOaHLs0v1jE=;
        b=lJ0BVDGNUp5o1vI8O5w0SIGpW3/7VqYIhUfBaG/qUJyxvL+3sReQu3HD59MChnlV8g
         nJKsRDNXSDZsKK8YNxu1RQgFtHYC0PftbI0fNKAV4R6zaBr6bvMNv3+vLqYRSYSguMnM
         Hs90PWoZNxTcUJblcR1hbhwEjljh9mXysRFMNBV7X7DHUYPVx7M65RzH+7IPzmPevuai
         lRGrQTU7BaC9NOKAAX40qg4TQtErMelI0w4IEmMsfTGmdmklH1QvyOHmRpEXA+zhWPnc
         dENzjuuMxUYo6ZBHqZPuqqz1KXDHXX1jJDP2h1N9J6DQAVcaJsJZhcugK8scQ7V5BjTA
         E8Vg==
X-Forwarded-Encrypted: i=1; AJvYcCVp/EX1JhhtYfWmzGlwZrOzPCiY3BPy8abprM+20yeT4y4Izp1eO9xVm3x1AwPlgXpdbyy8g5Ye9Oga@vger.kernel.org
X-Gm-Message-State: AOJu0YxSqMB/DUHhDA0fa5ov8dDedSbQu7RPmLzIakjzAtV0bfkc/xm0
	DsCo0dd3MO6uj+9bLks1t7L0HObbrOJeP4tKN1Nm5Y3ET52MW6EiA0dkip90KR8=
X-Google-Smtp-Source: AGHT+IHXV546gfhTrcSiQ/5TtpVxbP+9uPHavmMf9YaowqUBMk7FcaExC7jCPXHHNGj4K/9+30ugTQ==
X-Received: by 2002:a05:6a20:7292:b0:1d7:e76:6040 with SMTP id adf61e73a8af0-1dc805101d9mr26904641637.4.1731904162120;
        Sun, 17 Nov 2024 20:29:22 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f8c1c16d0esm5016479a12.6.2024.11.17.20.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 20:29:21 -0800 (PST)
Date: Mon, 18 Nov 2024 09:59:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 0/2] Fix SC8180X cpufreq dt-bindings error
Message-ID: <20241118042919.cakfxwr6xkszxir2@vireshk-i7>
References: <20241116-topic-sc8180x_cpufreq_bindings-v1-0-e7db627da99c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241116-topic-sc8180x_cpufreq_bindings-v1-0-e7db627da99c@oss.qualcomm.com>

On 16-11-24, 12:31, Konrad Dybcio wrote:
> Add the bindings and dt bits to fix:
> 
> cpufreq@18323000: compatible: 'oneOf' conditional failed, one must be fixed:
>         ['qcom,cpufreq-hw'] is too short
> 
> No functional changes.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (2):
>       dt-bindings: cpufreq: cpufreq-qcom-hw: Add SC8180X compatible
>       arm64: dts: qcom: sc8180x: Add a SoC-specific compatible to cpufreq-hw

Applied. Thanks.

-- 
viresh

