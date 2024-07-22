Return-Path: <devicetree+bounces-87166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E6D938B67
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:41:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2506281A36
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 08:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2681667CD;
	Mon, 22 Jul 2024 08:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h0WxCj0S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0430D22087
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 08:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721637660; cv=none; b=IGbKRVuUmS3xDSvGZbaZHNvc163R3Q4Oz36r80EKJu1xLepX7LF3dUgdp0kWkawqpoRA3kOXdGslMy94kYXr1Z+EHCVhYmehKP3Vc0j3YPXLYcI4quRkcBgJDNv80/UOHIBOP1ti2+Fa+qAiZY1I0zrK6Gp+BZvmjNDOi77U488=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721637660; c=relaxed/simple;
	bh=rd5gt7OTq1wh16/fYPdSCx+OqaTxP7vmTS0BStsnIpc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PdS9rcc9xHN8TZ7xp2dOuxXi+QlXbh3uUABXHUT3Z9bhIdCVBHx99GgCW+5U4/t3/YIMppsCXdg9SRWggcsunabo3gBCvk9L7uEoqaQxJ2uGeN15vWxX6MYUXonVNLecxmXlpjSypkAU/FVauAmbnZK8xW+Lwkp14JbkSQe3ZuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h0WxCj0S; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a77c349bb81so378082166b.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 01:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721637657; x=1722242457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6sBqjtcaBS6bWvMolG9iXxL9SCISwaZRbnWWpeF6PAI=;
        b=h0WxCj0SyV/R3fBqveyjjK+wO2pLVB6cdjubJTpAy3Qn62Dc9VhABbLIKIHmCnjyOT
         Rb4kmE6+lpjyThs6VS4syAHDiN6G4jZTo6UnxZ1UuS2F2cqjHKV9F3e2z7wwxPuN3PWL
         h88m7CDGwwnqmjaMJlP4cudjsQtfFpLnvxJfu7AzKGxs+2X3BjLKt1r9//s/FIld8BFO
         C5Dc8Ce9F1ZrzDQhfgWGZFKKXCitH9VTPNBOmQJfm9sget3FbwP7p11/yDJOWA6Ruz2I
         IztnYaDwJybAJaOjmtIBx7eOY2DOLcfdR24Bb/zM9ALo6QzBLoRt+2atuVjX2aRqdh1r
         RlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721637657; x=1722242457;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6sBqjtcaBS6bWvMolG9iXxL9SCISwaZRbnWWpeF6PAI=;
        b=badL5Z1rpYaG+VSfsm863loG/zrZs2kAKgOXmdZY4lr1djEoSWKMuSJxJ7jo1KU8Vb
         MjuRoMjzy+o1tr4/JFH5SHHjFqDkR9vY0qyk+p1Ke/7IM71+4tu3kSn62Bicd2xVd9JW
         PzGfnt+vFwnuBb2FqrqD7l1AJrnAI+ejIITrH1x0/Ua212qfEeRkkMkUXLjH+EUOJb2M
         P0RStBH8UY3I5130t5h3ejXDPTTBt60SnsUmYYqeagJsYum3Tmx4BocWLhfjIFA/3xdC
         1/Od9/RcCgU4XgA4PYMKH+vRBhA4Jj6lq/b9j+WL1HX2ZAiYFU+mrWfU15DcLsPyMUxG
         3gtA==
X-Forwarded-Encrypted: i=1; AJvYcCUWkvBPMv4vVnnYOBdlLyGPkYnFAXDQdoSkY4Lr/EeEg0NHjGGjXt8vlF9WeOzeeSUCiljY/y1eG4JQO8ODF6W0EGZCAy19gXbJFQ==
X-Gm-Message-State: AOJu0YwhgV/pKpnAZmHfSqZmvcWHEep406vgwv2WTdkWx9pa7AMGFvfw
	35ARyyAkHNxh+B9fTzEV/EZ0nKmeJdqgTvoa/+qgMTcX6WeIOFIQtHufQTJGbX4=
X-Google-Smtp-Source: AGHT+IFCxD5ZKvglrwn7bpVITerYKl2LyN8zwR2LGGjtyt0amkE+9AGMeyw/LRURm40pzEPodezWjg==
X-Received: by 2002:a17:907:2d06:b0:a77:cbe5:413f with SMTP id a640c23a62f3a-a7a4bf9a056mr398001866b.4.1721637657156;
        Mon, 22 Jul 2024 01:40:57 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c95085fsm391665666b.203.2024.07.22.01.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 01:40:56 -0700 (PDT)
Message-ID: <dba47579-645a-45cc-8b7f-f8e5c09602f1@linaro.org>
Date: Mon, 22 Jul 2024 10:40:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] arm64: dts: qcom: sm6115-pro1x: Enable RGB LED
To: Dang Huynh <danct12@riseup.net>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240722-qx1050-feature-expansion-v1-0-c4d486435b96@riseup.net>
 <20240722-qx1050-feature-expansion-v1-10-c4d486435b96@riseup.net>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240722-qx1050-feature-expansion-v1-10-c4d486435b96@riseup.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.07.2024 9:10 AM, Dang Huynh wrote:
> This device has an RGB LED. It is used for notifications.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

