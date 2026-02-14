Return-Path: <devicetree+bounces-265511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id NFNeHJolkGkmWgEAu9opvQ
	(envelope-from <devicetree+bounces-265511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:34:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0980813B4EB
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:34:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 336333006801
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 07:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493D527A107;
	Sat, 14 Feb 2026 07:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=kingxukai@zohomail.com header.b="Iaq3DiBl"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-o92.zoho.com (sender4-pp-o92.zoho.com [136.143.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9C226738D;
	Sat, 14 Feb 2026 07:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.92
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771054487; cv=pass; b=qlpXnTKVEZDecrv1gaSyvyZWWSBo8En4pXnEErSZHf7sQczHHYgrKC+MQ9zO7/cmFwJhZE4mjmq6EV/9kMUAO7QAZddkoKuaYil3PXm3bwZdw/85kQPtFifx4Muz6d2gTJr5bszHujfwqoJKzEkdtFUYyVEF5swBf6XB4umiroc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771054487; c=relaxed/simple;
	bh=DnrLXzvN5HfGx/gEyT2ON4wouAHp3LTcsPAVqhwYOCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g4Tu7psUiSRoVc3jDRJAnLmm6uBAbqW3d7X08IZejTEberD/6ElsRpouv00eoEddGQUPRtRgDQgExtzqNIgHkotuDyYFhA1UzWHSoW0iX0+Zx24xPle7q2JdN49NXMGNmnq70T2Ox6skxr3m6HED3abALPsiihNEYlBQqUD4CkE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=kingxukai@zohomail.com header.b=Iaq3DiBl; arc=pass smtp.client-ip=136.143.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1771054470; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=O3xkBsmvUUGVE6MPJ2x4vGD3WvxiXEtYjPP08hVChjzMP9gA128Y5voKgQRvYHxS+GCOvmORFgK3bzDC8/PIxGhOy7dnYjGhcHUtA+s7SeZm5LR3/C43hbcckLlvThLqxFoeOGK2g5aZjexYtcaPuS0naqyh84Iw9iLh7CC6fco=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1771054470; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pM6bTMNAFnyU/zKrNO+5TSixuYCPTcb6KSxrsSYYe3E=; 
	b=DL0DFa709rlvu92eCWYUyZ61m/2OuHbuwubEUAPfWkxuWMDuNyMfL+j6WXVFzVlbNmm0SV/35cj+uYtDNFzB42Tf3jeTnD22d2BCsGgZ8/L0q2I7SMdOf1zwMx4zXV3DphRJf7rLt1/jaLsEA3fHUkq+MHR20fO0w5GmD9EhnjM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=kingxukai@zohomail.com;
	dmarc=pass header.from=<kingxukai@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1771054470;
	s=zm2022; d=zohomail.com; i=kingxukai@zohomail.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=pM6bTMNAFnyU/zKrNO+5TSixuYCPTcb6KSxrsSYYe3E=;
	b=Iaq3DiBl8+D9WwNSCmlpskHtxMvJnkQLKEwKA1ZkJLSHz8/ciy8pXUzZwKqnAglF
	N2G5kIWBGAMVI+OdGqOEmrteHBmo3SlVhIiruIE2xVDqZeqgcqUUHOwHakI4Fc9skWb
	RbUxuhVJTbICUHkG6v1y8COucLYH3dhkBqWqY0Fw=
Received: by mx.zohomail.com with SMTPS id 1771054462340716.7059044973032;
	Fri, 13 Feb 2026 23:34:22 -0800 (PST)
Message-ID: <283d631f-7cc6-4ec6-9946-5e2120625150@zohomail.com>
Date: Sat, 14 Feb 2026 15:34:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/3] riscv: canaan: Add support for K230 clock
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Samuel Holland <samuel.holland@sifive.com>,
 Troy Mitchell <TroyMitchell988@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20260116-b4-k230-clk-v10-0-de59033c5d30@zohomail.com>
 <aYNwmqEjvfAahGA+@duge-virtual-machine>
 <f97dbaa3-b6d6-4dd2-aab9-f24a68c4adfe@zohomail.com>
 <aZAXJOHqrhKh8kd5@duge-virtual-machine>
From: Xukai Wang <kingxukai@zohomail.com>
Content-Language: en-US
In-Reply-To: <aZAXJOHqrhKh8kd5@duge-virtual-machine>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Feedback-ID: rr0801122753ccd28fa625a4e6683ab79700006a9588579c34442f57bbc5c1a8a289cc5692f38152f1735391:zu0801122727f5c2f7473ee10d47df4dbc000007157993794f1914e991f67fb45e4e3edd0e5b302aced720c7:rf0801122cef56d2341015e9602836b5bb000090f4beeda16d79f5273a2d6adc11df22df92fb15acd57be80f044d50f053:ZohoMail
X-ZohoMailClient: External
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[zohomail.com,reject];
	R_DKIM_ALLOW(-0.20)[zohomail.com:s=zm2022];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265511-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,sifive.com,gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kingxukai@zohomail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[zohomail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,zohomail.com:mid,zohomail.com:dkim]
X-Rspamd-Queue-Id: 0980813B4EB
X-Rspamd-Action: no action


On 2026/2/14 14:33, Jiayu Du wrote:
> On Sat, Feb 14, 2026 at 12:37:24AM +0800, Xukai Wang wrote:
>> On 2026/2/5 00:15, Jiayu Du wrote:
>>> On Fri, Jan 16, 2026 at 09:26:18PM +0800, Xukai Wang wrote:
>>>> This patch series adds clock controller support for the Canaan Kendryte
>>>> K230 SoC. The K230 SoC includes an external 24MHz OSC, 4 internal
>>>> PLLs and an external pulse input, with the controller managing these
>>>> sources and their derived clocks.
>>>  
>>> Hi, Xukai. Currently, the k230 initial series and the patch 3 of the
>>> pinctrl series has been in the linux next. So if possible, you need
>>> to rebase your clock series onto the latest linux-next.
>>>
>>> Then I will proceed with the development based on your v11 of the
>>> clock series.
>> I've rebased my patch series to `linux-next` (20260212). I noticed that
>> the patch which updated the `k230.dtsi` format has been merged into
>> `linux-next`.
>>
>> Consequently, I've updated the `prerequisite-patch-id` for my series
>> from `deda3c472f0000ffd40cddd7cf6d3b5e2d7da7dc` [1] to
>> `9a2d01f55574b538dad572e193f81c44661f0853` [2]. Is this change correct?
> Junhui Liu's commit `8cfdbd5e207d434a6e924eb81092874177f97536: riscv: dts:
> canaan: k230: Add b ISA extension`, also modified k230.dtsi. I'm not
> sure if you noticed this.
>
So, should I use `8cfdbd5e207d434a6e924eb81092874177f97536` as the
`prerequisite-patch-id` instead of
`9a2d01f55574b538dad572e193f81c44661f0853`?
>> Link:
>> https://lore.kernel.org/linux-clk/tencent_F76EB8D731C521C18D5D7C4F8229DAA58E08@qq.com/
>> [1]
>> Link:
>> https://lore.kernel.org/linux-devicetree/20251227092355.42825-1-jiayu.riscv@isrc.iscas.ac.cn/
>> [2]
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv

