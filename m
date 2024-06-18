Return-Path: <devicetree+bounces-77150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B83D790D7FF
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 18:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 177E1283CA9
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5149B482C6;
	Tue, 18 Jun 2024 16:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NqgYgMbC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7B146B83
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718726541; cv=none; b=DfvwZNG261CTXMRVGdkZVwkDDYMciNpbb++WIu9Exz9IbBgLlHnqtf8qrREIhu77gKOVSIjCxYO8G8t9vBQJ0J/7FpfLxcxDYjusBW/e7dTlJzGH12e94vkDUFuKu6QI+QvuM+8szxriVQzKh0j18wtI9kIXvgfF9k2lpJ/4IAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718726541; c=relaxed/simple;
	bh=x2PiSU9LX7PP8SgWlE3EbW7kJbvIktv1zVvHYBCMABM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EjuEuSVyPIMpOuoMT8LEW4PtkTzmbjfhQeDt8M9F3pO8KVkmuw97Y7YDgggmdgS4dpm/hyMhihBbQgtyeMJmiTRxTi+5wYklrouWrs6cxRfE/SG7FefskxZzyJpQPQNT9oa73ksgm96imvR0eRjTA0IYG4H8tlJwIrTBU/1Qr6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NqgYgMbC; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52c815e8e9eso5550754e87.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 09:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718726538; x=1719331338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=752RRs86IaRqV5X/Zk2O6e+xuNg1lXOleBt1pgXq+cM=;
        b=NqgYgMbCmtl7nAdAV5xOv+RloRJ8xu0Jv3KAYLTBwD7Ci28rkjj80GIQouhYBp6iQE
         CAt7I6aOC89MIaM9RcHSkOyll+KAnK003xvQjwCza3Fk0lQg6ttJztTH+2Wh5eoBNLDa
         2gS3DzF78vv3xM3hxFRCN7MniXrbC9JEQHKVRxg7Ruc2NWooPtRh5eVW7zkgEP4Rh5oA
         ajOSN6ZVPUlDvTrefivqFn0pWsD/RB0V0QegxGSGT1Km1+cYG7v1/ff7fsQ5fi5Ko4Q+
         ppXEVGS7hbd9P3pxEULF5j5Xm+yEv1ZqKDIr0lRnjA8JeR92UuxuCDmXg/wEITa8QJrF
         3Ybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718726538; x=1719331338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=752RRs86IaRqV5X/Zk2O6e+xuNg1lXOleBt1pgXq+cM=;
        b=VLcx/1lBbB26ogZ4T4+mmthWk7HwgpDiBmt18SNW4x5JC88pmddEHM6692rzReArLW
         hxuZy7DhQV/zuuMVKQVKNuZzuvgtw1AZKL9xkfMZ7kJUhW/CfA6AyXtBK8tmt5HmeuLd
         k58hduCDj3BLPl0rI+/gPQ2ASTow5eAFdwHvyx1R7ygpkWx6e/VZOh2BFMfI8ht/vy9J
         875CMEWlRAJseqGGBm/WmvnRH/X83iPjor78IVf9KSDDRfvTGoqEolsVJ27528vXP6Fs
         06AfmqaY2zZgElpi9RS9mZKdXQkaiLzkMwcFzlweW0xuBNXr0npkETKS89MeRYUoUV0V
         zjeQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9Nqye6te1mrA2LWZR4QG41rnhp5C5Z0ahkuLChMy62/lClI/sALJhxl3M08n03PepD+knOdah7+lBA7T2uJ8l5MEYkXjSkO1fCQ==
X-Gm-Message-State: AOJu0YwgjdyNVJsV6ZgenYLkoiKzDHyq71nuPfxoOlZZqYI2Vw4KoiD6
	QM1B9TmEI6IgKmQ0q7+KH1sTIvk9z6lzAw21bT6tkSskOSGGrRkZQTi455e29gg=
X-Google-Smtp-Source: AGHT+IFI6pzMjgCbLBoQAWrp4XZXRVfgnVptha58SDpLfkJeq9xe2VdrhCoCQ5WsAeY36aPV7rhK5A==
X-Received: by 2002:a05:6512:70:b0:52c:8932:27bd with SMTP id 2adb3069b0e04-52ccaa38052mr32213e87.41.1718726537649;
        Tue, 18 Jun 2024 09:02:17 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:9346:6881:423d:1381? ([2a00:f41:9028:9df3:9346:6881:423d:1381])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2888c2esm1551297e87.300.2024.06.18.09.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 09:02:17 -0700 (PDT)
Message-ID: <d09aa84c-dc75-48c6-b91e-c0dbe3d2e06f@linaro.org>
Date: Tue, 18 Jun 2024 18:02:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/3] dt-bindings: interconnect: qcom,msm8998-bwmon: Add
 X1E80100 BWMON instances
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 djakov@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 srinivas.kandagatla@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org,
 dmitry.baryshkov@linaro.org, abel.vesa@linaro.org
References: <20240618154306.279637-1-quic_sibis@quicinc.com>
 <20240618154306.279637-2-quic_sibis@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240618154306.279637-2-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/18/24 17:43, Sibi Sankar wrote:
> Document X1E80100 BWMONs, which has multiple (one per cluster) BWMONv4
> instances for the CPU->LLCC path and one BWMONv5 instance for LLCC->DDR
> path. Also make the opp-table optional for the X1E cpu-bwmon instances,
> since they use the same opp-table between them.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

I think we can just drop the opp-table child node from required altogether,
bindings shouldn't care about where the OPP table (which is referenced in
the operating-points-v2 property) comes from

Konrad

