Return-Path: <devicetree+bounces-200219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A48B13CEC
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 16:22:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 964361727A4
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF62726CE39;
	Mon, 28 Jul 2025 14:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uZcDYfv2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120C626B76E
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 14:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753712157; cv=none; b=tREWv1v2bzquoGMxvLCEhtW8VtomYCEpmAfllfpZcz9no1o5/YSg9ULSTMjokhUx4uVEcw0VPQlBo1Z/c/mqe/IgdupMi5bS/2qjn9hjIBrd4g3EJ+kgxq/e8AQ7fVRpnzTEKkf3xPyehxUgJWpwd5p3gkfSaBuni8suEogwYnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753712157; c=relaxed/simple;
	bh=jBvO+LGBhqE/ZtUi1WtCmXwaYi2oY/wR656ALdWYXLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pLqd+YjPEQ9dDU10vFhs76YCf2Pvv8B3EGPVvWWjs1ii0LehA64qDncbSFGBGK24cnKWxpXSBvhmn65fX58QNQA1RyS/+e1TMpxWFPGR2fL6H2060IR0qLztEoyKxE4eWIft722TL1ZUpvASF3Kkg64k7WpXphKV7SIPXiBFgik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uZcDYfv2; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-60cc11b34f6so9202177a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 07:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753712154; x=1754316954; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KEuv/0OvcRGSMGgwve29GQ++Tx/D6BPMSmiHsxXgsyA=;
        b=uZcDYfv27Ljxwu17Bw3FiP0sF5BjqFvDTNy6rm49vj6002/fsukH2qLjiRG4PzMJzG
         Pw6Et/OHsa7Q3GlpBgcC4lyW9iennXdB/C02pAoSKqGWI4ADTuy/pRe2+U1eBcXbJPER
         LVxOGO5sY5DU6O9QHXu+wVGaOsvKizgmppB8+kbi5QAcorsbHZT3Im+yYEPOXTWkOS12
         J+f60FGNTaagGpdLCnWUu3Dgg50Fz+9R5F2r4nPLKJKOR+xO3vyp94HEDoWOauojbQT4
         OThBp98FRd/DIBeVwaBaaFn76Gaw+tVAqhm8hfr1JhR0mBfyK/cb/29ZF9s6d8UOYxvg
         bGlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753712154; x=1754316954;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KEuv/0OvcRGSMGgwve29GQ++Tx/D6BPMSmiHsxXgsyA=;
        b=KnWTBoSQzEvVOK2RiVMEN4zmWEI/ErgBglauQbWb1PY1tGSEgYJ8H94rLt3WEB3bt7
         xi57u+2Srvyeo9PVMJwQZnUpY6woeJh6fyR+XCAdPz+OZ9hX2gBeE4VUF03PrNv2cAhI
         0+/B5rQzG5VK2O/6k05vjZOsSC8Vhd+du4m2/9IWWJsRLU37BVl3iko03m3s+4HzoK4v
         Xqh0rZZlYd95wYlEyuxODZ8P9jdBxebq+ksqchOhM3K/QmClTbo+TfyQlc0UM619ngpq
         z71SwI6jpfYYDjvIHfW6GMNN3ZptsYsBeQb+l8CygRnIJY2+dK9ksBjbd+sbpCFGvLMG
         zj/w==
X-Forwarded-Encrypted: i=1; AJvYcCVRBAXyXnMdzNrx5jWgi+enGA3OZ20Nu4ka2kSVXYd7ufa4H0sir33aXCIxir36I/NfYCgFQSR0wRQu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc2It+C4M+VBHMVEwbiQq9AZSB1/oDwzLZG/x7HudMBFaKnFlD
	upvhCikVacAf1PYFXHNvNpeu+NiI2X2IVeNKNZP9qWxiTL2BO8JX2qGHV7SOxBGbvag=
X-Gm-Gg: ASbGncvI1fqG3MJV/E7Vd5eGwQqPyVCRLsSBXHAt7QJOPLRFIHpFUZDjtmhH5pbWO80
	jnGqGc5wvD4fSJOd27yH8W9NRUzIVEr4Ms+NVcq5xcuYvUWutw1a/F/mho525zant7jSKBIyB9V
	c1Zx/IcfExwYIcQ3nFpH0syqkIDJme1DmsAap7UKQkPkOS/lbnc+UfiAp7swXwaboU0WoaGLSqv
	g4Bbv7htJhM+afEjOlxumMnLTriP3fpHYZvQTOP4IfC2PGMKLF+Kd4nIuz7mrPR/isaGoXqqwc1
	vAtKsa3x7/e7HZe/BgZ+VvaUDmHHGpweU9llY4sM4Kglr6Rin7Ra+PUh0dANZXLyIQVuxoJSmF6
	Ij+AsU72VsCddHyfvybADYZITsuq9siZstcqelrOn5mi+cnJKSPSUOZ8aSx6pFYcMwvvpQ74q2g
	==
X-Google-Smtp-Source: AGHT+IEbup0WGzQKdd/SdReGqdXO/wPA2vfo/bvQOhQ0kc3j2Opi6K31loxxw0o1vQUzbFcAu0y+0A==
X-Received: by 2002:a17:907:7216:b0:af4:20f2:2dcb with SMTP id a640c23a62f3a-af4c242b969mr1664623966b.9.1753712153796;
        Mon, 28 Jul 2025 07:15:53 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af63589c8ffsm419726066b.34.2025.07.28.07.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 07:15:53 -0700 (PDT)
Message-ID: <48d78f51-c094-46b4-a9af-91a9d855e296@linaro.org>
Date: Mon, 28 Jul 2025 15:15:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] media: qcom: camss: Add support for CSIPHY QCS8300
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250711131134.215382-1-quic_vikramsa@quicinc.com>
 <20250711131134.215382-7-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250711131134.215382-7-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2025 14:11, Vikram Sharma wrote:
> Add support for CSIPHY found on QCS8300.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>

Give the commit log a bit of love here.

Please add more text.

---
bod

