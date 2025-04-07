Return-Path: <devicetree+bounces-164060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D90A7EF7F
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 23:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D01773ACBDE
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 20:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74FBC223304;
	Mon,  7 Apr 2025 20:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="JDhgumvW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5E621B9F7
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 20:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744059467; cv=none; b=kvnDBsOu7AwnNAF0T7X/S4zknoWQjPMdKemlDVz1raKNNKN9xg+dU7wv+sbLUMbn6a2u5AeYOqoIS9GoAbXencdaniI2rvmXPHsoJpV3mT6iHj6g5+4uCa9Rf3N4W41RQYYGCv27X7EYR0vYN4d5X3p2azen8KjOku81NYbgI9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744059467; c=relaxed/simple;
	bh=79PDk3ouoTDCbg9EC4eLer8PC7RI3PbFhi2CX7eUjt4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nyjAq68Bh8bPTtcnv5vVPNRdDqSnayrXrdionqt014pqx9acORptEQkUUCgZLwtHiwzUtpeLEFkqZDDo3wUpydq18c4QJtnqSw0E/uxTWnz9E0ugu2sJdJcV+WHY6TkKwY79p3HnrVGRUdFQZ1VZkdvIMbyAO3oJN2cB4czar9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=JDhgumvW; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-72a0a9cb29fso2833671a34.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 13:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744059465; x=1744664265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1P1bB50EoqnLQLyqYMszDdM6AI6/6Y+zrQz9fxoUI6k=;
        b=JDhgumvWeWhmg6TVNh1dfBEbL0jCaisNolTLMxvRav5LetDhTw1TnaFLXWZ+d/aQx3
         3NZmXeJtcaNTiSf40zD5F4bG0dLjd4gJN0gezxGL5Yu3xs7JRfZxZ/0peaLQ8zhTB32G
         4VgNNb12kl9meW0WTMgo4cmNUtt0/HElbwrAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744059465; x=1744664265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1P1bB50EoqnLQLyqYMszDdM6AI6/6Y+zrQz9fxoUI6k=;
        b=M4YW+Oc+b2c9PchR9b5d9M6fYIhQ39oM45EgH/mSxmpPAr4qF3YVXBOrzpCjOvuvAI
         cmRV2Y+GVhjKEdeBCpkxy85DnHpTVVYEbLXi+d2D4DLVt7BEdcsDW30ShAO/sOpl6G70
         vLvdpXRNfgpcFBwsHlIV37GEP0Ch5fkCd3Wm/mms3LFxQ38c6eZMFt2jVheVLvD6oE6x
         7+WgpyKgadoH2Fsy98RUq3TmSDWOKe5fruW812A4dz3rQKF4KGKBYMMn0rS413mYKDMg
         +Ac9hZOiEI0WEGx4QiVQ/qGY1pzR/qG2IQKH0QHEB2JAx1IfrtkUtOVIHNW6CwrSmA9g
         EEOA==
X-Forwarded-Encrypted: i=1; AJvYcCX/n1Wa7wcIIYd3mRMnLA3XWObKS9LAI+phxqR/2CwdABQwWCwtPEBw+AJhAqpOEVTbMY1sFGZC7gBL@vger.kernel.org
X-Gm-Message-State: AOJu0YyEgSmzYqljYrx5io5ahVeF3cdY4wycJiD9B60tvOoD+mQe2QK4
	W8steWL3elkXVXb/vS+QlAdd1nILWP9b92bAJOObD7JefJrYxH54pJg9fvb03g==
X-Gm-Gg: ASbGncv4LSoMwqHH+jQYxk4T+czzHsJ/Ee/gpu5Mme/rEuaCMhVQwQGk449GDxp/pMq
	Xix02yn/1oiyWdTn54ZqBI7wM9MTZ18xNsP1xqZ96GLsIqI7cWy2uDqt8zATp4WHFWiRqAPLJel
	9X1UkXeer3xF1TdHJeTLp0W/xy11TwBopY1ZLA2R1+TlcUZcfVIgeQhAqmNo/1LX0D3vVQgmSBR
	20n1g3jcBc7wnGgqqGybBWzSMwwoegLV9A0XaN39h9BbRWORqbKusEdpgA+F0ywM1+iOFzrquUV
	TYujQTIC/TaPaPj8afGM39QxdoKjTY+jEBU7G9JeSJDlHNedkUlueN01xC52WyX7aBFO3YcUakM
	Ao1WoEjCzrBfYHQ==
X-Google-Smtp-Source: AGHT+IEgB2cpBsVgFxIZDN4uHbzal3DgE5qQcSbB5Pp7Ye6e6rk2ZIUvtGVUOARB/OFjKfpS9l0J5g==
X-Received: by 2002:a05:6830:4413:b0:72a:449e:2b6e with SMTP id 46e09a7af769-72e40d1f54dmr6733882a34.5.1744059464658;
        Mon, 07 Apr 2025 13:57:44 -0700 (PDT)
Received: from [10.69.70.230] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e652545c1sm92973a34.51.2025.04.07.13.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 13:57:44 -0700 (PDT)
Message-ID: <9088acd0-4650-4b10-88f9-6b6c0b1f9978@broadcom.com>
Date: Mon, 7 Apr 2025 13:57:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: mailbox: Add support for bcm74110
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, jassisinghbrar@gmail.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20250404222058.396134-1-justin.chen@broadcom.com>
 <20250404222058.396134-2-justin.chen@broadcom.com>
 <b32aa644-6984-476b-abc0-a5416f551bba@kernel.org>
Content-Language: en-US
From: Justin Chen <justin.chen@broadcom.com>
In-Reply-To: <b32aa644-6984-476b-abc0-a5416f551bba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 4/6/25 5:27 AM, Krzysztof Kozlowski wrote:
> On 05/04/2025 00:20, justin.chen@broadcom.com wrote:
>> +
>> +maintainers:
>> +  - Justin Chen <justin.chen@broadcom.com>
>> +  - Florian Fainelli <florian.fainelli@broadcom.com>
>> +
>> +description: Broadcom mailbox hardware first introduced with 74110
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - brcm,bcm74110-mbox
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    minItems: 1
> 
> Third version of patchset, third entirely different code.
> 
> Decide finally what is the hardware and send binding matching it.
> Hardware did not change last one week three times.
> 
> Drop minItems or explain why this is flexible on the same SoC or between
> boards using same SoC. You can always point me to upstream DTS, which
> would solve many questions.
> 

We do not have an upstream DTS. We have a scripting engine that 
generates a DTS and we distribute DTBs to our customers. The example 
from v2 of my patch was copied from said generated DTS.

Apologies as I navigate through the different yaml keywords here. The HW
isn't changing, I am just struggling with representing the HW using the
different keywords. And the different implications of using said keywords.

Here is what I have for v4.
      items:
        - description: RX doorbell and watermark interrupts
        - description: TX doorbell and watermark interrupts
+    description:
+      RX interrupts are required to notify the host of pending messages. TX
+      interrupts are optional. The TX doorbell interrupt is not used by the
+      host, but watermark interrupts may be used to notify a host 
waiting on
+      a full out queue.

Thanks,
Justin

>> +    items:
>> +      - description: RX doorbell and watermark interrupts
>> +      - description: TX doorbell and watermark interrupts
>> +
> 
> 
> Best regards,
> Krzysztof


