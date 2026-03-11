Return-Path: <devicetree+bounces-274172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAPkF/+BsWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:53:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 093A2265CF7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70AE53035251
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAA7337688;
	Wed, 11 Mar 2026 14:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gCUMOnsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFE33B95F7
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240657; cv=none; b=uc8SZbg2TY157tT7JAkdZ6bloEX+HfDR/DGBziHeeDJj3D/CFOuexDGHCp760ViWqoKcGAJqp9M4BnL4JQ7oRnOFTqkYB9dMQ6i0brB1DdZT77F2fq+XisFgalyutGflzWDESvuWu9hnTkkndHMVP4cJBm/Em4rqT+3bot6Af9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240657; c=relaxed/simple;
	bh=jKbAvVQOjgD/Ud8EqCpGD6nwWtn4pXSkFQ8CMyx8GP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JSW/uVk7/TDeZKwGz5gcQrye53hDI7/OxmQ8XmuLLbXsYqbyGhCAGGrpfIN02K3YSn9sRms66hCnnBOBKAEVL6V4TJrYhbdFB67oiA4wZPGPPN6iihUGJN7j7jym0WJVh9h3hn3LBjfS9neogCuKn6ois33/Wiv7UMUcsAcc0ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gCUMOnsQ; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439c6fc2910so5852441f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773240655; x=1773845455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=46AZDUVDC2zlHBW8HDcQlKNvp6YJxjOzfmV0vqTX9ds=;
        b=gCUMOnsQyrLd9Rg2VGP9wKSJUfBuiW/7n4hSB234qp8CiTL/zOMT05RgzCzljtyc7R
         7KTv5gSBiMZ5aRFUWAdpql3NIwghoL3J5bhA/WA/ARlXiMWSaD+8l2Qi8NdDr+7nBdiX
         Ftkj39WUw1F9ylYLubNCQaWmDWEPBUGP8WQO7vur9tGY8m1RLtjejLIywZGe5fgEWXjd
         tpAIE0i3K8EC9tX1WW8LC6Unu9n9TceLujIRHqQWs+Mg7IuMK4k/9+JlCrzro0VOSV/j
         +r0Y/C/OF7YXobFoSksgNT6PH64E6SFwnUy13/lpME0duq10oGV5RUBW1eVup89NJTrJ
         g9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773240655; x=1773845455;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=46AZDUVDC2zlHBW8HDcQlKNvp6YJxjOzfmV0vqTX9ds=;
        b=cTkXWH3W7BeYEPNBeL6AOAUyIosBvG3Wa1m9/vjsIZW20yq0uDJMFJ0jBhptKpmzyF
         kj3OjtL3N0D2PVEn48n2NFHlzTtwzZSrnjfsrf4/ZZ7tWFMrdKzDsbIyoKHmNeFsnWjD
         yWAND4l86EaEBo2atd1JPK/01qSm5gzhEPEFu9cybYu5FekZWytFZEBxe92lLmDv4Peu
         pikIaH7urK9xhcZTdyJIlvsVauu4inOsf2kmBGoyqEG9JZ4PHs5WPfHcY7noC2r1Gcr+
         ZsuxSVnp95fEeOjVOC4Nv31vzZrBKQliwX2XFcLyelumw1YpwJVUnZfduOQA0kuc+7bK
         6+DA==
X-Forwarded-Encrypted: i=1; AJvYcCWUz/G9d6gJOTHpoCOHcDI6CPOYwiBrTczjPV5doAcXkIQl/c5bhJ4JFWfFYfyRAt16kruZvXPDCHsG@vger.kernel.org
X-Gm-Message-State: AOJu0YzlMZ9k5BX85zO33LwLUdX88G0BwvMN5+PvFjFNj3jt3hzXKuk/
	djnsSCX5sRfeNHMPTGhKL8F6ec7ez42QQW66OyABhUolZ2aG8NhmOyb9tP+u5VpQVJ4=
X-Gm-Gg: ATEYQzwCq2UGucB2ejAPiEoDyZbeuRbkcsWy8mNzPv60/JTpeqh+hfKPfz1d7iWCBZ7
	FACi+B3olgixDXg3LOr4PQw/g0Rpkuw5YivPV+HMuE6JSwLeb2dp6snh/j4FHQS3o59VNwpv0vZ
	7p3B/96ygQdr0gFCmOVoEt2p0XfCLNPUrJ3UfCMEzCkTDVA1IFTSF7VmCZbkfTs3zGgjamHZlOA
	mW/NkPylwZfqKnwK/sdw1RmDfKZpIafa9tLyaqncLGDcCjla37NfyCdhi2QxtENi61sK7F5hAhS
	4bGe5c3csg3V9ZJm5b82lTfIyHJ9VG9JrQvbs3l0MKWDxdbN0M2kfUIRHi3WyCudFrAVIigKKv8
	NDwKsKh8b/MyF6lq9mlL9Jq09QB8KOhfoa988aH/pJnii7w6WG4uyselYUGlCwptbKStkKcc9Ld
	m7dEt86UwoV0aMCXnaSGE9w+MjhCjWgNAjR5dq
X-Received: by 2002:a05:6000:40c8:b0:439:b506:e430 with SMTP id ffacd0b85a97d-439f8200663mr5664693f8f.17.1773240654582;
        Wed, 11 Mar 2026 07:50:54 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.250.155])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f8104515sm7264681f8f.0.2026.03.11.07.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:50:54 -0700 (PDT)
Message-ID: <920ae606-3d7d-4f61-9d11-bd970abc5177@linaro.org>
Date: Wed, 11 Mar 2026 14:50:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/2] usb: typec: qcom: Add shared USBIN VBUS detection
 via GPIO
To: Alexander Koskovich <AKoskovich@pm.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274172-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 093A2265CF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 08/03/2026 23:20, Alexander Koskovich wrote:
> The ASUS ROG Phone 3 has two USB-C ports whose VBUS lines are both
> wired to the single USBIN input on the PM8150B PMIC. This means the
> Type-C port controller cannot distinguish which port is providing
> VBUS, causing one port to be unusable when the other has VBUS present
> from a charger or PC.

Hrmm..

If you have a GPIO for VBUS detect then who is sourcing VBUS in host mode ?

There should be a GPIO to switch it on aswell ? And in this case both 
ports will become "hot" at the same time.

How does VBUS work in host mode here ?

---
bod

