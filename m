Return-Path: <devicetree+bounces-259458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHWSGvxDd2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:37:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C08AA87195
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 764BD3016ECC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0EB9330640;
	Mon, 26 Jan 2026 10:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XXK02Q4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38785330B06
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769423865; cv=none; b=q4J/U3NjVYGTJor+6scOI7gbOwn7CYBsoV4M1qCypRrw7DOUavZroRa7CkUSdtLfxFEc8Qkv7w+eN1+gYD0JOxMT3aKWPSgTRpedwtpt8vsyr/q8+XVKwukTRdLgJJiZdeWjZnBZ+8arlxb+zOpv9I4CS1IA4r/D9HwiLqm/ikw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769423865; c=relaxed/simple;
	bh=BJhb38isP/d1CZw93ApA2/iPTUfPcFPvoFHIZqdYKWc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=coFs5OUona4fX3cmRgjD6QtyTWm0oXPONhbRxzlQQ2unp6BdSW4vx+pz66URv6Fjfu5IXU7ISqdoLkL27QXjlwu283T3zAiFL9SbTZ0AjA4OXi7/+sQ5jd+ZnRvycp7SDOZ/hvEwXue9uSq8TuHkbD7m4SKsGT6CcZ/04jdZGao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XXK02Q4B; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4801c731d0aso34042195e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769423862; x=1770028662; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xkux+EitG9JzPydAe2E8YwQFUS9lBx4JpjL6QxsZSNw=;
        b=XXK02Q4BWaDEWlh7gRJ2nuZM4fsZ6uiT8AyZpv57Bo3gxExOza1aO5ta8GPokNf377
         7vozkCfhIKIt4ysJPf+MJzYJjw9xhnrvXKQ5eVGP0xs4DvJB4T1TanBJufLr1FwxJabZ
         wuGh6+2Q8hhwnbinR2diR3sCOsTx0+tDwfZ5iJDxSpXGw2RF6Wf1BRNpaf7z5uXkeiP9
         AhrMnrIt6AsvNDHMyP7ZLv4X4reXexiX9/CSf4jobo665M6y4OzNchqDsSM0YGVxGdpd
         7SkvB8DojII7MveE8/IMSZ6WQFcdwY8Rf6XeTj0RlEZD/1B2yMPIgw2AH7Sg5CAhd1wF
         vt9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769423862; x=1770028662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xkux+EitG9JzPydAe2E8YwQFUS9lBx4JpjL6QxsZSNw=;
        b=D8rj4+KVqeEO2zjtmH5hlVxQL0X2QQqd5gd38abw2ZuJAx5+i82p3thvLJng+xJlIK
         idayBOFRmPRAte905zvnj3BzC3rKulM4VqLQPBnQVwzFyOYa2rt+8JSLR+ufh2mPvInL
         ft0bah7A5UmyDGVX3FWkunbxcrwb5tcuKVXNvHJwEgxRsxLgkHkbezRn/O7AIPfnRm1X
         LnOx4pVtnczI3/piMima1Ykm+kx9BPWHjDNS90ls/pTWP+Zy2f9Ljt5/FnvHX22YqcOa
         gsgzR1qa1bhszbIJJ5f8/DU/vRcTuYmfPCXTxIPNiplSlWzqkwx5o7M2G6/bInkK6pCb
         ioJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRBVHT9fnRF7sUWH/Fza/82anlvQjztnlWYOOkUQWEVUI7+XMgA/wIWD8hBXfjJyO/lYg/BjkyUAVG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk97dNZW0ZmCkaAbqvnYqDSL/TgPga6ZFk3IS69Gnl+FkCOfyj
	F6vyhkxzeXP+ZAE5INPU1xSCqh1qY6x5YDtgosq0KCvhticzX3F37JVG
X-Gm-Gg: AZuq6aIMlawWqrTa4W5HZxTKVR6vx0qDFcEpBz+s/v8BjKL6kTCaJBQHcqKgezagIyk
	jlUugM0ZS88hV3GACalvISTD9Afk33KJ5ywEAl60if1URU7XCK+356BmQ7BWCEisp1UuZUtVhS3
	J1MSSriYCh6lPOOsjsz+iLdQEEAW9u2GUCEUD/6snAK6AX0PoboBdB2imH9D+Z7NXRkTBeZxtlQ
	k0iH7AojWy0sp0NyDyy3POQwY19mlzITz7ceLKjBt4T9+iz99FJ0UGvnPlyRPc89pC4zbqSxzTP
	FVzvJHsn15FnGRwj6KH3eEhjB4u7Gi90Nb437RJHggAfMiNr8LgtzjTa1/bQdnBRk96+iqystCb
	qji+vnkZDuI2YxsziZARhxUen/G0rXp45mCcHaAVbZz7GGxOkuHnlu8eqTUHGueoNZJEJbh6Mti
	gMcszZMCLJrzUnToKG5XkHRZ5chwwQfQt0nV4rA+F7shJSKN0xj6ar1GOePdV82ke9KwwMlynC2
	VuZY9kLCGr/FEHP3HO2Wh+D8MB+y0VJibNpbaOauu3DD6J0QtX27bZMJa28
X-Received: by 2002:a05:600c:35c4:b0:47e:e9c9:23bc with SMTP id 5b1f17b1804b1-4805cf673f5mr69370895e9.30.1769423862239;
        Mon, 26 Jan 2026 02:37:42 -0800 (PST)
Received: from ?IPV6:2a02:8440:260e:5ad0:867f:b0c6:e80c:5b42? (2a02-8440-260e-5ad0-867f-b0c6-e80c-5b42.rev.sfr.net. [2a02:8440:260e:5ad0:867f:b0c6:e80c:5b42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d6160d2sm104298055e9.2.2026.01.26.02.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:37:41 -0800 (PST)
Message-ID: <ed300810-14c9-40de-b50b-f60cd4241bb7@gmail.com>
Date: Mon, 26 Jan 2026 11:37:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/12] pinctrl: stm32: add firewall checks before
 probing the HDP driver
To: Gatien Chevallier <gatien.chevallier@foss.st.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>, James Clark <james.clark@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Leo Yan <leo.yan@linux.dev>,
 Linus Walleij <linusw@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, jens.wiklander@linaro.org
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20260123-debug_bus-v5-0-90b670844241@foss.st.com>
 <20260123-debug_bus-v5-12-90b670844241@foss.st.com>
Content-Language: en-US, fr
From: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
In-Reply-To: <20260123-debug_bus-v5-12-90b670844241@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259458-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[foss.st.com,arm.com,linaro.org,kernel.org,linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legofficclement@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C08AA87195
X-Rspamd-Action: no action

Hi Gatien,

Thank you for the patch

On 1/23/26 11:39 AM, Gatien Chevallier wrote:
> Because the HDP peripheral both depends on debug and firewall
> configuration, when CONFIG_STM32_FIREWALL is present, use the
> stm32 firewall framework to be able to check these configuration against
> the relevant controllers.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
>   drivers/pinctrl/stm32/pinctrl-stm32-hdp.c | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32-hdp.c b/drivers/pinctrl/stm32/pinctrl-stm32-hdp.c
> index 0b1dff01e04c..cce477e86ef9 100644
> --- a/drivers/pinctrl/stm32/pinctrl-stm32-hdp.c
> +++ b/drivers/pinctrl/stm32/pinctrl-stm32-hdp.c
> @@ -4,6 +4,7 @@
>    * Author: Clément Le Goffic <clement.legoffic@foss.st.com> for STMicroelectronics.
>    */
>   #include <linux/bits.h>
> +#include <linux/bus/stm32_firewall_device.h>
>   #include <linux/clk.h>
>   #include <linux/gpio/driver.h>
>   #include <linux/gpio/generic.h>
> @@ -46,9 +47,11 @@ struct stm32_hdp {
>   	void __iomem *base;
>   	struct clk *clk;
>   	struct pinctrl_dev *pctl_dev;
> +	struct stm32_firewall *firewall;
>   	struct gpio_generic_chip gpio_chip;
>   	u32 mux_conf;
>   	u32 gposet_conf;
> +	int nb_firewall_entries;
>   	const char * const *func_name;
>   };
>   
> @@ -615,6 +618,13 @@ static int stm32_hdp_probe(struct platform_device *pdev)
>   		return -ENOMEM;
>   	hdp->dev = dev;
>   
> +	if (IS_ENABLED(CONFIG_STM32_FIREWALL)) {
> +		err = stm32_firewall_get_grant_all_access(dev, &hdp->firewall,
> +							  &hdp->nb_firewall_entries);
> +		if (err)
> +			return err;
> +	}
> +
>   	platform_set_drvdata(pdev, hdp);
>   
>   	hdp->base = devm_platform_ioremap_resource(pdev, 0);
> @@ -670,8 +680,12 @@ static int stm32_hdp_probe(struct platform_device *pdev)
>   static void stm32_hdp_remove(struct platform_device *pdev)
>   {
>   	struct stm32_hdp *hdp = platform_get_drvdata(pdev);
> +	int i;
>   
>   	writel_relaxed(HDP_CTRL_DISABLE, hdp->base + HDP_CTRL);
> +
> +	for (i = 0; i < hdp->nb_firewall_entries; i++)
> +		stm32_firewall_release_access(&hdp->firewall[i]);
>   }
>   
>   static int stm32_hdp_suspend(struct device *dev)
> 

Reviewed-by: Clément Le Goffic <legoffic.clement@gmail.com>

