Return-Path: <devicetree+bounces-203181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA82BB20425
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 100E3167B56
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AABA82DFA37;
	Mon, 11 Aug 2025 09:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZrwLBJ6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2B82DCF6C
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754905498; cv=none; b=H59Y1fH6VJuICWmcPPH0pPb8JTSjtJ/Ne286zvLl3lt94c3Qd2+bcPaWZANoruORemVx12LUX7uhuysmuptx3gojaM2Ts+gyudeP6gsxnowfJ/jcHSFu5YvHC4EDcA9tq/vJw1E49pjkGdeBA7xx6rI2EZKBLOJcSeIPiiRowZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754905498; c=relaxed/simple;
	bh=oOOiZ1lqQ3eCOyBC4RUT7MgiecSXIg9A00t08CokTII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IsdnddwmwGgc/In8NpyPXN/11WmmLM7av6IIwyXpnif21RGFNQDAyTNE/ZZ75ZLp7LijzfRy//Rw4FaO3HRmsRoAHDfps3CFN/kyyAwB0RTzpA67C/3LEaVeHkEhdQHFYOtMjwTUBi2cEBMVK7P004nm+cy2LKpuN0hIhW4S7AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZrwLBJ6q; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b423036a317so2532096a12.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 02:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754905496; x=1755510296; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nCoqLwhb4uI1eEgHGHZ1KDRkXmPyMcyy/GtcB68Vpww=;
        b=ZrwLBJ6q7CR54OXI8khFF0A7T9EvvhJqm8bNzTCmHhQxhB5I1RzlII0tr4ntCdXqOT
         AT3/NaTk2MlnB74BaNkVEA3J8v49Q3ArhLAWPIflcd+ddvRHrRNz+22Jeevrqm4No3dl
         //huOxbZ/ZiD0I5pw4ta9kNgVzjXecgTs9qVtdS2KLgEYlEvzghBIIUFTSWkpIeJvxaq
         ZmbMfJP3FAwZBKnCSpM22CpmdTngGgwWyEcLO3BflUjc+X5mAo81X3NAUPK8G5s0IK4S
         ObSN8QVW5oJuJ3tVHCpkeCRJEbs/7AWiGDQM4kGrlLIxUWCdItro3L8dOg3Hy/1021F4
         GXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754905496; x=1755510296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nCoqLwhb4uI1eEgHGHZ1KDRkXmPyMcyy/GtcB68Vpww=;
        b=PzEDK1SZm+Qf2nyeZGU+jJKa4qCgDeU23ggwQ4ZIfxZ4dMcqosews+HEaAuhdoUPi+
         tLu/xW+iYH5Fwxa+vr9zfPPqnz36DPyf5ZnTOIBJVe//SC2HmQaaHajpcSEE46DJ4o/E
         UPcs6lOF9h557BuPoiFMjesWNMk4Y/KJkfXSbqJdVeDA3W5A5CkTN9QI3AP9Cpvs7oHs
         jvvim9zvoE8oRHXhljReZW5Iv/JB4LzrezGxL/p6lvf/36pfolvbCPmkIZHHtDBSqSNP
         2ZOInQJ9s+hl0dA5hbz1bXi2MbEsnQSvyAeMQbDp1hwdiP4Cv7BFB1G8kxptIBCZ+6ai
         fBJw==
X-Forwarded-Encrypted: i=1; AJvYcCVDJt1ZVKTHa2yNirFz0TU2bOIVPbsVhn6AVDIo3BamJe7zE0E4SV7oE7T2aLXZ8OrHcgCcBZ3WDu1D@vger.kernel.org
X-Gm-Message-State: AOJu0YyQuU39Txn+e5EmX4NmOppHbrpBoF3yS/OzpcOV1RnkMtiNtPEh
	QXH69/aDTsZPms5ejLBrcaEqhCa9IfI1zFkrQQAoVbEE/RhDxKyLyhvWnBWNzgUoYjg=
X-Gm-Gg: ASbGnct2bT8wOZuVntIfmCmN1fmaMpNi910utzoqipwafOPEGvh5WsUA2GPTtaPcmi0
	Pe+h4LrkD0dzkKRynQe3+fsnh4Zk/aMhToKraEUQaDK14wOWmYDbOu0n1nIezljStgns5d6rBfJ
	AwCsu51DT5PV1K2IBHQNQfw2cLSsg6BU07HllDjSOtrSOoddinwcmxVrmuAzDXJ9MAEJ5Blj8Wr
	ZSSP9wO9Uu5UjifyCLvNQZL1V4CUMh/i51Pwr/1lftP09tnvTeAoUYsv2VFCEdLclkMFdK8OITx
	SBUkMQTskIiO/aVTDxLmuZensY6+zP2z3tf6OTvoAFXNTGpBplIWaJ4fqDJrHAd5zqTbONZy/FE
	fBtw/zbKHACXYgEup88ytxIvg
X-Google-Smtp-Source: AGHT+IHx6GR2e/+tS4c7qDRjnWjAYpd+pizXL7vvtruA+7iTSso7twvaaA2D0cifsUCnt3e92ef/zA==
X-Received: by 2002:a17:903:292:b0:234:f4da:7eed with SMTP id d9443c01a7336-242c222bf2fmr179458745ad.44.1754905496369;
        Mon, 11 Aug 2025 02:44:56 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32102a559bdsm15486233a91.1.2025.08.11.02.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 02:44:55 -0700 (PDT)
Date: Mon, 11 Aug 2025 15:14:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	konradybcio@kernel.org, rafael@kernel.org, ilia.lin@kernel.org,
	djakov@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	Md Sadre Alam <quic_mdalam@quicinc.com>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 3/4] cpufreq: qcom-nvmem: Enable cpufreq for ipq5424
Message-ID: <20250811094453.qvlpwwpmkpdyauzu@vireshk-i7>
References: <20250811090954.2854440-1-quic_varada@quicinc.com>
 <20250811090954.2854440-4-quic_varada@quicinc.com>
 <20250811092202.auarwnyoagebcw3o@vireshk-i7>
 <aJm6ixlMamgX/+bV@hu-varada-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aJm6ixlMamgX/+bV@hu-varada-blr.qualcomm.com>

On 11-08-25, 15:10, Varadarajan Narayanan wrote:
> Sorry. Should I send a v8 with this dropped or is it okay?

No need of a resend for now.

-- 
viresh

