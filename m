Return-Path: <devicetree+bounces-227296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DEBBE041A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:50:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D627B357CAA
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 18:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E543301719;
	Wed, 15 Oct 2025 18:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQGngk2D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7688821B9F5
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 18:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760554247; cv=none; b=FVLYyCSNJgkz8Uy8D2RO6VpLOTW2Ojtl6uo5hrMwAdvBSi+H374AP5B2S372gHdKKm45LYN+LRLDXmSNSfbnwU3MYos7OsE3iqeJQEBY+XlKr6KkWAfIsWPJdbu9/zWbBzGUQq0xQPN8UnoYPkXRzvJNVlZNHyYRRFUVH+OxzaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760554247; c=relaxed/simple;
	bh=swdv/wTY0LTvBv/YcthMcjAr/gt2RxtK+9y/lOz8BJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aiA7YAWYgrs47Y0d0+uknP2RUlOdXIukxF+tSOepqlmdt2OXfO7brGQUUnCWn6YrK+8RsrG9VybOziExfVgFrc9tHpt1jKv4nfeEqd1Qoz9pOWtuU2sASt92MpVftuOvDks3yDNOsp+ic8GjoQY4kzWPQMmYzwta38IqqC6hzHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQGngk2D; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57a8b00108fso1281621e87.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 11:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760554243; x=1761159043; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hukg1h3ozHOZYYKzu8a9q8XV+g6fS+oS92fdsP1ACq0=;
        b=zQGngk2DmzXh1R9zj8rYdKMA9zBpfYEb4NiHomF4okkjw2x3VAZwzsoyIKHCaIZMwQ
         UiqLBK/j5yeu28iAbi6dZMZ4FkaaFxNtMSj/+NmEM5+Alt3o75U91N/KaA6IYIJVFeI4
         1ihD1sRVH5x4oUcGyVPGHh4OuxFnNk6v7Tn+aw/uBuHCOSqDmtZoQse3wYAIEwlzWbDe
         2RgrvExnBd3CeejXUbzGWlAxKhiTJxMP75h9nLekzpMKKZZ7pgL/DVZMSNe/men5Mncv
         qoS0P4mcHe6sVvLcmdG5QRTqtUMclmF4Ire4AcSHf0NieCUdS3AM4bALOKbzG7Uiw1bQ
         tRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760554243; x=1761159043;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hukg1h3ozHOZYYKzu8a9q8XV+g6fS+oS92fdsP1ACq0=;
        b=rk8mFkbhk4NvreqSgt1F64dYjK1+ocRxdShjhF/7kIcAb07HZzIllEdV7uOxrOCjOi
         aW7HgVpRIFckygTt9JB7s1RaVZJ6yeVn2b/pIQM3JJm6YoTXrsixHJxDlHqu9eZKed7q
         gOP1iUZ8mwtW2CH0ACj5qBEtGvqNvgKGrRnkFw9MLjR+JwqK3KeAlHsAYOEbXx1E+Cl4
         9HQyk6yiETe8RraWip3MOnLXtq9xWRzr7jGZ9ywDwS4CfrkAcOz5pDbRDzevsMdqaaqx
         MrR03DDn5o3njJZi4nlfszruo7B24kji8vWCzzn8EQ5YnDmt7ligyYwRG6dgZpsbZ3Up
         N/5Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2yXPi3XH3FzZRmrQ0wKHQbJ9xl4SwNfoBTMX5aXa9rSXPzE/7AVOivz+FRlgSdFm4CXgTfPbllk1b@vger.kernel.org
X-Gm-Message-State: AOJu0YzC0QPnzVzJI4/0C+PcmdDfL3zn5J6Vdy8OORhaTdmC/F7fhpsD
	O5WktPPzMoxWi0TxlgF18RVT/0Ah8+2oDX+mHbRK5KBK4gngfjrF9dfZgvgMe+ymQYUMnZo46yQ
	jwR/T
X-Gm-Gg: ASbGncvVcRpaBDIR2MsspC16nulwP6YtwqIi4CqOtsc73wqE60XbXW+0fHa9YAqYVcr
	dk0pw6Qy2DgZ6EROHkRjPtQ8foyphEA2Q+9AG7YdFJplQ0Jkth1xU5wBTg92S2Xft0W/zavRBS0
	k0wKTviVH7Vg3NcDAUc4yT99cUEx89gSaYR982cSKwXa8hgPLGWeZTisRBdYrjBqxb4vvPnSNgh
	yP3RBAodhX1Aph0Ggbx++s3JWTRaL/wNx8P4xpnveOTMP4YdSKsecQcDu2jxvu7v4oPISNLbo0p
	y8ex6/p8v8YKJNFaJeWc2Yk2U3FTapUgpjsFFJ2vHRioEaJttyNSBed/JvL2rKUjxKvHaryeBYT
	mOhRzg95X4MZ6kN3I1kkOZE08/mBwbohZGBVDAwfdQz5+bIS6jao5dDAFcW3sqql6sF7lTXrKeH
	z/5g6C5m/ql5Obfex7TUXaz4BeLIo2nFddlOQ=
X-Google-Smtp-Source: AGHT+IG+0JkONJK7diPS9LC4IMA7PvSE07P+bqP1KzE0xk93DSkWmTXn5VqwKTon3a4GXj+CVo91gA==
X-Received: by 2002:a05:6512:3b14:b0:581:9295:1b10 with SMTP id 2adb3069b0e04-591c9017360mr816502e87.5.1760554242641;
        Wed, 15 Oct 2025 11:50:42 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e09sm6425776e87.23.2025.10.15.11.50.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 11:50:42 -0700 (PDT)
Message-ID: <365d2e55-8ed8-432a-964c-b57601fd2385@linaro.org>
Date: Wed, 15 Oct 2025 21:50:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: i2c: qcom-cci: Document qcs8300
 compatible
To: Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 quic_nihalkum@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251015131303.2797800-1-quic_vikramsa@quicinc.com>
 <20251015131303.2797800-2-quic_vikramsa@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251015131303.2797800-2-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 16:13, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> The three instances of CCI found on the QCS8300 are functionally the same
> as on a number of existing Qualcomm SoCs.
> 
> Introduce a new SoC-specific compatible string "qcom,qcs8300-cci" with a
> common fallback.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

