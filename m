Return-Path: <devicetree+bounces-180814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E24B6AC4E1E
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 14:02:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A776188E480
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB1B269B07;
	Tue, 27 May 2025 12:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Un+xyXFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F3F26A0BD
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 12:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748347312; cv=none; b=XDSbIzZL82yBa8CvY+gr0/UaEHDMVcHE+axhaROjqrwtDucxLUvZf7uJHBjLjzyQjDWNk/FIe2+/lcRr4Ea+v9hRQtiTGrm7bp7fZrnejIr9W8wf2UsZZ3TmEs0q5ePfWlZtZSSXmbTwJMYNk0isQlFfv8x+9wNrvVi6BPLqRFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748347312; c=relaxed/simple;
	bh=xt7D4sh1I18/wL05zXuJeAMPACAqCq4rpqA/Le9JqNQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oS67IZ9zrJd+NAVBfu+qy4ye7CQgXbdIQdlNlL2rOsu8skGnMhv4HJCIOuDZX4qKiQKby9UnxtLZ7ugzGh1welbcIzVWoasETVzkVhmlkAgu0T56I/ffmbeeFvS5sNKXmTzVx3U+xHpVoi+SKAXhwKBLTM2XTH+BPnE5p3qwyWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Un+xyXFD; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-441d437cfaaso20270455e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 05:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748347309; x=1748952109; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xt7D4sh1I18/wL05zXuJeAMPACAqCq4rpqA/Le9JqNQ=;
        b=Un+xyXFDaiawZehn1l936YdhODefb0bEKjOKQgo6l02ERO5BMS6RwWHTnSrJYl1fF1
         AY9OJRUimOg0G6WA/Fl81ImZSo+kDXmWGQSqJ78gdW+cSjO/IZWtdfOUToxCa1giZjsJ
         I1Rmdw/yuZcM87GR6hZZZE/8JE1WwiQ9tcgMqoVxxaJvWBiB050MWwNFpod/zzWyowEZ
         z0FyoIxeXSsPB2cU8R7Pc/j+Gywt5XJVNZ8KAM5J9J6VVOc++s3ULjeysjy2dm3rZ5Up
         2DB7nAyXw/kw2eJVoORq8LSkE81lkCa0ZZh1Z+Cx4tAuujjCUIhmcl5Z0XPGL9GHDX/N
         /D/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748347309; x=1748952109;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xt7D4sh1I18/wL05zXuJeAMPACAqCq4rpqA/Le9JqNQ=;
        b=YpnqbuQTU3ieA1ZuliQ9GdDMJGGkOebxTaaSN75b4cPLDJLHFlmIKioFCNq5aNXQZi
         Fq8A4kfaT6xecdfwlRyGhIetXgMQ31iS7Q3bqqdW79MvVeMJ26wEAP3VRK6p1cZKO21y
         8JIjSsOo6V0eaKZ5eQoSIPdfUnQ4dsui8jvgUEzVXYlozodMXagH6+m8/JGF305vJPkf
         iwGpUrY1dGn/E2vdEVGVrlzhlzCy7IVn/OJpI6hQvWvaxYGOLtEisz6upHjB2cd81wAF
         96QO5f9vVBjaOjh15Gv5dHY43BpkwLbEVSxFpdft9knSWFA4fvxzWf0bVbABEIObBqxA
         HSqg==
X-Forwarded-Encrypted: i=1; AJvYcCWPo2uNLf240ElYF0JpEtFz4pBeHugTHIgwSKmIdQI+FBKtWiqW0fYmVR0BzcFQwxzgraDSf/bXgizT@vger.kernel.org
X-Gm-Message-State: AOJu0YxdVAGmSix6I8OrQTo5XolJeJK5f7JBMkXkUNIuSVPs6o1pXSrr
	zXHAFOy16bPLM2lMtZ7pDW0Wp7HxrM+B2oOomucL3EPF3T6LtadDw+BclR43uTuUf+Q=
X-Gm-Gg: ASbGnctarWCSfRjh6ZqKa+U8u/Jg44/UJNaFHDg7PSw16XddxjGRVBbyLhB9tn1A4aq
	lwpLzyaMclaafuS6lotMqFptHG1RSmMlltiCXgqqEg9RfnPE7VwpOGzm4qfwI368rMbqqVlEaWR
	VYzG4xs1D3DDIkdZ9XEWAL9jBzsn+7/PjeiRdg0yR47+bysI4Nm1l6K6kaOf3WcVzbeZVRKCC9s
	CldZpxVWXbwRbJlnYs2rfqc0cFfEZYI6azXf+T3Bn8qWEEUZV7Y96ooUlxLnxz4ACfPmDnB3d8m
	m1Q02T3/sW8zqTRjXivH4uUJkRtCpXjBfnamscD+n9UOjBp09G92I8Ae3M0Gq2yb8GSBI0Vp380
	14Q0dJL1tPws68u5ThCSvSiTF4ZU=
X-Google-Smtp-Source: AGHT+IFWtDLH1zwZOq+Rw9/Jw8vNdc0tJOd1ARYqcoxhkpz9AqYUyEe5yiEWhYdxUf/zfsOc82GHeQ==
X-Received: by 2002:a5d:5f8a:0:b0:3a4:d9fa:f1ea with SMTP id ffacd0b85a97d-3a4d9faf3c3mr6111892f8f.7.1748347309236;
        Tue, 27 May 2025 05:01:49 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4d437f961sm7631925f8f.17.2025.05.27.05.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:01:48 -0700 (PDT)
Message-ID: <308a2447-5fd5-41f6-bef2-b96d3aef4de8@linaro.org>
Date: Tue, 27 May 2025 13:01:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] media: qcom: camss: vfe: Add VBIF setting support
To: Vincent Knecht <vincent.knecht@mailoo.org>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250525-camss-8x39-vbif-v2-0-6d3d5c5af456@mailoo.org>
 <20250525-camss-8x39-vbif-v2-1-6d3d5c5af456@mailoo.org>
 <e8750bc1-11ab-480c-a0fb-262ff6a0dd22@linaro.org>
 <4688737b90f26ce56e7043a006f25e28cddc928a.camel@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4688737b90f26ce56e7043a006f25e28cddc928a.camel@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/05/2025 17:23, Vincent Knecht wrote:
> Do you mean to just rename to vfe_vbif_write_reg()

Yep, its more natural language.

---
bod

