Return-Path: <devicetree+bounces-276135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGuLDr/xt2mfXQEAu9opvQ
	(envelope-from <devicetree+bounces-276135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:04:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D355C29916B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3EB7730087DB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9AA3932FA;
	Mon, 16 Mar 2026 12:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cHSj+cUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7194C2472A2
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773662652; cv=none; b=f+HOGUblAZ8/sVmnPa0FnRLfyLXFvBCyCco6snaIu1QZX6TAOKs1q2xK4rR5sbVNFlfW/x08VF8F0WtbSqceUyi1/TtxbxTEL+UIVV34tcuWfLDuc/TH7ASu37ScVZLTDfVS47GiH5/a7Jv+aAZw58GvQDmZHSNDlEpHzJBwDPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773662652; c=relaxed/simple;
	bh=LX5yusRdGu2NPKbwJNIiJLhad5QQp5GkRw1dSGQMaaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9wahojMlmK2MGlUTCTevfsJA9uQRDY0cTr0zupqLC27g/unfStqwM9ZJ0tXeUdgUGeZO1MQIuawe8pmGz9JRk/K4LSEt5joLO1Lz/VTBF1hRYbUxYhkpa8jvRDcpTIJpHsFXs+I+O2SI1hUB9TBabOqq24u9jiLzFZKFV1GHt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cHSj+cUu; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b9773abf811so456915866b.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773662650; x=1774267450; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cXZiqeg/Ax9pD8IPIWwwtJQH6u7g8vd5+THmAzzvx+k=;
        b=cHSj+cUurK7pBBqBPSZw0HfyDplYc3TfR85XerAUER8XotcbHoQvx3vknvr2X4BQyI
         4xi8gJUQjVwn5P664RsZkLfdFKz6GEIWWgV5qYLN7+pchQes3YXBChu2EIRbFNQK99wJ
         LkfgelXkfdUSD9QEvG5N3OHWdabmRFz2j5GTAPZpl9SOK0kFoXV7LKUxNeOzuqh9JvK+
         zmJci3zwe5a7rnHIzwWYYokV5rwzTjAPyNSJCYNRRYNfSaDGcqWXi05SgrLdKCcgoCiB
         xSsCwoR+9n12f3sdV/bcpi3XguHOP1gctIU+raRYkfC2LWcbCTf7vxtUuizYh+pR9GA/
         7ugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773662650; x=1774267450;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cXZiqeg/Ax9pD8IPIWwwtJQH6u7g8vd5+THmAzzvx+k=;
        b=Z1Uz//JE+ob73nvQtjadIirDkNIrr8V3BXTAzds4w2rrZh837NNbsA2Y/hhid4dRPK
         s/8+bML7RhKTyR0tpfpQ20vo/oOUwcBMyR8w6ZL34WqrsaOJnhDS/xhbjKP0gGqJTxkA
         2M1PrgNhfK8G9qk0sseqZWH8Uea5bzOYJo/IaTFsMYZRqS2Syem9RVcsGBSCKd7vZ+YE
         Ue9QEsR+PmHdVLwkSi0rIjNE63Gl13ZgzBAaPLTMeQPpkzWCRP5OwirQmljfXYcC36OQ
         /QfX1TeTqFaeLq01ca829B9/FjZZYRXGhKPTO9TLZ0Z6muRQhdJNrpBH5TFVpqTZtE4g
         pIig==
X-Forwarded-Encrypted: i=1; AJvYcCWaKr9ci3uenSfaglqlNOTebSLohKD+uFLPm6ohvAF6+gMNnyj20hbQT6nSCJcj/fZrdTzeSToLMMHz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi/xSgSHTWZiAof6Qv2Ktpl2Du4jEu5qzsFcrCdqBbeKem3NyU
	lsLPaI1BNoCkeF3gfJbGsrSvvw/pFzoxJcpoldmHLMW1/c86Rh7DIoo+LVW1cFM/e1abfAnR4ef
	PLuTY
X-Gm-Gg: ATEYQzz+uEh3+OV/+b0KfZJ2jfxhKFuJ7NWZyVZSB2BEyLPi0z/qE7Lfs4OwOXeB5Ie
	fO/Iaang7FbmTQOXypmtoCe1ITFIuagME4g1p6TJfT+YRaXR8Cq+AZjVl1jiH7Bpa5IdyP2dkwj
	mw4WG3HWJMK16aSvpD/1O1Y6CnVH63Y7pK91DVonhTA0gsKOVSsck2QTtOJP41hPSZNTHV8yEZd
	tfPQmsojNzFnFX8Gv517Ci3OsBvd33FC+nSV2KtHqT/asBa1URyfmjeTYIO7MhP6NYChJKTdIKM
	6KuAiupY0X/JtjxOm7eej9l2mw2hm/YEQMSmIkyvw/6i4HVb+1ISVHV/CEd1xSim5jwsw2CVaeK
	L0A2F9ZqvLcVlU4PyseReG7Lfq5HCmUVDo++YBAQ+c3J9BcBuOw5/kbg//kZxIoGoGzfKmQW7B4
	0woYOkA3s6WZByvM0rmpE2OIDzL3AImZugMtAa
X-Received: by 2002:a17:907:1c88:b0:b97:7659:8bca with SMTP id a640c23a62f3a-b9776598f6cmr548363066b.40.1773662649653;
        Mon, 16 Mar 2026 05:04:09 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.226.115])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97d201082esm10993066b.63.2026.03.16.05.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 05:04:08 -0700 (PDT)
Message-ID: <976c8a29-bcb7-4207-9d3c-5b1f6036300b@linaro.org>
Date: Mon, 16 Mar 2026 12:04:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <55db5547-96b0-4d3a-90bf-3d2b289abaa3@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <55db5547-96b0-4d3a-90bf-3d2b289abaa3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276135-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: D355C29916B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16/03/2026 10:12, Krzysztof Kozlowski wrote:
>> +		if (IS_ERR(csi2phy->pds[i])) {
> API is terrible, but it does return NULL.

Ah b******s... thanks missed that completely.

---
bod

