Return-Path: <devicetree+bounces-251985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F6CCF940F
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:06:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 795E430AEA2D
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177EC33CE8F;
	Tue,  6 Jan 2026 15:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eZXp++uu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F185533C507
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767715166; cv=none; b=mUSyznG6zQNZ9qR6LxBoyC4s4y2NeAvM1yc73FEGuNfGBjRPu68rJn/iReVciu5HsXYUMTUQdxH360tFqf02qFg6OLBVWfA/5uXFC6BGeNYjcVn0TlRTvdTy3LbfWxkHjpTFL6bu3jArkB+5xFUggITzeMlNDS799sGJc39PsBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767715166; c=relaxed/simple;
	bh=ueCY+mvsO/KMOr22nP5/FFGdjy8fsWe2E4gnFXrWFj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q61Amj+qjx6lJnOPszSqa8wjoOIufikdgdNOQpsuGgoNbIzWW6k+vrkI2opuMffmcPnBws2FnaJKQaIkEJKT9xnJxVQhzico1kizhA/ioV6ytgUw7pTKS/+ZxDP2yTxNvAw/XwVtdUBte6ppJhJJ05EQdojKXecBRIEN8eh9eWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eZXp++uu; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477632b0621so6931175e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767715162; x=1768319962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4W2C9eI4hJYiNPglW3HtAsZGvKDbpvE4vgVhhGjmOEY=;
        b=eZXp++uuwpRWjoYbziJRzgbS5I164UG9vjDY06oAHGP+jSUgf0yuCOH3hJlXOJcJeX
         oDr3lhaMjQKrosKTiO95z3KuFwC+aGyqhxMqEfr/0L5seG/zyvFbD1T4XnBEHo8eR1rN
         IBwuyyD2npDHrlKrUEgm/psZ07oMXDKtFp3L888bMbd6GeRk6h1y7Iq77XUbdGLNtfCE
         JdSgz5nqOm7s+HcrlR6/AwRxcFIJ2y2UoGSntd5Kkfp+SbjQLr9Y3hPCKgatiIpuHOZj
         azfZhw9ofLL8SK/1tleKihrR26IVNwT/GGYEFgKFdBSc5a3OTN1GOCdkCXAFCmOnzg5Z
         AOYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767715162; x=1768319962;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4W2C9eI4hJYiNPglW3HtAsZGvKDbpvE4vgVhhGjmOEY=;
        b=Fk9jEvulKMohq7Od0b0JyIk7e8SnccbiyvSZ4wxq7/fBHjm2WM0PjRpO1O5fr+N8+y
         JiJmO5DBEvJbwxjWravm74xSWnfuIWzBNxSAvYroNeeWFJ0uDUJzsCOk1tkqVMu1+gs2
         HInv/hmHJS45QrcyOSjogXR85GLSlEz/G+3rWYZvqkATUC+6YQXGdof5AMJnREq31mRs
         wnYx/oF2aW0S0AvRqWME1YFU+Md9sH96kMsbfqibgWthGN1G166T0i0fhtKdL8l3DgDh
         JCSxkiopovebkcAw2uuIa87r979xxjv1DmthGahUkqFMiVgSVc1LpAEFldspcEq9FW16
         EsdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxfxzk5P6xyk67uiSQlPl5TfitY5Ws29WNUr1Xp39d63SkO9MP/QsrvIC60MACml+S6PKe6d+pT1Xa@vger.kernel.org
X-Gm-Message-State: AOJu0YyAtyLjZmJQalSOkDOes4FyAaX82OD2W2hj5Z97WHE1ubglT1PT
	C8woI9e+YUN5JlC9qhMskoWfXYZJ0Bb6myjBjgCv2FrG/6G3k2X9u8y3sMi7dzY0tMc=
X-Gm-Gg: AY/fxX7IJ7VsyyQTUmN1oXFXhF1wgYA6mCEc0Eeeh4IvXtu/qH154dekI6e5hPMpylJ
	VgFksv3S3S+nHkvf150/XOWEmqwUZbr34Z5FuOTj1182ZVZC6miTfj7GCQHR0hZpz83U3YsVbaH
	PmXt0zfhkn/lZ3FpJr+EXh0IZFTMO4Lu7sSaGBYlg4F6HOclQc2/ZlV/1gsV2nWVYVU0pvh3RiX
	BZTPPmIv8WrJpr12/KTYi4vZvo+jkWPahr9cuH+EI5ZFg2ZHZU4c2v1KmdqxYI2ww9gtZk9jG1r
	4Ev2avvxbdWlsUvFNxS/Nv7G5ttNFvIAuD3/+TwznNXsu8o+TzcGD+BUo/PblpwTz3aBXh+z/vl
	4bWf8MTzW7Z1BdtV9YdR1tDdSombTLmfjL9zr4akNalAIJJyRln1sA0zFPGUHKDoBPQILXdx2LQ
	IyFhTBtE9UywJixoVeBpNQApXkPTRyeMf+gqNW7qlb5+Au/Y9pkBux
X-Google-Smtp-Source: AGHT+IE81MyTpOihFiXfQldR76y9pRvsvI6sUpKphTO4w8zyeJMmkWKMGOVun4In3C7kS7nyI4yt/w==
X-Received: by 2002:a05:600c:3115:b0:477:fcb:2267 with SMTP id 5b1f17b1804b1-47d7f06c695mr41487175e9.8.1767715162204;
        Tue, 06 Jan 2026 07:59:22 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d836c7923sm6621335e9.6.2026.01.06.07.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 07:59:21 -0800 (PST)
Message-ID: <c4dd688b-6b57-4dd2-9c3e-4f27e50935e8@linaro.org>
Date: Tue, 6 Jan 2026 15:59:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] media: qcom: camss: add support for SM6150 camss
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com>
 <20260106-sm6150-camss-v3-2-d1d5c4d02b0b@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260106-sm6150-camss-v3-2-d1d5c4d02b0b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/2026 09:04, Wenmeng Liu wrote:
> +		.regulators = {},

There's no need to initialise this to the empty set.

Anyway, I'll fix it for you on application.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

