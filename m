Return-Path: <devicetree+bounces-61876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0BC8AE7B7
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 15:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 788091F24DD5
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 13:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DEDA12C528;
	Tue, 23 Apr 2024 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lY1YWYB9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A3F134CCC
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713878097; cv=none; b=Ag+EFkWDhDOhjp6TWkZyv32PN4LB1IMD8tlp9ShmNjX5ofZlU5JKCHcHUMxLSBCo+P/OAc96Bbj6vaj1sb0rJpTrdg9XQErzuwoay3rh4W5RKwRGU1kNUEKODzHhZlkctdhET7bRqNLOcSM9rLe4oYMoWIh3Od7D4oqLuaydnEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713878097; c=relaxed/simple;
	bh=NZJdF448RrsCPNbeZK/mTKE+FYV/tNx8iYNQyTG8XM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LrVIPVsjokJyiCfTtJYvwWf9IQMLP4wy0CTT3l3Ls2xyJs1PiyKqyDO0LPljdieJExUJs0SY1DNq1SsqCcJqgfrECKo+VIZVXFiON4z6p0olpn7iMIy0AmM4DnRsd7LlDWi0sh22DH50HHYG5MGfPIKHumwyqySSHAud5kYpIng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lY1YWYB9; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-518931f8d23so6039575e87.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713878094; x=1714482894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OsRbJyNM0CXnE8F6+OcG0OzXSZWaTx+tIqNQ0z6QZng=;
        b=lY1YWYB9jTD+1ad1/CdNtV/nufa2epV5mQKsP1BvZmEHlCjvSp121PKv1KuU7zD1dt
         Wav6euPVjw7B3POL6VwOX/zsn2NDRFXyQ1Anie8n5HIGi+56CuwhndNpyHsVozJDkbTa
         S2YM8zwny7q9zT/elAUJCeWBQBGWc7KMC8OzstNVLESZtZoPYko6Pc3wcAH/DW3ZSPv+
         xruN8anG/4ohpufTBjiFtdWQykYeEo9YJQ1amW19OgEH3ExiB6I7aSp3RJ9M4+2xwb6d
         9RDzDFhQESGNbVaJpjy1f203OzFcaHUEd7OD4DYP6+SnUg9vA32H/b04RVAj7OhmIYdU
         h0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713878094; x=1714482894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OsRbJyNM0CXnE8F6+OcG0OzXSZWaTx+tIqNQ0z6QZng=;
        b=XaWrzBsc15CoZva0B2nXlfdBoQvwEnSR4I/g7uuEfORhfN1HY4RPwQqzAlgCmmGmWD
         XRPThfAEQ7x1r4xPzztOgdfnHHM4i5vBckeL19oCT/LQTCjBuJR66CwFu461OE0gHmKm
         qPxiQuuECYU8Q88Bzd0HQn5mvkTO6glam3xmQnG26tB9wVeqfAsR0h5YRo9MtK2lZm8f
         2kdEXuQIM7b7VdNmAHyIHI5eUnHD6gHgVS7hNXR4wZhhxKciZwxV9VFO45Z4k38K4ztQ
         MrKR6wI7QvbOCsmP5zjYys5Ff4NH9Ne99IteOuwboJ8jq3n7/5GY0zX8cf5fbSI1/S9+
         WkXA==
X-Forwarded-Encrypted: i=1; AJvYcCVezFBKQTQJpJf/D/tXvnmYweZmdddg8D65m9j4CiXFoRaio6/blxUfCZ52Qnw/t+yjoY/lCFP+F6PkbXLFf0NMU9/WUfmMFv+MhQ==
X-Gm-Message-State: AOJu0Ywul9Edf5Jy51I3hei4YpWAed3a2cUpn+Ri2gLBMqely4xqSbZQ
	6zudYFOWbKj8ZgyCDCLeQIsb60KQnvfMDLbeTKTYvATvdWDgyuiiRSFyaY9LXCw=
X-Google-Smtp-Source: AGHT+IEftV1iNFQoAzedq7/3dcHwNw0WwRRh8jVLELtQAgUWXAt4it0wfg6lRuvpZy+z3o3XT9J3Tg==
X-Received: by 2002:a19:8c5d:0:b0:51b:18a8:4cb1 with SMTP id i29-20020a198c5d000000b0051b18a84cb1mr5142819lfj.27.1713878093986;
        Tue, 23 Apr 2024 06:14:53 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k8-20020a192d08000000b0051ac9a297aasm1530900lfj.141.2024.04.23.06.14.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 06:14:53 -0700 (PDT)
Message-ID: <b46b8cbd-1d58-44dc-9aff-ef11d9cb7d33@linaro.org>
Date: Tue, 23 Apr 2024 15:14:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] clk: qcom: camcc-sc7280: Add parent dependency to
 all camera GDSCs
To: Taniya Das <quic_tdas@quicinc.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240318053555.20405-1-quic_tdas@quicinc.com>
 <20240318053555.20405-7-quic_tdas@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240318053555.20405-7-quic_tdas@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/18/24 06:35, Taniya Das wrote:
> Camera titan top GDSC is a parent supply to all other camera GDSCs. Titan
> top GDSC is required to be enabled before enabling any other camera GDSCs
> and it should be disabled only after all other camera GDSCs are disabled.
> Ensure this behavior by marking titan top GDSC as parent of all other
> camera GDSCs.
> 
> Fixes: 1daec8cfebc2 ("clk: qcom: camcc: Add camera clock controller driver for SC7280")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

