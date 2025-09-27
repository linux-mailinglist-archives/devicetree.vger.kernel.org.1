Return-Path: <devicetree+bounces-222078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E570BA5BB2
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E88A7A21C7
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 08:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D68AA2D5940;
	Sat, 27 Sep 2025 08:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jXF2nlsi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CA32D2480
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 08:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758963544; cv=none; b=OabLsjRyS/VQySLykTk8VuC8aGqRztZE8AoH1fMQfCVIltduMpJnqPxf9h8khZ3Pnw6swvJ+Hxr9zfRB/Fc7RXgBBYA27RvHwY1Z6L4U/bMtOh7uo5JqEJ7SG9bAe6VythTLOZI3ykWwZ3aY8YZmRyTiJNdn7e3XfXW6IjVlmvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758963544; c=relaxed/simple;
	bh=Fqv0rk2xEnCxMxdyvu6LEpbT7k7Ly6+YLv0Ia7aryGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rsid9U3mNqxluQVn233LnklktceqRzkd6Gr+JD+tXXaq9PgE/vFjq6X4PPc1lzAnnX7Ji5qMd6fiwcaKaGKh7w1FO8CMCk700PcoZAuUXR5Cu+K67FYuThV7gcwzUA7KiJ98/7tA29Z+7cYsSu7NNeQyjXC03JuHivlr/5zy0fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jXF2nlsi; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3ee1381b835so2523787f8f.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 01:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758963541; x=1759568341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x79LHukRr0nnGPYI9WtBJE+PwBazgPmAPIbZ3yhdhJk=;
        b=jXF2nlsiXp4XwMXUS6R7iD7Ch3SttM/9WsoAWHnZQjXW1xoNMlsWHd386HWLL3kyOk
         W4xrQeGkmIzhakH0t28nKgrJkEUngS4NO6Ylz+LuGG/FhWjOhbRLv/ERi4Fk9fhUUrDY
         7/Q3zl5LJP4MkmEXSv533nccYvKKOfwnBWarCjW2mkZvMM3/XjSJ1h9/uQPfzesPb2On
         TJFjqIefYOg1X2b6NOzc22QnCM3+PBxDrIoJPcGQdkp0DPtshxJ6kIA4Ta7IVAFzpYNj
         EjiJQaVvDOi86G3Sk+7EqK/OC32WCPThH0aorG/oG1J6wYJkIFpHQ4Dazea0TjhCkJ41
         M5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758963541; x=1759568341;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x79LHukRr0nnGPYI9WtBJE+PwBazgPmAPIbZ3yhdhJk=;
        b=vtArneHaeyECnI+52+0Y8jnjw5o93fh1oejvJ7Gon5Q0nEERyspcV/z/o+e08/Pbod
         H/3NtbdE8eI4isFGwEVcLmce28Myk1Cc0JRYUdg1FdPFYu1mlsEueDuNVgMvLOok2ox7
         KBwx36SlwIURyQ3k59wa+iqAKtplJxBxyEvYMZy5nRYDnasThaNx6owrQBMvxA1rcmo6
         MtQS5hyRK370o7yPJiPocXxuvNT7h8BH9wlzIAOm+hj66jtbRScis/Sh0bLtZn19OOrJ
         ISA25q5Nmk1/Yp9oUZajRqrNIZK+WgsRXn3rXuPvFvL63xdVVTpDaKYALIS3lp07u9xl
         68YA==
X-Forwarded-Encrypted: i=1; AJvYcCWCfkKTlefg4lrlgDwoAptge4rba/joR+o4eWVKhSXtYHewg0leHYYnAr2DYuez08baQNo1j4+NUuFc@vger.kernel.org
X-Gm-Message-State: AOJu0YyHtxilWy7et9GOzWZ51gopnJ45TCy9uzcRQwLyu9TZMaqaBWnT
	6+FQUsywy+jrQf32YH+VjyhjJzOZmHEIahmLfpD8AKQ8SxmyB6UdZssp2BE9TgmhZqE=
X-Gm-Gg: ASbGncv75gCaJofbkBTVWpD32Yrs00acvHqm24qXU5jqeRY1wseFKUqveg+3epednrQ
	iErjbc3CucikoZamTYC0pUrTfl+y7VlLpYdQZebXTB6v9QtByIQU5ZR3bVyC0Bss/f2dIAuO4Ro
	utxmURiIRQnn9stHI89qaw/Un+5kIWKFYB1BRqOr9GFAhOPc4e+Sc2YexAfgd1zCIpt3x4vg2EM
	E5FRnT3T1hkKw44geAv/fgGAmJro1Rdxouqg2cpnW4FrzNFyEMYn98BF0aIg1lhNYbAckVsWf61
	ZdKZVCOshGNG5FoiOVC6JU6cnTgvg9bE0DVEw1gJJ1ZK3//3ST4aW/x4BFphinJ9QEG8d2ptIYP
	Enc2IcSCvh0R6EnjdTC4Daxc8XfQXbTtUcoBR8SpP11nYFROocJQYYvHZCuhuOAtnAnpqfnRIH8
	bMjxIWeyb7v8HFOBgdU88nqcqQJE8LTO8=
X-Google-Smtp-Source: AGHT+IGfnon4MSQqIVTAixxjvIFsxE8Oezc5BNxym0Kqm+h8CrAyJE0vkTIm4xnHCIpiDfBBZXcogQ==
X-Received: by 2002:a05:6000:1884:b0:3eb:4e88:585 with SMTP id ffacd0b85a97d-40e4bb2f61dmr8701044f8f.29.1758963541203;
        Sat, 27 Sep 2025 01:59:01 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fe4237f32sm10058496f8f.63.2025.09.27.01.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 01:59:00 -0700 (PDT)
Message-ID: <b6066559-72f0-4f1d-9134-c93f732fa6dc@linaro.org>
Date: Sat, 27 Sep 2025 09:59:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1-dell-thena: remove dp data-lanes
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Laurentiu Tudor <laurentiu.tudor1@dell.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250927032240.20759-1-val@packett.cool>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250927032240.20759-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/09/2025 04:22, Val Packett wrote:
> The commit that moved data-lanes into the SoC dtsi (458de5842) got merged
> in parallel with the Thena dtsi (e7733b42) so these lines remained.
> 
> Remove them to enable 4-lane DP on the X1E Dell Inspiron/Latitude.
> 
> Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>   arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> index d71b67824a99..ef83e87e1b7a 100644
> --- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> @@ -1090,7 +1090,6 @@ &mdss_dp0 {
>   };
>   
>   &mdss_dp0_out {
> -	data-lanes = <0 1>;
>   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>   };
>   
> @@ -1099,7 +1098,6 @@ &mdss_dp1 {
>   };
>   
>   &mdss_dp1_out {
> -	data-lanes = <0 1>;
>   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>   };
>   

You should include those commits in the style of below

commit df8922afc37aa2111ca79a216653a629146763ad
Author: Jens Axboe <axboe@kernel.dk>
Date:   Thu Sep 18 13:59:15 2025 -0600

     io_uring/msg_ring: kill alloc_cache for io_kiocb allocations

     A recent commit:

     fc582cd26e88 ("io_uring/msg_ring: ensure io_kiocb freeing is 
deferred for RCU")

With that fixed.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

