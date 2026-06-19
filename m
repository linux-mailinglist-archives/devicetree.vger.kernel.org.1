Return-Path: <devicetree+bounces-313681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gud8ERHwNGojkgYAu9opvQ
	(envelope-from <devicetree+bounces-313681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:30:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A17856A4583
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:30:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=ZqsP797F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313681-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313681-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6862030379A4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 07:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C971E3446C9;
	Fri, 19 Jun 2026 07:29:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41CC3148C5
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:29:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781854196; cv=none; b=DvsbFZER11qHYQ7XsiuJlcwiAa5ZYaovIRokmocOYThu+wUor001ADyLVqLd4puinK0D27HbBi+FtyXIHPAf9lcTXz6TfMFbVE1UKN1j6A+8pHHSe6YnffXOM13HNEgpVB5HIYiQcNw0qEpTzb8652vvbtd9TI/E8dZ4tXQLsvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781854196; c=relaxed/simple;
	bh=XBcuO4HXyLC72ANXStPSUqeOoQMNYhUkr4zFsbzLeBs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=f6Asy63QXEELtH9W8lcF4qd3Dr9FEvs2ycvSoU7NUTZ86kWWsxJY7HuXVhZgZi96O7SpfO6TNRkalk7fZ3E9KC5iONxf+QmTWLJnL3PTSLpWKVmstQC1d2Xjqbh6umfuJ/EO+yYVYhq88J1pYmpRskiiUGU3wJdzqQRShK3B1L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=ZqsP797F; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-490b7866869so16820665e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 00:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781854193; x=1782458993; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wPDHyNrMcgujLZEScT9ZWB7ZjuOqeA69xZgdQn0M0M4=;
        b=ZqsP797F6XLkR+rnv544/0Z2J9AHZEidCvwksOT7YmqlfRDsDnrlQwaSdz4iqjmfue
         6pxQa2rzMqRnOZIUoh1F+G/hjjYhhwIprse8jJGHpwhMvy8ZajKNHWz37QtjZvRr69fY
         vNe8e13khAYZ7nXe4E8kpi9rlNUdt1PBksiKnX3R26ItgYlf6u/45BViaEyjnpAS0GIy
         5zH04LAVoOYIYmio4MQJ/F3dZ4yJNBUsCrMxxBZ2hoithQJqH7r55Zzxb0NNnvwd9YCG
         avRzGJumv01XjvB4mCZduiYsDGVTPo3Q+GhQG2xGz3elx8wuQ6WajvBFcuAch1I5/KAs
         4XLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781854193; x=1782458993;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wPDHyNrMcgujLZEScT9ZWB7ZjuOqeA69xZgdQn0M0M4=;
        b=BpE0VP/GxNKrOF/dHsPu/Jf1u3L85c2YeJ/0nVJHNpQTERRC29zhQ8fW4CldMxDFJg
         Lkatk7ee1hZuaAk3SZE441NfoncZgFVj5Ix9llqgk3TKsdT7cCTCyFOlgSCP5F0yHhP3
         COLEMKIaDdKISj5N3Z8h8wS8vbQnIPPMvgNNimLxDwTgsP566fhEKz7UdQBcb4ErQlRF
         4o+OoNp2dTOQTIeiAax71/ovGPT3qB8B2PWH5o6dLCt9oyGRuUftItzWB3NniF/vZxpR
         pfckLKwF/I7wkUFUMCBjyFSAuU0nVptF1N61TswwKoORBF4kh/j5WrDKaBNf82KVD9X/
         wjow==
X-Forwarded-Encrypted: i=1; AFNElJ91frfzPn5qRUDnUioPU60bfX2r+iKc1eZYmC5cimrChrgUexxJkic/8E2kBmYQzP0+x/KvUGPQxUVg@vger.kernel.org
X-Gm-Message-State: AOJu0YyG4++pLzkLCh/IuKCiREqLazu5OBMGdHGgAAWlCvH7O7hEMpJ6
	IBPyOayO0oN5Czjn/7AarPI4UXgUIEOQxIiCMTyysi6q4/sDrOktEEAVVac7YIcGQb0=
X-Gm-Gg: AfdE7clHQY7PXiZZlz9YgPUAGV7GuhAS6otSg0Cn3JkQMmBGLxWY1BrNoft8Uatwme/
	hzmDH43RWRbq3CtNDtfrmOzWet+1u5fcqrVQlZZpN+kqDI0CaGid/yX1e9aph7JCdbDyWVeWHWG
	UUtcUAtp+HigOZPjNKiVSlKBnmaRg7JAFw2CVNUluCK8NT4CkukPRyUM5dfCw52BkK8JwoWBDF+
	tENpelHeXUjZyehs4BzKB3Vi7WEN4uA3kJ6W5tjQaWrjbi0DWGgsA7yVHsZEUAUjXXwc+QWbf5l
	+BVxA689wcGRseRj1gR4n75C+JYq4ux/swwuWscOdtdE9Te8mADDuzgULFImfCNNZTxQUsJavsZ
	w/bNcQbfssh+arWg1cHtT4yRAgsZ0+VISNtbuPp9MJof4eOrwNRZR6XrZuqMcWWRztgc/HDqwdW
	9bFAfSPOK0LVE=
X-Received: by 2002:a05:600c:46d4:b0:490:b58b:a8ca with SMTP id 5b1f17b1804b1-4924257c483mr21687735e9.27.1781854193037;
        Fri, 19 Jun 2026 00:29:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:95ed:eac1:5731:4e21])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4923fd30078sm46219025e9.7.2026.06.19.00.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 00:29:52 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Julian Braha <julianbraha@gmail.com>
Cc: jian.hu@amlogic.com,  Neil Armstrong <neil.armstrong@linaro.org>,
  Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Xianwei Zhao
 <xianwei.zhao@amlogic.com>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
  linux-amlogic@lists.infradead.org,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] clk: amlogic: Add A9 AO clock controller driver
In-Reply-To: <79b1a519-5723-4e0c-904c-b7fdf9564ee1@gmail.com> (Julian Braha's
	message of "Thu, 18 Jun 2026 19:56:12 +0100")
References: <20260618-a9_aoclk-v4-0-569d0425e50c@amlogic.com>
	<20260618-a9_aoclk-v4-2-569d0425e50c@amlogic.com>
	<79b1a519-5723-4e0c-904c-b7fdf9564ee1@gmail.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Fri, 19 Jun 2026 09:29:50 +0200
Message-ID: <1jbjd7c7ip.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:julianbraha@gmail.com,m:jian.hu@amlogic.com,m:neil.armstrong@linaro.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:xianwei.zhao@amlogic.com,m:khilman@baylibre.com,m:martin.blumenstingl@googlemail.com,m:linux-amlogic@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-313681-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[amlogic.com,linaro.org,baylibre.com,kernel.org,googlemail.com,lists.infradead.org,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A17856A4583

On jeu. 18 juin 2026 at 19:56, Julian Braha <julianbraha@gmail.com> wrote:

> Hi Jian,
>
> On 6/18/26 10:49, Jian Hu via B4 Relay wrote:
>
>> +config COMMON_CLK_A9_AO
>> +	tristate "Amlogic A9 SoC AO clock controller support"
>> +	depends on ARM64 || COMPILE_TEST
>> +	default ARCH_MESON
>> +	select COMMON_CLK_MESON_REGMAP
>> +	select COMMON_CLK_MESON_CLKC_UTILS
>> +	select COMMON_CLK_MESON_DUALDIV
>
> Selecting COMMON_CLK_MESON_REGMAP is unnecessary since you're already
> selecting COMMON_CLK_MESON_DUALDIV here.

No, regmap clock are directly used so this is necessary.
Relying on other module dependencies is not enough

>
> - Julian Braha

-- 
Jerome

