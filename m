Return-Path: <devicetree+bounces-221685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47EBA1E29
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 00:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14E4F1C8184E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3302E9EBE;
	Thu, 25 Sep 2025 22:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YaNMYfh9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9303627381E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758840536; cv=none; b=YYIC+VEVBacT1wvEfSb0geaHqQsLpVEO20opj7BKqiWISPimzeqzJj/39UeoCdnIUGjVZWmXBMX6CmyU8fw6WrzgoGlbSvK2JqROqHjz+a/YsVIJ3l9Ec2ElPl5g6hYNkEyGhvCqNTwwVul/l/urtQiF0Z/pNP90BJ28iBO2FeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758840536; c=relaxed/simple;
	bh=NPoSZR2uMPPLcNwoBCjehSgGxL+8Q5GL+E8w6bU+oR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Unetm5HkmdtxR89kU6xO4npI/w5xL09Vg7p4SEQd9OD8akn+tBC2skCxt3F3eN8QTj3E9A6yEfmYSLs/KhmTN4SXgnuWxQG3GDBeHC8brMgzKX6mMXILsL0+SLo6KhrrPij+GdV8Er8UBBiLL+A/FcT8b73p8vZI+7uGZVqEXME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YaNMYfh9; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3fa528f127fso1100595f8f.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758840533; x=1759445333; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wLb9XJxJIEh9OtipwMXHNHPZ896o6SjHxUKCh9EYw7k=;
        b=YaNMYfh9fqK9HN3QU/N2iNMVP8FpYd53MCQFigHlvl/utETbSQiU3dqCqtd1kfY6md
         MmIubzfgeDZ4OQiqeO682+3J3lPs+UkxFpj9SCm8aMGikuMH08+ThT+zCuQe74wCZbYf
         OT1PwHLuYjg4caKWS4Wjgm2BP3MvjLUAt8F9K7k9Y2ZnT/fj8itm9txBH20ZOoPe4fWA
         7mh5QxkPpEuupV4tI0DWs6aHcLQyv+xuom0gRm5xlurOSRRo2RQFc2jg2jcl+UmGcWdS
         E2ZCV1JXwW0ot5vLTIPYRwHJuAFSIJanayB3jpgFXiqP7uZNBSxkw5m2bNpVbVjPEL4R
         pVTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758840533; x=1759445333;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wLb9XJxJIEh9OtipwMXHNHPZ896o6SjHxUKCh9EYw7k=;
        b=UX/xWnFaqXdlFSIZOUVV2qKSL7sS0EDeVu6zTYHE/1tATNQV3zXJdO6LhTJm0a1j3C
         oEgh8M5FDEAuVAfIKIHr7S69CEnYBrRu9Eogk2AQ8Pjl5ozxIQBLuGWz08b3hSPfdBxH
         mp8jjiA+OlXwMW3xLlVpaqhSMOCNFVtdSdNG4X/3bXhWoolrvDRq559pBWQITMui6qWs
         psM7TnggwUfv0WnWAvXQqV6y/RF8CR+L53mOviZI/W7HRJ7qAmKPDfOlQpBG/dcG3QHY
         Syt8Mrd5or3iflZ6OyG64C5Sf1sN1YJvnov72ZPeFyaafD7kcqbO7rSn1zDBZ3vG4jtR
         nE3w==
X-Forwarded-Encrypted: i=1; AJvYcCVYWpn1dPrgnumRc0EVosLDkHucIUrVeGUmvYKk0rE8bNP1Jg/X9fDoVfuQKBBvvMFJnFccCx6e6GPM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/6RusSh1sdBu0nJc4Mcjs8dAxE9KLJE5qUbN+2SZgUm3m4OH7
	w3P4IhpRXlP3OfHRMvv5AJm5y671mrIdv1X51pF2S+0G+RMJrePmd3kzsLmQ/7FBF1s=
X-Gm-Gg: ASbGncvKwAksiyl8mXdTBUtw+jRwm8Wn5HCRHaDpLaOEMi1OgrKCEzr5FvE2523kHUZ
	tUn7RP644irbY+ONTxBonTfNGNl8VfUJEz63657czkuKxSlny9+bu2Icl+1PyWdQiQ7u8YmEbcV
	6+8XttSI1P0JT2MbYgk9vt9lYyB8rtKLcuhTH4x+1KdEoL7EFGo5QdfbUNkXsYnbySbzXGFWG0j
	wfT2A5sB1BKjfBsmTBPVh3gJtzKGUt0+NwxnSBTC/SvVCCivYFHu1BaSXjMhr8GNbPqU7FwO2hC
	74Yb0dVHP5advuEZJ9lt/pDw0yn0KKRuH5tCxR0xGKTGb8Ry+kzSyiwwXyAL4LP8jK1ZUn99mmw
	sW2Y/SqpgQgvRX5WhF1lrq3ClQIoqjB01CEcHvFSY8KKd750hzXgORIVGFBp08lRSgBfvuWr7QM
	n9NUcEG7Hc1o5bNDzSdAiw
X-Google-Smtp-Source: AGHT+IHo30/UsDkSnmo85GJxkcE0F22GujIahDdLXdZqAmy+vOn+OIAP8XqbpMnu9c/OCkswPoykwg==
X-Received: by 2002:a05:6000:220b:b0:3ea:6680:8fb9 with SMTP id ffacd0b85a97d-40f5f60d329mr4047618f8f.3.1758840532964;
        Thu, 25 Sep 2025 15:48:52 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb9e1b665sm4475800f8f.27.2025.09.25.15.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 15:48:52 -0700 (PDT)
Message-ID: <30f9292e-e6d3-4fd0-8d1c-f10317ca7751@linaro.org>
Date: Thu, 25 Sep 2025 23:48:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] media: qcom: camss: Add Kaanapali support
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/09/2025 01:02, Jingyi Wang wrote:
> Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
> RDI path involves adding the support for a set of CSIPHY, CSID and TFE
> modules, with each TFE having multiple RDI ports.
> 
> Kaanapali camera sub system provides
> 
> - 3 x VFE, 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> - 3 x CSID
> - 2 x CSID Lite
> - 6 x CSI PHY
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
How has this series been tested ?

---
bod

