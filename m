Return-Path: <devicetree+bounces-172975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7490AA71A5
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8DC8189353C
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92D02522A5;
	Fri,  2 May 2025 12:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZYvtdJzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C711723C4EF
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 12:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746188557; cv=none; b=Q1qgIqvouurx9hMTOxGNIGSD2UpcmAEcwshK1MMN9Aok7dyPObJMTmtgFXgbsaaD/yA1x8gaKz+qC5QpsDPFDDvBsoBBRmQgnHsNQPcQsNwG+emuJJ4OFacvuDUT4UsSsdkKoU4WLye37EOsN80Hl43Ca3+jbggWHN1lu8LstGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746188557; c=relaxed/simple;
	bh=GKN/zeU/yMVetfdzvS9ozuLJj3zYNqyKb2B/40dRc0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FBshHbDbj8eB0V30h5e6dp4sAEwKVMrkehWF7mrhJVVa+9au1t1kzzkJ8/ezNKiV+siuLW0YFy7F0Vcv4DojG5PiY5AvsHeXXR6RFMDY6daJiXuuhrmTlsIz4kbpwZROPc/Ogf1DYM1C0MGfQbCqrf61AEuQNcXY+iMZGBTEqF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZYvtdJzm; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso15661405e9.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 05:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746188554; x=1746793354; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AGAl7iJZhzrMd/4At9r/NfBVUJdFKiTG2vzkbY4stpw=;
        b=ZYvtdJzmbGavJoWIl8GcdrkE7MzoQoyYflFbCUpnPBoAwR96tZlBipxnOcbMduh6sN
         XEWe19C79yIVGr9uskUSyvhEmW3keesVD1YRXJsRx2FopQ96c1XijWeEig/h1uM8lcy6
         1rNWvL99zJHUYRYDelqfjl4Vxj5GEMW0tws7hVfDyNjfVaAPBTHXpcUebceRFrU2exG6
         B82es7vxpWeWuxSQWogaCCRhwhAsS8wQU8QtzwZXAYDAViD20oK9F07wguV+F6tYoiAT
         nt+efd9rGjwP8w8WnJNcN0rbkXI0BzGpSfxrIM5Q5BgnSnLWSPBeNip19V4tx1Dc+BRX
         tkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746188554; x=1746793354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AGAl7iJZhzrMd/4At9r/NfBVUJdFKiTG2vzkbY4stpw=;
        b=DzA275xnbjR4RraQNNqx/kvzNVyCFM84BqWxznlWpY5mrV3T1FhohS9Q9alEIvBjGV
         pirriBgdzkdj3ueBvkdHykgs9zJeNcgcP8CIf0RWZibxfDQ13/Ypz9zREqTgzheVELlX
         G9YdLQ/CVfKJOsz6142QiLoC3A0mytoLeCxb11zY09z6+NbO9tgjwhZhhSOC7EyFZVt/
         u9asp+wE/AzzohIJyvs3LF/LUUpWkxJLOXEYSfCCgCADsBONPXURb/ZCoTl6z4E1DiD0
         fZaE9Jk3pyPc0jx7zGVchL6oXV0gXqqt+yUDCE4U7IpsnR5h0gZ8jAU6J4/y2CLV9Akr
         8Vvw==
X-Forwarded-Encrypted: i=1; AJvYcCWfST4YZ15Mxh3RGoPMZ4y9xWo0SHHrAoLbjvzlOlvw4mJQmqBrrv79ADQUyhJuQv50fBguTKCoUcnh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1OYhVjJU/p7+spi5iXIJTGowTue1zayxsCOVCe+rv0mQqWRft
	31t4LRjx/zivwvmPfdy1SKr8+LgjBn0l4BBOBtDjhkjDfVcO0lcBj0TrIvgnYes=
X-Gm-Gg: ASbGnctXui4kppW1rD5N/RWk3DdwsuiFkccU9v8dSJp27ce7BKWyTu3PMVQ6e/wBldC
	bkv0eGldKkqp57HgCDQOEofo8kPI8CVEGW3lmR6JEFIUBCuZP2Zr3gntcE9kh2IETHwbgxjLvxh
	aLs+EeyYxiny33oY+ArFg6xAVj3xbbD/uAP9bC/tjS3lyunae7iFkdTE4CeXH37lGunF5w9udec
	7VjGYdPc1qWtamLzF0FuocvSzk9g95MqHU2Ys+km+iS3BNrKS7WpoEuCL3sX5CYTaE+/S+7pZlc
	TOWgtnBDmZEe/b7XyVj5ugUiDr6EksA8qMd/h4H5lRta5RPB0p4aSJRYt+fnSTj8dEcbULnfLbA
	8bvSfMYFK/caHhL+J
X-Google-Smtp-Source: AGHT+IGAup8pZea6zJCXydbst81V1n8k/rAt9qOxSfiYhbAH8b2I5VdLjLvIPf6UJhHnoRz5UGJn7Q==
X-Received: by 2002:a05:600c:820a:b0:43d:7588:6688 with SMTP id 5b1f17b1804b1-441bbeb30aemr25881475e9.12.1746188554115;
        Fri, 02 May 2025 05:22:34 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2af4546sm90036325e9.22.2025.05.02.05.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 05:22:33 -0700 (PDT)
Message-ID: <250cdec3-1437-4c45-aab1-0428218b9437@linaro.org>
Date: Fri, 2 May 2025 13:22:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/23] media: iris: Prevent HFI queue writes when core
 is in deinit state
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org,
 20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com, stable@vger.kernel.org
References: <20250502-qcom-iris-hevc-vp9-v3-0-552158a10a7d@quicinc.com>
 <20250502-qcom-iris-hevc-vp9-v3-5-552158a10a7d@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502-qcom-iris-hevc-vp9-v3-5-552158a10a7d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2025 20:13, Dikshita Agarwal wrote:
> -	if (core->state == IRIS_CORE_ERROR)
> +	if (core->state == IRIS_CORE_ERROR || core->state == IRIS_CORE_DEINIT)
>   		return -EINVAL;

Instead of checking for 2/3 of the states why not just check for the 1/3 ?

enum iris_core_state {
         IRIS_CORE_DEINIT,
         IRIS_CORE_INIT,
         IRIS_CORE_ERROR,
};

if (core->state != IRIS_CORE_INIT)
	return -EINVAL;

Cleaner and more explicit - declaring the state you must be in, as 
opposed to a list of states you should not be in.

Assuming you accept that suggested change:

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

