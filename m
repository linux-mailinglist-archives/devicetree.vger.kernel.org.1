Return-Path: <devicetree+bounces-127305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC069E51C6
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE561283E88
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 10:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4326B1DF260;
	Thu,  5 Dec 2024 09:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yd1WbUu3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4A51DF24B
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 09:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733392401; cv=none; b=YOkFCrj7fUtWNLIKK5eRjDItIAuvzbYdmwv33e2xPHZwQMDmwXp75zh09qqBojjH6B2TunSrjPl3S7WWcSH5d7dFyoSHFb3sIeQQLdS8YzxcEyBVq5UTxc2LoSZX/BZwE0GA8WU2lLysynvao4rrb2timFoGk51ngLF608pzZeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733392401; c=relaxed/simple;
	bh=fcUD1G+KSAjumj93FjMt++z+am/RSCtRwF7W26pQ08g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ciMT9lLRTtoM6EE0BArZEMf6lPpZNPEfeXkQkUHKP4cy2bau1INj58uECkvI1fv8YOm1RCimxCqvbfYXtMQWsHthOxrgiiCxHW3b6SCF1y6tdwbUCZdgWG8thRa8C+j9Mcohe7DsSL+7sMnkfdyQR8rFpGz1eQIlTQoleNfqXpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yd1WbUu3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385e1f12c82so504680f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 01:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733392397; x=1733997197; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C8UuJPAg4uzKsmRkl80xAfQvVQX+ZS1np+zrvtyOjdU=;
        b=yd1WbUu3Zb/E8mN5vYA9A3FoobZHzLvOc1usZV+ZQ6SlgHg7HQYK7lgifqpRTh7QOu
         FGoxfxFkIRnbxZrOzsVdRYBS9aJZdpCgsQUjYW2NfnZYQmCH30zj1qX+bTgc5aZIwn8T
         rnTPAL4AiVpXRfDDF+RgEzq0wiopc7MVq+1jb3QIzVnJr7Q+C56XGBtGAR496oSRz9Wi
         VYhZzvNiZXbKFcsFlyqv0Xy5PG5hyPTdgAomRvCh7ndZbQK/EmKczTlyga59iBCZmH5H
         AFW28ApPo+n7Bsje/daRcCuFNSxMkdbEsyhpJQdTto3OM4iNOaScCpNErLGINb43DFrL
         ZO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733392397; x=1733997197;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C8UuJPAg4uzKsmRkl80xAfQvVQX+ZS1np+zrvtyOjdU=;
        b=hx6ZF+V6enN6Xhr4KmC/EqMH8tp3AOatl72yCWIiUzVXeoSIeADY7ZMXjF6z3ziqvF
         1SYwJU9anLxAa3K08/4bolsR6FfX4IINueOp/qC8i00DTDU8OGSHi5V8kzBVwNst+Bsd
         673CAVijqL7LGZSw+XGGC9sf3Om5J9joi4PaSkAkIXzKfWnCp2BlWcelAA60Cg2huoo0
         KqZu4gVU2kNKAX0q6vkndcj//2fWEiBIxgGqeyzj9vQwc7ioFCapuL4EfP0hVaoHsz3J
         6HyH+z4eJvdGIufYIrvStV6VK2BeqfifOgtKENFnZ332rdDN7YMHZerCgZO2XsjEgpqF
         Dq9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWJiwZMU3EUxYhpF56lRruP1Tzr+cQvyQxIqpbSwDf6Sqs9YJsfQ2QGayUI21maWvfTdHB+KVq0eiU0@vger.kernel.org
X-Gm-Message-State: AOJu0YzrNl6i3bZ5xYxEfPUTRsroJ2Vi4HTHB35LU528k1//9MFIUaEx
	YI3wggUNaFULNmCuNI83+Jf9Ma3kCp22EhGdpeT6pTyeM+TfKaPBsK9/ipAHiVE=
X-Gm-Gg: ASbGncuaKY5mU0Y6bowThTrwDo+TZ6Z63Dnd3l1kFsgH+Zzvj31OrrDTLqvJZMiA2vQ
	aWLKPB+9MTlCx0BLZ4mR0AJpqAGp9w/myvU+n03t4gopQWgS+32zcuQBqYayiSOrZdkAh7pzqq2
	hV3a09D8Cok4CsPAWYh3WE+FErOFPrxKIptem/ObLjy8SAvO5npbTrc4kw+3D9t3rRLXpoh4BeM
	n3uXUgtz/KRUx2z7tTO+wU9JYU0eeL10gnEea0VQjh6lglykuFS/iQhI4pU4Is=
X-Google-Smtp-Source: AGHT+IEVsK2hb41ndk08DsAN+R8x9yzNiSD3Xnxn/d42LtoWyp9X9Q3Lvp8+NitADR+4PPEFGgGGsA==
X-Received: by 2002:a05:6000:4009:b0:385:f909:eb2c with SMTP id ffacd0b85a97d-385fd43556bmr9734740f8f.38.1733392397068;
        Thu, 05 Dec 2024 01:53:17 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3861ecf4087sm1529194f8f.5.2024.12.05.01.53.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 01:53:16 -0800 (PST)
Message-ID: <02a2660f-b577-42b5-9c3d-4fb0429d8c67@linaro.org>
Date: Thu, 5 Dec 2024 09:53:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/5] media: dt-bindings: Add qcom,sc7280-camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241204100003.300123-1-quic_vikramsa@quicinc.com>
 <20241204100003.300123-2-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241204100003.300123-2-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2024 09:59, Vikram Sharma wrote:
> Add bindings for qcom,sc7280-camss to support the camera subsystem
> on the SC7280 platform.
> 
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

