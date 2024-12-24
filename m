Return-Path: <devicetree+bounces-133681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED88B9FB819
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 02:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65E46163C0F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 01:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465B281E;
	Tue, 24 Dec 2024 01:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gGXs7UIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA25372
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 01:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735002080; cv=none; b=g9MIauMCnXrf4NGuYVRCAxu1ukRybZ5p8CuZnCiAhRn5K+9kEu+XfeBMW28nCi7/hZC19jd920aN/FpNCaoBeiIhB1RsTlplQYhzH060md3hhZsYP4wcUtnBJtRgl6nJBoakPR8bNQJ8jLHyQ6sTOnQGX80iPkYukbiOevOlIA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735002080; c=relaxed/simple;
	bh=VTjBZDdASugD3kswoxr2ITUXWzGkQEVuNdaujYNYdJ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jAsYxkKPm4dUGR82h8ZU7OLqgMJfnPfxIgJv3IkuFmgaSVN6BkSzTA0LoogfMRe8km/Reof6tIS7Ut6WcdephKP4LfxnlEps+UcOGEX7PC6NlPEw9aSUSIQaLSEMgxc+k9G/AiIFSoGGoGJKNT9sbsCpsVFSpx2LsKWiwdOfsgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gGXs7UIc; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385d7f19f20so2250449f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 17:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735002075; x=1735606875; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kp86hapJwh9BF1daX3h02Pa8dcZyvAyCiDhiANA3Zk4=;
        b=gGXs7UIcQQnNSONsqK7b/XO5mjKdmgCvH4kpXA0qxLl2AEoy2kSOC+6gy35SIXLWYK
         mPjVEXu+SroAFJqRRbhoJNq5U/x27yq+RCKkl0R3Zw/O0UmD9dh3Qy7cJJPh4MwapHPB
         UNhmB4guhPqK7A8vj5rmyCWyGtS0C0pS6xMwno0NmzPcSJUVuHRPd2YuNmrGB9h2JK9i
         yJsPUZVgLyZ0uyIU/nlRQm4JPtOK1fkbr1Y3H35oKx+dEDod7HnSEJ9yB/Xwmz9jdLvI
         LTBc+1KHrEddhlpLxhgtuLiDt0HGoJQqKfhAOJdTTvPOTFTGF98F+kxRHXYdxObs0gBr
         Vumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735002075; x=1735606875;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kp86hapJwh9BF1daX3h02Pa8dcZyvAyCiDhiANA3Zk4=;
        b=bLiixQ4PEatMlYA/p5ewmW/ROhSRyK2lHR54AC5SK3A7EdUrcp3/VR9tGnniBEwOFy
         OiTb1vtevaatXY7d0lEi5vezV/srvTZXtH80dyglcWSmETwYyjubDeKQo72ToqPGuU8S
         Rff1m5OuhZLnPb+pp8g5ryvw3xslitdBjUeJZhBlthVCcziHlK2NU0+QnUgaeAl6+lue
         MPGlQ0L2ehLWRGQoBigiguWOEhSdG9H+cyBq8TbAge6wVrtb5w8hdwBqxxDohfVMgYNw
         0CAmRHxgqfVO8F+eDAA6t+YxqRFgWP39c0ALAEZa9D1eA7Q+hzbnixOnjyERwDiDLWqk
         o3dA==
X-Forwarded-Encrypted: i=1; AJvYcCUiclhngbxoeRCzUaZKhH6TfJOcNWAB3XYuRDhqi5oWLZBswn8+/IMCkDziQxSjgo4L7Ei9i884/KRX@vger.kernel.org
X-Gm-Message-State: AOJu0YyG31/U/RmEnCHo+2rNw+wX1sDCtbdBihp6kVXoBh4Si76dV4l3
	nbCAKxmDjf/3lT6H1s+ckYhKHoq02/QtIhq5Cr1IQNlF3TXg7emsSEzkR83BNio=
X-Gm-Gg: ASbGnculOiuqdebgoRKvqmL4Tfoq5Uk5UoPwRNqSLWT8p8XyXMbSk65fbW8Y3wTcRac
	xznlHqx2rcYOqfinAnMZVDqOjhBlyhnmpUwSOPHzHm8nSRSUhaNnbiF4iF3XkGDAZ6DPBNuPmDS
	TJsFZmnnEjLzeC4Sa2t0WZEZ4WLV05hvWKbuORxXhwqN+Pg98EziGl/KIx1VBxN7hKmv25TTChe
	uyinuBylfCytERgk3Z9QYFsd4dJzfqsH8hQtgXN8NeWGAv/jH6bECgZmvRcjr1AML43Bw==
X-Google-Smtp-Source: AGHT+IFgDGmqmDPhyXR4nLgbVh7DgOs3lG+VS/8qN+gUc2mvLbY5Wmdth9OkKBZSOAeArY7B/KdHJw==
X-Received: by 2002:a05:6000:4022:b0:385:e879:45cc with SMTP id ffacd0b85a97d-38a221faa63mr12093565f8f.19.1735002075172;
        Mon, 23 Dec 2024 17:01:15 -0800 (PST)
Received: from [192.168.0.34] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c829235sm12506493f8f.15.2024.12.23.17.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 17:01:13 -0800 (PST)
Message-ID: <1de7bfd7-0bd0-4e14-b52a-ed6e3bb7a09c@linaro.org>
Date: Tue, 24 Dec 2024 01:01:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/5] media: qcom: camss: add support for SDM670 camss
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241218231729.270137-7-mailingradian@gmail.com>
 <20241218231729.270137-10-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241218231729.270137-10-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/12/2024 23:17, Richard Acayan wrote:
> +		.clock = { "soc_ahb", "cpas_ahb",
> +				"csiphy0", "csiphy0_timer" },

Broken indentation here and in several other places - please fix.

Also you should rebase on media-staging as a 3way merge is required ATM.

media-stage     git://linuxtv.org/media_stage.git (fetch)

Other than that, this looks good.

Once you've addressed the above add.

git am /tmp/\[PATCH\ v9\ 3_5\]\ media:\ qcom:\ camss:\ add\ support\ 
for\ SDM670\ camss\ -\ Richard\ Acayan\ \<mailingradian@gmail.com\>\ -\ 
2024-12-18\ 2317.eml -3
Applying: media: qcom: camss: add support for SDM670 camss
Using index info to reconstruct a base tree...
M       drivers/media/platform/qcom/camss/camss.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/media/platform/qcom/camss/camss.c

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

