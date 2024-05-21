Return-Path: <devicetree+bounces-68188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D7D8CB2F5
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 19:36:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 548231C214E6
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 17:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB12414884C;
	Tue, 21 May 2024 17:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+9hcj+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1802179BD
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 17:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716312950; cv=none; b=swafAseip4z7fa8mt8EOMZGYbP3IxxNym5Y/0chE/zItXDfLWi6n+mo0BIwPa7vG0ni2g1YRYTUFHcw+ypjXbwl5t7qoSaxkM0Tuf1iz1avRQ9tFqkEPbn4XJFUukcah5OkBZNWTPmgAo03f0LjxJOLRE9Orv6fKGJ1gYNffrlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716312950; c=relaxed/simple;
	bh=XuD3UMWSTicjIiF7ozXmrSi2myUo59yuazJuOkCVELs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QOj77NXfFy2UFRG8ODzM9T1jmb2Csj48hD/5/mJ+fgvIUWcKoaoD+kCJ9pe/VdtMxAF684Kxw5iZtpaQf/+G6nQTDn+8bPl8c2DaKDJDKEXfkyfcrXAJZPrnfA6E2je6+8AWLL9iowI08jOaoArRBS1Jl8DBLL9kD35+Lo3ciOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+9hcj+3; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5238b5c07efso4776541e87.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 10:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716312947; x=1716917747; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Ctw+pH4MnzojRpfpKhoAI1zwXX4IBqahQuQmnWxFZo=;
        b=O+9hcj+3m2pGAY8J4QCMFjL8lJn0oVlooOB2sgzvqNsroYohaFTgXBYZmAe6k4qvAT
         4DNK/B0I+XrqEvIfeCR6SxbZr0aVEuouDe80BFSopAKqcTQWzWDa4n/+ogsZbosl0Wjd
         BDTo9g92DsBLMWpYTrc0fGzL2zsH+n9CyXvt5svQt6+MVwBlKl+VAuVDv5LYUYaGhfy7
         ik2WK4gwBovZ2E+Hu8R2fRqeMt8hSXG6qDVJpTz6lrf+YdR9VGmgLdi+Knc75/xIU19a
         zSMXeC+pvI7KCfyi8l9eF/seQ0TS5be7eeq9Q6k/NaMAglD/uOUoJ3OQ2IaACqXhKN/c
         +INQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716312947; x=1716917747;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ctw+pH4MnzojRpfpKhoAI1zwXX4IBqahQuQmnWxFZo=;
        b=TmAr17nTChdGKofXBbHOl8LLTRjW+TrxUxaEgtIZHGEv7eO60jY4rtaH6dv76fB8/1
         Qv8vliphdC7VhqkAwiDWIsCf0p/vOQWnsSwBq6r7uPKQWQ6XbrfKgUMn1OwqB6QF/jaN
         X3UHXMbQt3Fog667YuB+yangbSY1YuqzmmncpK1oT5Q8BWMEPNT5n806IRt9U6Bt7Ial
         XHl9/+7gzm/qE233DnA+PEp1+mqsFRsVrFHM0bA254RHn/mom6iXSgdZhhjv16TuMaKb
         SBFCZ4mJ0c/lpMcFps7F9eZi/6+0A0xGXx8I6pU5JMaO8ybXKaeGwQFi/20NFRyJlIzT
         ngaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQtUhzr/svGkHx7DkAHFMudfIZ1Dn7xPdxGtMuSpsh+JGuCeH5vX0I5ZqM+1T/MtuELYhAuYKm2dGvkZEDd3cZIfuPPIHw6G1fSQ==
X-Gm-Message-State: AOJu0Ywd/gzVm1rCx3tnly7s597hkLAtjLw+ipRP12b/P2pC5V4rTC9k
	ofJgB9b7MrchTgGJORPJum9U2k24diSKAkpMSfY7xTHG6W/81zO41GckKug6RyVqkKiXR8QR3td
	j+w8=
X-Google-Smtp-Source: AGHT+IG3tpTeaNwBk05y415j39FL3r2RzN7r9+FBBuxHR6nbabjWWdvFIWpNFzi37IVlgNTTHwLGOg==
X-Received: by 2002:a05:6512:3e0e:b0:522:2edc:c858 with SMTP id 2adb3069b0e04-5224b73a706mr21157861e87.34.1716312947234;
        Tue, 21 May 2024 10:35:47 -0700 (PDT)
Received: from [172.30.205.5] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ba54esm4705961e87.110.2024.05.21.10.35.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 10:35:46 -0700 (PDT)
Message-ID: <d45ee913-7f6d-447c-8cd8-2bfe2986aaa2@linaro.org>
Date: Tue, 21 May 2024 19:35:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Enable download mode register
 write
To: Mukesh Ojha <quic_mojha@quicinc.com>, andersson@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1715888133-2810-1-git-send-email-quic_mojha@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1715888133-2810-1-git-send-email-quic_mojha@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/16/24 21:35, Mukesh Ojha wrote:
> Enable download mode setting for sm8650 which can help collect
> ramdump for this SoC.
> 
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

