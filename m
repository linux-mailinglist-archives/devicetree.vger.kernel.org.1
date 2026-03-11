Return-Path: <devicetree+bounces-274156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iB7XCdB+sWm5CwAAu9opvQ
	(envelope-from <devicetree+bounces-274156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:40:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFE1265909
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C13B30021E8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D2003D1704;
	Wed, 11 Mar 2026 14:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J6oGWZBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC813CF034
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239965; cv=none; b=IFXlqC6eAsG+ROxLLje/bDTod4ohPC4qsWTAfcJWY0HUPY3o468OprvoBM+ILwikMMzMx/KMBYLqs3dT+N6R+bFEknWK1RWNEHMG8RlDf4lV+IM18Lt7tDaRqe6Zy6KDAV8c9lVgQhSzDeEX4gUUtRAObg/XZfQcwDV8Ffw9zoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239965; c=relaxed/simple;
	bh=ksNXnFXq6w3qFH8+DIA9pBCSr2lZUl9iANcgP+cBfBY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zm3PXcKcWUbPT17FoPma1oNiMYzT0x1GXpsNNuDkaHWhr46uPAR8ziLm7xcnNZOWPB8wWaYURmlno85E43wrosRGzj3ts3klekLJXIr9ueLIu9XFvLHXsVAIQbHsCJzhYqfchPUxqZ5Itbihj0jBE9PF05aV03BI4fl2uI7L8o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J6oGWZBC; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so55296855e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773239962; x=1773844762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ejjctz4Z1Yb0RYsrK7yI5hs1ap7d4xFirfs/hSHU4Tc=;
        b=J6oGWZBCLkAFn/H85t56PtY6baurO46tB2+GyAHGPOhx+ERfBuk8q1VzdNVLhOljwa
         nyfVYnkBbjUc6qqzRqjspZou4C1MsQfwDIZSy2ldbaUaRJSLhkz3ma7IfkDpLK6U1P09
         Rqb6D7sC1DUiwNg91cJ6iMpyrKQdklwaPPvfxzzSWlehTZ1kNky1WpFxSxxGTolJZ2nJ
         7Xt8bcPQXERHIGeoTvP7mq9wJN10/jZtJTnT71oqhil5PI6/XX4XRY2o/trmR2M9HaRg
         RStyM52/C37sokcaf8EG/seX4Q0Yg/ORSOXNQlg9KN/UeX7Et0Cnus70rHvrUpKUcS6P
         zZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773239962; x=1773844762;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ejjctz4Z1Yb0RYsrK7yI5hs1ap7d4xFirfs/hSHU4Tc=;
        b=skMkvXengcAQ/dEPF6ULLUakeHge3vXdb2DX34RbDXVRKq6S4gviuB20ef5dM7WvKA
         gTolFslRR6bcGukwCaHTHonozkfh4E2Txcn7HNfsrcYV31Z39bOFsD5j2GD1ByhuGq6O
         X6bQJTc06wGWuunOGRlRVmvcJPsRpEfzUNQ9Xu5WSQUD8U5z6O0wgWaEId86cL698tNA
         nyQHKI9bt+fgW6qUqEFPyqJLp28dV2jFIVz+PLRBKp1UxH1+8UTIpPGXMl99dybBBA+U
         DRfbjxYz7HirHCzIBhS0/1YZgS2cDfp+LPVhoB6EYjoFOl1MgIBixc679oKVkfCpJACE
         TiEA==
X-Forwarded-Encrypted: i=1; AJvYcCVz5kf/9rUqX7lRz2wHrH6CVC8yQZNHPNlzey+cc0LyBDskuqYHHg2WRZmrihMDY8NjN5LTWbzhcKsb@vger.kernel.org
X-Gm-Message-State: AOJu0YwG+9hSf1bd/3JQMD2MTipSVyJnayHuBDlgs+VfAJBnFBym84KZ
	b+iQOgps0ntxZ6ZObLLDC/8EIc6EuHRzbpjx54/+ItNwQ3Nr3zvqRNirfv1did5LMCE=
X-Gm-Gg: ATEYQzypimHJot4WQ565k1K2mMsYQt+/Fh/DIZ/WURQp5z4wK/k45JbDpBXu83wqiq6
	19ugQIvjyHnxETzEmNW1XBVy7P31qe1U6wrj/Jvhn+QSVPztY4wklSv95WiQs0jW7t7I+NbEZQg
	K1C6LX5ETO9ZIJBTO4rlCsurD7GIKT3havPOKsgIs6a1njLuiQ3yWW/y/P0Jaulyt3VWKIFP6Mv
	9KDWEeNTxJ4zsAhQl4ffivNv4C1wx6e1d8glmSg5QiyR+ClIgBZvAAXpichZ6RRGp8oTwyevdq1
	ULdUA+5wX/qLgvLBousbJXXgbZSrIxWpluAP3SZLkVR8/qxkTYdtk7/Dz93iAj7r9YFsnCFH5yq
	sZnUaIX6UVpjr6LU6UDOV0i7noJRjQL1YQFBW/vjA4aReB2YYVoZCltq1NJhtCWlucSxAatl2F6
	VPglvbPdQleiP99LEfcwDNKQ3LBgW3SVPBwAwC
X-Received: by 2002:a05:600c:8b05:b0:485:303b:c50a with SMTP id 5b1f17b1804b1-4854b0f064emr50867255e9.13.1773239962225;
        Wed, 11 Mar 2026 07:39:22 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.250.155])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541ab9f9esm163646375e9.4.2026.03.11.07.39.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:39:21 -0700 (PDT)
Message-ID: <1295e256-ad5c-4d20-b928-792b251fa9fe@linaro.org>
Date: Wed, 11 Mar 2026 14:39:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] usb: typec: qcom: Add support for shared USBIN
 VBUS detection
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Alexander Koskovich <AKoskovich@pm.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
 <20260308-qcom-typec-shared-vbus-v1-2-7d574b91052a@pm.me>
 <5304144a-0907-4b7e-8c65-d0d37e74e9f8@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <5304144a-0907-4b7e-8c65-d0d37e74e9f8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-274156-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: ACFE1265909
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 11/03/2026 13:01, Konrad Dybcio wrote:
>> +	pmic_typec_port->vbus_detect_gpio = devm_gpiod_get_optional(dev, "vbus-detect",
>> +								 GPIOD_IN);
> I thought the intent here was to have 2 GPIOs, one per port - could
> you please shed some light on this?

You should have two instances of the driver. One for each port so one 
GPIO detect in-lieu of VBUS per port.

So for this board we would expect to see

- pmic@2::pm8150b_typec: typec@1500
- pmic@3::pm8150b_typec: typec@1500

and a VBUS GPIO associated with each type-c connector.

---
bod

