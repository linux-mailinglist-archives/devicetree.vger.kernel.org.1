Return-Path: <devicetree+bounces-187589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B68AE08A2
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C772189164E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E522521E0AD;
	Thu, 19 Jun 2025 14:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bK+UQPn8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260792116F5
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750343006; cv=none; b=P85v3+CYfet/E1LWgC+rpRkWpZPByIh/EATf262LbJ8LVwgal2X8EIb9VXtLQ5AHPq2SGMJ598KQhWK0zTAZ5fyH+rC6z1K/lTDCH+CQMNk4f/byY/F2oA5Y+mAk//YHUO8aGTtZoiEf1KPWk3/uLp74cbUCYyT8o50wrJ0HZ5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750343006; c=relaxed/simple;
	bh=6kzgpoC/6r42t3YE4N/s+jy2WCWfT8as0yTg6s3TFZI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FFQlNoR7L9z1baC3MZxwNYWhHAOy4AwvsQt9mzEDaTGHSXBGfcWmKICr9mQZIFfkvK5/2MNUVEIR9XRC0fL/vyI436YhJ4ZD7GVqPq7tvPQFYMU5xEWSWHt3+FbA+Pk4n1ZJlGMsbjVnc01XZdAArxXrvAROGvBf5cZMQpnU0i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bK+UQPn8; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso751377f8f.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750343002; x=1750947802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NRuOPGj+1FvnFYpArdk/uAbPOCfkau6emWeICNDblLU=;
        b=bK+UQPn80TDUMaDAdGEP+Jnjqm+Phi18quF1sDStfxEotLI2IcwkfmrNTvEKWoKTX5
         MYXPkKtbY0XzX5pffEoUQe85bd6xC7Eq9NJRPCw6F2qPV71H/nnqZcdUaubXlBIWOSWz
         zEzcsHVzU88ym0mSE4uqKEUF156SLwL2uTIDIGkCst4j1yfMdORhL4EbPiX3yyQzRh/x
         uqRxQA/htu8pN4/lWGt2NzFMm6QPAjHSaS16PeyPLftcEz201a/6SbWOhEW7fXBaYy3H
         8e+ZQdCTDDjdYHK6QUuXYte7VZgBqzsmEOFQZiN7h8Hc1ecKlmj/URONo09b6uSpwJk2
         gdlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750343002; x=1750947802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NRuOPGj+1FvnFYpArdk/uAbPOCfkau6emWeICNDblLU=;
        b=LtcMW5lXsbvwcOImsMo55wGqGT4qepiq6lB1CFBinS/0jjsA/3bq/gcIYwHIe0MGWK
         HQhMkDwsOaoEhMp7YkbFrkdYim9bCgeJjZbxhNjmcILKsUmj/sztoBvKttt9qaMm2Xri
         537B4BGq00WMgM0pJB43h4deNbnFxy0PlWFw/ZMT11Q+PmdMUY46nCGHNuyHt4us0jLk
         TDm9VkqnQcLs1Rw83dFG4cHlFT3gJS5QYtHbm8/dQgJqCBOEfd/2mOgDfPlgej8Rs/Mx
         /Cm42pljnNzTThYyUrAV1p8jSh+Kavs6Q98ybkQ+5WUTrSQ5t8kZ3SzVH2F8RBJRIoVz
         lBVw==
X-Forwarded-Encrypted: i=1; AJvYcCUOSSUjx3gRaRJX68MibAb01/EFQ0KYJt9Tpm+DTAht2s+xFOBWV147/PE2MZYx0S3UDlqv0XcOjN1q@vger.kernel.org
X-Gm-Message-State: AOJu0YwOSrwYCvXQ0DqDIN1bKRBxMiZm1h1hLhfqTD0rjM/20bdo243q
	S7ULCJQMfziPNCmqyQZuaQ87ahH+Ydx6NsRnUi1mellgWJVbkXGgpkyNMhhfNZdmwT4=
X-Gm-Gg: ASbGncsTnbk0nc7We0uQO+Wq53oXJOIQRteBwJbdEIaF8AEwObMixKFWctaxDrIt03b
	qerROszzqRRVKtneX5o3K+fnDpRBhwRzKrTLRJdHRh/H7pXrj3CIOuXCpQBGDf+pHnQMCVDtR5H
	pOU9sjydiK/k76foZxcLtg5Ewz8GLjrHffspDpIftbW/xD/70swxmqhQ8om415CS21FgZnBvt6G
	oyRK0HiJsYI6PF7v7mmnwHxggs3NEVYUQM4vEWaCQNYJniC7Wd0z9isu2H5HUQ9Mqu+H6LZ1mKt
	lLVpnAw9D96tB96YffYn/22c0SVPolO8zCL/9Sin6TSrwu9+ZdfpfINpjitQ21CtfnjNpvYNEV5
	uzzRaGPstYlsQtV+7X6pDOO46Cz4=
X-Google-Smtp-Source: AGHT+IHp+ZdhxuAAGQlqFZ4R4iZi67IGZtlL61Gzmpey7v/7Hirij3KEhOesLK5659xblWS4V6bLHQ==
X-Received: by 2002:a05:6000:2884:b0:3a5:2ef8:3512 with SMTP id ffacd0b85a97d-3a572373cdamr19566371f8f.14.1750343002467;
        Thu, 19 Jun 2025 07:23:22 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b4b67bsm19368026f8f.83.2025.06.19.07.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 07:23:21 -0700 (PDT)
Message-ID: <620f9281-208f-43ae-ba38-4c3da04fe5af@linaro.org>
Date: Thu, 19 Jun 2025 15:23:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: media: venus: Add qcm2290 dt schema
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-2-jorge.ramirez@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250619142012.1768981-2-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/06/2025 15:20, Jorge Ramirez-Ortiz wrote:
> +maintainers:
> +  - Stanimir Varbanov<stanimir.k.varbanov@gmail.com>

I think this is the wrong maintainer entry at this stage.

You can ^should list yourself and/or Vikash, Dikshita and me.

Other than that, LGTM.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

