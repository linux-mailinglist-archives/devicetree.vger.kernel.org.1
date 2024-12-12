Return-Path: <devicetree+bounces-130117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA489EE069
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 08:42:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F32651885FC1
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6E5C20B1F1;
	Thu, 12 Dec 2024 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yf51mtGd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A09420ADF3
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733989353; cv=none; b=NFC7X0gOLu1MSu4DAkWPQPMMYFa3C6aOjOvtXvFtfq9wkY/JNER5cDv+BtV6r5UTeDit4tLYM7ey+7aqoCst1K8GCZtfRWzciHnzFCJqVzpUIxRuy0AbuFnlIqTjzujP33/p2MAh/GsbaJB0QUL5Aq105YVm/bGbQrA4P96Qc0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733989353; c=relaxed/simple;
	bh=lCCQie4pQ1F9vSOZNO0l3UQB38u97D8jap8/KM8tuB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NCXG/WE5gdguo2RLvGA0+JdMBXr1FWMxz7DRvMRNccTRHJyu9IU9m5rL6dfpBXo5UltUnths+71hZPAgpZyuT8b7TIcIANtdny+HxOuItVS7XGvZs1SyCu4cJzNlwTyDDaj/CUTMR/N130L4JX13R+LM5SfIVjzTdHRZIvcii0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yf51mtGd; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54019dfd772so52592e87.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 23:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733989350; x=1734594150; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fb6HVbCShRnjLJanLtEWXGGQsHuXVT1l5Vx7FnmvFko=;
        b=yf51mtGdpgJqIoW1gLN0gt15FPracGC9CQ/kvx8r46KGzLBvfFtAOmaVNhiru1CGO9
         XrsAC3WNQ5Ze7Z2VXfCCn7rA+lyytucPpFgXf0L6yMFCX5pu9gN62EKKiO+AcE5xI5Qc
         iwCOqXUYKLH5MHraP3nLVZCNW+1Ln2UvlU4GPHtw8eUts8kLjI2jL8T3HXMwYzlMjfkd
         WfnHRWVCvBPlA1r6Hepe8dcYMlcuEzSKf7/HJBUt9uftXjp9RMNy9jQx038Hdz8qXqup
         IWTP0AdfP3GHiQsc1x0DJMefZDqXq518QGZyyUEnfLTPEZKFnohGWuM90O1VSRFIN5f7
         fYLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733989350; x=1734594150;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fb6HVbCShRnjLJanLtEWXGGQsHuXVT1l5Vx7FnmvFko=;
        b=gbN4JI4CyNADxQ+IRt9R0/XQKGC7xoTRMRBUL1jjvyx7NGR+b2G9bgDqUKtoG1+qAP
         dFUcKn69x9xmnPYR3qO7CdhpPbfDRsWsDoeVTgkqEQmZ7Ll1GDCKKw8nUt4VOOLx6yL5
         xdPVOlj61Hx8pOfMoTdRmdwDwCzxocutbHiDsHkjSSm02yTQBKG1NDbkV1eXeaPQrjU1
         bggeUHmZ2EDEFrXt7VlAPOj21ejmbo4ENdFEgQlI0QxixBJ2BkNEROhJhEWeQPDvIPHa
         4tBFOWlCkBfq1cHCfoOMhm4CxDX7uzOuI4NrUXqR2+rjJxSgh7L04kyXyoLrvRRRmqbI
         j3Sw==
X-Forwarded-Encrypted: i=1; AJvYcCVaDIitU1UwZEpVPfUsZPY1SAg54MuSIsXuF8hT9lDrWHcxNG+7k3LWQMvpLNHcjUXVxdcdDV3mFwMq@vger.kernel.org
X-Gm-Message-State: AOJu0YyA2ZqVdjJggaH+Nn/nA8QDeYNCLJvzU30cw9ZqgID1PRTSazi4
	Kfq4YJoSzc8n0u1e9De7ZuRi5rTWQtwxoV9FtdOGdVpJtunffwiEcRKu580ZcvQ=
X-Gm-Gg: ASbGncuGIjpQqviLhfhq7zInXnq9t/0L8H/lAwYI+C7dgODV/eC8V7PbOJn32UPc9aU
	gT0cjqR8+ar0kq43bYOlUZA8Nn4TObDlAciMvesimnY3wsWc471a0LUVJaD+0fXt0envlNFyrdc
	fR8WYXaMUKLWFhzQkH9iGc7SSD8DQVR8iWi4b6wu/0QbWw1CTHCmrpITPkKU2VmwY6Et/7t64XM
	GHaLDdNiQ70pfTghavuRbjl9QkazOpZUO231hGbry0OhqXJkU7W6T/SaoXkp7YeZm00pH8k590p
	0N66juJKVlZ8CWQk4muIoOWuEqBvSdJjmx8=
X-Google-Smtp-Source: AGHT+IHHF3eBrkcbLgZjV07jB++O6f1X9HXUZITRIyKBGz5tBzelSPFXBegqOWH9Yj6quetQS7N+aA==
X-Received: by 2002:a05:6512:b01:b0:540:1b2d:8edf with SMTP id 2adb3069b0e04-54032c30272mr48070e87.1.1733989350220;
        Wed, 11 Dec 2024 23:42:30 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5402042ad64sm1142957e87.178.2024.12.11.23.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 23:42:28 -0800 (PST)
Message-ID: <f5e2c304-c2b2-409b-9300-9b236c2e3354@linaro.org>
Date: Thu, 12 Dec 2024 09:42:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/16] media: qcom: camss: Add callback API for RUP update
 and buf done
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-10-quic_depengs@quicinc.com>
 <1ac23fa1-fc35-45fb-9338-d5f304c869ba@linaro.org>
 <dcfaf9ef-87bf-4ec5-bf86-5c432380ae9a@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <dcfaf9ef-87bf-4ec5-bf86-5c432380ae9a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/24 03:32, Bryan O'Donoghue wrote:
> On 12/12/2024 01:09, Vladimir Zapolskiy wrote:
>>>
>>> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>
>> It's unexpected to see two your Signed-off-by: tags, either one is invalid
>> or the authorship of the change shall be changed appropriately.
> 
> TBH I thought nothing of this at all.
> 
> @Depeng for the record you can add Co-developed-by with my SOB.
> 

Thank you, then this will become aligned with Documentation/process/5.Posting.rst

--
Best wishes,
Vladimir

