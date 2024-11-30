Return-Path: <devicetree+bounces-125786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C699DF371
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 23:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DBB6B2144C
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 22:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 926451ABECB;
	Sat, 30 Nov 2024 22:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pNQpKRaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D11142905
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 22:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733004057; cv=none; b=b3NhPja+ucATir25fzsVSzlrA/sZfDjDhXU/To5CW47V2Kaeok5xme1B5xe5H4RxuSK+8QRmgD2jhcOrNr6taxDmC9RTahwAYbuEzQQBS8PR+4vuZwB5qzY1qSVSFnwHkQn5YRyTVGe5aHEuVIiijTFfiTuObDJqr82iMjQLbsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733004057; c=relaxed/simple;
	bh=4jKUrEqb0qz1HZi2C+0lGSNoRJQgPPrXQ/svYUCrylo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dD3Avo7sZPZnF/J9dH6ZSQpZhkPMexIVSrGgN66swekuei+VyRTOdNjoEy8Gpbyt3qN3iQa5EQtH/38o0vFOxaRfwfT349l0XD34oZL/QbxHFFGPsU2+oM7H+OlUtLv2flrZ1yYHg5+3seWfN7LPR6lGnFA7BDNYlrqvmS1kfNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pNQpKRaV; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5cfc19065ffso3465689a12.3
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733004053; x=1733608853; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yXqltZOaXbaCylytu6cgEm/tOOiTm+pVQLO5Vzyc1Pg=;
        b=pNQpKRaVclih2iuG8liHPM4r6qVasScL758pFnRZfbM3TF0+CMtfqvkUD+fdmvZvsN
         F51RkJ/il8n2ngdPL4eIU6EyaW+3sveXLdPH11KSlxhOZ1y2YeT6sj3tHus55HtuguKd
         LiITcHIiyizmx1TDpCubKZpizZsSziAu1yzW7Cab48isy0iHjjp/xos4RzRF+JB4ICEq
         yxqmKTymB8Y7m07Hi1Lh4auAmRCUyj8FJS7Lh8xQbo+JfOmNvFvteMzaEmSiTtjxoq+2
         0JsZ93M6bDqt1XhiFTThxslaELeXapSx8nJPU+2Fnp/ewlpK5pik4CE8UdNdqbhcRubs
         8y9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733004053; x=1733608853;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yXqltZOaXbaCylytu6cgEm/tOOiTm+pVQLO5Vzyc1Pg=;
        b=kpl89DA+BHHoDMjZsxPSsaaQjoQuiofVF/ImJzX0y0vDI8CsrA/9PuqJx+aDCWNmjb
         EXj8VHUKZbuxzyuUp7eA/N9t/YfWuz43jVxRsgQNiPjcWBTu9oDxiBTaMVxQ13qt3tlc
         2y+bnGQulmnw2txPlRi2JoWuQ47QmMByg47cSxxA76z+vDQH23P76U024lBcH82mtGxZ
         3EttqqP7jjVfWHppXGUhWiVzAjUrV4dEur2ISQJUvH0b1L19H9UhW9GcB4LGF6c1KQyr
         Lxr166KU8FHq2Tw6mL+3gkxWD6meY9nTpIzKkE5qt8Mtn+UJIubb5kVf/MsFgpseJlzU
         S8mg==
X-Forwarded-Encrypted: i=1; AJvYcCV+XHatRvoVA1t0caWPXr8/iuqjZ3nmUz0+eYiZxZD8dSg6Ix4CSIgXvhUVPCRJZg/JDC1h6DRoixN/@vger.kernel.org
X-Gm-Message-State: AOJu0YwBl9XQsS7twWpXNd7pQqDq8B6cNimc/3sBqv/jsfoDySw62uDV
	mrUGhYrouVoOT4dt8nYdhIOQmcvme/1Rwu2QIs3d2PPPR3Sp5ljotViBrBBNZ5E=
X-Gm-Gg: ASbGnctY3f83Udrvfa8ceoVqKRZyRNwvQnBKNkr7/Z77rRIwK8/0Ma/Y7TKIJtBCgfb
	DrQ/vYsdGAsg1/3pu6QNyZCbxpCu+sBJjZOaREiQJCnh3tV7qQ8GXFn5NiTcvnQo/ePpoRbKShn
	/N16l6a2j/uDAxDgi/KZFKcDlFaNaI+gMnCh1V6Z5mh1n/QJIo1tYRe51f/yntLJV80k/8+L3JJ
	FycyZGZmhbVlQwdmgn2KvZ5WPJUbt0CJL4mlUZaPHunTtZZ0Tt6X4A0TFmEcHQ=
X-Google-Smtp-Source: AGHT+IFKToM+82d0DNr5W/JKUGy7n/psVJX2ZAC/XLf6sSDmlW9mbYvjOVqCf5/YDUUWCaNBvDem8A==
X-Received: by 2002:a05:6402:13cc:b0:5d0:ceec:dedf with SMTP id 4fb4d7f45d1cf-5d0ceece155mr2621710a12.13.1733004053519;
        Sat, 30 Nov 2024 14:00:53 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d0c6a8e9b0sm1334131a12.41.2024.11.30.14.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 14:00:52 -0800 (PST)
Message-ID: <20e62ee5-719c-40c5-98ef-cdbceb1c5746@linaro.org>
Date: Sat, 30 Nov 2024 22:00:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: add venus node for the qcs615
To: "Renjiang Han (QUIC)" <quic_renjiang@quicinc.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 "Vikash Garodia (QUIC)" <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20241125-add-venus-for-qcs615-v3-0-5a376b97a68e@quicinc.com>
 <20241125-add-venus-for-qcs615-v3-3-5a376b97a68e@quicinc.com>
 <55124ce8e15740d1a4a55733455ce27c@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <55124ce8e15740d1a4a55733455ce27c@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/11/2024 08:50, Renjiang Han (QUIC) wrote:
> On Mon 11/25/2024 1:35 PM, Renjiang Han wrote:
>> Add venus node into devicetree for the qcs615 video.
> Forgot to add Reviewed-by, next version will add Reviewed-by: Bryan O'Donoghue<bryan.odonoghue@linaro.org>

You'll need to drop the video-encoder and video-decoder nodes per 
Krzysztof's feeback.

https://lore.kernel.org/linux-arm-msm/436145fd-d65f-44ec-b950-c434775187ca@kernel.org

You could do that with this series:

https://lore.kernel.org/linux-media/20241128-media-staging-24-11-25-rb3-hw-compat-string-v4-0-fd062b399374@linaro.org/T/#m55b26747af4692da928ec9b531c4288c4e45c4d2

And the following change to your resource structure.

static const struct venus_resources qcs615_res = {
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
};

---
bod

