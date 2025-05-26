Return-Path: <devicetree+bounces-180472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E199AC3B4C
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 10:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 903813B6C6A
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 08:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5B61EC014;
	Mon, 26 May 2025 08:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sd/xVPxS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2F31DFDB8
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 08:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748247186; cv=none; b=aFFgD6NaOABcwWLXu2ikv2eUGy3V8jz5OFsJDI8IQDLtzjH48yzCXL9WGBMrw6Dd07c6D6zg3A3wUoe+mNxRwqpYPCX62rOLMWgS3gaxK4j41BHWJCWenUTyTnJ+hciMtkmMOOmwDQ5Enhfqs4v0LD6sQcSlk7TgTbhCLRhO9xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748247186; c=relaxed/simple;
	bh=6dMenWW9G9+jrd7FF1PAJg9qND6VwFxBlkOpgHYc29k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VSaXYg4fANpXBlMTDEFll/QUyp20trJrt9wfn+gdAfXtJzEM9r7nOBaE4L7ZGfRqithVrZAzBplmgqa2gza4CNo+SFp4KO72QVy10XgMg9fVWZs70iHx8ikIWZI5YMY/sC/SNXDrHR6CxlgVWUlqgE2gxzMCyqeLzNQGDjQBiEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sd/xVPxS; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a4cad7d6bdso1213959f8f.0
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 01:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748247182; x=1748851982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6dMenWW9G9+jrd7FF1PAJg9qND6VwFxBlkOpgHYc29k=;
        b=sd/xVPxSFGLvyz7LKqDzLZhGNXqoFKu7+ucNEgIKbRH+1hyeArcNCT1OW9VoVAOgBs
         N/xwIHI8Ch9pwVEFXW7ipYS2B6ri0EWCAw4eUNQCZGZQz809wf5ucyl3k0yJPnJ60uFo
         t04t3MssAPXRXu35rdMAM0bEhCNAFcR6UEKyugHhiw1Moj/5ERABN5JpgQ5P/kBoqVje
         kVfyYvo9hg+JBhpNO+WvIx2svOYPVRaVZHRrU2QL+WF3ThXMTxyPep05ZVx2jXT+CTjV
         HwL3+eQ1LDI/KNT+390leRj+lzUY6oj7Q6JTALTzmUvoJAGe3uj1V1OxNq7Mirv0aHCc
         fUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748247182; x=1748851982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6dMenWW9G9+jrd7FF1PAJg9qND6VwFxBlkOpgHYc29k=;
        b=o1erYNhpMRmoTbOKOWm5qk7Kal/DHvaPrrWnmSF/Iy3Y0h/0y6mNrGAghiOMijzmPy
         9YwHIRSow5I0FMMoUUWRGbgVDs/3PvZD7C71bewe2taJh9P/mjU/K6siVa5Mp09O+CG0
         /31wgekOY6x363dk/B/U40EnMJ3n+i8bPgHZAKcZLVlVv0adQpa1Mfi+fB3wtNtLuYmh
         BmWC4yfI8Wtq5hv4od/VJ1aZf4s+SQaqQbuACV+lgeyTAwp4Cb1aGuEt6TwSBqLSJwqc
         i7Uf4weatdSZMsUw9k/zdXk/gt52WajLsY8nIHrqXD8XNz2qaLNwboqeFNB6s+FgP9mC
         6amg==
X-Forwarded-Encrypted: i=1; AJvYcCXJQ2jU43qf9SMJHzwSvYAwW7WEC4p5b2K5TzhtQihG7Fo6bqBzzz1d4IWxeuSSPHIIX+EW2F3U/Mmy@vger.kernel.org
X-Gm-Message-State: AOJu0YxWfRGhQFrZyQhoSDcE//ZynZd21UOwOqPuWiD6V7UhyMLaySoZ
	AqPUXKem/t1R9DI+Y8zYu4V/O5YHmMRAPLCTvZv+VysfDcPpAIXCPvVg8hkOUqkF86s=
X-Gm-Gg: ASbGncsbjv+UnQ9Wdb5INs+0QdqLYEzgVKPKqMEZ3SMXGH8zrmywiW3lJGzcareJKqx
	NGNJZDPgcao/RRA4DBprC2aS5AT6UW8qL/qV/ROKwvu1MILDC4fy2dopQe3EGUD6roPDpYTL2nz
	qnmBy3PCv25uFvMxhXhvpzWHPD2TXng9BAqLfB6KrP81mMHLWmnSLX+nYrDagxWY2TYRa7sUbxp
	EwvLTLfRT/4S/p7ChnjDEo8YkSC7WbcWJIlkzxmXAq3tdXuJaCDPE3XYk90+RGiyoxmomo2MjE7
	E3J84g5AsAfpiv6FFrPG4+GgMMgzYmxD1eWioz3psMRa2yX4dGy2wckiN+qdFE2VWx2DSzst5CK
	841vl9zOosr8I0Ev1
X-Google-Smtp-Source: AGHT+IHGSsVUmWj3Jah1vKvr6sQDWVSDBSGyOlSKcnIVvmpIKC/Y46McYZjwHULPKpThDtSFgrrx3Q==
X-Received: by 2002:a05:6000:1acb:b0:3a3:6434:5d34 with SMTP id ffacd0b85a97d-3a4ca413eafmr6970418f8f.17.1748247182279;
        Mon, 26 May 2025 01:13:02 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4d8ea9520sm2349448f8f.70.2025.05.26.01.13.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 01:13:01 -0700 (PDT)
Message-ID: <e8750bc1-11ab-480c-a0fb-262ff6a0dd22@linaro.org>
Date: Mon, 26 May 2025 09:13:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] media: qcom: camss: vfe: Add VBIF setting support
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250525-camss-8x39-vbif-v2-0-6d3d5c5af456@mailoo.org>
 <20250525-camss-8x39-vbif-v2-1-6d3d5c5af456@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250525-camss-8x39-vbif-v2-1-6d3d5c5af456@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/05/2025 20:25, Vincent Knecht via B4 Relay wrote:
> +void vfe_vbif_reg_write(struct vfe_device *vfe, u32 reg, u32 val);

write_reg() / read_reg()

---
bod

