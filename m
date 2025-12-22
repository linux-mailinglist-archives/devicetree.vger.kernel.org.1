Return-Path: <devicetree+bounces-248908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5BACD69C9
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E275B306C736
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D9532E735;
	Mon, 22 Dec 2025 15:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ko3Kyb5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA47632D44F
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 15:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766418421; cv=none; b=UJnmtfz1CojRMGYzmtC/DrJXuAShNMy1BJ7L3uMTE5pHElxvYR8xsN5Fg5CmXVQpMAeN0wXL5YIl1GYWgw8DMsknQ/Rkoqe1zts6BFhsnKOSdAmaZJM9K2Mi2cITcl91fJpfryRLFZcVEu3XhunQMW+fJfdXAZiatEhdhzqObXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766418421; c=relaxed/simple;
	bh=GGjaLoQhCp+2no7ekK/HLa/7i2pLriK1t4fSCLCjjzY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iRBofJRJz9eAtsNsrvtIZm5luJChh1Fg1rHpOpCz8/TkItdWn2eWqCvNGJPfoz5OAVL9O68pqVj9jJE9R4Jjowhp/XhjuBDtLvz45ajqyCGH3+Ha1nWi+566fTKO5uV9j6wbyiknaW1domNlLhb0JGmApmqbdcOyCDQXtgaf5jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ko3Kyb5m; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59a10f2bbb8so178031e87.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766418416; x=1767023216; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XQA+t0BLvG8fOA4teeYPO1i6EIFLXHkisNI387Ij+Uo=;
        b=ko3Kyb5m0Ss76GDJyfVKtsUmcbNMT8ItM0jKcunFuyqjbaGugONCnKTIkS70OyPigE
         K4Jnao9v0TQJ5S+eSrxn8kExEaiONiaZXXenXkpS88QHZU5bxVCC+NOp4T31DQ7RB9A/
         eoGn/yfK4czxjDphq9NblT4luj3je2OZqIKbZ9B5LgdAu2y1xRh+aoJ00AjHWxWe9+uq
         ncDjZyKDber9PLqtj1JFexJ55b9QST1z8ja4rFwA05vH5qNod/yPUpMKOfLsyUO34lnv
         S+sY8jn1Ss/ZTrMVvD1sJxgWStytw7ax29V+UZZ/IuBsfsajoIkNS+DtYtRzEiBfQuwK
         plig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766418416; x=1767023216;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XQA+t0BLvG8fOA4teeYPO1i6EIFLXHkisNI387Ij+Uo=;
        b=VkA+8NHZdjOh0+Vxuz0OC7PDRt5eBh5BiveQtmciZuohERta04KKGB4jjBsVxBQmEM
         5k3wjUhnqMYqEW3Z83YkipFujJX7N740KRwgwNJKGK6hd1MiJvriPYSy3LdU9sKoYe3W
         xfQkqBWk0HSdi2utgKCLdugNhEAhb1BxQMPEX9QyL36Z15onkvtRvFO6kVxbC67BXEkG
         IhpKCv81C20w+0XMwVt7p5A/11CZjJe98+FUm6tbtujJ3Wq9/UcNM03MM4uvrcnBaZCc
         OcozY5b0Wc7CVhrjrBcBcpKgUqsFBMrhRtY4+oleJlVaSEoVdLs9HY0yEbPqb+slWwmm
         MIiA==
X-Forwarded-Encrypted: i=1; AJvYcCW/mxpEaO1JhaJx415O0IODP1oB3yblXQpGE+XisTVn7xxvImUCYKPfTFCd61HFOnU/gNZ8UGSSn4Un@vger.kernel.org
X-Gm-Message-State: AOJu0YyjI+WNOEK8mmU++yUTA2IugQWymKHCPmMe9fvrXfOQAk1Yirn4
	giM/gGvbzpTMPZ5iEnHMkmFjOhFChK0Eox96XFfwaDoaAZUcSxbprpBOpQ9qprDCQbY=
X-Gm-Gg: AY/fxX5f+f/jxKXD3bd5f63UnAC+s4YcLL96b9r7g8yJ4cUjUGMw7lCiZgsdMCO5J3N
	qQ4OhPaKP+HsAJbN9JDdukzMZvEyTonh0Bxd8qN8WjTcAQMiXeQ6K0/RpLRvkAEIRx51wQS3g7u
	2vGIrCwjaOxaP892BZ0/22m8AFwkrXLirch/Zy+B03MswOQGfI5hPlqjC2/e9kksGusiuwzXyrG
	fhicMYOhTVassWTstESye5pmX5widA4Is+KeTJ8nJOeHBURKyvIBHg6f1KR/N4Gnf8e6ICmYp4p
	wlmzjQHhnpko2WTqitiEQnRxapqasYc84g4qx78YqZ+s86vOyOItAAbq+wT/Ha2eY20t8J3bet4
	hLXeFu49b0hFhi8goM3yzyzE01YD2/vHpmbHKLalk9ZZPoqcGCPQX81wPhQ22o5To3zUwrv2lL6
	T7ExUYsqb0orjDWC87PBlLshLI/IDilDFx1JGIOP3SQVXQlYZnzvjBpKXmOZLDzh+NXQ==
X-Google-Smtp-Source: AGHT+IFQx5aNaZttip8OpGBoWMCmObEm/k41TzjlVuJvY0HKmyBGQ4yTX7ngXbHyytCtqPSY3zkLCQ==
X-Received: by 2002:a05:6512:61a1:b0:59a:11b8:88a7 with SMTP id 2adb3069b0e04-59a17d073c6mr2364604e87.1.1766418416446;
        Mon, 22 Dec 2025 07:46:56 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5cbesm3367729e87.13.2025.12.22.07.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 07:46:55 -0800 (PST)
Message-ID: <d135e715-8949-4348-bf3f-cff01911c988@linaro.org>
Date: Mon, 22 Dec 2025 17:46:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] media: dt-bindings: Correct camss supply description
To: david@ixit.cz, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vikram Sharma <quic_vikramsa@quicinc.com>,
 Kapatrala Syed <akapatra@quicinc.com>,
 Hariram Purushothaman <hariramp@quicinc.com>,
 Richard Acayan <mailingradian@gmail.com>, Bryan O'Donoghue <bod@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, Depeng Shao <quic_depengs@quicinc.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <20251222-docs-camss-fixes-v4-1-914a4e5f7822@ixit.cz>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251222-docs-camss-fixes-v4-1-914a4e5f7822@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/25 16:16, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Usually, the supply is around 1.2 V, not 1.8 V, and also correct wording.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> Eventually, if more changes would be requested, would make sense someone
> from Qualcomm to follow-up on these, as I don't have schematics,
> documentation or also no access to the internal resources.
> 
> Thank you

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

