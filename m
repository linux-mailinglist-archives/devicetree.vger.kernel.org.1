Return-Path: <devicetree+bounces-283188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Lm5HY0+zGm+RgYAu9opvQ
	(envelope-from <devicetree+bounces-283188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 23:37:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15234371FB3
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 23:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADA14306F798
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 21:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7B1E466B6E;
	Tue, 31 Mar 2026 21:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iOZ5jX/e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417DD45106D
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 21:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774992158; cv=none; b=mHe5oCWy4KeljhSQLuhLEr+GNrS0ECb1GqJkcGM3otGsq8YI2Lcr4ScUiwfB1aek1FJgNj3Pudy9eWo51AQKgw/Rmbv1JCRa/K4WNFQBxEBJaTBpSOaCTZ1VenaKWWK2oSycKpYaNwaRTN5gVt1SFjKdDAKbLoALOWsDy4FmirA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774992158; c=relaxed/simple;
	bh=uwkdlpWgq7m+FJ52JwOjJT59fNwjkGLpbAiJPGbrgqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tJhevmjzp21bOqgYdTrcle90vfp5xfJu29FRZDbOTUqDesS68GuKpXGsGfqQ7aJNgF8C0grdfL0TV1t6bDWDeVB37e2+C2Modia5ODRFAq8SPgsa6pKPo+ouCSIDAkrL5Pk9JONaaKipOH68lTkZDT3M+fAmNLyqMP6LICUeD2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iOZ5jX/e; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5a2c0710afdso74427e87.1
        for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 14:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774992155; x=1775596955; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VCku2Tmc/ePL7URZnl/UTImZqNe4IEEZFyzUDR6AaVo=;
        b=iOZ5jX/eGS7OqEJxFM1ZLRaWKd5DQIs+9WPUWes7zr4p77h72A3a6SXNz3IK4KDmQz
         0NKSgEDedjHc7PVKwIshWChJVCzrV5Z73iLwL2uF3o0rOfY86ZDTyfskLPDRYzyj4KrQ
         kton6KzsiDPXMr7XEnUQ7wlKJ9q3OcUNX8D7qqCj9iB1tB8tlYWMqQ/dag9vWkEpZho0
         Tv8yDWhDb0DqfNOA0SVV8jIF1befvdxRuRwWUEduYCpdFmGSUWH6WAFZeYWNcKeF2cKo
         m/Z1zTdSBjVZPruNZYcsX7p1NyYSu+uzhhnQiVW21/x9Mxg+GHrx+r578/POiAerM9e5
         q2gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774992155; x=1775596955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCku2Tmc/ePL7URZnl/UTImZqNe4IEEZFyzUDR6AaVo=;
        b=SGSrJnSLwvHMs6wlySjhkh2VaNFG+4+721/1OFLKuUuapESzceigzscT7IPK1aqQHy
         7JTNUpcGud+wSx0ZWtfJLBiQBR9UOJRHThVVctdqiZ5cpznWPawTTsQ0k1DK+Zm6IMoH
         SILYnqXnQoIWQaRm8ZhEtioF6P+k73onLkWRUiV+UUzA96hrLUJUfTioOv8Iv91Y3951
         YkJ1e9eV3BB9kLYOxvsKo8RxVKK5rq0Uvis/rmRnggxY0OLSJ4l1RhnUw7ROM0B/ccm1
         /gnawfzHo+INfymVH4WrH/aEzVIH0fzIfaIm53wxIIT+JjAPNYVqqChlCE/GT5GBKykn
         XGrg==
X-Forwarded-Encrypted: i=1; AJvYcCXbr/NKVhjySfbhZicJesEeBemDbKnYZKd1xJsBRL1VKIQ9NQBo3hXldbMuezAXKdxlmx1i1ULdogGq@vger.kernel.org
X-Gm-Message-State: AOJu0YyqsTRBk3S1NZRLvFNzWAN8wrf5wWdGGIfyKJm3K4zB8K6CDw3+
	JDy8ZlZImgxzthbja7M1snCyq5wCYvn7rMm+7QvoOpfKJGwpDofcbux3Q0/MxOLHyng=
X-Gm-Gg: ATEYQzzCuf4+Vou17PnGT6U0oFj3Dkj6J8NBVq9hVz3Xym1N9IKZhWZTCjQ/fs8rWvB
	GcjxSX9EAMoFT+aRy30OPJRUISKMWHWTiL3Y1DBxrQYmGUFjD+poFJg7IaTfhGY86trk25N5LWC
	o0cswpK5ZynLNwaePsnaXYMLjMF8x0tYrJOwGXa360wr5jQPAMHstcvGV+t70QO6me7IIVJFxLI
	mKfgRn4L8DVGmEibWt/XwrNPaige0uZUfmG73UAPvrf8+PevVV2bphDymucqfXszf3RjiI6aNhN
	pAKksuIifMG2V5chCzd5Rb19iwLF7a8ehJ9lzHbepr0hU4rNKPoeY9xt7mHv/vYw/AEUJa2FDW3
	aQf48TirmNVB9rANmv1y4gMvgyFAqFapPywVo7w11gxY8/GsGerAiTPQbNz25wldDaKBh58zrnn
	7/iRSlJuUNvz6lQiV7U8xzHxhzUELHgYQw2IUGSp0K6ZYfMiTURnlQ0s58QTMEUH2blVWcdZBw8
	FAlaaTUCHSl0YIK
X-Received: by 2002:a05:6512:39c7:b0:5a1:38c4:424e with SMTP id 2adb3069b0e04-5a2c1f4cfd4mr185134e87.7.1774992155413;
        Tue, 31 Mar 2026 14:22:35 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b1403cb6sm2725447e87.27.2026.03.31.14.22.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2026 14:22:35 -0700 (PDT)
Message-ID: <4898366c-108d-479e-93cb-f79b27ba811f@linaro.org>
Date: Wed, 1 Apr 2026 00:22:34 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/7] dt-bindings: media: qcom,sdm670-camss: Remove
 clock-lanes requirement
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Tianshu Qiu
 <tian.shu.qiu@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
 David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
References: <20260217002738.133534-1-mailingradian@gmail.com>
 <20260217002738.133534-2-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260217002738.133534-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283188-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 15234371FB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2/17/26 02:27, Richard Acayan wrote:
> The clock-lanes property has no effect on the hardware configuration, as
> of commit 336136e197e2 ("media: dt-bindings: media: camss: Remove
> clock-lane property"). Since boards with new camss support can omit the
> property, remove it from the required lists.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>

If you send another v10 of the series, please remove 'clock-lanes'
property from the example as well. Anyway, feel free to add my

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

