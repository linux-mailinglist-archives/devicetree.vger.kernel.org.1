Return-Path: <devicetree+bounces-145114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9ECA305F7
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:40:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C556C3A0877
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC43F1F03D3;
	Tue, 11 Feb 2025 08:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ExeKpU9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1080026BDA8
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 08:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739263212; cv=none; b=rXYwgZrSQXF/yh+pazEJC+Yhg0lwIpdDgw/w9zIEE7GOvcGwSoswlp/4XzC3flD9+9/crw3ajjR2RzdcylotIGe/gZ2GDXbPN5VduZn627ZYtvNMJ2AAJ+TKz/4PXey7ghOnPJdicoByPNuB/s3uqTNmWg5mgQ0cuT7y3TWMhPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739263212; c=relaxed/simple;
	bh=aLWPkGYLTXZ6KZLjG1uvCkYfzVSGcFtVAE6ajRD+SJ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E95JB0lyuzmq+ILxDhjL9kpOv/I8HuVqCtosVQ+joccoOLmyFQWvhVXiMadtDtAFt7mVALZlKHHaU/0yzQH5tZqQEMjzpfavL09XCFXvblIyJz2zbfiFQZ8OJFr3RbIhM0Zc0rPKJz/tovhGXtZ9tYWQ6w/ADWLyqZjQOwNATLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ExeKpU9H; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5de56ff9851so6303536a12.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 00:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739263209; x=1739868009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aLWPkGYLTXZ6KZLjG1uvCkYfzVSGcFtVAE6ajRD+SJ8=;
        b=ExeKpU9HTk/wvyEOrC1ZJs0JzlzDxCBvjDobJLkpdp2BpnlRCJs97CIbCn94GDYw9i
         o0hl/yF9OZRJJduwpeV+XmHCJ+qiaS5O8wJns9HQfEcmxbe4qcAzM8zU/GFdjmKCiBj9
         0DIcm09LUiAM2yIFCI9AnFaZf5PL9ma0iixVVKBD5zYRN6cme3tUTAyfM/Ey+HHIaIui
         FiwevtHmOTkM8DK0OwLHGPVHVcUfh0WXfaEghOC6TPgbueqhO+0stmUcfraufQvjqmbJ
         F6X3KuImszdN+lnOlBp5Urjj+fnkUrI6kdtV3f3jIWI3PQ26Hefp233qd34sizOgBoSK
         7i5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739263209; x=1739868009;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aLWPkGYLTXZ6KZLjG1uvCkYfzVSGcFtVAE6ajRD+SJ8=;
        b=dvj7As4u1tJug/nclTh11UDeswC+g8mKzcpjnHX94VlxK/52pQJye3faH7YAY8khXp
         gNucW0r1EbID3AtjUd55srnx/BUxSRAq5Drj2bBea0JXrnlHt656bXU1unvqg+2UwW60
         YywLTtM3poiF7N4Gw8uvKP1OJn8I/7NtkzN/2Ao3HmkU4qweJocRuXSeknBKhiO3lxlu
         GlFD5JwxScBdSfJwpROXMuzl3i82hxsRNkGlqA7TVYPGRMsh2WRHnaNFMvAiyMpHZCIH
         RasvaBBSKs/wNrirSGh0ZdM1j1esR+l4UhYBgXuSCNAN9ixy+n7FBVdC71CYb6thxmJ9
         BHYw==
X-Forwarded-Encrypted: i=1; AJvYcCV3+dCULfCkXY5X9ASqLtoiKTB7mZR4hOCd74SvpJjr7IS8AmvkMAnaAkR3n9D0RIJ0XQxq3Cjf2vX+@vger.kernel.org
X-Gm-Message-State: AOJu0YzivSbzpxur+UX/iUbCJWVmmnAdTDyKVFTpDW3NTA2pi0TcYBdI
	NWBQAXyGsQv/YhhoxETdV2+X2x5MG2LqbynzBNCt9pvbr+LBwf/E9z+VrnbKVbk=
X-Gm-Gg: ASbGncvNqavlCvVmdLbOCclW0Ed7B4Pek74PM4Gzi5F5FodAkYm2U7IzmLUgmtJCP6b
	a/DKSxV6VNBmmyFOMs2rnFq2k27fXnNDi4aZ/b1OfewAWXOMR2GuLWCSQdgo9UQdLEvgZYn4kq1
	/Q2z+TJ60GtHr4TsglIarF5zUui7Fo/aCuKvXEdRK541Mu8KFNfRtjZozQsN9P6EG9DEuJm3C/w
	QG/JhbpAPU6Fm4WK7Kp5ZhNE6o7xh43meiDwdjnUuCTAZ0HgVNH/xkOn0C2RCuwLuXxFmPr19/1
	ZXP/OxwL1u8ufloIz17DRpUV
X-Google-Smtp-Source: AGHT+IGcNPi3rZA/CTA/KZxJg/KYFxP9+ErymmejAcw4HslSUTPYtftnIqEPAddfpjtGO6oKFni/vQ==
X-Received: by 2002:a17:907:c308:b0:ab7:c6f4:9527 with SMTP id a640c23a62f3a-ab7da33acedmr246065566b.3.1739263209240;
        Tue, 11 Feb 2025 00:40:09 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7b4aba036sm470650266b.45.2025.02.11.00.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 00:40:08 -0800 (PST)
Message-ID: <b29042fd-919f-4e57-9ca3-58ead8a8011b@linaro.org>
Date: Tue, 11 Feb 2025 08:40:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] firmware: add Exynos ACPM protocol driver
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-team@android.com,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Will McVicker <willmcvicker@google.com>
References: <20250207-gs101-acpm-v7-2-ffd7b2fb15ae@linaro.org>
 <e1fffd3b-d3dd-4f46-b7b6-1f03f934dd30@web.de>
 <503b7ec9-e0b1-4351-aa34-3089b2055eb9@linaro.org>
 <60c7ed79-c344-4f6a-aefc-d6d45a4d9004@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <60c7ed79-c344-4f6a-aefc-d6d45a4d9004@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/10/25 9:23 AM, Krzysztof Kozlowski wrote:
>> I'll replace the open-coded mutex handling with cleanup.h guard(mutex)
>> and scoped_guard(mutex, ...), thanks.
> FYI, Markus is PLONKed so I won't ever see what he writes.

Thanks for the heads up. I don't mind using the scope-based cleanup
mutex helpers, it results is smaller code. And since I already have to
send a v8 because of the kdoc warn, I'll include these as well. I let
0day bot run on my v8, I haven't seen any complains, will publish it
shortly.

Cheers,
ta

