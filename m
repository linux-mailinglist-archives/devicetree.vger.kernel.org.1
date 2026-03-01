Return-Path: <devicetree+bounces-269732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AI8BYVapGn6egUAu9opvQ
	(envelope-from <devicetree+bounces-269732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 16:25:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A60AA1D06BC
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 16:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87D58301588D
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 15:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 338A833508E;
	Sun,  1 Mar 2026 15:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pLlmBuHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EA53054EF
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 15:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772378744; cv=none; b=t7LWXJS0saTvyJh4nEtap8WOWO4KsRMp+f/jkE0kBgtWj8+s2kuxneNtjAWCVT4SdkLw7KHtLbnMZs/uAzUcEmkXCUxvx+DI0siw2plriPuFq0yMRn1IOLSBzr1qsp1ohq4en3qPHwoUHIfVTOJuuX6sZl/6q7/jbz58hhcN/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772378744; c=relaxed/simple;
	bh=h6ocFL3/AvWAxocLlDGq5zzcmvXEVH6KytUwtl0c0pQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dxqVPE7OL/rjOAGIktjzOWUtcHs8BAZp7ZMRGc63c3sHDZp4tGAzLfgBuK2NOw4l6aqBAXYglgmLoeXRlmIS5RzireoeB6oTNQRr5EwXYfZeOqalT7pTktPNcm4VXfsomwTyjDywxaQjpYYlhTkF3/bLhxl/pEpFKiDOJAMJQ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pLlmBuHq; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439b78b638eso70912f8f.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 07:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772378741; x=1772983541; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Toq9rLJJmJQabXGJtB4h2P44C/ETgp3YsbTV0+WroY=;
        b=pLlmBuHq2piOfScEbOJyHI7LMNSuvGzPoBsVWl9QULJLxBMMDB3aezAQ4X6/DCa2oy
         eoJK6/0dwt0qlyMSKfWJI3lqIBmN+CqUY1LXQpbFzrfjpgU+mpC6V/2lVYcWHchH1NQG
         NSwzg1zv1/1p3/u5azmxyChN+MCYkPtDNOxNYsb2n+H/Cr6qX9wmTBk4yDjr6Z4XZe8Z
         0otOwGKlKrgZxEM/mF5ugQVkvBhwDsuE3Q84/W4+XFOMvehaG08bOg6g2luQX/2NkMle
         qy6h6tSodHGIezj8aNJxgFGPIPWCvYR/t28AaUofhTrX8OreMIIl+mMztNOZheizrP5J
         SiSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772378741; x=1772983541;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Toq9rLJJmJQabXGJtB4h2P44C/ETgp3YsbTV0+WroY=;
        b=r4yEuma+k6DfF7ZxR/AaNpigQC9MBc+/EV1Qb6oF/0YQjnNEaweq666G7BCATwDmVW
         eigLWnJZ7BkCXyCq4JDqseOIB3Ht6i5zIl4QQip1qoT9Ol5fj+ir9YSoJapiibt78GZT
         bd6OE6H6IfE5Z66lkmkH8WCGzufGNsxzf06nSeIK7wtgb7c15eu7h8VpwtZb2MF6zfFb
         EvQAZMIFBT6GiBe1gcjes8ePyaaGUz9DXHkiiy71nS1RO/jXmEJwQmf1CYmhbmDrkT9y
         3t42dmmarGu6hG93UF9JXI82VM3FSF/cCODZr7WcvuIBJN4wJ2Pr4jQHOP8MDAkznovu
         2W4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpanRulXIdVunwE3hwcJv9ihjANvuk+kHuJhd41lbHCQVdPS7pzJjS3HX2a2haZb5UUVlQ0KiLhbNf@vger.kernel.org
X-Gm-Message-State: AOJu0YwizGNNEYMdiPlOembltDFQ1jpvhGHQGfCNXBL3pNjbDI6By4QZ
	xX3ySXrSaCkKUd4Tn/U8tq/rmp17dZFPb7LiZTumDVNuVJ44G1W+C5i6Q3b56qfM9Kc=
X-Gm-Gg: ATEYQzx0Tm0fNBs/D4zZGd7vUeaGRcABjUyS1s8BGesHjK0jAhS31qyja7q1siuOxeN
	buXUDPMw3qrXf9pgiCIHhtfjEz0SMmVgpB+uXQEIECP50hbZQxasMTExd/ddoCe5BEkPw/y4fAM
	ORdewBrDoY7b0nzbgtdoIlvnzdoKSw6YLdpSiW11Jf8zmLpeS93SvqUNZmHu/AH2vljvhalDcDU
	WQrjWT5ZCu0UQ4yG7ww7DE1uxALynTkoJxFepuHXjy6rpqhOs+H7PCHDa0D4FIknRRyCSPtbD+u
	7IktR+xHGXr8uoCTJyxolrcr1iArUUIgQR5My8I4eG8Qj/rF2duirTL04Bh+OOorqj40fWvBQNU
	sjres8lNu1XQ8A4Y/z2P7cgl01YD1gt+39UzxbLwEwh1p69yyI8g7hkHXYi+nKAvJFk7T81D4Dt
	S+WtGpWS+E7Qrda+sJij6dnx8KyXfp3jVdYRzdnTLTv58zKE5p5POj7V7jwiwLPofR
X-Received: by 2002:a05:6000:40db:b0:439:b60a:b400 with SMTP id ffacd0b85a97d-439b60ab4f5mr2117824f8f.31.1772378740601;
        Sun, 01 Mar 2026 07:25:40 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b485a0b6sm4272236f8f.39.2026.03.01.07.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Mar 2026 07:25:40 -0800 (PST)
Message-ID: <11783570-cd00-4bec-9f45-65ff4e8eae19@linaro.org>
Date: Sun, 1 Mar 2026 15:25:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add
 ov02c10 RGB sensor on CSIPHY4
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <7177764d-fff7-465d-9ee4-f8e6f6455787@vinarskis.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <7177764d-fff7-465d-9ee4-f8e6f6455787@vinarskis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269732-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.com:url,linaro.org:mid,linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A60AA1D06BC
X-Rspamd-Action: no action

On 28/02/2026 13:05, Aleksandrs Vinarskis wrote:
> It probably got lost around as its been a while since last re-spin: as
> discussed in private and reported to 'issue' in Linaro's tree on gitlab,
> these are wrong. l7m/l2m/l4m are regulators used by Lenovo t14s, confirmed
> by device working and via AeoB dumps [1]. As per respective AeoB dump for
> Slim7x [2], these should be l7b/l1m/l3m instead. This arrangement was also
> confirmed working by community members (see discussion in gitlab issue [3]).
> 
> I have previously submitted a patch to Linaro tree to have this fixed [4],
> feel free to squash it with your changes.
> 
> [1]
> https://github.com/alexVinarskis/qcom-aeob-dumps/blob/master/lenovo- 
> thinkpad-t14s-g6/CAMF_RES_QRD.json#L117-L155
> [2]
> https://github.com/alexVinarskis/qcom-aeob-dumps/blob/master/lenovo- 
> yoga-slim7x/CAMF_RES_QRD.json#L116-L154
> [3]https://gitlab.com/Linaro/arm64-laptops/linux/-/issues/9
> [4]https://gitlab.com/Linaro/arm64-laptops/linux/-/work_items/26

Great, I remember now.

Thanks for the reminder.

---
bod

