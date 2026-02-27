Return-Path: <devicetree+bounces-269136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOIaBdlcoWmDsQQAu9opvQ
	(envelope-from <devicetree+bounces-269136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:59:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F27591B4CFA
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 918EE303CEF5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E04D3B52FB;
	Fri, 27 Feb 2026 08:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bkt2ARzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDB03A7F40
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772182740; cv=none; b=M0+v9/Zp0cKMDxQxat6iGrATCIrOTYUzQ0OkQbfJM6GdEQTPXvgVjzGFoBKUz9HsINajdC7Oc2HiYVn8VxIJf1WYzGHtsPmXlkk0NoeusaZaw4JiqsTRm4E0c5/yNqqTK38XbwNw/oZZ4B4sBXvEI4WZC65Fc/m5UJ0Vhjp1Usk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772182740; c=relaxed/simple;
	bh=Rab/Jz8s2Uc744fMnlW79JYdb4B3JVTjRt9ymGtF/MY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9vkq3+3Pbjoa5tLMRM/UhYMy+j0PkHbQt+rjEWV+PMeXalgLlwDaP/8c7y15Y8ifv9uD859mdTHVVVVSAciHP8C0iEe/D+ZOb0DO9zeofNpQa+J5L004tmfp63IEtgHRgcvdmqNotCMdHLntlNdyUGYrpcAfTHg4zXQlUlFkoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bkt2ARzV; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-483487335c2so15476765e9.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772182737; x=1772787537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PZj4vcPqGU2PZNqfUYcmBKBz7k0/XrtLyYeVPXSafZ8=;
        b=Bkt2ARzVpwPQAh9XvhHSQP4SLu0YI3X8jswizkDhlpLhmqT9obhxg4tp7zf92Doi5M
         1uEX3eYeg0eChfjSfC1+O8FxxBjY04lTO4g7ajtfdXjtPcFaoB3xwPFVax00Mq7p4Fa6
         QM6P01q7+iiSKNrUMJ6s4/Rk8Em70E2JSI8hdOlJQVN6Sa1yQ/KA193IJrfmkZQpTZC3
         R6rwYv6RBKlLhUnZHRBapIiYhC08SxR+P8LHxTFyLEvPJSbPjiah28ig4PlNhy4shhBg
         czkD4W2d/zun7limMH5+l2GiO4cIfFn4bW78fZFauRAW2Ig2JWbEfmF6BWRcEF0105ah
         bMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772182737; x=1772787537;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PZj4vcPqGU2PZNqfUYcmBKBz7k0/XrtLyYeVPXSafZ8=;
        b=e1ab0m32KehmOIMHTlz2UXSEyLTgjum6eN6uyFDZJ625XJCgCLf3Tzx7m4oXRI9ANF
         g/I6uK5eIWLT45PGPMsUDpcwmHdSIHd7B+WgACyFLX6LePNRo+XXfAL8W+I3aMlvpvoJ
         0FSd3xeSGvc35Zwy/6q3CM1/paHT+DQtGvyQwfZMse0D5VFpq3gTgVdGUIi4zk+6Rnbe
         1adi8fZcGmYLxrarXZ95T3AAO78NHfwJF1p97rGSt/1LVXfZ7rRzVJ8v/sDB4lN2Mw1z
         1xWpe/nX3j83W8UcaNO+b68+R/4yRlbv70/IYoMizAcKuFZLVknj5sOB0/ISETa+Gqi6
         ctow==
X-Forwarded-Encrypted: i=1; AJvYcCUKIFfPcFaZSzeoFtgqmZq4iPIVKZfEI2brIxvCfibhGaE8G/7pmkXehkxXK2jcUhfUnaZRBCNDrooG@vger.kernel.org
X-Gm-Message-State: AOJu0YzSpuzkVfL9GZJB8XL4p8+uysGMz0/0GJDe1pFY3QG6IFaJTbS9
	ClOaYcUTqs9CUHj0Vz3tCGF/hIV2wLeQCiRhognua4QJ4ymwUvisr8gnh0BIimmOoRM=
X-Gm-Gg: ATEYQzxdUGucvQ1zJHTaS4PKc7sDYIyVBvVCAXS6HszVqW/QDbCssEpy3nqXOITUE6j
	eM5lAGFnMIgjtzRgR2/ByK52gfShX4/RLEiRhb3Kq0OlJEsrxlNfgI+mid6d2JcBXtt5/fDMPdy
	nxez7cJBPU7so/1y1WHJOvek6MbGXYAbNJlOgXdQtYr+NnvXwZugZ+l0ZvMsIVqz+7rwDS1p0xb
	lR0p6q098McFRuobDnS/c+1dpv+qiWgLTLvbvc2rqDIdgOSMR/gI4R1SPZvqe1F1az2TvVsA+o0
	ok7CU4zwMncRlwXpVVNrQ07Gjiv/T9IWvw5Aw1Gljg3HUTVa753+FmswWvLo0zqP3CoPeaI2ar6
	9RgUMB25BY/rJpqUimGlkqFk/HlVASY7ufOlgblF4cJY/NRNHdN4DssFccwkOYGKJ89B/dBnIIz
	sklpiupjmVBBkBwyz8ZQiZh4tPOZCMopQI+OzVVnjQTar0JVCmlBtnk1gIhIWlmPBC
X-Received: by 2002:a05:600c:3e16:b0:46e:32dd:1b1a with SMTP id 5b1f17b1804b1-483c9ba38damr29772325e9.7.1772182737123;
        Fri, 27 Feb 2026 00:58:57 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd750607sm201855375e9.10.2026.02.27.00.58.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 00:58:56 -0800 (PST)
Message-ID: <5d880b56-a3fe-4677-9751-feeeea8dc2b1@linaro.org>
Date: Fri, 27 Feb 2026 08:58:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/7] dt-bindings: media: qcom,x1e80100-camss: Add
 optional PHY handle definitions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-0-a59c3f037d0b@linaro.org>
 <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-1-a59c3f037d0b@linaro.org>
 <lxkbmpzqgkxdnanetardqhqpyop64ri5sawu3wta7hzjibbgzm@zyrdsfac4wvq>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <lxkbmpzqgkxdnanetardqhqpyop64ri5sawu3wta7hzjibbgzm@zyrdsfac4wvq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-269136-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F27591B4CFA
X-Rspamd-Action: no action

On 27/02/2026 00:02, Dmitry Baryshkov wrote:
> - Add CSI PHY as an optional device node under the camss node.
> - If it is not present there, create it manually (by applying the
>    platform-specific overlay, by using OF_DYNAMIC or just by creating the
>    platform device manually)
> - Migrate existing platforms into using the CSI PHY driver (ideally, one
>    by one), while still retaining the backwards compatibility with the
>    current camss ABI.

Even though this is more work, I actually quite like this suggestion.

Provided the DT compiler doesn't complain, I think I'll take this feedback.

One reason for that is indeed as you say, we can reach back to older 
devices and give them some love.

> - For platforms starting with N+1 (the next platform to be submitted or
>    merged(?) into the kernel) make CSI PHY node mandatory, keeping
>    backwards compatibility code limited to the currently defined affected
>    platforms, which unfortunately means the following list (I'd leave the
>    question on how to handle the patches currently in flight to the
>    maintainer's discretion):

---
bod

