Return-Path: <devicetree+bounces-269767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGdqGvvqpGkTvwUAu9opvQ
	(envelope-from <devicetree+bounces-269767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 02:42:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E971D2573
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 02:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C4AD300BDB6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 01:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FCAF1AA1D2;
	Mon,  2 Mar 2026 01:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="uZucenRs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B483175A65
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 01:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772415736; cv=none; b=nf/6qrMRrUUHBT6Qg9TvMBzCbPaSFAkHlzkCHGeO2w3OVJB035r/rNAu4QinfUGM1ZUVOjR4hlyHgCgJGXSGMvZOQdupQzaAstyiL6qVbWrHrwkFgjhzx4twdnvbYGZfPmJLz4eS6zEaKiHJgsjNmzN8wORRRRRtmXsVthF2Tik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772415736; c=relaxed/simple;
	bh=vUOHHdyEXrPGEk8AvCusVmyfpwCI2ekAWq+T8PVRPV0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UjyNLjmPCmpDS2kL773oSC1/wVHWSUvyV3fyQvjPxJ3cG9Fhj40qgPpZ5ytlwRBh6ZSU9RZXLfZC8nLDiulsXjunhGIUAo6JBPOaLjHCQRgKaLXuDa7DjIiI3KOGJk/iK0zU2h86SJ29kXkKvtY4dFaVFY84d0PsZeb/5Vgl4iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=uZucenRs; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1772415728;
	bh=kRDQRl2R+LRWm2HggZ4Cj1vYHy4GXuClk7m0o1am4dw=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=uZucenRsptxU+zKdwuC5Eotcl/BUar8S6A1wBy8i9If0Tn8MCreMCpecpAV9BhhWz
	 ymBCSSOODDAyEesyQexD9mjhHfbJpVN2A6WkKm9XE3ZXNsgSZMAlF+lJXwlYJf7KM/
	 BSKwEbfrqLM/1rVT94E2jiwW7t3Uw/R40wq3oKXc=
X-QQ-mid: zesmtpsz8t1772415723tcf6f7fb4
X-QQ-Originating-IP: w6IfNoMZkeVc0lyzIsKr9uYgMmtkBko/Qpg4ezv6sio=
Received: from [10.2.99.140] ( [116.237.103.163])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 02 Mar 2026 09:41:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4156359098192319691
Message-ID: <B8675026D2F6DF58+946ff82a-2e2e-4abb-a3c4-26fe67c43ab8@linux.spacemit.com>
Date: Mon, 2 Mar 2026 09:41:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/8] dt-bindings: iommu: Add spacemit/t100 features
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
 Adrian Hunter <adrian.hunter@intel.com>, James Clark
 <james.clark@linaro.org>, Yixun Lan <dlan@kernel.org>,
 Jingyu Li <joey.li@spacemit.com>, Zong Li <zong.li@sifive.com>,
 Yaxing Guo <guoyaxing@bosc.ac.cn>, iommu@lists.linux.dev,
 linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1772289741.git.lv.zheng@linux.spacemit.com>
 <D8CE6E5B1001D797+a6f36da0272ac18fff2a992976b1defc3bb01af6.1772289741.git.lv.zheng@linux.spacemit.com>
 <177231592262.848068.18080490567217057666@spud>
 <CAB7A310CE95B577+5f5c0825-25dd-4035-9316-db940c00216b@linux.spacemit.com>
 <20260301-acclimate-suburb-fc46da7e0cea@spud>
Content-Language: en-US
From: Lv Zheng <lv.zheng@linux.spacemit.com>
In-Reply-To: <20260301-acclimate-suburb-fc46da7e0cea@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz5b-1
X-QQ-XMAILINFO: OHTF91J1Rz8hwOyR4d5IbQ5FDyEf9XbLsk0HrNrQMvvx5MUzGCR4RjUR
	3Am8X1Jc5PmZ5KJCzYqJsL2zYh70gSU4QOPOg/vMRZhSHmxus5crOHJwT+pnl1LpkVKsUN3
	1Su/CHWinAVcYDF1ANwpkKtZT74Q1eDzipNKzjuCCdB/1q4l3siOjF9wVe206gcVrZr5Egm
	bkaBo9jqRIZL/mhf8OoWP4ebKNBApTD1MeUi5ZVnzYIWrDwWd7ZTlxX8wG+7Zgw/t7Ntdjm
	fS7/BLq+PH1YH2ztrfWRjW0A2ESDo98nGcd5JzGwIYGXI9gaRoY9Z7N8b4IXI9BfHY7I9iv
	qGeornxvyi70MDOWWIS6uhcpfS9DGoTOdrjws7fZkaeZiHUnDBAHYGN00mwBUr6JxleTdXt
	VweVrA18QJXnhHBCXQ3Fm2Z182UtDnr+roOAHb40ZrGFcMdB/C+OdepKVViXcPEhW7+XC8O
	MhiaHxcEfatxjd9MY0SLiDx2nFwqSWOMux5npNG4MKXM4mwZK83E2p12JTj/aJkzcXI4y56
	z344ccQxn/vfDFwsq8/IP7fwlrMX50eTtopGoK1DO/jC4utbSE/NSX+Y4tZhbf7LncliWKi
	FwtZUwUbdsz/5ZT5TxxGOgtkYf+hTzqw6s8eovHoQE6tiDLj0LIA8InWnpHDsqXzSqjdhZ5
	fBfrpxsCd6dka+GeMo1ciII2miL6pf7fHm9UBPeLhYHfoihZjKIH8ZxlgbLn0wSFcx18uDP
	IBfY0Hkjb1A0o62ub8QrmjBUcAWjQJmiUZjT2lS5AtNFm/Ik5TM4AXGmdgR+dfSzLcbQW4W
	JU79et+EzgYWSErSlS1FpkvytCoMoPEEzeFJaJE0TFDHsuJnCoq1yjWAXobbOb3+auO4bqZ
	JQ261cRKvaKzEDAYaG+Kb4xRwzfcmhvgtaSTsrNJm8pZBMhDPvI7NyEFKacxqREzJHLZ5oQ
	og4k6lNXBGzkamnkoNu2xjjOGf6HvTME5/LCAGetmFqLuBIJeGZw+TdAF3h/UgbTTKV5uvi
	weMuAMniOFJZsqBNN9
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269767-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[spacemit.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FORGED_MUA_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lv.zheng@linux.spacemit.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.spacemit.com:mid,linux.spacemit.com:dkim]
X-Rspamd-Queue-Id: 28E971D2573
X-Rspamd-Action: no action

On 3/1/2026 10:01 PM, Conor Dooley wrote:
> On Sun, Mar 01, 2026 at 11:48:37AM +0800, Lv Zheng wrote:
>> On 3/1/2026 5:58 AM, Conor Dooley wrote:
>>> On Sat, 28 Feb 2026 22:44:49 +0800, Lv Zheng <lv.zheng@linux.spacemit.com> wrote:
>>>> Adds device tree bindings for SpacemiT T100 specific features by
>>>> introducing spacemit,t100 compatible. T100 contains distributed IOATCs,
>>>> each of which exposes pmiv interrupt.
>>>>
>>>> Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
>>>> Signed-off-by: Jingyu Li <joey.li@spacemit.com>
>>>
>>> Patch content here is fine, but the signoff chain on this patch is not
>>> right. What did Jingyu do? You're author and submitter so either Jingyu
>>> did nothing and should be removed, or is a co-developer which requires
>>> attribution via the co-developed-by tag. If the latter, their signoff
>>> should be before yours (the submitter is always last).
>>>
>>> pw-bot: changes-requested
>>
>> She is responsible for the common HPM part, and I just gave my comments to
>> help to improve the quality of that implementation.
>> I was just focusing on enabling and maintaining the T100 specific features.
>>
>> Our patches will go each other's local repository, leaving such tracks. That
>> means the patch from me is Reviewed-and-tested-by her.
>> And I'm responsible for sending the whole patchset for upstreaming.
> 
> Then you need to either fix your email setup (because it's not inserting
> From: Jingyu Li <joey.li@spacemit.com>) so that she is marked as the
> author or actually set her to the author in git if you haven't.
> Currently it looks like this when applied:
> commit 872978c875731be43e84bec38798cb8ecd42b7a0
> Author: Lv Zheng <lv.zheng@linux.spacemit.com>
> Date:   Sat Feb 28 22:44:49 2026 +0800
> 
>      dt-bindings: iommu: Add spacemit/t100 features
>      
>      Adds device tree bindings for SpacemiT T100 specific features by
>      introducing spacemit,t100 compatible. T100 contains distributed IOATCs,
>      each of which exposes pmiv interrupt.
>      
>      Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
>      Signed-off-by: Jingyu Li <joey.li@spacemit.com>
> 
> In both cases, you need to change the order of signoffs so that yours is
> last as the submitter.

OK.

BTW, since this version of this patch has been worked out all due your 
constructive feedback and suggestions. Now that it has functionally 
converged to what the community requested, can I add "Reviewed-by: Conor 
Dooley <conor@kernel.org>" for its next version?

Best regards,
Lv


