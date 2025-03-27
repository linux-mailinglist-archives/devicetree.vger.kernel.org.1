Return-Path: <devicetree+bounces-161330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F88A73646
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 17:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08F5E18851C3
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A576917BB21;
	Thu, 27 Mar 2025 16:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mrf1bEQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89F41922D3
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 16:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743091399; cv=none; b=DfZmsJFemL0DuKy/aYXtVBXxk4/QJC+icmlo6Bwjz/UvfkmsBmSxZYiQAxwotzKpMplgSuFzCE9ittuAOOD2aH+x3WtQm+tB5ikJueWPM3urUVPxToDaj9bUEXNzB3X8mGOWDnLJrVh2+hWJOdSwC2WHlWBSqTPIyEmUaFUvopM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743091399; c=relaxed/simple;
	bh=81QR6vZ1/3dHfg19CnDyBrh+7J9IpGW7HgshSplRzy4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gQ905sxcLehwCZ3Wyo1lb+EwhpBQqVBpwlBHeLxI00oqE1eZAqlUe9Z5w6ElAOuh5SvP+vE3909IGRzACt9/GN2NkyDCIYpBBljj4uNemfImtILHk0J/bT2/VTPlxBlOgqGxIdGnA5XGbpXJA53Y8Ca/d8wPgzlCt0Nq7CoWtCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mrf1bEQR; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43d0c18e84eso5616565e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 09:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743091396; x=1743696196; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=81QR6vZ1/3dHfg19CnDyBrh+7J9IpGW7HgshSplRzy4=;
        b=Mrf1bEQR6394+stuB5J3/mCriRbuwaTINQqx7lqaEaUvCmuAf8u7j8c7EBCzL78tVl
         XApjcVjPV3fKemEwO+64ZG33my5Kuj9FbANbov3gxBWp0jl/2LokeOst48q85QjQyARA
         1gXwkasFHGcxXg1ZDCaaah3ksD2afOtJcDxfcMhDwGGmaLpIvcuRJcv1E/+PiGEP5dPs
         UF0L2lFb3Q5ETCpiVEP9YVxsrnGg49BNq7vmAov35/GGeMOPfO2NmX01ZPXfEEmnPMHJ
         ZUt8MRGGJZhxj0Np2QOalONkIljhEaggciiaNbmstDlJXoZ02jJEl9HRVNGQBsBJ5890
         rApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743091396; x=1743696196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=81QR6vZ1/3dHfg19CnDyBrh+7J9IpGW7HgshSplRzy4=;
        b=StnKXi44dS6v+Xj+0caWV1z1R49eEupJyaIT51duGZ1EWF3AnOr8mt7kxAVyxR/CeR
         5SVpLCy8IPlWVNGOnW5wEbKRVrOs/rnO2m3GUVt4ogwfeUFFjAL0R365RpfxY5HYjZEh
         u1H14yC2ntkE2ADdaPD9HgnudHDGuP/Qb5S5dY7zS5ej4ZUZEmKAlvQf7JnhC4GbgqoD
         uN8nX36Eo0qyqHJMwQSCWHw96F4V84oxf9NR7xGBJfffnznjjfDlgycGXVVSXNFTkssT
         NlnhthICu+TKS00mUSTeepa8rmNSgPpL5z+DLmTx9FrNFqrHmfftVuAfGLPLcABDKCJ9
         RFdw==
X-Forwarded-Encrypted: i=1; AJvYcCU/h/HJEhfgSbv+K6drb/Rp2VMHqxG8aTnPPfuJ3b9+N2wFFzVjPD1IMsKqhhxCfEZ++ZbcpDCMPdwZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwanQvZs5N0WBGso7zidsoWGczW5MaYo/G9aJw4JfwZVydZlEZO
	AGoaie/tJQ+IY0KBJXy27zksC74Q13adOCsYoSHmlktnkpcvbweEodP9llZRedw=
X-Gm-Gg: ASbGncvnJsri7sVIRYIRdzDLcMpjcZFvSZcAhZD46KSsA5tYfV3v3htJgIlVfYrnlUe
	uNdD39JLley0E8LlUq/k/Xt+VDaIuH9XYBS7n8Rw5FMVvePDUH+3v4k2TK7+MKUxJA+Y7ajxLt5
	nAhAGrFgGiXH+g9xftNQR3jWZYE3IO6tpvXQBuUfybpvZRlwL6U6rycvalSNn+kuhmbvqHLCYnb
	wkvxDkeaK0ZIPqZ6vR0dYOpyzNiNjrTqBeqCrQY932qbBj6JRo1Xj78AepYv6B7gXcT0qzPotkX
	MQjLQFIhxghXGpgahKGD6iB/IwYBlWIJQ8v11e4ORaEsPcpVZF7RIyxDWOhqnH68FzFmVqNEOOm
	Ec0b8PuNqEQ==
X-Google-Smtp-Source: AGHT+IH0JdzqVvGdTYUoLn8HEZhsvGhRyL19/EW44GliMFz0RsNCHi1bdJHTLqu2hnfMAiUqwGBreg==
X-Received: by 2002:a05:600c:4f10:b0:43c:fc04:6d48 with SMTP id 5b1f17b1804b1-43d8a32c74bmr25755085e9.0.1743091395532;
        Thu, 27 Mar 2025 09:03:15 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9e6445sm20395820f8f.71.2025.03.27.09.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 09:03:15 -0700 (PDT)
Message-ID: <6063c030-f96d-4950-9ce0-473368988a07@linaro.org>
Date: Thu, 27 Mar 2025 16:03:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 16/18] arm64: dts: qcom: Add MXC power domain to camcc
 node on SM8450
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-16-895fafd62627@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-16-895fafd62627@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


Your patch titles are in some places missing the soc:

arm64: dts: qcom: In this patch

arm64: dts: qcom: sm8550: In the next patch

Please add the SoC names to the patch titles in your next version

---
bod


