Return-Path: <devicetree+bounces-133864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 774EB9FBF76
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 16:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96D1B163008
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 15:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2011D7982;
	Tue, 24 Dec 2024 15:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="MHqG886M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE61192D76
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 15:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735053114; cv=none; b=dLYo48ds8lob4h6Q4+IwMcqP3/kM6o+8LXX5oCndkLJk1Be/rFfU+voQS4MsIvbN2p7NuTlFXQG28bgcnID7vpzsaJP3jxflWWqGZWImquF4N83kBRJhLZZjxfgKReRAJ7nSYdCIPy2kIj+re+toPalGtdGp9aL7aET2zBvnlyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735053114; c=relaxed/simple;
	bh=32/9jeUNR5xGHENJqi0kWpsE0A2dJmVIom3XcizqMnI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bvjVGf5Ki5f+nV4faqRFCZyAdA5QCsYS69cAgA29xNjpGBGXoNkNjniQQtZzWGGjjdbUkDEwL03Ob3ETbHlABl7vmgmcFJZX14nuHa7BxpARlbfUOEwI6AWLCgrQFBTzq9WTJ/T8laIQb1VBLuFb66im+CfD0TxemaQvhSRFMMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=MHqG886M; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3a8c7b02d68so42416945ab.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 07:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1735053110; x=1735657910; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S995D1BChvz9yt5vmAm3xdZROw5Z6dy8WVoLnD9/Eb4=;
        b=MHqG886MUISbgp2iauEfyh5fk5/bV1L4fxEmCOQPAkMSdnf2m7Beo6O+Xy0z6KXV8y
         TWGjOZQ/2F0tANLyhwN9dNHJm0KxbxLu19rn9igiJPvIqrzwcHLvp8MDgC/Xrj0ezTI7
         SELK74pIeqFhZQgAF+RPw9l9nRV7fY48FOLuw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735053110; x=1735657910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S995D1BChvz9yt5vmAm3xdZROw5Z6dy8WVoLnD9/Eb4=;
        b=RaW0/d7LjYemAnBBmdtVj9tOVPMDC9EXO5XpQWt8GS4pbk5MZprw6z69thNB3kMqoB
         KnpEAKwZ8H7isUarmSr9t6tYDxHgxqfWpvMkip8nXIyfZWCAT7iHNrGMSgnN/nhSkktH
         LHAZ51D7L4aw5CNHif6T0oGg7x9tAX38i5FsC/RHdc6/SuSTUqjtcSTAUwujLm5OxsrO
         okohDmL+TW0xmKRb/nuljTP1xdrUqoZPZsQDYWAMwIqNsJZTRLRITla8bBSNkX7YZMwR
         CQxzVQHlEtT7CM5d2rsY9SiwDznVnLA1zNIe4x7u3rYDoFjcoRP3k5K37bZrzV1Z2xEP
         CYaw==
X-Forwarded-Encrypted: i=1; AJvYcCXG+bzMHy3MdDa6BIEtaxMpZ+rRyXwESZ2QOE6AAZ+QyqX7ugytMLC2VPc+xx9S9HQok770ntNCwDpe@vger.kernel.org
X-Gm-Message-State: AOJu0YyKHlqAdOARLd6BRVSvDt+E0PGOVWJ6SMkwkee4Z51F+UTBKY/e
	H+rUBwTeZOU625cOscMf+5xqCIDN7SYlp+4k3RJvSd5UXyvAY2JAG0w7OqpSEA==
X-Gm-Gg: ASbGncux2mz+YQcBIe2U888xOh+K+vp6KfSDnY0cApbdWCeZuHn3HUORslj9f+w2ajL
	U0MBDPYnnuTEkFE66U4t6v9BqEjFg4fx7kIZYhxWGBo3I0Flxu85SesdT4JnH4muAXRvrp5CeBh
	GDH8iPz+1Uq/EBLqKmaQVBq0Dd8CV8XPeLFBtooe7gmDoiKWp9pbkRZ1u2C4OmV+2+HBcirTxi6
	7ghPnEq7CMxLahK2J94UZpyNR5qaGNlwunOoTtxQdOX7xZG5Q/AU56A3UuVK1grgl995HQKOvAJ
	Vl75uWtCtJv6x5M=
X-Google-Smtp-Source: AGHT+IHYBdH6ARXM6tUUvPqIK0NxZwNMF8S16az3nUFWcrObDtSmLMzvDHtVGdTyt0YZcWxtyapJOg==
X-Received: by 2002:a05:6e02:2481:b0:3a7:2204:c83e with SMTP id e9e14a558f8ab-3c2d2782867mr184228015ab.10.1735053110487;
        Tue, 24 Dec 2024 07:11:50 -0800 (PST)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id 8926c6da1cb9f-4e68bf4f4b9sm2733308173.26.2024.12.24.07.11.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Dec 2024 07:11:49 -0800 (PST)
Message-ID: <503786f9-588c-4661-8126-37ce70fc8be0@ieee.org>
Date: Tue, 24 Dec 2024 09:11:48 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: document qcm2290
 compatible
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Wojciech Slenska <wojciech.slenska@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-2-wojciech.slenska@gmail.com>
 <7d33eed7-92ba-4cbb-89b0-9b7e894f1c94@oss.qualcomm.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <7d33eed7-92ba-4cbb-89b0-9b7e894f1c94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/20/24 7:25 AM, Konrad Dybcio wrote:
> On 20.12.2024 8:35 AM, Wojciech Slenska wrote:
>> Document that ipa on qcm2290 uses version 4.2, the same
>> as sc7180.
>>
>> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
>> ---
> 
> FWIW this needs some more work on the Linux side, the IPA driver
> currently hardcodes a reference to IMEM, which has a different
> base between these two SoCs.

I have only glanced at this so far.  At the moment I don't
know whether this device uses a different range in IMEM, but
Konrad's message suggests it does.  And if so, he's correct:
the IMEM range needs to be defined differently (perhaps in
Device Tree) so that different SoCs using the same version
of IPA but different IMEM ranges can function correctly.

Downstream code should be consulted to determine this, and
as of now I have not done that.

					-Alex

> The IMEM region doesn't seem to be used as of current, but things
> will explode the second it is.
> 
> A long overdue update would be to make the IPA driver consume
> a syscon/memory-region-like property pointing to IMEM (or a slice
> of it, maybe Alex knows what it was supposed to be used for).
> 
> Konrad


