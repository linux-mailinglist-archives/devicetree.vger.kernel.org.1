Return-Path: <devicetree+bounces-79923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB69917500
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 01:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0353528152C
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76FB17F4FE;
	Tue, 25 Jun 2024 23:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JOXylZHd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E2C17994D
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719359544; cv=none; b=dMONjTpaov/jKAoMhwNBuhPoS0B8JU5yjksYqQeIOx8UX1YMl9Jg9GPvH8HykSfU0h0wJT3RkCI1bOC/8xR9zxramXmUG3Fd81v9SL5QRUzwBGiQ36yBuI20z5Kd3IJYXK8XnBLpVg1ZYC5AOf/V44neoTdrNJqzagp0NM23GcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719359544; c=relaxed/simple;
	bh=zHhhiROlxafcBYib1elDqDsAtG/bzNiUKEKWELAx6GE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=W0bmt6cqYlQ2+VogWL8Rl5RAwFqPBRtVmoJUG50/rCCQDFdVNlz/sP6gig87+M71Ilq9uk2heAa7oilq3dJb5IAMJ6uZr3+iC9olbI/EwE2ddx4DzCsGZ8+MdyNH2U8zm7BOfEgnH42tDuKX8WLvFCjSQqQOPvaG/JCIoi9sECY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JOXylZHd; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-3627ef1fc07so4569836f8f.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719359542; x=1719964342; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C9XacvKK+B+D8we4B7F3cYsUG/LcXq5D9R4PJejOJ+U=;
        b=JOXylZHd+BLmyosOUFeuMODQL5fWRmOpj3NYOlfyinNQw8brRtVWH58eOfy6+DMV/u
         /SmV6dh9LeGzYA/DpVA/BPrW9gSS9+RSsWpjUjsEKbEJbCE4Y+WxT81AZoCbpA+F/jq5
         VlyzLt87tMgXonF4ApkQWfcCoTpjaTuVen204vh/CoBh7jL8tb+r9sicxDvOMjT49WcX
         MqKXUv2js/TqxlRZlBixriB4wbMOwO0bT24zDz5tREth7YFBIYfXKRUiqE9kd6KyHaOS
         LkW1VfP1QIPxru7HOuM+T8uHn1lwzsHeL0ZQ3YkrPFyAzv15vxCbgqjyQ2xlYUN8eeHm
         tmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719359542; x=1719964342;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C9XacvKK+B+D8we4B7F3cYsUG/LcXq5D9R4PJejOJ+U=;
        b=J6jRGEHitUvopoRLHxSDkTqzdDuBdWzuCYlRGZPp8RdPp0ea379pktgYlVEoXElTIW
         IPA2j+q4XkZUvAXVg3CQimB83FeEl2gGUKD8P4wXPZtuCbdoKtwq6Vpd0dFRnlOf2myO
         ad/xFZAcb9eDfqcDa6k1LGushArZth3anNDlJxmee3QcyOIFdnl+WruNX3hNv562z9Zp
         QLWdWHryUpukCdyq/yDOSX0sXGylwMJFS/Ys1gB32pDnp5mXQccdvlDGs+hl5JxOkcbE
         iEkIIHEk++uLpF6oSeBJX1yu+DumGeBrkzRAZ5L5Vdave75ZuW42PVCYfOcQuGq6MP/j
         HRqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzb5leSGK+ZQa21TeFT3ikBqlAe5CPle3zByffNGSdmXS7RtHs1TTK1MDxOdchWypQaU0YE9L6VCIW4W/BBqbwpIoxY3J6B6iLTA==
X-Gm-Message-State: AOJu0YwoFhpGDg0VlLT60fMCUK12b5m1ntRybGOtrLgdj45xgv1jDUtH
	R+NllXfBxd7p1ZCigSIdXfMDlCCiZ1SMcjzCABfUG9BmZElIfbsb+f8sHfJgXsM=
X-Google-Smtp-Source: AGHT+IFaWmOFwBRc8KAiQCaZWhB2Xj4wfGi1xUd7+7ImfR66T7TVH2G/qDaQa5ERdO/04WyKzO6HZg==
X-Received: by 2002:a5d:4706:0:b0:361:2b2e:f6dd with SMTP id ffacd0b85a97d-366e94d81a9mr5535719f8f.11.1719359541778;
        Tue, 25 Jun 2024 16:52:21 -0700 (PDT)
Received: from [192.168.0.16] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366387cf44asm14069217f8f.26.2024.06.25.16.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 16:52:21 -0700 (PDT)
Message-ID: <6a8b1bd1-8413-41f7-8889-7f4d42ce0d6d@linaro.org>
Date: Wed, 26 Jun 2024 00:52:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 5/5] arm64: dts: qcom: sc7180: camss: Add CAMSS
 block definition
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: gchan9527@gmail.com, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v3-0-89ece6471431@gmail.com>
 <20240624-b4-sc7180-camss-v3-5-89ece6471431@gmail.com>
 <47997e61-26e5-4643-ac69-17db09be9bb1@linaro.org>
Content-Language: en-US
In-Reply-To: <47997e61-26e5-4643-ac69-17db09be9bb1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/06/2024 00:49, Bryan O'Donoghue wrote:
> Where is the CCI and sensor stuff - could you post a link to your 
> working kernel tree in your next cover letter ?

Found it

https://github.com/torvalds/linux/commit/441ebc3a8948e03a1115dc6710e9519a2594d0ae#diff-4b55839d42d3ffb773ac6d1babc9aa66dc2b9b11b346caea5d2d3ffb6ee900e5

---
bod

