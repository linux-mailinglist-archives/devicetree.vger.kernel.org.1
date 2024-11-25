Return-Path: <devicetree+bounces-124349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D54AB9D897D
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:38:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11877B631F1
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 14:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2A91B2193;
	Mon, 25 Nov 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AVNaiX5U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2DEB1B2180
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 14:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732544303; cv=none; b=sH5OJt0XVEBEyC+iq17jPgv7S1no6ZxpHG0vayJ9PSJ/misY5hPX2sQeL9T/jT/2TUqkCT4KloqHfmFQ+z8Dj1t3JUM2RocKeCj2/f2kGqLVbvOIH4wBb4M0nk5tRJaLtEsdNNUwt3ERiw1bTJ6xcFAfSjgQzpVeSXS+VKyqwXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732544303; c=relaxed/simple;
	bh=8gTbO0LZfixjkq6uUtLon7DMBOv2a37UPXCjBZJ2iZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cIXOM7hC2j4XNITMoBVfaWfpgq3NqCwIDX0IGgFouqyQPGb9GwBJsk4QEGLPvh6+43I0O3cRjMdN82D1AKXU5PgTe+6Db2zOpiMo4iqFJXjKcUNO2scU+rRn6+Fl1E/lH1GWfgCSLoQ/hIlJ43ik3MOb7gFWFZ6jIUc6dOZFpS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AVNaiX5U; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-431695fa98bso38436955e9.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 06:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732544300; x=1733149100; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4UZHmb0OeUd+8GPshNVOwzcpmIxly7Jn8Ce9CCCQHOg=;
        b=AVNaiX5UtMhyLsFr8D8SfQOlwaLmWvccxYpy2xAP2//Ahs267pSpeEbLlWDqrmpAgP
         5cdsgTZSxVkwPAKrheDdv0DLWLS+m1EWXPDPsV9yA2rQ8di3wepVhn3hxjsAe5r0OwPc
         Z4aw09Le5MRRNyqUW3MOiI9kuSuIkf8yOZSQEj9RqEiU2O/d6B2H3Cb8r1qFqd8tbeZ5
         V/s1LH7VNK1nrVBbm0voae0WxglKf1fYVT3C7GSvyulbcEQMxUD6fhhOnCea+Mi/UZfn
         +66Wb43ii2tTiSd8b8V2itoWbeYtB2JDJutXXUlTs7hnNZjal/g2t6ZPUULYUobIz5bh
         41Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732544300; x=1733149100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4UZHmb0OeUd+8GPshNVOwzcpmIxly7Jn8Ce9CCCQHOg=;
        b=QXklsxJSRs0ZeW+i+Kg0Lj/hGYodfi5nYNi4Fp+nntPLejCiBFoNDhpRRmtcE6Y7cB
         Aa5g2lbHsCZk8Lr+JWATRLJlCaEBIrHEawM/VYJSlZqnNjbgJEX++haiLgZNpnMfu88T
         fus4q9FCxdWV2Hn3O20dy7DQp7agOx9Oy/5MXhtwTsBhUj36kXyBradM12o5zGb35I9i
         jaIRIJX2EReyAlkDQxbCED333wt+7dDAsNe/9Kj2dfb0JLHcTyxABjECYoOjrbYsaqtt
         K4udjYmVDctLK8pPsNxPB0mWu3ol8XoCi8fjv/IPMs1o8ndPSi00uJWhq/0bF3IPYdSC
         /fmg==
X-Forwarded-Encrypted: i=1; AJvYcCXJKX6oASDVTQpn8vNcjsNfEm6bahcx7tOQMSYVxHgY+RFhpJjurr0+4sByeTDfqlHahUvq9w8KU3wB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3f2syxmC0ZcWNa2DDipzQ777aJQHCmIhiSA6zdTu2qNDesq0I
	ffZwb4UdsdcHrftpaEYOkPfuuPcMs/J7nSwO2lBveaIUgdCMnG3phletRre28l4=
X-Gm-Gg: ASbGncsIfTeRPxKCvB1+A+OztDjiYEi33mhRHXIB5nDhPxZA/6XcguOm1dO1r+dlSg+
	YS+1ZJbJpJvY2SehHhFFPrfmDDsW7OHQzl9lnGW9HKna09a4SjpjTM3NOeFL3SBGOqcDDbvNBP8
	8A8YXF9HNiPxhsuQSy1ILqe0Zy2i42cDZkA/CBPnhXgcGHVwbE7Ntl8NsuWJ/LexeMUMXToGl/V
	qbd5+K/xsT+QdGAmVMCDoDcLgrDx+S+HPD0du6oY98NUrIEJwdiKJ66xx5lg+Q=
X-Google-Smtp-Source: AGHT+IHqIIihdF3fumt0wugdqbgPyd4zHYslJ9WQYwGzPsEPSKNIXwv+JbkUTAaRMXwekVdAEkvLDQ==
X-Received: by 2002:a05:600c:548d:b0:433:c463:62dd with SMTP id 5b1f17b1804b1-433ce4e73camr111806745e9.27.1732544300035;
        Mon, 25 Nov 2024 06:18:20 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4349fba472asm36556345e9.17.2024.11.25.06.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 06:18:19 -0800 (PST)
Message-ID: <0234971e-9029-4371-a0aa-7da835591351@linaro.org>
Date: Mon, 25 Nov 2024 14:18:17 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] media: dt-bindings: Add qcom,sc7280-camss
To: Rob Herring <robh@kernel.org>, Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: rfoss@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241112173032.2740119-1-quic_vikramsa@quicinc.com>
 <20241112173032.2740119-2-quic_vikramsa@quicinc.com>
 <20241115165031.GA3344225-robh@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241115165031.GA3344225-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/11/2024 16:50, Rob Herring wrote:
>> +  reg:
>> +    maxItems: 15
>> +
>> +  reg-names:
> reg and reg-names go after 'compatible'. See the documented ordering.

Rob, the documented ordering pertains to the dtsi and examples not to 
the yaml right ?

---
bod

