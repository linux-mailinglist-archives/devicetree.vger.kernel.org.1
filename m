Return-Path: <devicetree+bounces-77365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F1A90E640
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 10:50:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE91BB21959
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 08:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E777D07E;
	Wed, 19 Jun 2024 08:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+ELKBCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE0A7BB15
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718787036; cv=none; b=pxD0hehM+LPndJnK19LXzloqV9Zt1jzsPDxt8q6V5hsZFW2zc3YlHwVJJVQauv2LKz320AiVrz0aDl8dG+FAb2rE+hZDyZ2Lj73El0tBBfPnzuCgA9klAKDfJnxJiS80WTw7STNG2w+zUvEErrRFcT4sCmVlK9rRK0Yrtk3PobY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718787036; c=relaxed/simple;
	bh=6q1ZTtnzYg//bgAhA42Awnaa22+bcG/nj+xOuAg+m54=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZE8SH6B2FTQ3L2JPcWeVjyJFXnCqRx53pTzU6Cchgl54/D39wldkdMmGvGdE1WkALUNj4sqQR9NGQ7LpDJFUNupoVclJxxTRLj2AkJRzSKCE2+daYuDKs68EgPLEaVRQ3fCW9dvc7oIXQiplOG2HXu5oSrSqq20bASN92c/lgdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+ELKBCs; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-363826fbcdeso296138f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 01:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718787033; x=1719391833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ngW8Gz5Cpl+0cBREyYz+8mH5KwITQlYSWHUF7QS7aAo=;
        b=O+ELKBCsPDXCedH6SnPSX0R2DlReKZbblL/N2QFZj2bRmRlNAyGbiIRoX8+f9zQuEh
         0DAYHTdFAItVj8PbeJba8X/Oyi4TQM8LP6QJZMguLHDbtLJdCXRgcBmrYKMJk97xRg4v
         805KLPq8GoVuwvKyifBjFrcwCEpBbjt1TW2TI4TTLKfkwMLdTIffjByV/J8cCZwRfXi5
         qz5/1JGXUAhHRp8jMjCapMJ0p6kYnLzra5n7+7ZpcnpNeeMdN3cpWRHhnPE6JgURyCkk
         6qfNG0shmMbrOdLOH89GdJtMh2HXi0e1oZzg5e5XP9dqSYBy7bThpN9YVApQ4kjR5nlw
         5FJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718787033; x=1719391833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ngW8Gz5Cpl+0cBREyYz+8mH5KwITQlYSWHUF7QS7aAo=;
        b=FUYYcWYwONyI1ZD9FAKmcoLXSxpMdbvRGjnlB3h1llhKuyjjcPn8G8B/oLiKbOpwfk
         7Xhehu9PteCHxMyFvXn25U4pQB8F2KzEe8k89EaZSWPJLFdnYF/6XhbgtwMCvJDc1rfP
         rlfKku7qt3sIoS5h9Trnbp4MKBgHi/51AqNaeqGVa3h6NGDOt8yo+axgIn94Fw7oEx53
         wQ1Ltt3SfB1q4dHbjZFwY5axLwp3Ut0vawLV6F2FwCzP7EUNEUSPCoIztVeV7NnEPbZ2
         BthzzFoJvxR2QClKv0al1fttlvyhkl86M/eB+WLjGfC7/PQt6tejsEFg2S98CrFv3hHY
         AG+g==
X-Forwarded-Encrypted: i=1; AJvYcCW1fdv/yq1+pMSPQEw4YsYqjDQbLsTVx9K4I9wryOV5E1ALbhwRoOyWy2RZV3iEvGKBr5BscYFRCyhEDF1J+snzqlN2dx0KeFb8fw==
X-Gm-Message-State: AOJu0YynEIaUKjgDWWfe8SXBHI8fVsmmOSwJTZ8NknEgmtt3VLZ5ygLZ
	HJz92PK8K1tr7LgQpW0pWCrz7kti8orO8vn9rWEd96ikyUHzq0fGcZfWsBnT6OJtvBIu9gCvcof
	a2nk=
X-Google-Smtp-Source: AGHT+IHahTvGL4fXPSvvP/+8qIZ6XuBPDuQY5McrWerDtkQ7poz6Oe4u9spv229aajpWrvHKw6bZdA==
X-Received: by 2002:a5d:4351:0:b0:35f:20eb:cae3 with SMTP id ffacd0b85a97d-3631998ef04mr1344014f8f.67.1718787032663;
        Wed, 19 Jun 2024 01:50:32 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:ea6c:d102:5e8f:d5a9? ([2a00:f41:9028:9df3:ea6c:d102:5e8f:d5a9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-363f7e62e6csm308966f8f.27.2024.06.19.01.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 01:50:32 -0700 (PDT)
Message-ID: <699a3bec-bb43-4572-83bc-6efe514a6b13@linaro.org>
Date: Wed, 19 Jun 2024 10:50:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] Revert "dt-bindings: cache: qcom,llcc: correct
 QDU1000 reg entries"
To: Komal Bajaj <quic_kbajaj@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mukesh Ojha <quic_mojha@quicinc.com>
References: <20240619061641.5261-1-quic_kbajaj@quicinc.com>
 <20240619061641.5261-3-quic_kbajaj@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240619061641.5261-3-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/19/24 08:16, Komal Bajaj wrote:
> This reverts commit f0f99f371822c48847e02e56d6e7de507e18f186.
> 
> QDU1000 has 7 register regions. The earlier commit 8e2506d01231
> ("dt-bindings: cache: qcom,llcc: Add LLCC compatible for QDU1000/QRU1000")
> to add llcc compatible was reflecting the same, but dtsi change for
> QDU1000 was not aligning with its binding. Later, commit f0f99f371822
> ("dt-bindings: cache: qcom,llcc: correct QDU1000 reg entries") was merged
> intended to fix this misalignment.
> 
> After the LLCC driver refactor, each LLCC bank/channel need to be
> represented as one register space to avoid mapping to the region where
> access is not there. Hence, revert the commit f0f99f371822 ("dt-bindings:
> cache: qcom,llcc: correct QDU1000 reg entries") to align QDU1000 llcc
> binding with its dtsi node.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---

For future reference, it would be good to have this as patch 1,
to prevent the previous one introducing (fake) schema warnings

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

