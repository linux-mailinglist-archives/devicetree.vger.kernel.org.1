Return-Path: <devicetree+bounces-274357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJ5SOqf0sWl7HQAAu9opvQ
	(envelope-from <devicetree+bounces-274357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:03:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 493CD26B0A9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA3EA306B2D0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8803439936B;
	Wed, 11 Mar 2026 23:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b9OGqbBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAB37701D
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270181; cv=none; b=uwKHRcesA0B2QKgL30ss9Znht6vQn/Db5kP73eViz9VWSpv9pqbyTnkAeLWRMg8HwSrDRyeylrpC2gJAg3SFVKo8VCC6Oo/PCQEDRyml6iaUCBNaYYJjKVVYB9sGiQxo8+2od5JhEmsp8y0PXh2aojC94ibw2L2GoGwsnVMu7gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270181; c=relaxed/simple;
	bh=59eQRVfCv7e/0LRpztdSuln1uytuOC9fin5p5Kd0jS4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eWKJpuq3TvvhS0Mp2YuwhV0PvES1Wd+q521ICf8Im+wmKhfpTT/WPxhrHRyt0BVZGhfilPq3UPS1sC9gopNsRlzKeYfmbMUDIaZn1qlZiruXbxUBDaFHqGD/FCJbYnTW4+h36ACg8Rqufaa6fWNGgnLvMJgINEOat0FiHpm/z08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b9OGqbBR; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso3147415e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773270178; x=1773874978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=91rIWBbGs1aKNKxqJ3UCP9ypQZSnAgeYdy2D4RNVFZw=;
        b=b9OGqbBRPE7uEH1GUNkBDMbugsSiMBGMAMuyTBTMQFgQaeDmkEKbLVQ32y9Dw0sMFH
         CJkt0n348i4fu/HfNBsk7jBeH5NQn3x1lyWkT3pBfgtxYp37S7pxSB5cUTE4hB0ASJRc
         PBYOLbSO3KIfs/8869p03YcNJbo/jp1xI6KU7RmrL3TZEdBQCSk2Kj4b8jG7LNEaCwyC
         UzbQrjmoEUlmyZJCAS5lrHwAOnjh9gqMil4P+ATiItVq6vz4yXNsXkvZgEoFpGZb36rz
         qA93pXf2kO8Pmx/WlW+HG2ZbnxSGpd7CydTwrZnm1UJ+sPV07Zjdy5Dox5FmLzDEjJ6H
         9UfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773270178; x=1773874978;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=91rIWBbGs1aKNKxqJ3UCP9ypQZSnAgeYdy2D4RNVFZw=;
        b=EBmiTKePVmFLMM2xxoQq3gVyuAU0UDgemWa9DDH3G+D/RJ2pft+PXU+plzHufqomn7
         ChQc9uQ0lnKdBT1J+PEkFEel+eV0Vczo5DJWx/ctDIJeNogAv1dx8+zMo8sx9GHzD2S3
         khbZLnraHi8FPClqRlX3HKI/1oB0wa9ftX+kvaRoLkSFgJu3TjfhOeHZUKvk1B6T2NT/
         xgI07EzXv8NzKYir6IuvJeiEt9beShdeYz8a9MUWJA3lThUcOHho0bCkpXtNLMChoOSW
         79wbjsKvWS3V4Va37aGtjXAREbxzylj7uCLWgteHwdk2uS3bSNtaRnJ5Lk4YnPBtacLq
         8m+w==
X-Forwarded-Encrypted: i=1; AJvYcCWpel5pZ8/3Ughe79lCBeM5Yg4PLXxcWW7z0b/4c/XBNDCDKA8yjQyDAq6bgmnaXbqOEZSE+m0R4fG9@vger.kernel.org
X-Gm-Message-State: AOJu0YxBhkYR7ZloAiWl32sbQVrwGtj72dX/gvBwIA6IseknFo+078d9
	D2C5We8eov/bGzjkioPp4TG11qETOu1S2ixQmpOwRewCDviHn3fZjz7IAk6BCcDcdkc=
X-Gm-Gg: ATEYQzzf0Yr08OfpGg6rdNOUrsBEFbJjQvwt1yFXPaoRzJVwqdqFdNW9DkcUYc2MhlN
	q+hnr84EKM8N1YDlXlYGjULr6TJNFSuhk0e09BdsTpQCKJFYk9j2eI4frdMydlfsmmMqzjUVz8+
	cEALSn2zvAmpazZRcPdjyolx5sEv+Gq8ciLYLygmifoPEQwf5A9/wtNhc7QCUly6g3NR1jA9l5H
	b6yAaj1GGMNdheIOwRoT4kIxX/ceXu/bJ9RUfnV7eQ0Okbgnc02+syI3XPHa/OIi2jsxOM2NPnY
	grqQHouszLja2uYPiBztGJgvSpMYl+K2+Pwebuv3fOfJ8gCH1tl4RSFwnZ666NBhN1yA7gFWSZO
	hdBoILwGv12Q31FATjlrd4ZH9WvVkwvAWz0r6W2oc8lwjvXRPzBiqJk2ZezzygrC9YEK7VsKru7
	HGH0SwrV1DL5r4PqlFLIDD7c4H36Z5n2+N/Q==
X-Received: by 2002:a05:600c:c4b7:b0:485:3ff1:d5c5 with SMTP id 5b1f17b1804b1-4854b0a5669mr69863415e9.7.1773270178526;
        Wed, 11 Mar 2026 16:02:58 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.88.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854a30b4bbsm30704795e9.9.2026.03.11.16.02.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 16:02:57 -0700 (PDT)
Message-ID: <d6d859a3-4137-4fb8-8b04-40abc86f4e33@linaro.org>
Date: Wed, 11 Mar 2026 23:02:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/2] dt-bindings: usb: qcom,pmic-typec: Document
 vbus-detect-gpios property
To: Alexander Koskovich <AKoskovich@pm.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
 <20260308-qcom-typec-shared-vbus-v1-1-7d574b91052a@pm.me>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260308-qcom-typec-shared-vbus-v1-1-7d574b91052a@pm.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274357-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 493CD26B0A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 08/03/2026 23:20, Alexander Koskovich wrote:
> +  vbus-detect-gpios:

Should this be plural ?

arch/arm64/boot/dts/qcom/apq8096-db820c.dts:		pinctrl-0 = 
<&usb2_vbus_det_gpio>;
arch/arm64/boot/dts/qcom/apq8096-db820c.dts:		pinctrl-0 = 
<&usb3_vbus_det_gpio>;
arch/arm64/boot/dts/qcom/apq8096-db820c.dts:	usb3_vbus_det_gpio: 
pm8996-gpio22-state {
arch/arm64/boot/dts/qcom/apq8096-db820c.dts:	usb2_vbus_det_gpio: 
pmi8996-gpio6-state {

Seems a minor point

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

