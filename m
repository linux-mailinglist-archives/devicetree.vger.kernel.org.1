Return-Path: <devicetree+bounces-179003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DDAABE496
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 22:16:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6B4C189FEDC
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 20:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E1F2882B5;
	Tue, 20 May 2025 20:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YCW8JW2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB289288C2C
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747772166; cv=none; b=AZAyZX/IW0IbY3eGqVi448XAfVHZBdLGqrt9OIeG3zUe9ayMVm3pCG+kPSGfDf7fA91jg1T+ZjMMJ6sr7So3TwzM79yMhWCGzEFUNroQ95lNcBau6CZu7RakYY5BulIYim2t3/lG7xOtXj0flgV2+capCHsz3Ev3LRGdEAqKSyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747772166; c=relaxed/simple;
	bh=xwX8SXBiV4rJxuj4dleNJkMs/Z+TlwBtHelnmb6gjkA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BiN8rNfdyC1Ju0Ln2ZLuxv7+Evj9K7Z+3JmWT0p4yqoM2j+wpEz0ARijzoL8/qjf5cy3gPaexrwubjTg7tWF94xF8fvkTR1aria82IQXpD96Hau4SdSpBGObVEGy2D5791mWEi1bHFktC6FhcUuR6SShRjTceo67kkzzVzdQ87k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YCW8JW2x; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so46133775e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747772163; x=1748376963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xwX8SXBiV4rJxuj4dleNJkMs/Z+TlwBtHelnmb6gjkA=;
        b=YCW8JW2xJaOCtXCtzXjKFO0SyIYtxQhgeGbXitkh0FlZcc0ixc3JHDT/lsA/G25Egi
         N59zUsq/VxrXNI/2NQiC+PPquQOcMYfOK1No1h5hXazMOgTeKS5MdEUyBbkarRcKxRzx
         rfTWiZ25SdhY+qZjsDU6FHIxxGZbFw3KWdPP3/m8HEYbxu6yxRJq8pT4FyBvEuH/Z1TQ
         kZK0KAYaTYiaL3OStA8pmrM3QD29plmhlF0XVwoYu1u2QwEFhFhzNSUACotxLeaSbzjp
         LovpnS5C4beuNdVxkh9SmTM16qYmf5K36+ra1Wb7/LqGpSDBGgdqiIkO8bMVn3OLTnuG
         IM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747772163; x=1748376963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xwX8SXBiV4rJxuj4dleNJkMs/Z+TlwBtHelnmb6gjkA=;
        b=Vzu7SkjiIaTSUmYF8zHrfvPHpSy9LCflrUB1ud0aG7Rlqm+vd45mAxegsYN7ot6dvI
         UEpUABe2kDnhp0FXtPcNmYB4oVb+ms1ciGp7cEwzwy+SeFB67QWS4JtzmNcJacLqcmGj
         BQX8+6pkNnElfgbY3lQHS2n7094qLuHNHJHGA7z+bhBPUpQUDeQR27p4ymz8hQLbVywV
         W16u52ZtIwsg/ubRqiOf/h2wOnZM9Ky3JT+6G6zCNxKjIYYTuSNkbj85DWGwNaSPfsG/
         cBdYX4Boik1IUZ9Jna8sdk+Y2PQS+LUC/gI4qaQe6LSymZ0VvzMZzLw6naJhi9zTYN2o
         n3Ig==
X-Forwarded-Encrypted: i=1; AJvYcCU1FYHpgEPL/9rObUBwpV8ih/oQ2o3kU7TkjLyzCma/FhqFDy0JBruOp75y2bnGqkAlKFx+QdsSbpv5@vger.kernel.org
X-Gm-Message-State: AOJu0YxukwksXPz1oiiSQ84BTwjbWpgokxb3TvTMOUA5AcPjlk3qtdZd
	ThjFZ94ow8s7haLAxYLipfUBO6P28pt2Fp5IXZGF5ni4IjCiQyfAfWAgKdzSlIBU324=
X-Gm-Gg: ASbGnctiDK1zyyhYR87gxyBTBCrXxCVPegAD19lLiD4qzcCTkF+rvo0JLB2bCOT1oh8
	15e6PG0tp/trOu78qRx2Az2oTgKG3dysZsu2RaJ49reholIzhwGm8zvQm6Xre/CRD7o5KsmFjZ9
	GaQR4/0o5xB9Zbrabwc1OOs8Ip1b5WCTLmpzdf683DWOxnV1grSP1WSiNztglc9drwVePcGCziu
	bFTySPfaETBemDuqlJ+RJ7suBw05a6MCg6otMuucVLuGoaptt4hj0bxbPHFrAF5vgyIUeLM9gcc
	Xgu3blUFqrNqJtzU2ikbR4zYDGEYcbOFNl7swT/O2pwlOkFDRCxIEMfAIKScW/vEDCiZCB5JSqP
	4Umk4I108spKqd6S+
X-Google-Smtp-Source: AGHT+IFomONvs1EX0RMA446jV5f93QAkM8Rj3K77G0JpdXLi12SD0UAU2iTB/izbisJsPSjdAcCOZw==
X-Received: by 2002:a05:600c:154c:b0:43b:c857:e9d7 with SMTP id 5b1f17b1804b1-442fd93d4fcmr143678295e9.5.1747772163086;
        Tue, 20 May 2025 13:16:03 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca5a03fsm17212470f8f.22.2025.05.20.13.16.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 13:16:02 -0700 (PDT)
Message-ID: <ba3a8154-2390-4800-a3ed-973eed68ec10@linaro.org>
Date: Tue, 20 May 2025 21:16:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, =?UTF-8?Q?Andr=C3=A9_Apitzsch?=
 <git@apitzsch.eu>, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
 <30dd203f-d7e7-420a-b310-2c36869f3aa8@linaro.org>
 <5acpcyzscv47uyyjhtpfi3x7oh47wafo4n6kd5iu6zs7rkpzro@nwkupv5mpjpi>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <5acpcyzscv47uyyjhtpfi3x7oh47wafo4n6kd5iu6zs7rkpzro@nwkupv5mpjpi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/05/2025 20:53, Dmitry Baryshkov wrote:
>> <0x01b0ac00 0x0 0x200 0x0>
> No.

Ah you're right I see we are only doing this for new SoCs.

---
bod

