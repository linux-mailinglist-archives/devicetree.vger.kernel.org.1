Return-Path: <devicetree+bounces-131753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D72A9F47B2
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E0F4188419C
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09B81DD55A;
	Tue, 17 Dec 2024 09:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JRpd96Xp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E211D5AA5
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 09:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734428297; cv=none; b=H7T7n7y79qsYyE3uca49uvAgw3Bu/mFh87jXZZJby7nea6q+TH6luWvWv5/tKYOtGEFXB0nQ5VdeSWVkDPd+3hy/Zep/QaxznmNUDBhPwmd0Z1N//+FY5a6+Ump8R+tDWgcXzTsQKGEIxufGabhJeSnoeSNv4PU4ydJP/fXFLjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734428297; c=relaxed/simple;
	bh=kb3kP9tneB+GVEHe2feWWDmh0vqws9+suKVVH1/v88Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I98QaoFo7uC3GBQKMLqC4WNsokLKAPHiud921bse851+xdNa4ulunajeFHaqlOt+134HqSGCE/Bd2SyelZ+pbAR0yfmNQn5tRmuywoNPAoBEXwk0pgz7oqrpDJLgdYVniTVH4CFYvmJY0WD9MNJylcZvOqgzK1V01t0xXCy9uEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JRpd96Xp; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434e3953b65so35260425e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 01:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734428294; x=1735033094; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tq5sZ+Fiv/wP7Onp2aVQfa+BtrbtLGAGU7hb6Q0naGI=;
        b=JRpd96XpZnF7KpYTnIWvBqeJK7CX8ZAvpdzi4dhvtffl8WsAcKYtKBsxn0RCPz5L8F
         UmIbquasaXa/5RM4t4rDU1rft2PKLl6t1Uiks4P+Xs5Kth8AxuqJzgxTkDqNzAesCcZw
         gh6fnXDyKA9APPiEEsTrJJpN6ZZUXG4TpP93P+h2e+JDHo70RRqZBoSI3kQlda2X8xk0
         akPYh4Bc3O9fh93gbIJ3Ki3YaOV34cZe38F6NDEKK6GvjJl1NNPJJIJwLfEBxoUp2UTe
         QnghlFKF9uMhj28fg76ijjWEn2zpie6uEByIKXnOVZfktla8GlchsgSzArCjBHzh1L9h
         /eyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734428294; x=1735033094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tq5sZ+Fiv/wP7Onp2aVQfa+BtrbtLGAGU7hb6Q0naGI=;
        b=O8cKONTANnJAdanXrmaHfmK1j4h4jQJGjOymASeg68Xv6lVvS1Ifp58GHalSaEkhNK
         9sCfRSolHam8OdvFX6uSJXgOhNMamsit3mVeOQSTrcHDb6CJ9BC3KUg4bZ/bD37OYsAF
         XSGsxMoSucvmT9nORS1D7jNVPSlauGiIN7GF940+IxJOOa09W8XothWlpfOlfg7AR13v
         uIWsLdSy1ClJYceLqpliCd7gEq9Pk3le5ARanZejTwxHyO8WetANM34TrbpMfaQQY8NQ
         cbxbzf7hYxr38auXXTofa39hAixU5EHCRfF4XH/r97kVTK71ARxua1EhbvWTBjzx4tlJ
         zmjA==
X-Forwarded-Encrypted: i=1; AJvYcCVEZjEvRw7nIqYmRkpdT/Wuuu7HHYRptt4HHjmHsXYayQUcy9IVay1rMokSSWYqJHDnVusoQOcqfW/b@vger.kernel.org
X-Gm-Message-State: AOJu0Yx87DhuR17F0TeRxDUmWA2c+1bJtSDQdZc73JGihDKZjmruvAA2
	IqaoEYsPO83E99XNdiWNvJuNdzW/7GylKe/WORUaxEGSPWxTZ4JZUUpSpJGruhE=
X-Gm-Gg: ASbGncvBlwbVzClUHNdye7Z5rUtX15fsd7EUYzucQ9Bxs0GqXpeK9N9PEvZRosmrGNs
	mBu9d6dAz9kSuQETv+4AN+b9ivmIBwdjCnazCqWCtghxlw2vfWpYIVcT7JhsUVNu57a/lAwh8Ex
	u7P2cawhWtcZDN8zxB1tt+txPW8G2EjHCSgD1Jas65nyoC96x1zHe9BTXQxk6vHp73OSg2Y+B/Y
	Ek9iV/2mlHX61Q4NozfR3oKNkSxuL0TzRuFMvOl7tvN9GH8qju1ZngjM88cQyhaMzr1Xw==
X-Google-Smtp-Source: AGHT+IGf3odSobzW67Hr2M4E4Qy568hruQO6sy10F4fQguns3CYgMLLwqVah+AMfzIWxgAU66q+a0Q==
X-Received: by 2002:a05:600c:214a:b0:434:f7e3:bfbd with SMTP id 5b1f17b1804b1-4362aa947admr142363025e9.23.1734428294427;
        Tue, 17 Dec 2024 01:38:14 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436362b656fsm112454035e9.34.2024.12.17.01.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 01:38:14 -0800 (PST)
Message-ID: <83fcb683-d610-4e47-bcce-128453a0afef@linaro.org>
Date: Tue, 17 Dec 2024 09:38:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: qcs615: add venus node
To: Renjiang Han <quic_renjiang@quicinc.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>
References: <20241217-add-venus-for-qcs615-v5-0-747395d9e630@quicinc.com>
 <20241217-add-venus-for-qcs615-v5-3-747395d9e630@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241217-add-venus-for-qcs615-v5-3-747395d9e630@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/12/2024 09:17, Renjiang Han wrote:
> +
> +			video-decoder {
> +				compatible = "venus-decoder";
> +			};
> +
> +			video-encoder {
> +				compatible = "venus-encoder";
> +			};

I gave you feedback on this in v4.

Could you please provide some commentary on why you're persisting with 
this ?

- Driver configuration should not live in dts
- A patchset exists to mitigate this
- If you don't want to use that series, what do you propose
   to resolve this ?

Please don't just ignore feedback, either act on it or add to your 
commit log _why_ you didn't act on it.

---
bod

