Return-Path: <devicetree+bounces-313687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 01/CJWz0NGqklAYAu9opvQ
	(envelope-from <devicetree+bounces-313687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:49:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7756A46EF
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:48:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=f5DyzJW1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313687-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313687-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B4AD7301560F
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 07:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B005A34BA5B;
	Fri, 19 Jun 2026 07:48:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5925831D72E
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:48:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781855335; cv=none; b=TgE9TYV8/tXoMMR6RIfrgh/yxo+fyE3MpIJ/ASGA7ICWt+pCZ9vTWzqWOvACqq+2T4qSq12qD5/jjHD9eiwUN73mazL5/AVvFp9A0n6JBd/VnOvZXdNUEgg3EMByfnDhJJyQq4XWii1zyQU+MDEU+rcwZkHZUtJWmVmFMZ5wFuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781855335; c=relaxed/simple;
	bh=I6R+gu+o5IzsxtPriiBLelNCO8cHEeri4kwg6Cqk+r4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZtomxyN9IWJLPFwKNmHVXTDMJLZ/9IZ1OSK2vnBAVt6lMhy7Akd1vWPBWUrjSwtq5vptYlDr9uzvg1aQspnbZMtnFty5Eao1FwQNDS1P3o8c5rWm9n63tlutBeoiS9k/8fhRj3JD4Ls98lYhK20Rt7UzQvdKsaURhz5MBDmmEl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f5DyzJW1; arc=none smtp.client-ip=209.85.221.52
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-45ef29c5561so1061611f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 00:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781855333; x=1782460133; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=I6R+gu+o5IzsxtPriiBLelNCO8cHEeri4kwg6Cqk+r4=;
        b=f5DyzJW1W++gq7Cf0wPJ8EzCE1pZDqtufGQ0PFDP6tRysKkZL7c3dxSCGCbv9+cqQh
         M+NSQ7ou2IoW+Pe5TNvysDAzxAcHnBnZSP+anC69edTtBPQ/6TauDtFfdeedmve1n/WR
         RyCavh9NWRerpu0dJ+zq/PF8fOk04wn7fukzrrfiqwRvBZSOVocGrb2ySNFi8mmCN49D
         NC2Fa+6jYNaGiJU5hmKnj/okSUDq8KZBQN2Jb8zFA26QVFSczL+1vu0CwpHAw//63a8R
         agbshO363ATuqA+CZFGRMErM4+Y9ylM31hfIm8d9kzubSvKzlKrhE8e36/heeEUsbEtX
         Sjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781855333; x=1782460133;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I6R+gu+o5IzsxtPriiBLelNCO8cHEeri4kwg6Cqk+r4=;
        b=OJWbWSQs4XA/ZjA3GZ1DbrqWIJUW/xeu13nqsgFEskJ10nykDRT/OA/YLw5esTL2CP
         H+Fvk/ztN3n9xhzcMiAVz/rnxaV9/MB2EM3u4uUYQX+0/lcNaBjpEYh8L1vH2M1GdZha
         2OJKpVI7QlBLBWGh9rhyKh+srI2k1bK+s3EtH8dTT6pLcIWh+4oWHMjGUvGHAHGXBYEv
         2lnhXOMvL8FfBM4/nQfmwxFG1/z0Bt9ucGL1rEBlOiEIBN5wBMLQ0X92qOjIVLBK08It
         utJtvqXBniOx8dh1HAfqGgf7MhxsspVMUHLJNKAvswSiytx8IFd1v+TQ5NAKic14axIQ
         dJVw==
X-Forwarded-Encrypted: i=1; AFNElJ8B5I4yjBWLD2RqGbadN5Lnrhre55RDhaTziAh6LpbIGSBBrMxmy4Np2om3/vCt536UV6NlO3mKrOqn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6d6xH0O3Ptu0Zl3iytymGgzgQ/suGSojIEDQ+FUEusp8DsAH5
	yBaCG+pJSfhgUayDVopgGQtRxvdsgK/hRm9qQDQGWRZiubOVxKK5VaP/
X-Gm-Gg: AfdE7clwH77bq7nnTR97BaywNt872qc/IEboyWAaRXvzy8peF/mNOmwPE8qfL6Jjeky
	VZRaH52VjFMp09O1GVZOgGxDnDHvPxZv+yTSyP/WsDGPBsb3FzVquqnUNv3H5Uk0wrJ9MIAvvfO
	NAFujRTxIPdbhy223Jkrf+yCGjnCdxNRyw2XExGjw38sYcnBzl7VvPrZnfL6z2njaynefa3AQ/Y
	q6HE5TaiQ16oPeoRrdeVvc7TvCGhI7N5jzk4TfLwZH5JaY+mH3b5AetwZ/VgqdRKrm2NlvXt2Rb
	hsTPOqcYSp4Jeha3TOc2CyKDSP7EVxMnvN9yEK3d77UhieVauQqNAPF91ajGOcnDgMw4IpJ91/F
	dW6szBPQ2+Um9qpZ6OfiUug5FkLx1RGOjM0p1IWrEYhN8CWDxPDwBBLaUHCNbaeRYNXIr30NNsL
	CMwZTnIMnYJlpPdsXhmd5BSlS/6ZMMsVc9qxaaJoug04gd0bkzibKAk/FQxrcaYVlH3BYGbbe9D
	4kA8KtUnTIHvHXRLnrv++s=
X-Received: by 2002:a5d:6684:0:b0:43c:fc5c:a9fe with SMTP id ffacd0b85a97d-46502bb15a1mr3018694f8f.20.1781855332519;
        Fri, 19 Jun 2026 00:48:52 -0700 (PDT)
Received: from ?IPV6:2001:8a0:e962:d100:f83d:6b5c:de84:5311? ([2001:8a0:e962:d100:f83d:6b5c:de84:5311])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4650bc41d01sm5719051f8f.25.2026.06.19.00.48.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 00:48:52 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <5af78bca-7c49-48b1-af8a-cfbe55ae26ba@gmail.com>
Date: Fri, 19 Jun 2026 08:48:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] clk: amlogic: Add A9 AO clock controller driver
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: jian.hu@amlogic.com, Neil Armstrong <neil.armstrong@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260618-a9_aoclk-v4-0-569d0425e50c@amlogic.com>
 <20260618-a9_aoclk-v4-2-569d0425e50c@amlogic.com>
 <79b1a519-5723-4e0c-904c-b7fdf9564ee1@gmail.com>
 <1jbjd7c7ip.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <1jbjd7c7ip.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-313687-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:jian.hu@amlogic.com,m:neil.armstrong@linaro.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:xianwei.zhao@amlogic.com,m:khilman@baylibre.com,m:martin.blumenstingl@googlemail.com,m:linux-amlogic@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amlogic.com,linaro.org,baylibre.com,kernel.org,googlemail.com,lists.infradead.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C7756A46EF

Hi Jerome,

On 6/19/26 08:29, Jerome Brunet wrote:
> No, regmap clock are directly used so this is necessary.
> Relying on other module dependencies is not enough

What do you mean it's "not enough"?

Functionally, any user of COMMON_CLK_MESON_DUALDIV can also use
COMMON_CLK_MESON_REGMAP.

Unless you mean for documentation purposes?

- Julian Braha

