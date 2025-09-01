Return-Path: <devicetree+bounces-211177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ACCB3DD92
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DF697A2CE7
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 09:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60ABF3009F8;
	Mon,  1 Sep 2025 09:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LMG/FE5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1CF2FF150
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 09:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756717483; cv=none; b=ui0Qk8ZC0JKa+5MsLrATMhO+CgL16xnp105yAgzZGlTMqIUz9mx20pOznBZK1b1g53iXAy4P2noBNi1y3uegUZ2rcQzmtlNEHP7LuzQtWjQR1TzWo1wamZJQf20NIaya2bDEhNKFiTTIVABFJYr5q20JtOJhpJCNt++VdDdxq78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756717483; c=relaxed/simple;
	bh=ylfMvwdHcWV67FG167GMSdGd2pzSjGgujwNJPJyPlGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J2VH9k4qRnj6i4IA1atuXwZIpm+jyEWSrdwdWUyEfwFAWxQovb9VCuzR9TyzjpcJ13InIZ6aO4DIHlKNzq+5KReFulRMkUZqJms3l5RjxMdxwiMFbfs/pJaWhRY4zMpowiKZEQsxN4BO4GxtpD5hF4LJEqX/FmKtXTtva8Q1yL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LMG/FE5B; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3cf991e8bb8so1665485f8f.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 02:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756717479; x=1757322279; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cwVv68lybtG/3lTbSeRMLSCB2s0eqf0axoIfKgt8qqM=;
        b=LMG/FE5BJKm93DBOnVGlJFPT1lQt94MTpajgNUoh04UkSfYEfuJjgap1E4uZgrPAOc
         7QF3InzlGGE5uxWvcMClzots8u0hG5ahU1Mu8JepZB8mkT+yDZryKY+HuynHDWZAbyJJ
         p459GGXBmi7zkM7E8p5LMn31ma2tgGe8sBxBIIbikGGanhufGqYL4YZR/6DshimcLXez
         XHRWESp+VMi+5NZpywAHuUiLajvuzaVmHWmO1KSTmeafwmA5iW5bNG9snqXk/GESJjjP
         ATgnqOi/TpS68GIdS64kQWcKuFzjCYtw5Ip1KP9hwkwRXHxEl6JnGfi5zikwYfvHz+yv
         dg8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756717479; x=1757322279;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cwVv68lybtG/3lTbSeRMLSCB2s0eqf0axoIfKgt8qqM=;
        b=FUEtYFXf2zQLEX5HfFleM35uRhTU8kFohD31430Av7F5iskDYDInQHm1HXPz07nniu
         LQf2XoqCWMwlYWRbuCW8X762b+wg4U9dU3Ao8Xgg7CBye7x5o6U81BAZEfhL024ff/rr
         ZqgnXzhXBo/hMpeEGL1UfAm7+VRowj4cVgGVkIp8oNtEgexzX8MXxVPjTgrxVb6Isqao
         PWj0cYZPpXwVpo3Cv0JgnRmIz0MATUQhKBYwL0lW/91YrqC4HJkOSCdkO38i3+ruhdHV
         aCtkJYzeRytQgTLAHFZ0t+hZozTPMSB43gBJSFJj5lIeyQnKrRvVicRSrsL+6s/D9Xh3
         fJOA==
X-Forwarded-Encrypted: i=1; AJvYcCVxbo+Gns3zX3iWAoMWO1lq+cKHF0m7QSmRLICpRIgJQNT0nIIDu8NoT6aAo2/uvrxbOjihGjy76JA2@vger.kernel.org
X-Gm-Message-State: AOJu0YzxsUNu7m5TzIcy3eBqQPTJjAtHLlqjXk0w9bl4WpqAjbOWvaDf
	oVaN3D2qURKPFhdRYVmydUxoXIPXEa3tq2dDHSQm1mGaq4tEJFYi9F0LXFVPTolJ3+Q=
X-Gm-Gg: ASbGncttK87tjD4EY0GT+XZbNZ95epkP+vK1D2SuMIeALdtygMR5pnKLlLTkpk5Uh7p
	QJSOF9txjvdMjkka0jekTdge3YMWaN8ll0hDnWr/CDrIoH9dYyDzX71oZWri+JlE0gyvl/HjvVH
	BCYmjs9OhmNPIs0QZZYfc4aR/v7c5XIQ0IYFRzsOM4BvywkliudLRJ/8y0LUZvQFtfi2KAS4cix
	1Qs6CtfTTgxJYOMu9BOpKi8nfc9wbNPxdSXHuXaj0nbTeJyo/nmeTtSd2kyp9ZkVPWbnJQUgeLX
	GvNeZeLpa0dNcosuVpamtmzOTfMVF+kgtKunvYtpWnDHcheSD1npzALo5lmQvJS5J1Z3ltxVwJq
	g6pDoJzywfgTJXD7m48iGDDyd9YWg+sfe6IFkoO+F97DP1zM8OVQq6kPjQqBo8qbjnM+o377UA1
	ioy61N9lYZrrEyKYeh05aIfzWxFgnmQA==
X-Google-Smtp-Source: AGHT+IF5ozFXuC12DhRU7wnhvEb/Eaxn298/3hrvqF72A12C7sUxgS1LCCpfGamLqO+HTku4EuOKTg==
X-Received: by 2002:a05:6000:1ac8:b0:3d1:9202:9e with SMTP id ffacd0b85a97d-3d1de4bb305mr6081112f8f.36.1756717479121;
        Mon, 01 Sep 2025 02:04:39 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e9c41cfsm147188325e9.21.2025.09.01.02.04.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 02:04:38 -0700 (PDT)
Message-ID: <498db18b-f6bc-4678-9d70-7741e3025185@linaro.org>
Date: Mon, 1 Sep 2025 10:04:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/9] media: qcom: camss: Add support for VFE 690
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250703171938.3606998-1-quic_vikramsa@quicinc.com>
 <20250703171938.3606998-9-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250703171938.3606998-9-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/07/2025 18:19, Vikram Sharma wrote:
> +		!strcmp(clock->name, "camnoc_axi"));

This is causing a regression on other platforms because they define 
camnnoc_axi but not @ the rate of the pixel clock.

In fact its not very obvious why the CAMNOC AXI would want to have a 
pixel clock applied to the interconnect fabric.

The following resolves the regression for me. I can either merge with 
this change or I'll have to drop the VFE690 changes until you come back 
with something else.

➜ deckard@sagittarius-a  ~/Development/qualcomm/qlt-kernel 
git:(aaa8b5ab704f3) ✗ git diff
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c 
b/drivers/media/platform/qcom/camss/camss-vfe.c
index e969de74818f1..1aa0ba5ad8d60 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -913,8 +913,7 @@ static int vfe_match_clock_names(struct vfe_device *vfe,

         return (!strcmp(clock->name, vfe_name) ||
                 !strcmp(clock->name, vfe_lite_name) ||
-               !strcmp(clock->name, "vfe_lite") ||
-               !strcmp(clock->name, "camnoc_axi"));
+               !strcmp(clock->name, "vfe_lite"));

---
bod

