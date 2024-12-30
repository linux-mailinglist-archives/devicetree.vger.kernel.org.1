Return-Path: <devicetree+bounces-134712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5789FE5A4
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4F6C1622E2
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B1A1A76AC;
	Mon, 30 Dec 2024 11:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XngVvtF8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B587B1632C8
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 11:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735558370; cv=none; b=enBK+a66PYweQ1qjD+5vOWZ4wYVJU4F3p2OoinjofWmrBkzKGHPfhM67njTeVmOPDnSfG+0sHEFkXxXgVJRd9JieIFz8SslBiGydhJ30KsoOAy51xRnwoq+sqqzV34cXRS+mlpKg2l9pXFVpUIv7FwggF29Jm05JD49FOYmI6rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735558370; c=relaxed/simple;
	bh=bPApeIOTtR6uiKsu4DkZSlatf3itclaDHuLss/2gK8M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jAvUlQ2qExmZkpB1d8RFdIzgRWAX6vfP4QUj5RoOl5LLXPQZLo+6gRzoQejDF42u0k92qC4FJvTXx1eoqGNUHd/lTPnkTa/7WvD6jrrCWp51K7wzsl9bmnvF1tqwL+BMNU2mCTXcjujRD652NRxnaqVu3WOqmj84pfQYSVFzJOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XngVvtF8; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43624b2d453so95266835e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 03:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735558367; x=1736163167; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VF/h/Z6dyR04duHdLkQFUqHe71po2e5zlM1m3LqF1Uo=;
        b=XngVvtF86+11LmSBn3tCjECRP4UAnuKhAfUIIGiSqHHpvXa/5MGMnl0yMxun4Ci8dQ
         KStyzQrsqAlJMx1/NKFeKfatNVHsn4pfFD/B80jkCKv3SRB5P0zdQuRdJVhioje9kpV7
         YymmN1Cu1anTt2T+sMQMRDvVaeYGCaUlHrck9gb0zhDGz98d14bVFI3XLbjJb31xIFzr
         hcshW7ir84zf1qhLZhFH/gKbXiNMIo1hxDYzilGtr1yWYhNAlUFqt0FcZ4kZpDNc/Sb1
         ut/5x+BPOOm/O3nyLYsXemz/xz2u+h296hyGg+Pzz/Dq0B8flJefoa7lTj2lNO7p/txX
         GkLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735558367; x=1736163167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VF/h/Z6dyR04duHdLkQFUqHe71po2e5zlM1m3LqF1Uo=;
        b=mgHrL6ryFkTygHDUDqUS/e1txgsltxYm2g6+xDF6+EVmv0XnALZPwUj2mKkmP+eY9s
         2+5/XlYWtKmyUxYTzLK9LyCUnrBfhurx7a/4n9zlWe+6iKMWO/+jK8W1wPcbSWzGib+P
         3kFkaZBPC0atxL67dxkYd9fGZF3ZlHzVVqwdoYouLTDKcq65yWNIpJ6ni8Og/bHt7mZq
         uRbGhB9gWLvyzpfImoS4LRRO0BVla92NbsDdS0sUTSyJ/3c5vdLUCoGXlsGIOBrB9bNa
         XJZt9UEWRNsMU/Q3oWL5Y6Ney0MHK4Wopf8zjmTo7R8Pd2RDAgxvZI3aIwmQ8XZN0j89
         0clQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgCMGZ6Vpn+ubx+hfkste/5qTJsJsBC2q8IJhX2v+FrRjKq3vSvjxDN3tzqyZTyeSf9f4OhiMpa8Xm@vger.kernel.org
X-Gm-Message-State: AOJu0YxrQxldRT9ATldGs/oCa5Pnoymqyeryy0V2b4Cv0edRbYsLQy24
	qqvsqOoPPSqCp1qRWB4Q+hINC8/9Z2y1tzvtzxUq9vi0B+Veo3qrefw0l/9XjZU=
X-Gm-Gg: ASbGncvh34eZMLWYyKo19wu9uGN/BxnmZWMhYTtZbFRhnE+Df1KwD27AEoqMFUgToKo
	EcuZNQteJpoM6H1UkLG9ruozXLdcEm0t+DKEliDN05fpj9kxm1fcLMrfpfF7gvn2ToAjz+3Ugxc
	6YC7XBdRUGWyD3RFN0QJshY0i1pJ8Xe2CL2gZ2iYQI/Xb8novjy0mYbua1nFzu/1XpxjwJUJjLa
	BkxI+zw0yvkxG23rE5tH0hKXx6QGWtfs9oniac0iELu4EYyOznrsaDk4DvESUPplAlnzQ==
X-Google-Smtp-Source: AGHT+IEReock5G/DX/5A7x8d4Y0AJaEOxEv7/nrrNTMyKpaKLnKEnGUnDoZp4D/D5JfxeNROqYz3Ew==
X-Received: by 2002:adf:b183:0:b0:38a:4184:152a with SMTP id ffacd0b85a97d-38a41841755mr11317869f8f.28.1735558367038;
        Mon, 30 Dec 2024 03:32:47 -0800 (PST)
Received: from [192.168.0.43] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b11aecsm385513665e9.23.2024.12.30.03.32.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 03:32:46 -0800 (PST)
Message-ID: <cf0f4048-6d6b-43fd-a7c0-27c7b8852279@linaro.org>
Date: Mon, 30 Dec 2024 11:32:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] media: venus: Add support for static video
 encoder/decoder declarations
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com,
 quic_dikshita@quicinc.com, konradybcio@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>
References: <20241209-media-staging-24-11-25-rb3-hw-compat-string-v5-0-ef7e5f85f302@linaro.org>
 <20241209-media-staging-24-11-25-rb3-hw-compat-string-v5-1-ef7e5f85f302@linaro.org>
 <504ff336-3b11-4331-b2b6-86289b17ffd3@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <504ff336-3b11-4331-b2b6-86289b17ffd3@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/12/2024 13:33, Stanimir Varbanov wrote:
>> +    if (core->res->dec_nodename || core->res->enc_nodename) {
>> +        if (venus_add_dynamic_nodes(core))
> 
> It'd be good to pass the error code to the upper layer.

np

---
bod

