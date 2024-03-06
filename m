Return-Path: <devicetree+bounces-48841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B51B7873C4B
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 17:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69AAA1F290A3
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 16:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D0F5FB95;
	Wed,  6 Mar 2024 16:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IrI6ntUm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9152D7B8
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 16:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709742656; cv=none; b=Mr3uKQwPoLDKoKnOnODxb23CjGit23y/zVneVwUHbZ9fS6uQHzjP+Z3mXBf7Nwv6sB/CSdG+zOst65NBGg1jWQS4l072Hl/k/eY/1TrAknniV1aVJojiLBRBBF1SKU6jtLh4ZnFnxCKRkcFBxL4wZciUqIN5ePqmimDfShCrKW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709742656; c=relaxed/simple;
	bh=mEQTa2n/RojLzk55y8oU1DPrlJiA+JXQwKuEQ+Ae18M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rqLhszMNo3QkKvgrcQgHQpDONW8+FeqmTJpHPLfNsH+HykdfYaOUeX2UqzN4BObGvaKNsDwh6ulQZdlIldkO/8Fhw6hgLGAU3tCsiVHDfUpDxJ/7qIW3rRDL/BxLhKRMZGIoRRcTxeRF+meolltx1g+NvDi4XdEc25YRTv71Weo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IrI6ntUm; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-512ed314881so6736605e87.2
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 08:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709742653; x=1710347453; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VxKIFmdh08s6jzr+qngXZC/NeVk7xZJaEM83kdDNq3g=;
        b=IrI6ntUmFpgUIwgkibuLJn8qUiOK/Sj8/UiHky0joyJIRsg/0a2Sykizj/gIBRBKWT
         GfEf4NDfwjINPAutN5CMqlKGb+N0SYTQ0a6uCgWXjlB3N9Ec28flmqPCfz6EMRd7gF2g
         fEaNBmuAePjMO1AOjekv4yh/qz7LDC1KxVtOIG1aepDYAaSMeYCTG5mseMX1WkAQRsWm
         W8sWCVNTTKD6ZuTkKeKE6UZ5Vk+Y4YkUBuHLPzknMnpnRtcynXcfZUM4rwQOTf45suwf
         +71pxJaQvzjV6FBZ7qeujBd81REvwETf5zWYg0r/C52gWcE1U0D/fCGx1I/szLiEDASu
         YJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709742653; x=1710347453;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VxKIFmdh08s6jzr+qngXZC/NeVk7xZJaEM83kdDNq3g=;
        b=ZHnVyxoWI/YKh0N3IF2PINRCRuUHgB1OR4JU36XB3Blb3AjcjXr5khI9Sbx1N4aE/s
         uwm5WdTeAhaJe14299QFl3ShEWvNDicjnPtL/wYTW6WZTmB/yJkd7A7IKKY39QWMDuuU
         k2vx8JutExcWFPRmPN1uxCwFcHwPJhXpX4ZvTMnU+IpyuwdKvwkA81WImTYBz1X9UXkj
         +7zUOClycN9pOUkjjGylXdwxVXuFk5OttQM6IsVrIwLImB6voZmGQa+gmxTEurhl+W04
         vlbUxnNrnpKaMo2VYo8TXoTDWe6tHB0VGE0NrAKrRv2hRg2GSvo1qEyNagR4XatNlRG0
         4Qcw==
X-Forwarded-Encrypted: i=1; AJvYcCUNUxQTEkSWYvXa2s8Ary79rtVfnPAkSt5taH+yl+wpFmcAOArJhUSU1qOEvSH6GaqU5MsSI/LE7paR7WfAd9t59ZUIDBqsheUkUQ==
X-Gm-Message-State: AOJu0Yzpmvwvz6WNU4O/JSU01XbgZZHAng3i2iHXuPPhCILkAxFdvvmr
	F0+OwqKzPPc0HMJjXgzUkFtXI5wON1CLfLNWw8jHKU1hw7GEQz07hZnAxDFAlVU=
X-Google-Smtp-Source: AGHT+IF+8CzuRKnFLqJ9jYc+QlJyXa71qUfHZR0qBqm2jmazZU42WLb6NJYLP5GMFvaIKA4KaDJTGg==
X-Received: by 2002:ac2:5f49:0:b0:513:37a1:ae60 with SMTP id 9-20020ac25f49000000b0051337a1ae60mr3249118lfz.34.1709742652689;
        Wed, 06 Mar 2024 08:30:52 -0800 (PST)
Received: from [87.246.221.128] (netpanel-87-246-221-128.pol.akademiki.lublin.pl. [87.246.221.128])
        by smtp.gmail.com with ESMTPSA id fc9-20020a056512138900b005133c744501sm1903913lfb.42.2024.03.06.08.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 08:30:52 -0800 (PST)
Message-ID: <5440bc2c-f631-4abe-82ae-ba061934e0fd@linaro.org>
Date: Wed, 6 Mar 2024 17:30:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] ARM: dts: qcom: msm8974pro-castor: Clean up
 formatting
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <andy.gross@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240306-castor-changes-v1-0-2286eaf85fff@z3ntu.xyz>
 <20240306-castor-changes-v1-1-2286eaf85fff@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240306-castor-changes-v1-1-2286eaf85fff@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/6/24 00:18, Luca Weiss wrote:
> Clean up some easy things do prepare the dts for further changes.
> 
> * Move pinctrl-names below pinctrl-*
> * Move status as last property
> * Remove default linux,input-type value
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

