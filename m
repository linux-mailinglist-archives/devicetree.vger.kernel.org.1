Return-Path: <devicetree+bounces-173106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 808CBAA770D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C98DD4E44F5
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740FD25D55B;
	Fri,  2 May 2025 16:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MY5Cjbpk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCEF2561CA
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746202642; cv=none; b=dKQepnPQtdF7OORRpAmLOotYLVfrYPqhzobzw8argMVhx1Bn/yZXakpa7wh/Dba5uENB2h9/rHjN1JdmYha5OEbhvju4qw9bjQsjytV/JQqehGuE0E979/hOyAla/Azr6PKLOAu0S2fumKp+niwVoqW1n7+gyamPyt0cPobhBKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746202642; c=relaxed/simple;
	bh=p25TGFxmDkAyg2SKPUNGairhusjxzU72tOg6R+cw4r4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VPoxN4hQt6bOI2PV6ENKQIcr6Y455GPfqj4Af9l87WujhUD1RPq93i4UPIfpFSlTZmJ4X0HMkg50a7NK3JOKYnGRfUlZOyTd4XcIYaf/2LajrAFkIRd0HRe/Bmhmg8XfzF8e9JEkUAzb216r5SmCiaB4zFrLZtmm3fFe2mnAwZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MY5Cjbpk; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d0359b1fcso14190165e9.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746202639; x=1746807439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wy6Q6Iq6c6FY4Y1FHTjfXlBCNM24Ps50LT7tN8wml2w=;
        b=MY5CjbpkYE20XvVamxnykBHChcyGYrRPt28syp8YaEB1WGNarX6TgshF8ylCGwHpNf
         G+yo4dRmI4iBZYd/kqv/o0xyA3W2lzAkpH1OvafhCkL/H67vxT/t2+SvuMEA++zKKOOP
         9FkHFyi8BI5iG5ZaxM3Rr5UptY/jhee0G5VP8jJrdZ0X8DyJ1uQMMlK1zh8s7izjqDLw
         FIexSHyhbnNy0ffPus4/Vgt2LSZDZbdGcJivG4cwYd8RDDZ4vGnFwGEatG0+nFYu/zCM
         6vYab/exDeO5/qGbRx+cXo8dfGb3dK4c2tqr3ypegpYvvYLCQOU7spy+Jzwbkh5r0+6F
         pHzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746202639; x=1746807439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wy6Q6Iq6c6FY4Y1FHTjfXlBCNM24Ps50LT7tN8wml2w=;
        b=DZfDHTVy2RSaiTyPEaZb3kebXyJHfJyOTfjVTatNYNXxMJHeJAibt0LurnmYJ9rvZS
         IalAJeq0GoUlTY22zVKSJ6HAiXyGua8KswVfDmEvTLanSrWks81yaRxi+xKSTkEwWmxk
         VQMZApMXciVNMro0PIHeRb0Ee4OJ2K5l/mGutoPZqVurPGRa0jHaCmMb2OCvSOLyeIZh
         fRXhZtwkKEtM4s1QIgzu0bn/Zg/XOV+uI2wsW202+HYswO0uGYZCF2LLiBa3xscCFwk4
         GoLsQJjInsS7Ojg1VsW1YI5FbE98QVGHfqdZjfXWUe8IdujyyDCe67k9+GZyWZ35MFvq
         SEUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3DYnh1v9zi4Bpy4JW5dHenioX+5epjjyS6db+bWIHuj8blDM3xS4BbkxmcbNZ0Dj6HuU2zNhNoyyY@vger.kernel.org
X-Gm-Message-State: AOJu0YxhiCVgQ1j3Kv5wwuHpoodpzvKMcn6CjeIG7Dt+bBB4WR1ADMSf
	kufGxjUrLVAVhUgPLaX4toY3fzDBEGbmzejWE23JTuue19tktStcYWLsO5HObvY=
X-Gm-Gg: ASbGncuth8GjXYUYVFRjPgDlOCCIkmbemUpKGKcs2POtsG7XhlXkfyb7f0Llh9YeZPI
	YYZjUsy41fnJ0Nax6NimdYs419MQ/X3bwoubddZxCvm2wUT3Uq2iN55BPjpzAEW7gVkFVcn/ad0
	BN3P2X4ye+tJ+AOFzJzQraEL4zgWzEQ991EzTk/8bkLdKPMxnKdgQe0zYpzhVv65VjcEAk5QUmu
	sPiUsfYSae0ZfRHjY5i1Mb1y4JUuxuUMra00o5gb055Px1I+Ol5UFRonDubR6yIUuH8PmbBeqdp
	WOLNMcXsHXDP+65BVLOI8PdbYI/8Rzzb/bg7YIQSNUvzO6RqVVEOXBo/PfHsmNUVxYwjWBQRn3+
	5RfEWrw==
X-Google-Smtp-Source: AGHT+IFylSPDAOE+pMGqEF4M3RqjKjSA7UkAh+IWcn4TG/z9ljqFUqXx01pVwkemRY/0SiLj6vSGMQ==
X-Received: by 2002:a05:600c:3acd:b0:435:edb0:5d27 with SMTP id 5b1f17b1804b1-441b72c0a66mr62299585e9.9.1746202638742;
        Fri, 02 May 2025 09:17:18 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2af2922sm93761325e9.17.2025.05.02.09.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 09:17:18 -0700 (PDT)
Message-ID: <311dfba9-84f7-4e3e-8bb5-a4ba79f628d1@linaro.org>
Date: Fri, 2 May 2025 17:17:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 15/23] media: iris: Improve last flag handling
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
 20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com
References: <20250502-qcom-iris-hevc-vp9-v3-0-552158a10a7d@quicinc.com>
 <20250502-qcom-iris-hevc-vp9-v3-15-552158a10a7d@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502-qcom-iris-hevc-vp9-v3-15-552158a10a7d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2025 20:13, Dikshita Agarwal wrote:
> Improve the handling of the V4L2_BUF_FLAG_LAST flag in the driver:
> - Ensure that the last flag is not sent multiple times.
> - Attach the last flag to the first capture buffer returned during
>    flush, triggered by a sequence change, addressing cases where the
>    firmware does not set the last flag.
> 
> Reviewed-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
I'm sure this is logically correct, I just wonder if you could represent 
it as a inst->state instead of as a flag ?

Up to you to think about.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

