Return-Path: <devicetree+bounces-120350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1749C23EF
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 18:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC0C1B257D5
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 17:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CF021CF9B;
	Fri,  8 Nov 2024 17:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IT942eBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA68231C93
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 17:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731087376; cv=none; b=QLyz8oA8JcEiJACpCXv9HPUDNK4JNCYcQ68LMLDNoegIJ5oFS/RS/EmTl8v06V/n3DjwbgoVUy/Lc/yqMSdV6cAA9eC7CdHHDtPbS972uWmHLlAHBj2zTyO+Fb/MbE9+M5XEt9d/w4qjzxcb9fUtSc8uG0neijjqAb1jXwwTpy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731087376; c=relaxed/simple;
	bh=UBSwk2uyPAnNAEqDMvDOCQ3Cpd7emo8eshhstWEooXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gFKf5CHheniZzVP5aFu7TR1haUOo8KTy1CTVYivoY4I+zrI/E74H2U3YH0tOYa7HTFolFBOMxnDRgmOju9umestkquaRm2aTKozbeV3UNEW59WsCKtLClSs2YunhXi7nIYpW7LAmu/vyChRQaDSMUSuK7YE8fArBtBjKY3d5u4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IT942eBZ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so20247775e9.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 09:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731087373; x=1731692173; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=24rUIfwiGyBziK1kSY2+b5Nvpi1meTWCMZaQMdMFtck=;
        b=IT942eBZUyAp9jQJTzBlfn6GqNP4Y97xDyHuWe7L5T2oEqM4U2ZIo274CEGZ+aagkf
         oyrSrnJ7b9ehFsPtGvPpP4Fzm7P6At/B6XUTHZba80JFT8ITOKXMTaHq4KpgZwhGdGWy
         TcYF52pKH4ds19C6GX7JRJz5uTJUDavXKPxgWHX3v5K1Et230oAG8t3YvVOIOCSmjKXR
         KBRfgy97ybgdu2yFx2XoO+7NKNdT8kKl4sT5NFA7m/lCBMeBSJuxdVUarptPcjYpjDfI
         u6WXFk72YbAT1odpHrnwPl2kY5Y4pef2WX5RolGcXCPD9zVEhtjmTKW8AFJ5qPvRvS9q
         yxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731087373; x=1731692173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=24rUIfwiGyBziK1kSY2+b5Nvpi1meTWCMZaQMdMFtck=;
        b=ISRHRIoXJnWJvvFBuhD5Dro2EYcq/SMWjIXZHAiJ866ZHvd2408V8wYIgykXx1AoUu
         w/s1DHC9u0NQgJgccPlZe8E0Sh+ZOH7XeVVLAKIteJq+by7k5KUNTQs3oF9noEMjQIpc
         00s+7DFcKRy+F5jM3PP7NdvPxl6nffNtvXR7/G2qC1HGmNznfchxYmF3VXkJs+WuPvRI
         M9GnVIZP4Q6BNPX67U2gu04kUkB4V/PJdy3c9DdMrs0Y79ZII8Tg6aVAneApoCaVaT3P
         4OZWNSzu+NHF/qaeGtqTj9tYWYVAZuxE2vgmv5078tRZ5QO13JyT2KDsRY9GJZgp3X0X
         trnQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2o94yc9Q2il7vBZayB4DJGfuwXr30eYxeabMc48W/KM+WAUGYSm9bfWgvQkl+us/CVQwb2Od1yVO+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5gusCGmQTl4dkQQ8vaEKCIaq/VSxP3Iyu8uUcq1gMErm7FW9E
	Bnn23qUjxkTx9ARMZgglH1LqreIcLxPirQnbpHI9ns/wALv/fy9C7RRXsg0tl2E=
X-Google-Smtp-Source: AGHT+IFB4cQNv5E0di1VK1U5QifG33FuDYlnKtO6ciqXhye/GnzodGjwkiWo7tPy7OZ37dGOU9CmJQ==
X-Received: by 2002:a5d:59a6:0:b0:37d:4d3f:51e6 with SMTP id ffacd0b85a97d-381f186bf72mr3099046f8f.14.1731087372779;
        Fri, 08 Nov 2024 09:36:12 -0800 (PST)
Received: from [192.168.0.48] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed97cfaesm5482406f8f.38.2024.11.08.09.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 09:36:12 -0800 (PST)
Message-ID: <f6c2aea7-3363-4c29-bdd8-ee3f6dd1a642@linaro.org>
Date: Fri, 8 Nov 2024 17:36:18 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/11] clk: qcom: camcc-qcs615: Add QCS615 camera clock
 controller driver
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241108-qcs615-mm-clockcontroller-v3-0-7d3b2d235fdf@quicinc.com>
 <20241108-qcs615-mm-clockcontroller-v3-4-7d3b2d235fdf@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241108-qcs615-mm-clockcontroller-v3-4-7d3b2d235fdf@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/11/2024 04:09, Taniya Das wrote:
> +	.alpha_en_mask = BIT(24),
> +	.vco_val = BIT(21),
> +	.vco_mask = GENMASK(21, 20),

Thanks for following up on this.

---
bod

