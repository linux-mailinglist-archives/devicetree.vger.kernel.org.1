Return-Path: <devicetree+bounces-65857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F488C048F
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 20:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95E681F21436
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 18:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51ABD7FBD0;
	Wed,  8 May 2024 18:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gWTC7o7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713D21DFC5
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 18:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715193917; cv=none; b=Ia1SwCOOwMRtca1q8blalKtzvwlyInvZeApP9fTLKlN+RiFR8hTshBlTltWqmj6KhztPOowKfJrb9kqOVmk52DMTi1x0l2So18LuApzlBtvdiWlG8Jdz0w/yYx8t2+P+KvIlCGgB9WA8gp8O16YGYOeoV27dF8g40WcIRD6FmLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715193917; c=relaxed/simple;
	bh=ajK8fwDEWGgksD0g4NneQiANiInlFvagm8QWZ2BtHyk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bext2uExEhhw3wrGmuoCVoWLOMcy9bw/1SZ+NWzcLp9Jd564OxsGTs/PJV+ZNWpJn/W0PbY4gizYhD6wUiQnRBKSvtbqsUGXQho7Dg/lROlFTeVVm4ze+FONTXofeqPkLHyfTuvmQuNWGpzAWaE2amcbUPbek+8H9/k/RQSjVsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gWTC7o7q; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51f3a49ff7dso1081e87.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 11:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715193913; x=1715798713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L/sl7CVm2REW89uZuY8Yv8EOqxKrMx/lL2HpHKt7Na8=;
        b=gWTC7o7qIsFA2yJDBuMs5HBJEdkLm67TL9xnglfuERDrTm2E1j8KqdkdaRegIzcu1c
         aKBzu6/1bNkeUy1NI0EUS2IiblmOOZl5anBArj5/uuVY40u8qFgr2DJEXyT9EwS8eOsM
         QUXDuio6VBBRhqWLW8R/7BW7XjvD3gMoAwFWvyhV0Y5PGEK3j70OEgb9Yhi0lBom4JCc
         1KxiJ84H+MCWiKjMAqZ1/ObsfOka3tYba3/VWJh6xVio2XK3LiEP5gU8h3p7+NWHCEEk
         N+c6W0iOr1Bh7eHywmlvDCOOcbEzPcg3aYBO0rsxA2srMLXAnpqreE49yyQ7qoLUd/14
         OgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715193913; x=1715798713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L/sl7CVm2REW89uZuY8Yv8EOqxKrMx/lL2HpHKt7Na8=;
        b=v8ofgjeVxBIjJRvtW8BzUe4Lt1ova0yDxOO0MitHuZz1d1Dc0gXgPEzEVEKBZqoLFU
         gYF/ZzFnYVuXCyfPMFbxCMpx2ARC7FU/SupjmcLC2rsJsqw880sR0p5n/zgFyCUFZ/e+
         z97awOLsqpA/noBQ3U1Mybx4ptfRPpxIhslMpzqcK703Evi2O4XDScRf8hi5u58HpVs/
         BSE01mvs/eE54QjYAGWU8dKID2+uiPPEu14nYOW+2PDSCPCoxW0JJzZgKiKfW8QL2F68
         Gp5laBQ1BLrJX9TlcDESokA8LYsj4deahczJ78/S+TH00KUMfxH6vBFwQglorpWvLKyw
         pq9w==
X-Forwarded-Encrypted: i=1; AJvYcCVSs7HzZ3yAyZHrBX6J5AlaYCef2f+BHuLxHozynvhUOO4VlBNxuSuWxbpzieVT2qG+zaQA6OaU/5ABo5FDp+3DGE6ENBdX1yD5jQ==
X-Gm-Message-State: AOJu0YwMH9DlBgGbcW7AEJzgSaqo+oY+GVtnXAnWpaJBWYbKT4BvXhkZ
	Qp1RAQumhCEiRoNotKoCmUfYapaUG4vGLLsRolm19SsdNpbPSlF4nisiHSPU97Q=
X-Google-Smtp-Source: AGHT+IE10Er1A/mCrosxAFnAYPReP2NcUb3AzPgcOh2RiJkJ3CG8BZvnwb4a8smEsiNSsK0a2O5UYQ==
X-Received: by 2002:ac2:522e:0:b0:51b:de39:3826 with SMTP id 2adb3069b0e04-5217ce46c24mr1930208e87.65.1715193903577;
        Wed, 08 May 2024 11:45:03 -0700 (PDT)
Received: from [172.30.204.208] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g4-20020a056512118400b00516dc765e00sm2605299lfr.7.2024.05.08.11.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 11:45:03 -0700 (PDT)
Message-ID: <1a28f062-89d6-48bc-b74f-2ad480f58ff9@linaro.org>
Date: Wed, 8 May 2024 20:45:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Mark Ethernet devices on sa8775p as DMA-coherent
To: Sagar Cheluvegowda <quic_scheluve@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Andrew Halaney <ahalaney@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
References: <20240507-mark_ethernet_devices_dma_coherent-v3-0-dbe70d0fa971@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240507-mark_ethernet_devices_dma_coherent-v3-0-dbe70d0fa971@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/8/24 03:30, Sagar Cheluvegowda wrote:
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> To: Andrew Halaney <ahalaney@redhat.com>
> To: Vinod Koul <vkoul@kernel.org>
> To: David S. Miller <davem@davemloft.net>
> To: Eric Dumazet <edumazet@google.com>
> To: Jakub Kicinski <kuba@kernel.org>
> To: Paolo Abeni <pabeni@redhat.com>
> To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> Cc: kernel@quicinc.com
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: netdev@vger.kernel.org
> 
> Patch 1 :- This patch marks Ethernet devices on Sa8775p as DMA-coherent
> as both the devices are cache coherent.
> 
> Patch 2 :- Update the schema of qcom,ethqos to allow specifying Ethernet
> devices as "dma-coherent".
Per-patch descriptions like this are usually redundant, unless you're
reworking something complex and non-obvious. These things above, we
can infer from the commit titles alone.

Generally, when there's not much to say in the cover letter, you can just
give a very brief summary like "This series fixes X on Y".

Not a huge deal though.

Konrad

