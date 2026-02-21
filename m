Return-Path: <devicetree+bounces-267110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JCmLi/MmWkvWwMAu9opvQ
	(envelope-from <devicetree+bounces-267110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:15:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E5916D21B
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E5B53002505
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 15:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8B4F86348;
	Sat, 21 Feb 2026 15:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=kingxukai@zohomail.com header.b="IxTlDxIo"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-o92.zoho.com (sender4-pp-o92.zoho.com [136.143.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678D910FD;
	Sat, 21 Feb 2026 15:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.92
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686952; cv=pass; b=M70INlbISfHDcqiEae5oUTXJC7ZeYIYFcP70GgWO2jAXE1Fki18jasMt5Mp2SW9jFQCdeh8/i+EAEo9rAucGftpLsSn5u/yfstHPWYucKZiDK2HODIt2o76tuey4ilmWjHt6V6HjDXz9yukM13EVcdADHggb42GAuX2A7BQQeFQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686952; c=relaxed/simple;
	bh=7PBZ6BV0pflgpkVmM7GZBrj5GAsILxdHcBbMFPLndVk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qkb5CWJDGJNdwJlBXlNU6Co5AW+GALdhecSkDiK/oobe2ZTDChFWTKbzmYleLxRol6kGgI0MsaW9fIMxG8XtxqP+6Oh7v7q8hynaPKP56kuGUlYiIZGdsgcvRTCNI7EM39sFwwY/Se3YFgvfsclP76SUfHk6LC0lHeb0av7iedA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=kingxukai@zohomail.com header.b=IxTlDxIo; arc=pass smtp.client-ip=136.143.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1771686930; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=c3rqkvZ8f2YCKn6O2yrXwglaa9zp205092pNZVYggxkh9gjixWRYcIzykViMjgbD06xGxJZwtgNYJa/rgIJus8qULszChqvVwZ/eWYvSby4M6Pui5nvF8Ti5uuge2ge0795h1QwDgKY3qLRjjJxN9Jf+IJ7Ha1lwDck5p+r0h94=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1771686930; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7PBZ6BV0pflgpkVmM7GZBrj5GAsILxdHcBbMFPLndVk=; 
	b=OWP+sfRFICwwLR8snTogp2NWatEk2B2GvhURr2Cly8BYtcMbVpZZhW//ep73PnhpbIenwEJUUM6NSAGxRuP1ZSQBoCQNkgrN5nwAS0yDXfr8PL6zwNgFDAuM1zOx2+1hP3Tm+9Pko5hsLqdNcE06zCkIn9Tjl8p7nj6wsUlK3bE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=kingxukai@zohomail.com;
	dmarc=pass header.from=<kingxukai@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1771686930;
	s=zm2022; d=zohomail.com; i=kingxukai@zohomail.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=7PBZ6BV0pflgpkVmM7GZBrj5GAsILxdHcBbMFPLndVk=;
	b=IxTlDxIoElob1meVtSdHlMH1GF/7ihjvp6A9PSf0nWA+E2BOncXyOP4DuA8PDGjE
	QYzoWsGzfxtDT8rNDFcnn7NwQUqJRE6CA02MNEz/FnAR55dnik6bK6R0VgMCHJO36gj
	25iqD8Gv0XOm+IOrf61tIroqShag3vrgJJ7+J3W8=
Received: by mx.zohomail.com with SMTPS id 1771686923159333.11056390750844;
	Sat, 21 Feb 2026 07:15:23 -0800 (PST)
Message-ID: <f1452f53-a0c9-4580-be51-a29d94bd7691@zohomail.com>
Date: Sat, 21 Feb 2026 23:15:15 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 1/3] dt-bindings: clock: Add bindings for Canaan K230
 clock controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor@kernel.org>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Samuel Holland <samuel.holland@sifive.com>,
 Troy Mitchell <TroyMitchell988@gmail.com>, jiayu.riscv@isrc.iscas.ac.cn
References: <20260214-b4-k230-clk-v11-0-6de365489b89@zohomail.com>
 <20260214-b4-k230-clk-v11-1-6de365489b89@zohomail.com>
 <20260214-lyrical-rabbit-from-camelot-2e1195@quoll>
From: Xukai Wang <kingxukai@zohomail.com>
Content-Language: en-US
In-Reply-To: <20260214-lyrical-rabbit-from-camelot-2e1195@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Feedback-ID: rr080112270177fa32e527f14d020f7646000082eb384bd644a03d1a473829161ee7e7031e2efda71e99c5a4:zu080112271340dbca08d2b8d2cd15d0db0000309bf73410f8398c9987581e74f2d478b2e9b4e654c8aca6fb:rf0801122c2b931f9241db5a1103ee22600000212592b58afb33456c686a6ec669e22222f8e52781f07090a3e9ae68a455:ZohoMail
X-ZohoMailClient: External
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[zohomail.com,reject];
	R_DKIM_ALLOW(-0.20)[zohomail.com:s=zm2022];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267110-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,sifive.com,dabbelt.com,eecs.berkeley.edu,vger.kernel.org,lists.infradead.org,gmail.com,isrc.iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kingxukai@zohomail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[zohomail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,bootlin.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,zohomail.com:mid,zohomail.com:dkim]
X-Rspamd-Queue-Id: D8E5916D21B
X-Rspamd-Action: no action


On 2026/2/15 04:36, Krzysztof Kozlowski wrote:
> On Sat, Feb 14, 2026 at 08:54:37PM +0800, Xukai Wang wrote:
>> This patch adds the Device Tree binding for the clock controller
>> on Canaan k230. The binding defines the clocks and the required
>> properties to configure them correctly.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> This review and the patchset has one year already... so I am afraid it
> will be resend and resend, thus please also implement below:
>
> A nit, subject: drop second/last, redundant "bindings for". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
Thank you for the review and for pointing this out.

I will adjust the subject accordingly and resend the patchset.
>
> Best regards,
> Krzysztof
>

