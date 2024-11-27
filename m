Return-Path: <devicetree+bounces-124812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED7F9DA05C
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 02:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A5AD16503C
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 01:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC16311C83;
	Wed, 27 Nov 2024 01:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q/bnhy1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1A98836
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 01:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732671379; cv=none; b=bqfi41cdHQ32qyAkrER6+hmo+Sfp6lPK8ZgUlGt1Jqa1VwDZIiW74xW/R1LWn06epaH4AxzeNLL0koEmkaqxidhxO0nQmgLUHyv8aBQ+xwCPgcxxalPdnuNbOv5rBDMWttxrvDVPrd7KzdylWTe/ldrP0RNKi8NPBYyM3lIARM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732671379; c=relaxed/simple;
	bh=j/9n6Za9yhYCyRQjsfHUclnxN/mvHCeUHXHImWo7hGU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bs0uueaoPpuF4Ro1LX9ByXRvb2mceqeN5Fzeg4lOlaGizpWGCIPzYICLCPWlJQd+k2SyVI4SuJpe7Ieo8pVRORhZ5AjKDdCBhXzlPr0VcLZKZEdhUwBNFLGSS3FnqNwQ2H/nE5r/g55SlWBSVqFtUq+HxM4cFvT14nBQBGWwgng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q/bnhy1F; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a1fe2b43so19651755e9.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 17:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732671376; x=1733276176; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EpOgem4g+ZZv/dbRraYyKDaj/RcJPybY/mGeK3o1lmo=;
        b=q/bnhy1Fla43jdxmLSbLEqb4x3VSf58mzPaMhJqp+qyC7NJnDzW9aM9oQt1dTZeJeM
         /fU0YejTdAJHHkVeCKjoT6P2CCtb5Bz4x3925pWXeiDYVOr3JMRLiflY9PE2HxM/YNdS
         JdCW3iwICtj2yAC1+hAh+7gIBak2kfbpX65TvZFg4eLbAbR38QqS7WKJqh9h1RcQWGcF
         4s5aFBork5AW4i6kjdkd2Cmo+9baabtour5TlZwuHi6+/cIhMCh7sEwYRl5NX0B2hx87
         VD/IVIEOoo3+OZkI1ewxzu4Cu6M7VLHfu3BcY0R/r9rq/ogO2FSPHBZj38+cDVDJzq0/
         SUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732671376; x=1733276176;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EpOgem4g+ZZv/dbRraYyKDaj/RcJPybY/mGeK3o1lmo=;
        b=Zt+2cfwSy6CED03oYsku2CA7WsMVu3XNK0EJbQtmZjVReaGbethSI1BB3kOyWfftN5
         5uPZ9odU/TooTRgJBczMclgqE9bIS5X8aoLKSwDUpdJ/GDgA3oM3Vj+UcVBQKfx8b1k4
         PPZdgNE4NGZQyG725d7MQw1lLhKuGvs89d2xJ4gbnBr7t5bU4Ys5wwzfR0q8SyZWmEfL
         C5x7gTqp1RRsnD3mzp2E110ipu2LDwRxJNGvMV/MzXo8wgql1pJlSX8I+1eoBAer6tEZ
         ksCa9cqiknDKa91ktBBRwXSmVtSQUPSUA1rqq0wfw8p5qDyemHCyBKhV5nIWLeMepcbF
         rXXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPz3XIw9gJ8Oz9zBudGEi1sKVhKQtqPew0wjddz1XeyHgUwey4fMiWkcS1NPrdgonZXyKC+/xu23wh@vger.kernel.org
X-Gm-Message-State: AOJu0YxDrqtiv5by8bPtuZamKTyFSy7EXtDbyhkBIXN/JX5bQ3ZMBbte
	xFbBFOTbm0jfCuD1HnXtqpKjkMjRqcy/XGvvIaH0A1thfqQ0iYN1TLVT9ZtlcvU=
X-Gm-Gg: ASbGnctrpzpo8NcF0i72CGpkYcHQRm80l5Xvd6V9K70efnPZ2YjLAzqSe8p3oJQJOd+
	K8FIdVwQJ/yB+3+i2UCIncG3GvtzQ7g43xApKfWharwymjpf4qtjaGZv5hE6mjGissO+U25E8te
	6hxgfDK9Qug+kZsQ9B1NOXYI8zUU/vo/02EawPm/5exPJ2u4+4wwovbBZg7bFZpbE2f5xxqIUEn
	YatjkzKvfn4VbwXyDb2iWwqDR44DfVgfs5Af2U9WaJmCCKsZPEmrn3OA/zsqgk=
X-Google-Smtp-Source: AGHT+IEpbHLtWg8lNUOXUaaQS8O82eR9X/UQB+mnwjGo6BbrwjJB9gQXGsQNS+GVkkxaUp5WX319iA==
X-Received: by 2002:a05:6000:440c:b0:382:3f31:f39b with SMTP id ffacd0b85a97d-385c6ebd533mr615614f8f.25.1732671376593;
        Tue, 26 Nov 2024 17:36:16 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbedad6sm14712225f8f.91.2024.11.26.17.36.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 17:36:15 -0800 (PST)
Message-ID: <ce9ac473-2f73-4c7a-97b1-08be39f3adb4@linaro.org>
Date: Wed, 27 Nov 2024 01:36:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: venus: Add support for static video
 encoder/decoder declarations
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com,
 quic_dikshita@quicinc.com, konradybcio@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, devicetree@vger.kernel.org
References: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v1-0-99c16f266b46@linaro.org>
 <20241127-media-staging-24-11-25-rb3-hw-compat-string-v1-1-99c16f266b46@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v1-1-99c16f266b46@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/11/2024 01:34, Bryan O'Donoghue wrote:
> +		dev_info(dev, "Node %s exists won't create new\n", node_name);

Bah I meant to remove this before sending.

---
bod

