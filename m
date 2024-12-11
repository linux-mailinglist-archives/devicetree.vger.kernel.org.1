Return-Path: <devicetree+bounces-130015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 731469ED91D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 22:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74CDB281277
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AACE81DE4DA;
	Wed, 11 Dec 2024 21:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y0972Ano"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA22A1D31B5
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733954155; cv=none; b=O71XVIXlBdx71+5lGHPA/Kj0PwrvDxTVNskWZd9UyfHjYAW1OFAfZiaNwBYgbK1EMS/ssyj5aqy9SWYPfC9K45l8tCotE+gdqLLEta7d8zSeOtaSBVSRve188HD/p3D6RqK1IX1AvbIAMJZ9zH8DvuPXk+eK+QrlgMT2pSzN5Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733954155; c=relaxed/simple;
	bh=JjNDGyhZRcofBHcBLf7je5rl2TBTgB1GQVEGlYse7mo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ODIL3epRQkf85rGQtLFeOtZM8+VW6aZ4T7/Dy+e4CnaAkBUVYTb67M2urHxw7hcLSoxeOzpNl3hAseOY1QyzGCuhyfIrNF6WuzxnLJ2W+Gof7zIb28pXYz2O0251eSQTgZrTzW/+HSxKybUabH240y5CN3yaekfdqzakwmu72Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y0972Ano; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3862a921123so4317785f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 13:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733954152; x=1734558952; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fEL/ngtdEw8neicpLCHejnO5DowOyBjzk0ap1ZcfbTY=;
        b=y0972Anov0HOMt71WrAg4DFLKd8ucDNo8Fiu8pwjrX44xf8BCxJeFmbzU7BMy+Pvjl
         Y/c85nYA/K4YIZZwyD3ieyS1uuXb8Ux3oVgo5HyS/KHvll/RpkPbalOzCA3jEV5pB59p
         jDj0J/MkOjyUns87p9ca2tdmUCgH9zJ90rjzjXYzaiujU416PCCZAxWWufaveRLk6RAW
         Xi/yN0Manfv3+wH5dVqgIOqD575CLYoKSdkOl+haC5zy8MTQr05i30R1uL8MnYsH2eI1
         iGaev0x/emdQgEdF7cddeLewgoWaApTHG4B+QoSLdyvqD8TOarmxl1Ji6q7JOSlIckbq
         BRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733954152; x=1734558952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fEL/ngtdEw8neicpLCHejnO5DowOyBjzk0ap1ZcfbTY=;
        b=JFtgZZTL8mdHNbTR/O7PQT5MOxGt/KGSUaIeDqeHfUTXixZh1Gkfc6DlNrpRWoV4AH
         Sd3r96DiiYNmJOLDFWg+wns/IjfhnttKR5ZWwGaR1F1ztmgCZ+N1//m23nZnZ0bUZZP3
         ztwJU7bnew+Fhv+yjH2hbrgu8CockylJDKK8SY8EqfnLcuwbEpCU28EHx0URnbD3TWGc
         Lk3hSeksdXNHoJatH+qtXg7/HBa+xPyHxWoAzavfaSY6pJTeI/COdngqEisgLYcDrTei
         krK9PgEXB6FftGUck+k5pOp2Xh3s15jACaN/ZbXcrkhcKQSLnWACwrz7DqIJyra9iBj2
         TMzw==
X-Forwarded-Encrypted: i=1; AJvYcCV1ivD8RvU+5DELP8vh5ZOopV5SHyJOtPEZUBrFc2VTrT/Vzr6mjMgfUi0szt95YRBPqZ6U1VJDWrjn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8V2VfzCrTpBXChCqAOYo4w/uNvnzYOqKot2AmkYb2W+dNgF3Z
	/2HR5VZK1YweEX5Ck7KyRg8Vm5civbviuF6zVQy8rCbTQLUtFBX/nrW7oKKcv4c=
X-Gm-Gg: ASbGncsRN3cG5hDSrPyupLH75RVex0r8DSCAHKQEIFzgzjGggztl+Y91Y0rRgK30rH3
	lg8hqH6XKnqCKvr1SxScFJCorfEOMLwDl81VAsnVyftKT4uzeyEhxxhLOog5XeURymbTeuQxxQw
	E3PUqok/5colYqpLh/d3zRGUTouVG4dCd8JI9qbmE/pYP3tApZaxztNeZ+SOPTH9ZCjCF25nDBe
	Ruy4HHGOUcYJkOx5q7n7iQvdwq1LQwfl7cMT119OFNH6ftoTiHsuNqRhfAv3GO0rjc=
X-Google-Smtp-Source: AGHT+IGuZnMKThgf4eD8YAuWutLkKfQCQWNUHlMDV+U1hMo6NUpM8D0pvxDc/5kFCuDbLvPC0Vi7Uw==
X-Received: by 2002:a05:6000:4911:b0:385:df2c:91b5 with SMTP id ffacd0b85a97d-38787524a7amr999734f8f.0.1733954152175;
        Wed, 11 Dec 2024 13:55:52 -0800 (PST)
Received: from [192.168.0.27] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a5005sm2192808f8f.41.2024.12.11.13.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 13:55:51 -0800 (PST)
Message-ID: <86015568-a283-42f5-a8c0-6bfdf078bc91@linaro.org>
Date: Wed, 11 Dec 2024 21:55:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/16] media: qcom: camss: csid: Add v4l2 ctrl if TPG mode
 isn't disabled
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-12-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241211140738.3835588-12-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2024 14:07, Depeng Shao wrote:
> There is no CSID TPG in some modern HW, so the v4l2 ctrl in CSID driver
> shouldn't be registered. Checking the supported TPG modes to indicate
> if the TPG HW is existing or not, and only register v4l2 ctrl for CSID
>   only when TPG HW is existing.
> 
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
"media: qcom: camss: csid: Add v4l2 ctrl if TPG mode isn't disabled"

The double negation is confusing

->

"media: qcom: camss: csid: Only add TPG v4l2 ctrl if TPG hardware is 
available"

---
bod

