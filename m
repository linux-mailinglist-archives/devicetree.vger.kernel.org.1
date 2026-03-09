Return-Path: <devicetree+bounces-273154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DU/AplIr2m9TQIAu9opvQ
	(envelope-from <devicetree+bounces-273154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:24:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA852422EA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A879F3010834
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 22:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6164838F251;
	Mon,  9 Mar 2026 22:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="FWQ/dZZp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6524538E5E1
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 22:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773095054; cv=none; b=eYbns8JGf9p/psb7tJm7PK9zK2qs+icc0w2CCA64WCg5kG5jW+V+0+pOFkrZONBID4cSNSxpuv3Z9uCBiSUBLqrcrLX1JJuZN2vTx0aAuRt+fBhZFP93v6c2pUKwueoYgp4hoMzdeH9p4i1Din2hYCmbx4wsj+mW3BjBChJjqlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773095054; c=relaxed/simple;
	bh=p74FA63573R7vSgP0Ymlo382GmnT2c2KE5hGfqtfC/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g6Aanwzb6kDOzcyUSYCu118oycBTmPMPk+FYSyB5M5H/tnNT4CynjQKOjX5WS6zEsHReM1dVAlKVqcz13CqNRVfwgxdZpntUh9+1OnqktiwZaImNshfI2NDnQcWnssOUhiB+WYvpwu2jZ3ODGhLdT3sZQn1Z/a8B2AJjuKgLubo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=FWQ/dZZp; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7d743ba241aso1135677a34.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1773095051; x=1773699851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SHnLn6sNqEV/ng1JAOx90FzzxM70L3M7Mka9F9TdMQ4=;
        b=FWQ/dZZpZ8MAhDSERJVLDYZr9GXgNv9ZhTnkIjdqAo2D2KqEojLnCVyWLzJahB2YJ1
         rOe6eckQkDVxozsaN3gSKctLYrFOiodHeblIKTTB8nGpEMWfXUmh4wIYtQGo38PulTIt
         3nfWppAgg4UX5On29+w3COYySDlEdLfo2SbUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773095051; x=1773699851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SHnLn6sNqEV/ng1JAOx90FzzxM70L3M7Mka9F9TdMQ4=;
        b=wxGnsXZ0Gb0dYaPH7Jmv60dGZg0pKY7j4jx5WpscDcoEXDD7Otq96YWMZd2DAh10yp
         xa2witEfNrR/adbwRIdFQN37obv7bP9mxiAS8rdJYw0tBoqssjGk7WIuDuFzg+SIrBY2
         mGgmD7CQuumZu7vmEUX2QQEgTVlclstK7SXcxISV6GmhG2+z0yVdIyx4F7h+jfG6QrLr
         IZz5b5a0JwEhMmuM8EF1PDhqtvOLOzc4px4OdJuuYbzTrCRkOuC3tifPncRcuc7AL0Gr
         +CCQq/n0OLzHkLpR60+r8bKPJSXNx5MQMPnAxe7Ql8Y7mgLw2thQIl2U9OZLCQkCL9LP
         R/WQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9AAoRkJnRSL7QiLs4+l9y5aAFPgWAbYWDcJ55KcuI2qN8u0YRLjz/q6s1KSEaB1Hp4psb94lWyE0b@vger.kernel.org
X-Gm-Message-State: AOJu0Yyor9HVE+YjQiLumFk5N+L4f5c79DmN9gTNUa5m/bYcKaHTXiFF
	616FyeWu4FkxHRtcM5tt+zqF02h1XMNrZcZgruObAKfuC0/vRejnwcIJiPGrP9nE+4OYTZfZAeI
	hsV417ME=
X-Gm-Gg: ATEYQzzckqq/iNCpnMcya0CiNLnVxECStratcdrftIe9LcoFlgumF0BwKliLcbPEqt+
	7UVCO1QlQ8e+XKRN9e6t2k35kSYjzA8RgVYIVCEwnIo4Y1jF5K9gbrP4NVxVhuILq+y/+BDrQta
	cIzPomLMcmOlWkTMVJm/ox7+PpWvVB670P7vNUgxHmkGDN19EW14FxsAhIR+sQqgu7nnorfVSov
	fWCXD3jwkSCFQNJ5kwW8T6t0ZpP1DBYchU1sX6EINMYxy+Qk75iU2wmZDtmMcg5Jdtk1mJJc52X
	mSJAPekKAbKQu+AbJSE788X62KKnAziCGKQqmUjOBhBINWpyBT+auJDg7ZpuxFLwmzG8NZanYLh
	ko6baDAa1hlvzIZC7XzVYPBiFCwDxS8/UVwvhj3ZO1M7bV+bECEZyR3WLtZiX0l45nj0J7bmEmR
	FmTT1+53HmvDlE12Vq4mwoIhj33hWS7bEqDcs=
X-Received: by 2002:a05:6820:151f:b0:677:d91c:2e26 with SMTP id 006d021491bc7-67b9bd3a2camr8004764eaf.51.1773095051333;
        Mon, 09 Mar 2026 15:24:11 -0700 (PDT)
Received: from [192.168.1.14] ([38.175.187.108])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67ba42709e9sm5372733eaf.0.2026.03.09.15.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 15:24:10 -0700 (PDT)
Message-ID: <03136b99-1bcc-44a9-bfc8-bb4ee96c5414@linuxfoundation.org>
Date: Mon, 9 Mar 2026 16:24:08 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/5] docs: driver-api: gpio: rpmsg gpio driver over
 rpmsg bus
To: Shenwei Wang <shenwei.wang@nxp.com>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, arnaud.pouliquen@foss.st.com
Cc: linux-gpio@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20260309205532.1794202-1-shenwei.wang@nxp.com>
 <20260309205532.1794202-2-shenwei.wang@nxp.com>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20260309205532.1794202-2-shenwei.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: EDA852422EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,pengutronix.de,gmail.com,nxp.com,lists.linux.dev,lists.infradead.org,linuxfoundation.org];
	TAGGED_FROM(0.00)[bounces-273154-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[skhan@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linuxfoundation.org:dkim,linuxfoundation.org:mid]
X-Rspamd-Action: no action

On 3/9/26 14:55, Shenwei Wang wrote:
> Describes the gpio rpmsg transport protocol over the rpmsg bus between
> the remote system and Linux.
> 
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> ---
>   Documentation/driver-api/gpio/gpio-rpmsg.rst | 266 +++++++++++++++++++
>   Documentation/driver-api/gpio/index.rst      |   1 +
>   2 files changed, 267 insertions(+)
>   create mode 100644 Documentation/driver-api/gpio/gpio-rpmsg.rst
> 
> diff --git a/Documentation/driver-api/gpio/gpio-rpmsg.rst b/Documentation/driver-api/gpio/gpio-rpmsg.rst
> new file mode 100644
> index 000000000000..0f0a3ce3806b
> --- /dev/null
> +++ b/Documentation/driver-api/gpio/gpio-rpmsg.rst
> @@ -0,0 +1,266 @@
> +.. SPDX-License-Identifier: GPL-2.0-or-later
> +
> +GPIO RPMSG Protocol

Let's expand RPMSG for the first time. Looks there is another
RPMSG acronym that is completely different.

The rest looks good to me.

thanks,
-- Shuah

