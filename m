Return-Path: <devicetree+bounces-51684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D718800DD
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:41:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24C7D2836DE
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 15:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50872E400;
	Tue, 19 Mar 2024 15:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c6yvMcHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B2A1EEE8
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 15:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710862905; cv=none; b=W311VYpDFB6l9KgoNP+FaQ9MuZ09v6Q/0PpVJOvJGr5eAKuotRFmkkF6hSFrKDJpoLRiPeFao5D0kVAIdMrXXGm2DPqKZ9QpDWzrW9491Wsvs2bDzFniSE6+3sMMxcAgngrbk2pL5qeFuWapER68mqsvUVXtpZmXxzVgQJV0iWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710862905; c=relaxed/simple;
	bh=rcctYaxG/9AdE1lKSmOphtD3YTreO/rMCgO4VaXAVKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rLHJm4ox9h4TC1IPSm5vpEREDbrNQwSxMTOKoV6ht64H6osIgHgfyPObzhNo6nEGAhLOJ9hiLwv4v3aSyq34AoPpI0KTa2Q9cKQVftvjVeJ/1K08//Q7/eVbL+t/8c4IADHrcK8Xxn43HfMEiRJ/+XJGfJCwvJ06Al33J/t5kcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c6yvMcHn; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41412411622so15709435e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 08:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710862902; x=1711467702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=11l7kOXD4PzVut9265FJqm5GBRnbpsHE/f+VsW9wya8=;
        b=c6yvMcHniEgRdAc3bVSuomwIk9X7Q+hMMDCckP9acFKcj89uka+uaA7zhj3mcml7+d
         QE4qGcNNCkUnJauIwQOtyG0+2SK1DLGaOIGFWW2GvclshZXwr0IvuEg5TMRw4lTYTO5v
         igggUgaImqTB1cpYf9sG8r2UvRQpwP2hgaWZqnoZVY0MFJICmIDt6z2pBG80kh1S3XK0
         O6USfsNBYOQjjna5Cwc873YKs89zCPYHc3IOsOm9XZ5HM0tazWXiRzmbUzwknikWwxva
         qViSdxvO+TsFIiOJaM3HjWS7BuvGvYWJB0LK/3wJDhUP9WOsVmd2yIf2WZUaBYr9mea+
         K63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710862902; x=1711467702;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=11l7kOXD4PzVut9265FJqm5GBRnbpsHE/f+VsW9wya8=;
        b=Mq0Vwk4UyjRH5r2wpDHVw1pNbm7OtL0EF8dVpZ7khDX2Tk6Dxhesg7YFV4jQjUgb00
         ijgUwR0kZD2M2uJo2stpgCK94iZxEXHQNu4Di72WIAYnYsn5V7fzPh/pnhcvI30f6YCW
         QSE9PtdSFbSpBDy1GJLaan5PKsiLfnWNDXXHgGapyzm9ef3NlvqVIDP6yqAXn3qL/E3t
         GEeVn3shxEkDD/nNYy4+4iCMe5rHpH4HJgVkkqY8z0dBqia9Q7BOof8cW/V+cAIMH/Ra
         c7Ivs7P8Shi3IpVD7TAhy3HlUdw5PAR1IZS9RjaJUWMYXeNsopiqh+E+te9zzIM0N6KJ
         SPcA==
X-Forwarded-Encrypted: i=1; AJvYcCVmtWMqYyKT5B+kbdi8uqxaGMYYXLi65cAIonAQ7/mwtBQJg0J9au82v+uJHYB+jrFX6S/Fu2q9DdyZqTf4X//gVyoqVza0H6skeg==
X-Gm-Message-State: AOJu0Yy60AKirrxoG5MG3Yl8RI3FPiwEm5On1KUScXzh8Dk9BqiJfsjG
	oJV7h2H1dP39W9wr/0ufJ5/D/lgGNoSp4/6gWBNwBC0v0L645+tAQZM3MiX8dgU=
X-Google-Smtp-Source: AGHT+IGl6RmcdEz2kX6wnqanuZJ9X0FFGQtKAJv5LlaZsXlqX59zApQth/MgtIYGg4Iv4KEiYX8ifg==
X-Received: by 2002:a5d:5960:0:b0:33e:8b17:cba9 with SMTP id e32-20020a5d5960000000b0033e8b17cba9mr10939860wri.27.1710862902257;
        Tue, 19 Mar 2024 08:41:42 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id bj25-20020a0560001e1900b0033e68338fbasm4773700wrb.81.2024.03.19.08.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 08:41:41 -0700 (PDT)
Message-ID: <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>
Date: Tue, 19 Mar 2024 15:41:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Trilok Soni <quic_tsoni@quicinc.com>, Nikunj Kela
 <quic_nkela@quicinc.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus> <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus> <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus> <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org> <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org> <Zfmsjg2rb_ZMc4tA@bogus>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <Zfmsjg2rb_ZMc4tA@bogus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 19/03/2024 15:17, Sudeep Holla wrote:
> I am not debating on the implementation just to be clear. I accept changes
> might be needed there. The $subject is all about DT bindings and what need
> to be changes and for me nothing, just use existing bindings and if there
> are issues there, let us discuss it with specifics.
> 
How can changes to dt bindings be nothing? All the resources 
clk/regulators/resets will become optional and a new power or perf 
domain will become required for each device with firmwares that support 
SCMI Perf.


--srini
>> so the existing driver that was expecting clk/regulators/resets now has to
>> deal with perf domain.

