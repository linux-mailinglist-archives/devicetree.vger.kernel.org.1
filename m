Return-Path: <devicetree+bounces-81261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A019191BBBA
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 11:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40A53B238A3
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BDD6155301;
	Fri, 28 Jun 2024 09:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kqnCYgHL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A67E15278D
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 09:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719567692; cv=none; b=FoGav5/C3kTqm/7eIULduKyiCcf5wCiNgElIYQKQi+A7qjYFCdSh9XLUjuQq34aSiexbczNBEsNg7Ri2lkhe24JDaVie60r72nf0gceE2brc1EA5y5xPZ4R7DSydFuKmGAXjUxxzNubOCcm0O3jVngE20NoE1mundWrg7EXLDog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719567692; c=relaxed/simple;
	bh=tVEgmpllYVknMfJoknc4RL0kqVdAzaKIv/+L42tFl3M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E/IPM1Qq9n5afQc1qoGmz8p7zYC0ZNE5nuz+A5r9OzpqGZmTEl+jEOBmSdlPvwUHIFD8DS36OAhHNufolq/3gPH9sRs3m4yDtefG1HIQRaGmlXXqCjp4b4BuGTRdQI0QjQQ9eV7A9xwtQ6lf/guV4xsY3h/Lre/kqXTsz0E1BwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kqnCYgHL; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-36743abace4so951557f8f.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 02:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719567690; x=1720172490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tVEgmpllYVknMfJoknc4RL0kqVdAzaKIv/+L42tFl3M=;
        b=kqnCYgHLtrA+wfcXS5LIzuLl073kIzp+5DLtUsQMKBuejxoJfkdQhIOe8KuhcCMAds
         j58QpBqzWC9GfzobhI2zgiBrUVi//xEGZP3jz9PaQ8g6Zp0Nq+4CpIIYRcR9vz63K0OX
         HI4g5SSgBGhnc7HmUuT4JbfVvpWiIqC4arj2n6sJVo1bS1oNrQV50bE21V7xH8W0/TVW
         PcuwOXu344SeIUsmeaP1Pj39fAMReYMpzf/9SCAa2LT8BwURxdX/bIdIhQpI53Yanb/E
         WHZsfhgvzUIQlNh8p9b2LNYFr8DZGOrsLeQOf3cEeDXAuHE9JfpGdexF/3vzovNQhBDl
         Pk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719567690; x=1720172490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tVEgmpllYVknMfJoknc4RL0kqVdAzaKIv/+L42tFl3M=;
        b=ITsIF0TxdtihWSh+9u6ZCDEzxCd8X8lL82HvLn8i+trZWLQJxy6LE4Aq2JWo5JK51a
         WwVk2OuANJX3owtpwUf1//Iefgwey/Tz2tyI/SZxozUns9Lh7R/0aKXOH4lVAV68CwTt
         kjPYHqg2orG/ovWhWRix5G39SXsM86R7K49Pd0eCMg5YllnWZZT10tiNQJelSPwSGzQf
         A+HLIoPfKewXEoeoskZ4SCPMfe0XQn3AYvojXqFOcwj4pPfvnhXDQntdTSQIvHUbROC0
         3JaGz3FnkO/5R9J4/gY7Bq5dCobfYQBaJ0DDIf3NccQesrJPLzAi00EVu4kGfPMgukxY
         bVWw==
X-Forwarded-Encrypted: i=1; AJvYcCX2DymxAgOZeXTjn5DWCZZeA9o3iIHwmA15wFw6vPJBxQJm7OvTu3RNKjmFXBgy4thRmC04CUOG/PHV+6iqxdPDJevgdiNe2VzLYg==
X-Gm-Message-State: AOJu0YwyMJMjXZfZ/M8ebZHH0r4FIIxy3dVPmrJc5OV5XOt3vSOgT/Re
	C9x3bB2uc9P2+SNycth4HFn4o5qiKWY30gjsCvljyFBB0djrSQ6/JW8DJ4SB/Ck=
X-Google-Smtp-Source: AGHT+IHbI/TgEs3+bVgph0HaYhgOP7yCzLVzQ4yGSROGza3QUnuTQHGw7yvZ+TECrn6gMliVeuqtEA==
X-Received: by 2002:a5d:410c:0:b0:362:70f6:697d with SMTP id ffacd0b85a97d-36760a7e2ffmr1001841f8f.16.1719567689950;
        Fri, 28 Jun 2024 02:41:29 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0fba2dsm1716761f8f.73.2024.06.28.02.41.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 02:41:29 -0700 (PDT)
Message-ID: <25c3e788-1551-4779-9178-393d2a26e147@linaro.org>
Date: Fri, 28 Jun 2024 10:41:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 2/5] media: camss: csiphy-3ph: Add Gen2 v1.2.2
 two-phase MIPI CSI-2 DPHY init
To: gchan9527@gmail.com, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v3-0-89ece6471431@gmail.com>
 <20240624-b4-sc7180-camss-v3-2-89ece6471431@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240624-b4-sc7180-camss-v3-2-89ece6471431@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/06/2024 13:13, George Chan via B4 Relay wrote:
> +/* GEN2 1.2.2 2PH */
> +struct
> +csiphy_reg_t lane_regs_sc7180[5][23] = {

Small nit

static const struct
csiphy_reg_t

not

struct
csiphy_reg_t

e.g.

/* GEN2 1.0 2PH */
static const struct
csiphy_lane_regs lane_regs_sdm845

---
bod

