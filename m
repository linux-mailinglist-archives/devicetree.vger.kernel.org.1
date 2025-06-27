Return-Path: <devicetree+bounces-190477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D98AAEBD74
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79DE76A6424
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59C12EAB89;
	Fri, 27 Jun 2025 16:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a3ju6iLw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEDC2EA48B
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041824; cv=none; b=sQH5UnL3lQCW7crFz3mjVIW/BHBCdqYCM+YuXXmdg/PkfAsFTqKKq/VJOyx2e5YsbL5kjclNWS/ELLJ398AO7w42mRU6Ct7tTS6SOnx62TpzNoWEQjTP/E3HvrEzTaoh5eH2fJVOm15vLnM1ont50tGhqrMDmLGx+He964CzrAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041824; c=relaxed/simple;
	bh=+ky15PA9sAU81b8+V7nmFYxwth/v2pUQufrrrH6DTSY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HWpUqZlIkchVH+zLL/3e0fFBMbEOAPzVVBD1foc6yMhZQeTocmyp5MQfjyGMLPnvzEO+cVfjyAewAuwQ8UOmGF+aiTTWjK1GW4YRraU5UBtsGho+8bix+/FMKIP+aiT2ZLC9XJ4tkv8dekYtIy+ee5fIQB0PIBdv4abWlEjuqv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a3ju6iLw; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-3a50fc7ac4dso1146246f8f.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 09:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751041821; x=1751646621; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OMfsTlgLNGWbyjCpDV2kNGIGNepZ5m2Z+f7NA8cGiMI=;
        b=a3ju6iLw0ZHfoLG6cZru2H0lhvbNIw1nR7Vy73N3HMsS04XQUMiGpx52+JWXqofAXB
         cZv/r1tFU4BkfExWCCITskeMRvYA1JHcHFiz8YVAvYBDIB14Qg1jXZqaSsTQp3KPSRql
         Erybc5dAYUMmKI0lxVrohxgwlRL789vnOtkOE8vNT5vrbkgOT/+VfGrJGCpHZzad0jBu
         XTcaQEcGkH599Gwi8wYMS6Lqov8Bcf5LN8kL7Sk4dbv8pWLpJz1AV4i+w8z55RAYSACB
         7vDz/+z1aU3pHEDSdDZ0lEkD3t+PgjqFiTqKImsZOhRWqINX6oMgE+UmfhjZvszolUsq
         ucmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751041821; x=1751646621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OMfsTlgLNGWbyjCpDV2kNGIGNepZ5m2Z+f7NA8cGiMI=;
        b=MFRCPDDyePqLtU1DOjEiKFUNKjYtM6yeifCeOhBzy9KijpQPXl1fthEChQqo3t158I
         ToASszEO7jSp61mW0IseKmWcJW2siUo0f/u5hsBFttSfz+jtkhNfEXU/8AYdX5wgCau3
         rNxrBs4a8mbDpCna9sAQl1lezXxtMa4S/3CGupYB9cOasrnDp6AYb1wK+lWqXZ69sFCb
         66JcBJdH4+iMM6mOT6vF9KdenWnfBUtpndry7xJJ5ZZw10TDfcxhrULEo98SVX8ImVXd
         ymJ+xqdx9gA35XLj6Vpy8cqSOsgUF3v3DmMwhW3+2rVfHh2ip+Quof2VWxN2SxGxFv6H
         T/Wg==
X-Forwarded-Encrypted: i=1; AJvYcCWwT9MA4R8LRTYVMTnGgjYOLn6fpxoCfHRMtdpA02H5Wu9sV2crppeoo8FeUPjCWwPPTl9Ggt70Kc+4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpg0NOfkNKVSADW9/8dxFOzgomvLViE2wKNBqSvy6U5yVMSD74
	xHZAqfkKw7j1b0JH/RDQXKGMXkM9Zy8MZcj6v3DmwDb+XD5th7pmp6JGR91HWi5RzoA=
X-Gm-Gg: ASbGncs8aU1MNIHS6hAJygKUXz1XnBWgVuWYjoeerFFhl8gD8TRJ0lunnysB15jHcfZ
	jiPlaJkVv1zb6LdyDg6jQrPOj9wB6VXF/o8QDQreFZh10YxCfdG42WWq4I9o3qGyi5dI11BHVHF
	Ujp+zic5k80FSU7/C8IBex5l7YOCNuDxPstG1WEZ3Str5dZiL8eTO6uZ3LHbFJL+xegcen12DJ/
	TofwuB/IpNbi4mgRuSshymEZS2I4S3ewAOjhgZEtQCLe2ImaB2EcGmO4aCMRdA+2eDDIGHBP99/
	Hey4kRa+N+9KIexzrC14oL/WDVmMCbGF/Py8gkXbNa2HNG+CszcKtxtrMGdMV31nwFY7CrMFe4O
	rSed3dBS4WkT5SwLBcLfUJ4eKzO4=
X-Google-Smtp-Source: AGHT+IE6RvCylbJtuXzitjd3EIhVHVaEWYawghuzYHxPMnQLEtrSpXpyi025NQRd8ywU2ZWXXTQ42A==
X-Received: by 2002:adf:b64f:0:b0:3a5:39bb:3d61 with SMTP id ffacd0b85a97d-3a8ffcc979fmr3582621f8f.27.1751041821125;
        Fri, 27 Jun 2025 09:30:21 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7fab7asm3110493f8f.24.2025.06.27.09.30.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 09:30:20 -0700 (PDT)
Message-ID: <306223e7-b760-4d37-b5d2-ac04e3c98842@linaro.org>
Date: Fri, 27 Jun 2025 17:30:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/06/2025 16:48, Vikash Garodia wrote:
> Changes in v3:
> - Add info about change in iommus binding (Thanks Krzysztof)
> - Link to v2:https://lore.kernel.org/r/20250627-video_cb-v2-0-3931c3f49361@quicinc.com

Hmm.

I would be nice to see what also _wasn't_ done i.e. why you didn't do 
what Dmitry was suggesting, IMO that's as important as stating what you 
did change.

Not a huge deal you explained in a response email your logic already but 
just as suggestion for future, I think its good practice to go through 
each point and say what you did do, what you didn't do, perhaps what you 
tried and then decided to do in a different way.

---
bod

