Return-Path: <devicetree+bounces-171566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B515A9F098
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 14:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 817C61A82165
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 12:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4436D268FEB;
	Mon, 28 Apr 2025 12:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mtCdP0sL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7623825DAED
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 12:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745843181; cv=none; b=CFOsGrEhH7EBNI8RAmyLBiYFVUHrdnO1iH8SFeGMiFPn0AP4wUq1rOwUyYFJttczEilSInTf080LpJSSBbqjV0Sw5choZ52hHim2H9DTY/aespzMAQG9sLlf62yp9BNBcNYTzN7tKaNttY20c3MdjyKZ6hKxt9lXw4d8W20Wf6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745843181; c=relaxed/simple;
	bh=lYzVuTzAO0lXDW/pRfcCGAFRK6nd4EKEBMQJ2wGtWGg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xr3bFe2ehyQwMRa8D5pRxLtICYCnsRwbAiS6bDdCdd/mCT5JLTARaJf1i/BVWe2S5dZYDHwFrfjboBJiruy5C5OsmdkpHMM+ayUUqF+NHuuLXOHl77k40NmaxSe3OgdKZaE4lEV+uUl4wqE32awuMSv84hQN4eoQpCKCSXuYWuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mtCdP0sL; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so5339976f8f.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 05:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745843178; x=1746447978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=co5BIfbnH6mxdq8sV4aN5bUuF/8OaVGlXIVj8UR5Su8=;
        b=mtCdP0sLYdmBWtE7zrsvTAWe+fB7P7k1TyH+JY3IwBR10sYigzRvhOXb5jPpaEYm2E
         rMQJg9gsER3dfaMNoMPQUbkse8QNKofZW8CSSGdpgIoD8gMT83RXmKcgzKbD1d0Hxz+S
         kxwqh6mbYq1f67jvH5BpDPDRjv5Aj62QY9FmC1aQiY5mGUt2sVEdfMysW613+fwBbzyG
         t+r7xa5Txm36+mGZN5OVMfs1uA8d+Z0i++oam4fjQNYGMTcIKQBvyZRqngiyGNlQprre
         +EL0XlosplxlT1hNRyBzoFn3ysFvJ78lDgQZ703O+TOqT462eF4S4TPR/vL6lROU9g6e
         heCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745843178; x=1746447978;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=co5BIfbnH6mxdq8sV4aN5bUuF/8OaVGlXIVj8UR5Su8=;
        b=r65tKg6Z3k0JwqPyyRd88A7LnqyjPHcCAcLka2fpBELBrUO65Gk4juGa2P/keW4Eyz
         imST4U+RGZe2HO0VefQTV7yFfyWfa6P25IDlH/yfIZax4+f/sKrofS75saxNRrnWvoQP
         JtEd4CV7aKRJh7dIatSa96AzQJ0z2GMuoWbgGgj3Y9oBA6q+14TEc6RL4bGrZxw/X8Eo
         TyRFGFSEYLmEG3MfuJQRl1YPA1YQzpiyf3EjY4L5nmQE3KLFgPx3z54YcF/IS1g5jxcY
         La46cBqHY1u1vBLtgs5Z4F0j/7PqWYxdWHCEkmsyCWVNOWE0r96GTxjJlsE6xukZMMVt
         wZIw==
X-Forwarded-Encrypted: i=1; AJvYcCWh67z5mp6sg60eRSR+sn1p0tcI8XmSU/20F/opW075i9CIiwWm9ZwbbVnP8SSzN/U1W8ssHj98N3py@vger.kernel.org
X-Gm-Message-State: AOJu0YzomoKh9sAaPlNyf0RLmpnUSi3xYfDdidsiwGH230LaHrlpMeKv
	vRxhM8nj/FqXHREb2nDD63EkrxX1pUIDWgXSazD9yIUl1OGALxHtETzzs0qTGjk=
X-Gm-Gg: ASbGncsNgP0YP2iP+sa8UtPfeigsPvY7Qoq26/AXeV5tJNoT0f9nvW9dYNpj4tsu5yB
	MAhAIYuZBWZjLajPvY/Qnn4m4lpEaB8xXwms5qrs5fJTdY0pjAR0FEV6T5VYO5VIGIZ40DiN21Z
	glwP3x1NLbajGAC4/lDZ8T5mWJuJ5vlQD5RiFB9im5JRrYUoD02jN/PJYFdywnH+cED7EznOtpR
	042OHvlO86TEZMDR9Rd331IlWqGsqF+Cs+4d1t4FEm+LjitSKtSr5dr7yp/UsenwHj4BqhZ+Q6A
	Iml0RqmaFLOu/pd8Hl28MPB1YKbZuSvoUEzV5EZ8ALRwKi6ddmFfMJ9tjppNiDoztcpiazpFQbw
	iJPI17Q==
X-Google-Smtp-Source: AGHT+IFtg5gANdNSZfspUoCUzrUK2EdsGN0jIu70mhAaQLR0b//Q691XryrnFCuvoB6b7ZknFBW73w==
X-Received: by 2002:a05:6000:430a:b0:3a0:8495:d66f with SMTP id ffacd0b85a97d-3a08495d6admr2559745f8f.23.1745843177763;
        Mon, 28 Apr 2025 05:26:17 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e5d4b0sm10933059f8f.89.2025.04.28.05.26.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 05:26:17 -0700 (PDT)
Message-ID: <364500a3-3343-42c2-a0cb-05a1bf39936c@linaro.org>
Date: Mon, 28 Apr 2025 13:26:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: media: qcom,x1e80100-camss: Fixup
 csiphy supply names
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, dmitry.baryshkov@oss.qualcomm.com,
 loic.poulain@oss.qualcomm.com, vladimir.zapolskiy@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250426-b4-media-committers-25-04-25-camss-supplies-v3-0-19e5e72ffc3e@linaro.org>
 <20250426-b4-media-committers-25-04-25-camss-supplies-v3-1-19e5e72ffc3e@linaro.org>
 <20250428-lovely-flawless-grasshopper-bacbfa@kuoka>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250428-lovely-flawless-grasshopper-bacbfa@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/04/2025 08:14, Krzysztof Kozlowski wrote:
> Block has VDD_A_CSI_0_1_1P2 input, not separate one for CSI0 and CS1.
> I don't get what is the benefit of this and commit msg does not help me
> to understand such choice.
> 
> On IRC I clarified you could have less supplies in the binding than
> number of actual pins, to make things simpler and more consistent, but
> you did here reverse: more supplies which do not exist.

So the idea here is to make a consistent

- csiphy#-voltage-XpY

Which means that each PHY will have voltage rail names like

vdd-csiphy0-0p8
vdd-csiphy0-1p2
vdd-csiphy0-1p8

Irrespective of the SoC pin name.

The motivation for that is to have the names be consistent across SoCs 
which is I believe what we have discussed should be the case.

That means that each phy will have its own named set of voltage rails, 
consistently named across SoCs even if the pin-name is shared by the 
PHYs on the SoC pinout.

Is that not the namespace consistency you've been looking for ?

---
bod

