Return-Path: <devicetree+bounces-268389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLtVLLj+nmlAYgQAu9opvQ
	(envelope-from <devicetree+bounces-268389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:52:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3CA198633
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 927C03009551
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0A23B531A;
	Wed, 25 Feb 2026 13:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RKgjavTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DB138B7D2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 13:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772027291; cv=none; b=iBoWgxJR8lm3ZmKhNowJoSFEBnvBIZnvQ9Hbfx9IWPL7NWS4G/6ImN9KeSU3adzjeZeINjn3s5Pgq5CTLtmwjUs3UWlghHJXrDdc5oJ/uwcInJRGdEO7uK+oisWAE7CaO/R/GjAfONJTLMKTocqYVtQ6iD22W/9kZyXBX8crAm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772027291; c=relaxed/simple;
	bh=RlmrWYpC27I3CmQ2g9mtzwZZvCPgpL3v1Rd019SyxTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LH47/TNZ1KORW+5RYoB7YtpubFZhZq+MGme5yBW/Ke4UAalbX2Il8gycUUWQT2Z6Wpt8NVEho5xmHJg6twtkR2rl35oTiXQFRqD9ErKY8ybZN58rZ6PBmMeMrLD6AVmRFv/2n/2v0fxTwpI42j+CsVv8WGEBQ/6FZd0RKZvDCmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RKgjavTx; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48371119eacso78676155e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772027288; x=1772632088; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eykmgvSbv0vLUxYY3jrSx+qlZUgAvR5496gVQzQWS8U=;
        b=RKgjavTxc90yhm4olN2IfaQ+LpJmO27IsSpqEWQVLHqveqiqdtA6tQLh/ovpSipFfv
         0brrHI4V/SWiEBFozQPQ0iT6v150WVv1Fa5ZnMcZ0pnGjmneGr/r1YPbt2ri8yirwERo
         NJAJc53BYNY+yhCLXKhiLO/DT9+ggKqxEfyk226n4s/4aBvkSICZyk0ITFcpHaAHSmrY
         L28StWalaM93DWTkdVwVndXDe3fCb1IX8KVoDJOrjr0imHJZXpUfQNThfTllrQoSK5Y3
         OEwm0jtzU/0/qosYmIm4co+4pLfVK5WgNjmoprhsgdCaqlcmrxUaO871J+uvu77oEB/t
         fzrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772027288; x=1772632088;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eykmgvSbv0vLUxYY3jrSx+qlZUgAvR5496gVQzQWS8U=;
        b=YMRMbRvUBfNu+fOxoLlQ/OA2fX1c9z4VaYJyXC0whNjC83gIV5eicKgtg4PUAFpD/t
         cGqftbrC3ljJGDlUwnE+9uV87pkciVXNl30eq5va8VC2FmDeTMZfNuhbPaEBVpiy3s8m
         mJiBoq8xdOeiIQLfdapMRQzJEJtE5hSTKUijgJiRRkYGJqOgT4KjhzYj2+YFZWuS0XhU
         sc4Uj9ZaAjJolM8UYVCoy5lOR7s1x50xO7/rZD7JwpCZYRt2biVQxwwSqY44R1kQt4c3
         ZBSkqN/0Lv+x8V/9NyUH4uYQws4CILJ2vtya644vvAt3q06MlZFEBfe9d5jvRwJbUAS+
         4QDw==
X-Forwarded-Encrypted: i=1; AJvYcCXtaJRmSxBaISWco4JmvDR3pQjWu14tpvGe6rXO1dEtK6UoL8aS06kngXOZ5lw5Mq9ys9kdx5V5Q5Qv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq1x0kwRqra3qSRrxL7tqTBj0wSGSC9RyACQ2gcrXe/IUsVPR2
	gbv/PCIMFpec22zF53Z0wju7XNfPe/lsRcZKFyP5CuGfp81fVlvNL3ZjIZHx6v7wuio=
X-Gm-Gg: ATEYQzzyPfL0FD2kAKbm8fw+UtCUSRci6YAmrFyhQK7SmrvW2tbyH0ZY+OKKOhLfN4o
	E79JDhLXjfXGe5YoplYCoFJQuDolkIXnYu1CWPhpn6ORMILXz4dmtr1vCf0MTIdr3uMi8gqvQ32
	eKxnu+apI8vscxhTAcn0MgN/wNbNYZg/SR+gUej+RMAaBVjVSK2SjybD9wW208j2dbulk1kl/aj
	wX6tLirzO5LAYZSm0n3wNsmYdDRQ7KG3PpQaYgoXzIkTnt7YCLM24XytgqBjrRuhV5fTEKdKh5M
	wmQqi28GFuSNcfMuuWkDhKC6kd1C8QPapwqPe9rybZFBPMPzXlcKQ6ZG05okyHvsHV8hX2+Ibil
	dzqkqYs2x4VaSizrr0SBpOPBSmGyk/qa5b59/77x9ZWDLmHY/iEILm/htbvqvn5+DG7zT6eszcS
	EBgh/4+qIGooGDlSHDhXg347c8aa4taHOT3ytA3JQmcDa+EmQC7YkaVpQsMHP3uVPU
X-Received: by 2002:a05:600c:6207:b0:47d:18b0:bb9a with SMTP id 5b1f17b1804b1-483a963d61emr248565825e9.33.1772027288189;
        Wed, 25 Feb 2026 05:48:08 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd7272bdsm62100135e9.10.2026.02.25.05.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 05:48:07 -0800 (PST)
Message-ID: <7c68d164-e2ef-4e2b-9ba3-9a8515128cc4@linaro.org>
Date: Wed, 25 Feb 2026 13:48:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260225-x1e-csi2-phy-v2-0-2f3770f660d1@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260225-x1e-csi2-phy-v2-0-2f3770f660d1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268389-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: DD3CA198633
X-Rspamd-Action: no action

On 25/02/2026 02:08, Bryan O'Donoghue wrote:
> v2:
> 
> In this updated version
> 
Oops I typed "b4 send" @ 2 am instead of "b4 send --reflect" this series 
isn't quite ready yet.

Please ignore.

---
bod

