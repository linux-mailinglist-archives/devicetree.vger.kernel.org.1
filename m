Return-Path: <devicetree+bounces-227115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDD3BDECBC
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 15:43:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88E17482C97
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 13:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A60C22FF22;
	Wed, 15 Oct 2025 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Eas/vt6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E322A4FC
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760535741; cv=none; b=L38rlqcet5Q5nqHZtOmwuAe4se2u07+1zr/01xw0uoSHARb6Bspe2nQYhr8ESSzfKKBeMH/Yk7Jmh1fFFfGrnwz5en8+WMeqxrtjqX48aPJn46ai+0eAJq2qzYe/qT5aXbt/9pSqBYXscCcGXbjIHPZIgS3PQMQ0/04C685tjh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760535741; c=relaxed/simple;
	bh=8ZEjVMazAtWAvqIzRKTRefBLcLx91zYhhGw4XMuX0xc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZK7B0UI6Vn5vbp3MECHVG8Zwf5sKLaTa5i5fDh+uxwgFh4TF4lkBJExU4UFMs9yPh9pPeomcp23ExYSZYvJdKCTDLMxoqTnetT4yQrZQLdbR8qnPg2d/ylHmHMtWjy+zANI5wPSj3S6ZRamTc6nP5SYWPDf+SVNDkG/4YSfAYvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Eas/vt6K; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e2e6a708fso41116455e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760535738; x=1761140538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hy7Sxq2jeauDwIsq3RFiUz3/9uTUpwLAUFOHgM+Hwug=;
        b=Eas/vt6K5AVEUAc8QjbYHcLtShNnek0UkPwINwdPX3okqHlzvyTuFgq6Mz5eYVIXZ2
         qhf9Dj5UoeUqcRo/foGQ9iFXkhVNjOXvu93tjZXWTgOlCJkECsJIdWHoKdNkz/bA4F4G
         kVVxw1HaXB9qjrWzJb7LyH0lKNw1QxIw1A71R4JmXcBkym/ZQlU3cdB/S5jb1zIgNXcC
         GgXYFjZ5NRp/EFhFID+ApfdduF9MLcxW5xeHoXFjJyqPbVyPu9K7iHKLt66pIeFk4/xD
         ghNyp0T1aVJhlf6BBDL2fwuIrRycYGM159km9+fFjbaeoNmXvRdf17iEorGMlfjXdUnE
         UBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760535738; x=1761140538;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hy7Sxq2jeauDwIsq3RFiUz3/9uTUpwLAUFOHgM+Hwug=;
        b=D8fSE4/pDBPYP5gDiIiUU9ExQE5zU6CbSWi4aJ70sdn0hODYCSsP6xA9Obsprz/OfK
         VxyWhc5HsnYZfFUu7FqQVX1FiJaP176+xT9cu8R531Pvl27XiYouLjlgH9bKi8Nd15UZ
         L+q2MzYoyNF8ZSdRZeaj96NrZSJnkGXqhv3eh+ojUT3z1E09crcIyzb8rFyljNOOZuH1
         ncsdbgM+lsn+pB29F/hW9zcLTDjJYN79MrLaFJ90t/dCV/9qMvFNjjnUryF5TQ0+JEo5
         GCHleXkMLvTOhl0mNcZwVHWju0NXH7LZADNfkrkU294ztzx+DYE3UfTnijlIH7DNbyt4
         Cl6g==
X-Forwarded-Encrypted: i=1; AJvYcCWQqmo39Tf+kSM7mnDUCmzgR/uJoxNasHsHrIIuQ0/ELeBmts2QFJu1S2N7/gmF4jw0I6gjHGkMORCT@vger.kernel.org
X-Gm-Message-State: AOJu0YxK4GuG5Ge2K8rtFagzVWy1BxrOHUPjArZs2KFIuFj04ijd/44I
	tzxFbQXYRWDOTXFB2oLB8Z+s6LgokVeRNMndUC1o+s2ZPpThkV1ErBpH7rcq4R26gpo=
X-Gm-Gg: ASbGncvPLCGHNMAhGxG70grBbE6y3yoSbi0yW9CphQQHbHBvTGw8W/B9FXDLFmPEm/T
	AypKrwMaA2SKQki71MHwNjRpxkqa/kzldGnHrpFu9126T4Z3U0Vo9QnY+X64jvxAh850CgVR/K/
	9jz0v9DPfjbMSJqycBMSKT1k9oufE2NJiZbeVomylTAK2kf5xA9SGpOit5YE1lkYD57hgliqyZR
	//YLFvfTJeuDWeI01xgnAKPzlLA/X6x7YFBXwa1Lq37lFudj1ik6F0r5uaHN6sXFFm076NshwPD
	tu8D13YH70SCdAhylgH7iUUGG/CDJqHO8qCvJGf5UQd1I5pMvWOvNx76i6iQUiVrxr8JAZykXp2
	EZTHDcyfzdenau2n7RkidZ9Hh3cNNPX98KV4p4F8fzKCjK6zOW2697iXXKIQHTrPx6GKXngmZd0
	XJuS6OUVeeKiY=
X-Google-Smtp-Source: AGHT+IGNyrbP28TPNxoPwZO9FwODuDXd4rA8MhI1zvCQw4TzwS02DCNbsFRGuJzAypYvXf9n3XAkEA==
X-Received: by 2002:a05:600c:34c2:b0:46e:21c8:ad37 with SMTP id 5b1f17b1804b1-46fa9b06d3dmr193578825e9.25.1760535738467;
        Wed, 15 Oct 2025 06:42:18 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce583335sm28846561f8f.18.2025.10.15.06.42.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 06:42:18 -0700 (PDT)
Message-ID: <84f17b74-a3ea-46bd-a6d4-efa79c1cb43a@linaro.org>
Date: Wed, 15 Oct 2025 14:42:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: qcs8300: Add CCI definitions
To: Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 quic_nihalkum@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>
References: <20251015131303.2797800-1-quic_vikramsa@quicinc.com>
 <20251015131303.2797800-3-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251015131303.2797800-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 14:13, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Qualcomm QCS8300 SoC contains 3 Camera Control Interface (CCI). Compared
> to lemans, the key difference is in SDA/SCL GPIO assignments and number
> of CCIs.

Codename should be "Lemans" and since you need to update the commit log 
for this it should be "three Camera Control .."

Assuming thats fixed.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

