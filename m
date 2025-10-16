Return-Path: <devicetree+bounces-227526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08529BE2502
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EBAA84F741A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D96A3168E1;
	Thu, 16 Oct 2025 09:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k2dCWKWW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21313161AA
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760605956; cv=none; b=ZYpk+kqEf3FnhQ3Y3JdamH73WikdRoSCOsSkfoCYfQ/vnwSaw0V+ErJGFfzBm/7GksLxqaa5D1qpzMXtyIuM4xrj7q1UOaa8CTaZSOa9bMaCGMKKO1eRO1XPRykXkQwWaxQ5e+PfYpquCr3Ypyt6fBPDSzbyKwpnUYJ4Bo5ow/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760605956; c=relaxed/simple;
	bh=0rR+E3ejx6+LqmRsxZ8R3z54fEGmrrAvmI5TPxxh3wM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B4UZmyfzb4eVGRTIfNL36fmDAX4eFmU0baNoMe7bsiAlNAaFmf84uoWXutQN6hEvH+3SXsEI5umSvJH6AxAzvOkzMarpL7CZ+XG9PK4WFfBhxPDI5DQ0n7wH18++bOMewFMpybUKDSGXHmONDut5ejZqAUEeryzOlPx8orcRS94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k2dCWKWW; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46b303f7469so3560385e9.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760605953; x=1761210753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lNA3qwCeih3DfGiyde2vBhejjH9yK2c7gfDj+YDJMBI=;
        b=k2dCWKWWPCYzFS99qkE9pZCE++JczIRP1SQ26lsqrmmhz8E9zKuTV/rWDrLWEM7oCv
         LRzwqIi+3WRovRH3iUM+eVE817ZizibbT6Us2ne88e7siRJmcmwISVYb3RrwvF1M/5GC
         85S9tUaDjrZAZsRvRB+QYQFkBIEBlZziRwyx8iGxMbKm7JngrDcUPrsnz8oiXr1RIzvL
         cI8W9wxjGie8oe4CjrEAGWysLLW7IdiMGT4K23LmxIIOPPOzl5Z3o/U8HuKpWu/Qb60r
         E+vmIpIlaTP1ERT8+oOBofie9OIGvL/AmEFyIA+Xy25KtwP05C6yd6Up3PSwmPODRJsM
         79tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760605953; x=1761210753;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lNA3qwCeih3DfGiyde2vBhejjH9yK2c7gfDj+YDJMBI=;
        b=wF7enZlQc68OtdCSt5YiH0XRSuJ1vj09zYUjFTRkicNfgmD1siKrMm8QZOWo8bJppg
         JIuA6xf5PLFFZmY1+62tFb1gM8XfSlK7vTapqFAFaNPko4o7EmFFRpMAqQANQZrzwNI9
         LXA+KlFEPmxuk2qz2O7AhccKmA1yl4cXFmq3pjdEsw+kUUswFwvPrPZbQaFCo+EmFvU+
         ny3P/q5SQH3nfIsk9TC7psjwyoEBoilR780st6RI+wbDS6J6z1oFDUNsWPdTavuhPvur
         8aJyWovZG5nxyCXHNtHI7XpRf9vFztaaaBA8aInJtxth3U7tFaH+8z4h1jXBhurzHza0
         jTGA==
X-Forwarded-Encrypted: i=1; AJvYcCUpQA3bvhf7SH7XZ+9Vmi+BKHsgB0FeK4upYUoEGmaJegCuGM4/6K9dPXJ/uKNNNxov2zeZ6j+ShrtF@vger.kernel.org
X-Gm-Message-State: AOJu0YxSdBhXZQyJanWQCTvLvm6jQsR17wTKpCVR0u7RUDvooqeLtQgB
	eG7UdH+ZYWodOtMvHWS16j7Cpj+2eCLzhXdopoXegIJp7WoPEzEb3zoq5sxS8yHPE6Y=
X-Gm-Gg: ASbGncuPDNhM8TAp7yJRMB4nq6oUNqsAnzzxlLDbqwVLhKz+K3chALc+OuKTM4yeonX
	8bZu2YXTXmhfSsXiAz4CGxRc1Ywo3FKeG2biDhMSoiDb5veyNdBzNXOuJb+gvhdNYFu4fzCf/5c
	00UEwWhR0t0IZGumnXP+lBZuaWeHIUe75a3exeJP9wrzcMuXY46utfAikzNjacm0u+SDeT9LX+i
	vdzNrT8oG4zGoyL9oH9Ma7oR2Lcz2su5Kw8Cp++7EE7FLgT5VWMSyMw7hJzb3BJ0oB49Ua4U/UX
	7OzmFpDrsLiybThohBx7T/bvRRE2sL6wjeAhPEy4jAik6PWYsof6JJrjqJ8vyP/w97hybVjfWtX
	845XAkYjnn8wlU7LpNYBOcx2wtk83YlfOQ+8enTo6b66pKLg0FTfSdH6vXLFCsvnWVjSdfc0yDn
	qIDXX73hTlj/Tx676J+vlBK19yxRsYLAbAV5yeC6tVXlNH6rAQdQoWrMjbzVmNYzWRdRM=
X-Google-Smtp-Source: AGHT+IFR7u/O9EmSODkquXJx/FI96imQcVbMrv3aJUPY5PKPDn5wtRiqmlsoFABQRoPqwp6mKNToUg==
X-Received: by 2002:a05:600d:8110:b0:46d:a04:50c6 with SMTP id 5b1f17b1804b1-46fa9b01fb1mr225060395e9.30.1760605953166;
        Thu, 16 Oct 2025 02:12:33 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144238easm14845395e9.4.2025.10.16.02.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 02:12:32 -0700 (PDT)
Message-ID: <f64bc46b-9c21-49a8-b5d8-3e21614b6695@linaro.org>
Date: Thu, 16 Oct 2025 10:12:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] media: qcom: camss: csid: Add support for CSID
 1080
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-5-f5745ba2dff9@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251014-add-support-for-camss-on-kaanapali-v2-5-f5745ba2dff9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 03:56, Hangxiang Ma wrote:
> +	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++)
> +		if (csid->phy.en_vc & BIT(i)) {
> +			val = readl(csid->base + CSID_CSI2_RDIN_IRQ_STATUS(i));
> +			writel(val, csid->base + CSID_CSI2_RDIN_IRQ_CLEAR(i));
> +
> +			if (buf_done_val & BIT(BUF_DONE_IRQ_STATUS_RDI_OFFSET + i)) {
> +				/*
> +				 * buf done and RUP IRQ have been moved to CSID from VFE.
> +				 * Once CSID received buf done, need notify VFE of this
> +				 * event and trigger VFE to handle buf done process.
> +				 */
> +				camss_buf_done(csid->camss, csid->id, i);
> +			}
> +		}
> +
A multi-liner like this should be

for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++) {
	/* etc */
}

in fact csid_reset_1080() does the right thing, please replicate.


