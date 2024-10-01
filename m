Return-Path: <devicetree+bounces-106867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B0298C0E4
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:58:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0078D1C2260A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CEC91C9B7E;
	Tue,  1 Oct 2024 14:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nY/Ih0bO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACCAB1C8FDA
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 14:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727794712; cv=none; b=plPnLG7/4hAaV20LGJJwP7+wCmExkrTAWejVyUL3ZRQVwgQuGLSHoIkuu/uP/phki7pAgFShLFVcaZ5sVRikPg/QayuY22oS4suzC2NnYte6DAaKFFB5TVVpSI2bp+jbKA7eQIhG4QCCVD7xUeeibGz5doL/RED2ihZh2pTT3A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727794712; c=relaxed/simple;
	bh=ki5RbNjIw7Pi9Rc4YGtFdCe3E6LBQZZeHpBl3kZtLJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d21/NXcxIe3vp95RqozJIGxPeGT1LDf/SL4HUEct9hZrW4zHBi/Cc3K9+NjiJIjuKld+MI6tBvMrKAbZqfPoMHDzQlDVz9t+AitGscmG8e9xyj/Thf1uDk3hxMgqRtK+iKF6XKv31EaKHKFTjGs9IG4d2L596pQtgomUVcl4dSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nY/Ih0bO; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a83562f9be9so27253166b.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 07:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727794709; x=1728399509; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ki5RbNjIw7Pi9Rc4YGtFdCe3E6LBQZZeHpBl3kZtLJI=;
        b=nY/Ih0bOnhmxV3CU1IjWfab5VjChP9ZVLXhn77J+71udQe8rKKFYN2RVpomTwNh6tB
         DDp68RB6M1ciTduP+6lRsnLGwmfPIMgJVecEGXr9zAOi2+gcuJXG9l+OSURT/GjL9tmg
         eMIkJLrVoa0RxnlWZgY5/inX+9Y+uCTfP+nky//PN5QzqsgrgDjr7zOkYt/jIvH9u9mK
         ITfcyUI5nhOTGyTadwGPBVUlo/QNUA75AUn42gvSESmUkkAbqbHYkxMo2nCpGsKvWruJ
         AORlxzQFtJE7X9bLmz3wGlKoEM3EfQ5awdUVc7O2OeNCoE/5wQoBlFaF8YFcZZkceoUF
         0gTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727794709; x=1728399509;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ki5RbNjIw7Pi9Rc4YGtFdCe3E6LBQZZeHpBl3kZtLJI=;
        b=er2+kAMpGGZniAWFmKJ2hFOecVFqeGIDmiRvuBd/e4Cw1HeVi0z8HBc6Pb7MU3pEQI
         gpk98DlwrpGrGOTphqzMyDTSQ/q8AFyrsiVojaCVL+ukX3ir8LN8q695co2fqOMH6a5L
         MNcz1wosdSTzrS/jhRDmft3kk4PJ5ggJIG06kxTzzFWOX2Z9uwh12Lk/ZOG0F3N6f90i
         JJlfZ4GCwu1b+khjoZaRzAhlrXGLnZ4NdQFqtfkCbLtwp1LLfyBg8BHfvnewz1q5zykq
         BdyjQ66p55VmDwQ52vxWAQml8ityb0v69jNt54nqYXdY2eBVEuULFsf4tvhIzvxgjfEN
         MepQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh7t6iO3KUUmwiCoMR76+k6+oD6LgaIK+cMV0zYz8B/qLANV9oFph6uv6jEzyc+3UVuZlLYX50fzlq@vger.kernel.org
X-Gm-Message-State: AOJu0YwsbDzEcT5ZS7Yx6rE3xdErbUP9UpkGNcJtI54FdqDHG/XBFSK7
	NpckMG3ogOz2NJdDYSSg+kjKUflyf7khn7dbg3C0Wa9veP5qacwVRvz2SAFp2a8=
X-Google-Smtp-Source: AGHT+IFAyFo8ETKEQUuaL04WBD0//wzdOPx62FMtDHu5Rfe9onkvznMdkthblJ+RbgyPLO/VNA1Azg==
X-Received: by 2002:a17:907:1c88:b0:a8d:2a46:606f with SMTP id a640c23a62f3a-a93c4970730mr1573861266b.38.1727794709025;
        Tue, 01 Oct 2024 07:58:29 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27c5954sm724193666b.61.2024.10.01.07.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2024 07:58:28 -0700 (PDT)
Message-ID: <7d8949e1-446f-480b-aabb-46c99951a452@linaro.org>
Date: Tue, 1 Oct 2024 15:58:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] (no cover subject)
To: Luca Weiss <luca.weiss@fairphone.com>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kapatrala Syed <akapatra@quicinc.com>,
 Hariram Purushothaman <hariramp@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 cros-qcom-dts-watchers@chromium.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suresh Vankadara <quic_svankada@quicinc.com>,
 Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>, stable@vger.kernel.org,
 Hariram Purushothaman <quic_hariramp@quicinc.com>
References: <20240904-camss_on_sc7280_rb3gen2_vision_v2_patches-v1-0-b18ddcd7d9df@quicinc.com>
 <D4JK8TRL7XBL.3TBA1FBF32RXL@fairphone.com>
 <fc0ce5cd-e42a-432b-ad74-01de67ec0d5c@linaro.org>
 <D4KBQ3ENKF5Y.3D2AK81PELAEZ@fairphone.com>
 <e7cc5f91-a0a8-48fc-9eb6-b9c46b22dfeb@linaro.org>
 <D4KFVNV1A4KG.CFLT81CFBDTM@fairphone.com>
 <c912f2da-519c-4bdc-a5cb-e19c3aa63ea8@linaro.org>
 <D4KJCLCDGQ96.251XO3OG6DVB6@fairphone.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <D4KJCLCDGQ96.251XO3OG6DVB6@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/10/2024 15:22, Luca Weiss wrote:
>> I have to test Vladimir's two patches. I'll verify rb5 TPG while I'm at
>> it, perhaps the error is not sdm670 specific.
> FWIW this is not sdm670 but sc7280/qcm6490 here 🙂 But I didn't follow
> the sdm670 thread so maybe you mean something there.

Yes I sc7280/sm8250.

Freudian slip, when you type one thing but you mean your mother.

---
bod

