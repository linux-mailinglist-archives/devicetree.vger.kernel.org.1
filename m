Return-Path: <devicetree+bounces-79355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D114914F56
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 15:57:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC96F1F22FB7
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C70142630;
	Mon, 24 Jun 2024 13:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I/7c5BSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1288D142621
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 13:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719237464; cv=none; b=WbcUbJ8GzfQiOq63DW7igtql6Sha8sgI9WIHMQmgMVj0I5mBNMViN3QST2uaoANoyjFCdeq7anmnymSKnsLhMXvnzTv4QD3qw4lk+kDfZmBiwyTXTkizM9dj2bWLyIRpeGQSPn1FT+Dz0ubJGOcifyca5xqCGg/aLsXRt6fw57g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719237464; c=relaxed/simple;
	bh=GFIi6zv2aihNbVR53CK6RvA6zLzaLwbCY3qxAG56vbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oB6djadQYRUZGtbCrgPWoepAjSlfAKSKSc6MGPb1Ejkd1OBhhxruSb/C49+jps2JsVSYrUt4CSeCl95b0c893hlpmWtBF5ox+boYi7z/cLDKUHIIl1gAhRJ6A9laipYMyd4Rq+3vOHLzUu0iY9kCIqisS0HfMlfjlV8ucHRN7s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I/7c5BSw; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57d106e69a2so3965215a12.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719237461; x=1719842261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IHD4jJpcuG4tMgpp91267iJ5OoLxZWbXVFw4XaeFi2c=;
        b=I/7c5BSwfn9ObTM+7DhxM5SwCs/sfajtsRjao/ThsS4aOUnlVS3Opzuxh7vep/otNS
         kqhTSPtZLV8d0AmIJDRdSBmLrqEHbxDNRj/iQiJwWfo9wohdbtemYStZn505XqxZ4zv0
         cEvP4xCBnmZUCUZPRn1DuaV11xJS2GORfOPJG6+APLHpDfgQiofxyinYJ+Anqh7pI0DY
         /tuoEgZi55VVE6yqUes4Qf/izCjgCDY/ckcQ81sGSrfuw35nADZ1dDYlb6tiFyMCziqU
         muhv0EcTMnXbs8UxwZkqdGlHeCdZ5zusDpelTHpluSGIvB24i+T6+WbmrCdFPtswH4ST
         z/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719237461; x=1719842261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IHD4jJpcuG4tMgpp91267iJ5OoLxZWbXVFw4XaeFi2c=;
        b=OHKaSoEf++rJeMSsl5rPALDMhkZTkXWqRS3lxPsU6t7DSCpHPXjy8MpMPefVh2SZue
         MCFxthzOonSlzWatNAUF1pRz3GTIyWRfpySZRwCrb7/5a59T/MAAOTY/i4I/WDGK5GKX
         6WfHwegw27EkBBf1MPV/f1Bfxi2yTh3zpEwYsVI7SBDZClMevNe93eUFgfaJA7sVP91+
         2mAzTgzf0dx6b5P+tXnolDcyGKyLrz0WNOmWmvPuTQYBlWi4p/liCT/XpDFCOih9rCdP
         hq3aAlISCQBp8hQzF7O8fZjeDjOk5rmVh1JmkfFpt8l+b6RSfRIUWcQ4ypA6oyi3r6a3
         wfNg==
X-Forwarded-Encrypted: i=1; AJvYcCWRyETLXGSRH3Z2+bAHaTQCMTyIILWT72/DOLV9d3LZKd8YuLcaOX6QBvBx0+y5vtyzXluMKOeDCD7Hqp/yLljERHzNeZf+Slm8nQ==
X-Gm-Message-State: AOJu0Yxx7YPV5PFwH6pZ36JkljVXlrQ5sym4TkiK0eq5m2Q7Fas++K9N
	B01AjqNgCRde+rvvO07QMGYl2sKtSQXy3Uo1w8OJZ9/fcRdrO25GosEYAF+S3Hc=
X-Google-Smtp-Source: AGHT+IGpGmgITj2Vbxhko8ZELCw5TU4oWE8gTzKLF+hMftNzpJ304FkSkyvJfotXe68/KgaWnf31Rg==
X-Received: by 2002:a50:875e:0:b0:57d:4692:ba54 with SMTP id 4fb4d7f45d1cf-57d4692bb51mr4569953a12.6.1719237461074;
        Mon, 24 Jun 2024 06:57:41 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c03:9198:7df:6a16:3e8e:ed7b? ([2a00:f41:c03:9198:7df:6a16:3e8e:ed7b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d66b04378sm405692a12.38.2024.06.24.06.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 06:57:40 -0700 (PDT)
Message-ID: <f5ef4e3c-66e8-4833-86bb-c38658b923ae@linaro.org>
Date: Mon, 24 Jun 2024 15:57:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: x1e80100: Add gpu support
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Bjorn Andersson <andersson@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240623110753.141400-1-quic_akhilpo@quicinc.com>
 <20240623110753.141400-4-quic_akhilpo@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240623110753.141400-4-quic_akhilpo@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/23/24 13:06, Akhil P Oommen wrote:
> Add the necessary dt nodes for gpu support in X1E80100.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

[...]

> +
> +				opp-1100000000 {
> +					opp-hz = /bits/ 64 <1100000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
> +					opp-peak-kBps = <16500000>;

No speedbins?

Konrad

