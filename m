Return-Path: <devicetree+bounces-34356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6FF8397BC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1A4D1F24610
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DD8823AC;
	Tue, 23 Jan 2024 18:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BUQKdiSb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ED43D3A7
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706034624; cv=none; b=bRI2sJs7jcnXnTzR3SjSnFftA/maYF5sFZqIrAZ6AVMj1RaAaCGUqWgmD47k7G9ggQMP+AcAJVW5+QrvgJScAuKmEuyx9w+lFDIS/PzbEYLfK9CsVIL+PI0HZjABMPkFM5FLb0eJjMfdkdLVmZb0xM0d0WWWUVWT6YWwVstEqH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706034624; c=relaxed/simple;
	bh=ZS2enheDeK4zJ9S2SV37FPzoLxHBRNEPkvykl3qRBAU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iu4YSLubFn7JFG96eQY45WXgtFBpiijDkHiBvpSg4uciEg+pp6a5sVjuzBL/PfRwx9wviR7PWFQsENJ4rQGLajhlbKpZawEGIoR4f6oPxByFSPUY/plIhAHtojqHQ58UrLqqYLZK/1570vCrkNwx1yxaY7cOm2LmDPLGhYwkGng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BUQKdiSb; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2cda523725bso48048291fa.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706034620; x=1706639420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QlXjW7G6UiHX4sDWl2sKV5O6lj3QKX2Rb8bw1BWqDJ4=;
        b=BUQKdiSbIhyKl9bupztHG7jy4leRx305MxIUsl9vhRcrAd2l+N0++eeNq/WyQR0OH8
         +qqOD11Ms+Od6LmYnOE/Yt/54EK0CPhSrcz9e2exYBo0mWcJfnoAT/is/ez/dD3mqoEH
         9GJm/8/7P04KjixGTYs824mQz8bjKkcHOSvoa70lj9a107o6XjdCACNW6vIxLD9Iwe2R
         tChIrDF7MgNqBx76k3kNQg0sdS6X3/vDwIT33D/4XihqFekslZOKYtpPOON5BSmX4JZ0
         FHoBUAX+BHGJJrXDaDDmWIfHfiEtOzzVJKVuZIIL4ls/s427p5H2GoWGAI+S535d9dk7
         Hkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706034620; x=1706639420;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QlXjW7G6UiHX4sDWl2sKV5O6lj3QKX2Rb8bw1BWqDJ4=;
        b=E/8QUZEUFps9yWxiwQVaf4HECwMpxVggFQxpxXIVSfDhiNDMcoNPXi71l1/OeOtoKM
         F33QUXnAGL1PlIBAqP6cl+ceHYBzoaiIGZ+FTo0nsExL+6XSe10pn4TJFu9qJaZD0jPU
         lVt7ROHaKL2t4+h0vaSGLbP0ohH9PO7moJ2DQGNg6vmxN90KRxbXAJ8gz9G1xOUe6a5P
         O5g4E5jBKTAo1Q41xUopK0qylvX5zk2f8zwHBkepHRfHGeW2BwFqu8dGVLi2orQXg2Gl
         3khCcGF376l3rzSMbLL7e1OXqhLXvpKEgfV9nihTENInwq8PWdElJS3XIt5heV4y/zOB
         XyaA==
X-Gm-Message-State: AOJu0YwZh+dLDpZmnWva8Iy6RroC9ghuVcdvDycE+raxS39dCcozAh7E
	Fpr5t4ClU98WKVG4h3U4aLowb5UPlY7kQRgzcaEfiQer8f1X+uttnejFpo/aw9Q=
X-Google-Smtp-Source: AGHT+IEzws/74GeYqifibzUh+CjXvSxGj4oufXbF6Vz+MoQFBLYcPla5kMRVXNHUIYKkx7PjpYbHyg==
X-Received: by 2002:a05:6512:ea8:b0:510:ec4:4ee4 with SMTP id bi40-20020a0565120ea800b005100ec44ee4mr30023lfb.152.1706034620261;
        Tue, 23 Jan 2024 10:30:20 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q20-20020a056512211400b0050bea32beeasm2398479lfr.216.2024.01.23.10.30.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:30:19 -0800 (PST)
Message-ID: <a9b20408-3669-47a0-96c2-3a26c6d61826@linaro.org>
Date: Tue, 23 Jan 2024 19:30:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/11] arm64: dts: qcom: x1e80100: Add SMP2P nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-2-072dc2f5c153@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-2-072dc2f5c153@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/23/24 12:01, Abel Vesa wrote:
> From: Sibi Sankar <quic_sibis@quicinc.com>
> 
> SMP2P is used for interrupting and being interrupted about remoteproc
> state changes related to the audio, compute and sensor subsystems.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

