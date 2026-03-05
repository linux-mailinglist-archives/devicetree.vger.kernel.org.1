Return-Path: <devicetree+bounces-271520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPr7GaBqqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:36:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E47210A1D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CA62301395D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F2B386579;
	Thu,  5 Mar 2026 11:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NSdUB0vr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DF331E823
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772710556; cv=none; b=NXodN/ALJDha7pI+/3kRk+Etda3nk2ETKdIUsKVq83gIvXgITNRJzuDqusdupl50Pw+7W95azwB++hTyTtb5A6nqUJBXtp3jSBPSuoYpiXEcR6Q4H5W7yHuFdIzJgFEfku466K9f88XhlGqA+esVIOfLMmWrHA4tBth22qEDid4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772710556; c=relaxed/simple;
	bh=cWAQ7ngG5RVW7DUollwYD3TWd2cPBsXwm+ttW4nOFkM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=dpFJAYdFJsUjO3clsDaiB2vsuorRp38CJZsp4dZB+QWI0mD76QKihAQaA7ZDmIrsFUKrduGn17Az1B0ikvulsWaJfxcAmstLde0zlqTOEUN34z//VyDRmG1DKliO02VL40DSAgg8SLes1q/vg3jqXRK9gQ5Y7FEzjbAjmNdEai8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NSdUB0vr; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439ac15f35fso4792006f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772710553; x=1773315353; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uHYAEG7kdjVY7HjponX9xKsbsh2G3LLKlsqfumamkXE=;
        b=NSdUB0vr7edWE0/H2mPcR5IFZU7wCZpUxOeLyniKM5isNwWrlD/mEFMGZlEvbfghux
         pNVJv5MHCAaNF3kHnKFj+mJc0cH1lMu9Fzmp976jisOTWXtYIav6wnK73O7M81zCR80V
         fSeH8SBF1bAwvricXycH/6bWX2vKIhIZC2XCWTO59rHpZi+qsPy99z2EVMqxu7Vwm6Xw
         ic8VVJVUMKS6G2B4oG3wUyEaOofBDabuqgZAn9tYQejUcMaQi63tJWS6RYyzDejW8s7U
         Stz1CD5kbfAPRDjqG+PtGg/S22O4mWQC2vsKcRxH/E9oyJMIRzcjwJnczIBIFstowfJB
         QguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772710553; x=1773315353;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHYAEG7kdjVY7HjponX9xKsbsh2G3LLKlsqfumamkXE=;
        b=i/GDkYDOop4nZlY8CPr9sOTDT7cA5ENvmKnV4wFu/XmxrEA9BcpbDsNwOuzk954+ds
         AO/W5fr7WmpDujnJYX7S2X2ttzz7heKNiEe63zP6L0kXt3ukDVGSXbOLq4ZB9c1+N86E
         Q4jmYpmT/h2qmQeaapsPYEvG3GWaJXENUZHJlXJs21+aTm2rkOead38wSImU6m1PxBme
         V6QeKnMRm+rEcJnR75gr7kPwpiN0r5zJqu26kr5A9/aPJzWC0BJu2Dmplkq8Rx87aEFG
         Ws0YdHsnuz5IoCvfpTZW6p54oBEz50C4ztHXlqmfY2EGNZpUewXcrU2xBjxlwe5O42K1
         owfg==
X-Forwarded-Encrypted: i=1; AJvYcCXRijwmqFE8Lx+8nrrYuZoai6EQ3MUyIxyBdeS946NcpWvASJeiuxX7ah0CrdURro/mMGE5AljoR69n@vger.kernel.org
X-Gm-Message-State: AOJu0YxHCR5z3fEj3qJVAon+zG6wAS7P9k6/Cba1Jl0s6Yfo6F1oP8aT
	ZhG06VQZSzgnqjEL9xQvPBSonrzZlIrlZ/fSODm4imUNtA2PGnzsq02xlo8HZCitm0E=
X-Gm-Gg: ATEYQzzqHA7gX4sgC2Li96bHGha5xhXo3460uUyMsQcubtr/qVURJYJ80LNicj9YPgA
	Njq6KjUHywBGhPcj4kRTAis315xvEMmUvyutEY/kjAbMlWGVaFTXMZLnaoq1j0rp+y88j/dgWZP
	xptSegwPBXSWgs6yRLmopO6TA+KZoadwj4w6b3i/GlYAmS5XcwrSQEEVqDdkJDEyYuc7jRy0TUr
	ZE23W7ffFjc8FHIrrmRTzIaItZ+ZHrCafy50knotPMQRFrQ+oz+1DVC9r7tyxhqyBscztmbqX4T
	OB9Mp5w8fkxsHha1+WYBJbK8d12eGo88N7KFsmPjD3wP8m6tbEY2DTX2XP4YlV1S19+fa0veRvj
	YmmutHTLXYzMf9fQdpHF31Z5ahY1HLf79UP+D9ym+qiBt5q1qKILrsn207a13F0B5fCz5D3LiO4
	FsvP78HaSEtEUPM2zm/jGk+89MozxnKbYTBsaaktZeuvdc5eqDJNQEWoPYui6B1B0qpAEQGF1tu
	/gi
X-Received: by 2002:a05:600c:4f8e:b0:47f:f952:d207 with SMTP id 5b1f17b1804b1-485198744bfmr97517545e9.19.1772710553227;
        Thu, 05 Mar 2026 03:35:53 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:73bc:1eca:d39e:509? ([2a01:e0a:106d:1080:73bc:1eca:d39e:509])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fafe4c9sm47514905e9.15.2026.03.05.03.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 03:35:52 -0800 (PST)
Message-ID: <278f5018-9183-4eeb-bde1-7c19adecab06@linaro.org>
Date: Thu, 5 Mar 2026 12:35:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC v4 1/4] media: dt-bindings: Add Amlogic V4L2 video
 decoder
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Zhentao Guo <zhentao.guo@amlogic.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
References: <20260213-b4-s4-vdec-upstream-v4-0-c7112d00d662@amlogic.com>
 <20260213-b4-s4-vdec-upstream-v4-1-c7112d00d662@amlogic.com>
 <d96c689d-a5a3-453d-a1ab-56dc1bf01635@kernel.org>
 <75e55ceb-e6dd-47b5-a829-66f6fbb3e13e@amlogic.com>
 <2f68ee18-e9d9-4da6-900c-93a7663b3c9d@kernel.org>
 <598c161c-d157-40e5-992c-912540589d7e@amlogic.com>
 <58d57a6c-7c69-4f5b-a4c2-f34ef0238511@kernel.org>
 <26d0f52e-3681-46ce-b0dc-0cb020e8d9a1@amlogic.com>
 <69900d76-3820-467a-9fbc-13f79189df2f@kernel.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <69900d76-3820-467a-9fbc-13f79189df2f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 05E47210A1D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-271520-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,amlogic.com,baylibre.com,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/5/26 12:08, Krzysztof Kozlowski wrote:
> On 05/03/2026 12:01, Zhentao Guo wrote:
>>
>>        2. Why canvas is needed?
>>
>>   1. Since the ARM IOMMU HW is not integrated into the Amlogic SOCs,we
>>      need canvas to prevent the DDR memory used by the decoder from being
>>      rewrote by other hardware. Canvas provides the decoder with a
>>      configurable DDR memory range, as well as hardware-based detection
>>      and blocking for out-of-bounds access.
>>    2. From the diagram above, we can see a lite CPU called AMRISC. AMRISC
>>      is the controller of the decoder HW and the decoder driver needs to
>>      access the decoder hardware through AMRISC. However, AMRISC is a
>>      16-bit CPU and cannot directly handle 32-bit or 64-bit physical
>>      addresses. Therefore, canvas is required to convert the addresses
>>      into index to facilitate processing by the AMRISC core.
> 
> This suggests "Canvas" is IOMMU, thus use proper IOMMU abstractions and
> you cannot have own phandle for it.


No it is not, canvas was used for a long time for the display and video processing side.

It's absolutely not like an IOMMU, the diagram is quite clear.

Neil

> 
> Best regards,
> Krzysztof


