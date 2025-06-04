Return-Path: <devicetree+bounces-182671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77052ACD9A2
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:24:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 411381716F9
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E79127CB31;
	Wed,  4 Jun 2025 08:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z2uPQTyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680AF221297
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025442; cv=none; b=b6WR/hLXVHRL1vOuQdJv0M6SsYlaj9jEykIg7nmntkypzCLI0qcg4MwaNie/I3dkDCqkyDUM1Hp+ifFKJq5p/SikVlNMPckplUAJV9fXn3ZHLZHmt+i3WHdozNZ3e0ib62559l+9zC5J1wE50pvLgqCWCJ8XHrZTBqANgN8N0lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025442; c=relaxed/simple;
	bh=zNHoKAB5U9Qmrd5tzPO7HQ0l+s0XRB3gxF4oDsXEwt0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lTaoRFEbKG0eTzqklUnGpOEz95WtYNp5cHGd/kFStgXIlwDxJhIpYSSjDxBtcqyjE6zr49+9AUBDagvd9dVv3L2kmMh6l2GQooYDH0yORbxJnRE1uP7/Fyl+BM6XLc4f4czvGPWx4bamp9FCnDmDd3q6g0O4pUvQiW4bJPeaVcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z2uPQTyG; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-450cfb79177so36980785e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749025439; x=1749630239; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h7s6pfygUdaVGCn3GcQyk6cUhVydm03tR2O0SvKmYUM=;
        b=z2uPQTyG16uLb50UVAGXXsn/g1j2QQFVHuMXxl5viKNPbXRNArf6rY9f741Z9n/Ghu
         aEix6jWPfZwEJYgkC1wcdYxym2jUerr4Lq4bOxJuVtPElHVoK906lJXBVNNZLinExaOP
         LuE5DoViPzc+PTNAIlIlgr/oM3SMftD/z8uzV0rfeqYt8yET8R3Zt+/TNJ0jCuf8KQUE
         raRDGtQfIWGxFZBMqgBszOfRygVDi1r51NvkjAhwHRZFybwIXRAXFK8ERetVAnO6o+Rm
         1uLFdwX1R5/v7jIN+WHfqVegWaCpM54aXRRLWyg7k138EHUQDu5xUZ74nBUdW4dzpV9y
         9VQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749025439; x=1749630239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h7s6pfygUdaVGCn3GcQyk6cUhVydm03tR2O0SvKmYUM=;
        b=l0bAMGiPUd1ofnABUR9rbfioeB+pmq7GP6JUj4IyvTDruuI1LA8r2u4oUpfovFGBMx
         +RqnxLGhGvZBPCgiQ4gPdC9Cj8+1OmXY7nSHVyYgnBKJsPTCJEYNP8jG66v+HXGncATI
         x63JtVHcr/NwXtUIxVeDm1RxBfoK1NI7is8jN0Nx1jtT91Dvet17lQnSqzO6Nv3D4zAG
         PQQZ846HoaV7yIVJRcva5GKBTliYKQpbxh0Xa6gmnIMTlb1Ubj9GnlprmD3woJbkDG7D
         ETi5HIMXSFPApRhj+UKEfcAL86f5qNXnNUYf3DU6NcU/87s1fuNSo+JNryDdiBY7Ci39
         QaWw==
X-Forwarded-Encrypted: i=1; AJvYcCVfxNzBnzQjdYchoJ8V5X5+0RkXu2Xglggw4NmnOA4ypUIDM+clJ/IWK4SlctdEephf5EzVeWxIogfV@vger.kernel.org
X-Gm-Message-State: AOJu0YwjCk0TgI38viErWEt1lJN7FxIs5xusvHvztA1k6OUHAcdjzZl3
	UGU/fb82xbWTcFR5QeZiF3IwQGul4n2HjoO79TeafTNYlgoY9lBJVyGESgdwLkbNF9s=
X-Gm-Gg: ASbGnct2NClniiYEidIu9oph7cKQJk9leW2wLk7+8KjNEv6iqWvh15sVHNnGLITbfzX
	0SBHgO0ggzt7KVWiVcq64Wmay1yv09Te42joManv+UMtsSSMVweJXZA9mw4T7uFnmImCvsCyn/k
	Z42/QlB0TKvpjmVOVjLQM0dWgYmKbwUL4P2uJaFhHCXZukBuOoBLnTbh+3YIVuJxeZxMDcGBJiB
	oz2q1YoKeda4VeAh43OfNiTMtBYCtTxGOlUDpR+uL5xqYHFgjSrjISRGY+8Bkb9FGE7OEdCZ687
	5deROniVyoHyDrQ7ySEW+TOzwgvni4K0m76gqllWXbXxaxA+liRwGa0bv1sKd1iaUcB8lrlqLvw
	mBRlrD74HydpANrjJjpgeKJmTHp4=
X-Google-Smtp-Source: AGHT+IGuDdROqzATGDzK/jjhYn6/52Bbjegw9C/PQ/dD8jHjdp0OUR+ym1KT/jZkS4osD3Mqe91lug==
X-Received: by 2002:a05:6000:40ca:b0:3a4:eec5:443d with SMTP id ffacd0b85a97d-3a51d961c87mr1297240f8f.29.1749025438742;
        Wed, 04 Jun 2025 01:23:58 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe2b35dsm20745556f8f.0.2025.06.04.01.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 01:23:58 -0700 (PDT)
Message-ID: <c751b9f0-836f-4151-9ad5-82cf4c282a2b@linaro.org>
Date: Wed, 4 Jun 2025 09:23:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/8] soc: qcom: geni-se: Enable QUPs on SA8255p
 Qualcomm platforms
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
 quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
 quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
References: <20250506180232.1299-1-quic_ptalari@quicinc.com>
 <VgXAbpS__r4C24FLFz5nqCPgygil3nr3-oNHbL7bQxE0X1GnDStFaWlnts8iSxCeG6TCqa8mzIFqOysqIlWeJg==@protonmail.internalid>
 <20250506180232.1299-4-quic_ptalari@quicinc.com>
 <e6517c54-9163-48d1-80c2-4fd964dac349@linaro.org>
 <pQ70_lZWsA1PB1GdnrxpeWdiDKvQsWaSYURfGNHMENN7uqR7u-OFSZA04GvqAVOu2QiaAaRniqL0kpOznBajGA==@protonmail.internalid>
 <85ba8e7b-a1a5-4f70-9660-bb78e7169acc@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <85ba8e7b-a1a5-4f70-9660-bb78e7169acc@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2025 08:28, Praveen Talari wrote:
> should i keep condition before assign num_clks to wrapper->num_clks as
> below right?
> 
> if(desc->num_clks > MAX_CLKS){
> {
>    	return dev_err_probe(dev, " to many clocks defined in descriptor:%u
> (max allowed: %u)\n", desc->num_clks, MAX_CLKS);
> }

Its up to you if you think this check is justified and/or necessary but, 
if you decide you want it then it should be an error if the specified 
size exceeds your defined MAX.

---
bod

