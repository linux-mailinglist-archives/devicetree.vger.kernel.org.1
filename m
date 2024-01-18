Return-Path: <devicetree+bounces-33063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A73831E87
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 18:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 292211C232EE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 17:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD722D049;
	Thu, 18 Jan 2024 17:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QhTB3x0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7342D60C
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 17:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705599491; cv=none; b=Fp1dkIDxcpyH7KQ+gyHIVINM/Qkw7vGIQUSFHGcs+FCAq5pOielRqXcEOibtAEx7GD++CkZbMMQ/zei/H1KrgOODkVLDRrGcxpMlk5BX21LFWpupQjKCjbiiHDNsMVHqlAdwMTCs+G/GdnS3LX+cb2zaC7YRnlDnYmtqKJ8xaJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705599491; c=relaxed/simple;
	bh=USbiBAFx2QR9T8zJlpG0DggR1335IIYgSLno/FFoYpA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:Content-Type; b=XGgHFT5ZnG2eD2jAzQQBU/EV8eBUP/kGQ78yTmOM1Uq3jMhyb2LHI4Smax39UjugglDVJwb35jLEH0gPs4LsUSFbqYTlYwjoUxo7SATortwCGb0IX2lE0Gf6+cLepbHdLFblhKzT06LZLpqbhHdXXaIKv/HqblMBw5d+455yias=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QhTB3x0n; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50eabfac2b7so15125850e87.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 09:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705599487; x=1706204287; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USbiBAFx2QR9T8zJlpG0DggR1335IIYgSLno/FFoYpA=;
        b=QhTB3x0nhZqzZRkOIjxblrHk7kY35E/TKGlgEUql7vWjiCF1oCXPmBAf5kVCzMDwRg
         hs9nyiR4HItEjLZu8S6GbWhtOmrSispR7IfD1ALBVwuisJVeHv12xZOc/VNmK72G9ogH
         5V/qGAaoud8WN+SIuZuN2xlnZpdpQoDyYv5h/FWsbfLIyxg1KBiBrofnlGaLbA71IOfS
         d/HzFrxDJCytchKKe/B1Tc7XeL5CVejX2zi1gRQU1t5FaFu3fW1nohYhU5di9U/cJo6c
         xS7lvd3U4YeiLYsydDF25y74jwdGx3cj1O9l2+Sl6axtUADac+bsBu3daI3Tm0bchwOu
         NsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705599487; x=1706204287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=USbiBAFx2QR9T8zJlpG0DggR1335IIYgSLno/FFoYpA=;
        b=kODfa5yhaObMkyY7OCm6bMM2agloHq2834pS6OsUADFlMZd6Sk3lIesfXB6M40vQ+8
         ZOl/HlQzq6fV74SFwfmuEudsLrnVTj49FinadAmPtQaj7lRbqRg82XMHQ0T3r8iV/GZz
         hZKRROxLEWL6FzjIEPbKAm+QFBBaacbB7op+FEOD3cZrPfzg4RxEdOoSMU7lbwXdK0r5
         TZpGzA6Uu0/7SEyj3GC8dtuizSuvD+pIsT1nidPs3OeEGUkFDpntuoyKvQWQvzN0BouV
         tceMQlnUoP5FJZUPHAPvCCZQlqXtghpvCiqNFQ/hSyy68So5VY9PduuOC6+DESOg1I1A
         OVig==
X-Gm-Message-State: AOJu0YxjwflHnZ9TGb0KF+nAH+Z/vz+OZcnf6M4W9g8hCootLtR38NkX
	aWYGCAJ2yHJdbLid/Z3lddy/wIbRqDYXCpdMPR/RbDu35rst4eidl3Nl3srFoAU=
X-Google-Smtp-Source: AGHT+IGX5HQ/2vpX/u40ngVjY5ht/YNwLWkLzeyiosoUeR1bTug4Y6o+o1VPqNfBhBW02qcXxpAkPg==
X-Received: by 2002:a19:8c49:0:b0:50e:7224:ad4f with SMTP id i9-20020a198c49000000b0050e7224ad4fmr686910lfj.59.1705599487646;
        Thu, 18 Jan 2024 09:38:07 -0800 (PST)
Received: from [172.30.205.26] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z6-20020a19f706000000b0050e8d5504e1sm711831lfe.294.2024.01.18.09.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 09:38:07 -0800 (PST)
Message-ID: <0e41134b-aeb3-488d-aa06-72be155cf992@linaro.org>
Date: Thu, 18 Jan 2024 18:38:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: rename PM2250 to PM4125
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240114-pm2250-pm4125-rename-v1-0-71a0a103c3d5@linaro.org>
 <20240114-pm2250-pm4125-rename-v1-2-71a0a103c3d5@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240114-pm2250-pm4125-rename-v1-2-71a0a103c3d5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/14/24 18:42, Dmitry Baryshkov wrote:
> According to all the documentation there is no such thing as PM2250, it
> has been replaced with PM4125. Use correct name for the PMIC.

<repeat my reply from the last patch>

I would appreciate if you could resend with that explanation.

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

