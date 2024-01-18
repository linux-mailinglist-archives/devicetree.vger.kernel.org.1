Return-Path: <devicetree+bounces-33066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1972D831ED8
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 19:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5DB428ADE4
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 18:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F452D058;
	Thu, 18 Jan 2024 18:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C2MabtqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608F02D784
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 18:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705600815; cv=none; b=sSLJ0HrXsYXwqqbjG8AWp7krh+Wh/T6DVc40oFeUFRO0ZBZNRtLL72+4EEnnOGvFoRe0M7C0w7+Rk/23nq0v3RSOCXQS21KhPxZCBCnoQagUoSnOY/M8j8WRVYWpivZefhzEVScztVCeLl8odvCq9yftSWvhZ1Cc/TIDGdaJdrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705600815; c=relaxed/simple;
	bh=inWCW/gcYthgDfo3ImMH23/upt5Xs0yCpW0uDqinTJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gFZE93YL8A0b4FPfjOXCIW/oWZQh52dQBMMpQygJ6iaQS0yZtTJxwVjOpxGsj7xeldm3HJqw3YFxFdYUrIstR0w0OgnFeig6ZNJb7QmSrdTBFB4D+DVZ+No1V/TFOiRTwTze/7l46ptC6a0IKz1U62C/kVeISTlCTWs8DjFtx8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C2MabtqU; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-50e7f58c5fbso17256605e87.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 10:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705600812; x=1706205612; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iBqwoxlx4gnnWqnFvaKADZ4JLIY+I21s4gGLYsTualc=;
        b=C2MabtqUiyrKXhnnhDaHqjeFkq0PteaiMQqtPCh/Aww4OI7vtiLl9KYf3KmEZRr43b
         QygKIgkg02ZvYJ1IVUdhJZcQZsQc/3cPhh2J50szBG2npVHJMQC9c6PiTKVRXUxMGvgQ
         1sDirf/uMOl0wGRZgFLEMWlyveHJoEbcbKT6ta2DRnG0W/aT7QnJAwb2j3KkNGMqqwT2
         ShRwHqscEEU6QY88MIsjLw/4GixywR1eJKgywqyCFi/V2Tr3ipFCQXx3u50r9+Xw7tgV
         r75xJHymkelcuF8dSYsCHoG9p5r9ANc66cQr/+t3bPSGrgkF1mMV/pKSa4OHyrSi/HGW
         W1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705600812; x=1706205612;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iBqwoxlx4gnnWqnFvaKADZ4JLIY+I21s4gGLYsTualc=;
        b=M6qjuC7XLjbVtv6snbcWVcFgwT4v+LVL2GHKWOgwGiWJpO4GLilDsRZrV6wu1nB6rP
         VxnCFTURhz4WnYPU+yHXY+t1SI4kkGTfNAcGa4j3F5FzGol0QDLEmqvVxyUfArSGyNMT
         HdiHDzO60UnxJg5feEm6EJkC1PjvpqMAmXxGkMQ//nfXMtwmZ/Z2IflSemNg5NBYRxF8
         GnIRu8FYeWTSRWoYlm+2YnEFiSDPhNqGEpF6UQT/cN9jMbtukpj+l4Oa6t5D9/bpTey5
         AgakWr1hGDNgxOlylXJ3yzzjvCPcrcRLlE92ruFUvrX583Yui3VVkKGONKG4g/l9Ybap
         e3uQ==
X-Gm-Message-State: AOJu0Yx7Zc+3Kp5uqpmA9zrsiDAaskQLL8MpLJHpKJP0JrnCKDF6H9Jl
	eA8+Sq4bawYgFSpqvKJ5ibKUL1y0BNXt3Nts7hrdqfcB1pYedLCvOUaBJEq+zss=
X-Google-Smtp-Source: AGHT+IEGPOjGHD9Ar9cWEdm17o6nO+I+JA4OZLTIl8Z2GO2P+L5AcbMBNN/pBByZ4phpxTWIBwA2mQ==
X-Received: by 2002:a05:6512:11c9:b0:50e:6b45:c915 with SMTP id h9-20020a05651211c900b0050e6b45c915mr16575lfr.7.1705600812396;
        Thu, 18 Jan 2024 10:00:12 -0800 (PST)
Received: from [172.30.205.26] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n6-20020ac242c6000000b0050f0d944b3esm656797lfl.140.2024.01.18.10.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 10:00:11 -0800 (PST)
Message-ID: <e1c6053e-d26d-4eb4-84ba-b16403fd0ad1@linaro.org>
Date: Thu, 18 Jan 2024 19:00:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm630: add USB QMP PHY support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
 <20240116-sdm660-usb3-support-v1-3-2fbd683aea77@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-3-2fbd683aea77@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/16/24 02:10, Dmitry Baryshkov wrote:
> Define USB3 QMP PHY presend on the SDM630 / SDM660 platforms. Enable it by
> default in the USB3 host, but (for compatibility), force USB 2.0 mode
> for all defined boards. The boards should opt-in to enable USB 3.0
> support.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

wonder if we can make this dynamic, somehow..

Konrad

