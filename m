Return-Path: <devicetree+bounces-257590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIaIFifdb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:53:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1975A4AD07
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 56ABA8E112E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215C547B438;
	Tue, 20 Jan 2026 19:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CLMcHqyq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035130DEC0
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938221; cv=none; b=aOq9XWzWQnX82Btldbj4stybygJK8558Mmk77Q7UIGPkQJw2C9LwJ9fIAqQdN6I8g3MBMdc5nPDuqaytNWC/FKGEpXUl55snylUkUOd5fuSpEaMnVztw6OPkCaInAzXA25rCVApHBeRIuotVLxIC8V57rErD2yiimQs2+bEg+0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938221; c=relaxed/simple;
	bh=GKWq3qNE+QoMVDzsvfKNUwlNGiGFagl4gqpCzyoCY3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QyqpUaaaoNvenHQqxz3kh9ioiS1D+6tOQG6te+M+Rz9ZDBgVW21h3X+zlGI4cJKrbtDDnka70oi+h0wHlETGRX41/TPY/EAG+V1AT0RX07I3YIg8O/p3y/1I+WqFynQ0zfUFnRz5M9PZPIDzr3Jnc8IrwVXPm0mxA1Mx4PGXLEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CLMcHqyq; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4801c314c84so37621415e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768938218; x=1769543018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sy76whdWsr2+0uhdxqV/7DmqprCp9p5S0npWuG2odvI=;
        b=CLMcHqyq18QGIbHDHKxhvQzUNYpLwtxU8CkC/ajU14Qlkhg5FB+b7s3OUPe0kCFpcn
         P0Vp5Up/zxJAdC+FOVnpkKtNDj0Ey7runCp2ExbNQOHgVmj5LusIR1uIcW60VPJDNNJJ
         yBaYSoLJJjkuR2VteezvqyUt6A38dEahrzbjM2eawzoFqJ1/PLZtQQ9W02zYXkKC5nOg
         f9bkEzfDlDGHeL3xFSQOnNfIiO3B2coMPGeFDDneQLiwiewTAah3nFG+yr5DMb4r3/v4
         z1ZmhSwYEgkYXAqv16E1tc8AlQd6VK2jIf7AgIGB5SF6I2tFIM6g3qqx1xSQ5qnqYBRa
         ao2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768938218; x=1769543018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sy76whdWsr2+0uhdxqV/7DmqprCp9p5S0npWuG2odvI=;
        b=wtiOwtCrPr1lYUEii3o4Zx1Rc7KeDgKtKg8jUwtJ0ucPX4dMIS5oPa7emXIYNS0Kci
         09d0CenUo/p/HE2lViPwUHKCEYksonuNZoZj1ZnVgdoqL6/qkJbsz3LHdCeJIdqEzxxk
         b3/gwTb3fNM58VdBGTsgsMo9tCcDu4rIAyc6DUI5y8BnMbAmZ0VtpkMWVk4FTN3d1wN0
         ezZDtAzVbrSkOP5R1UNoWMjR4DqKNECAlyMVGyzYUtfSTuj7QqPCUoeSYE9FAkTl5Pvn
         uA9qpIf+P9ywg2sqeQfDcbAhe98FY6qfaqjzMHW8vQrF/PTesuLf8hrK+SDopNkW0qWn
         fCJw==
X-Forwarded-Encrypted: i=1; AJvYcCXxAXIMd78lOJA9g69iXCyPf/vVkUxUfsA7/otT9XeiWbKm0epdZX+ZcSh6h4tw+7BAgJVXESH5jt83@vger.kernel.org
X-Gm-Message-State: AOJu0YwzYynC4MmPxZpWh6PCYIfBY3NL0OGSPdydpI+ayG4nPLsIATON
	9nUaYvVFcFFca0HcXDc7eYveHnn35b0D79N+IMIvmaQcL/EE5vOMtRuqquttbbyxSbg=
X-Gm-Gg: AY/fxX6WNKUEqHJ4sCyeVoDYhOgBbF1oCF9egjFpmPslSjOe6SoEHTljJ8CYtEvYPwd
	BQVtvhjQbxoJB2++kqdzHlmRUxjHZHiRNQPNPW4byxJS4JgkG2rfgnULzZrKI9Nho2iGA+5U4sC
	MP4910iAHAkQBhQajsgwP5J/TOXScNIi5ooxOJX4UhlAP3LdUqlW93SA+fZ4723k41a+2RZPsoK
	Uxgvr7L/qIgvn9ujjLROir07cow+Y5ZURW2IXUIhXb0p1KZsD8pZTtbq2Ou4LiFHL9OnVRkw8Pr
	D1kGO2OltOLR/XtP0VXOu0Sy1RzneJQnd1mtj89JIqu8tzdCK6i1AN81PNL9/Wb4/o4xsLYQ/P3
	j1ldvV993Oe7k/r0v1EdSFSrVNB2ED4voNG+lCWitzw/7ZekfhoBHbMuPO8MmD7ePK+ixqK4pay
	hpMyW1x3D8IHkO1e3Df8BHgx0TUGffCtSfZ3VQ5XltHE1WHKhnqgVQhri5DFUaS0U=
X-Received: by 2002:a05:600c:458d:b0:47f:f952:d207 with SMTP id 5b1f17b1804b1-4801e341e2emr173523155e9.19.1768938218443;
        Tue, 20 Jan 2026 11:43:38 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:ebda:5627:9bc:1ede? ([2a05:6e02:1041:c10:ebda:5627:9bc:1ede])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4801e86c1b2sm257889055e9.3.2026.01.20.11.43.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 11:43:37 -0800 (PST)
Message-ID: <b43cae11-e67c-4979-9e9f-b49a0cd640e0@linaro.org>
Date: Tue, 20 Jan 2026 20:43:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/8] Add thermal sensor driver support for Mediatek
 MT8196
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
 matthias.bgg@gmail.com
Cc: nfraprado@collabora.com, arnd@arndb.de, colin.i.king@gmail.com,
 u.kleine-koenig@baylibre.com, andrew-ct.chen@mediatek.com,
 lala.lin@mediatek.com, bchihi@baylibre.com, frank-w@public-files.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com,
 wenst@chromium.org, fshao@chromium.org, Laura Nao <laura.nao@collabora.com>
References: <20251125-mt8196-lvts-v4-v5-0-6db7eb903fb7@collabora.com>
 <382ef406-6abf-4d6f-9f0c-42b0bbbd6918@collabora.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <382ef406-6abf-4d6f-9f0c-42b0bbbd6918@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[collabora.com,arndb.de,gmail.com,baylibre.com,mediatek.com,public-files.de,vger.kernel.org,lists.infradead.org,chromium.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,intel.com,arm.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-257590-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[twitter.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,linaro.org:dkim,linaro.org:mid,linaro.org:url]
X-Rspamd-Queue-Id: 1975A4AD07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/19/26 13:06, AngeloGioacchino Del Regno wrote:
> Il 25/11/25 17:16, Laura Nao ha scritto:
>> This patch series extends the MediaTek LVTS thermal driver to support the
>> MT8196 SoC.
>>
> 
> This series has been there on the lists for *5 months* now, and it still
> applies as-is.
> 
> Can we *please* get this picked?

Sorry for the delay, it is applied now

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

