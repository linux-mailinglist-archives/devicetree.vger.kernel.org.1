Return-Path: <devicetree+bounces-305706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qdNADLv5HmpHbQAAu9opvQ
	(envelope-from <devicetree+bounces-305706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 17:41:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8831962FE3D
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 17:41:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=packett.cool header.s=key1 header.b="BFgAAH/x";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305706-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305706-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=packett.cool;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED5BB30E8D77
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 15:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482973E025E;
	Tue,  2 Jun 2026 15:04:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55123C456A
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 15:04:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780412665; cv=none; b=tMVYH/YUItyQ7ryPoQnU3tSvToemlJy4xGn4BhDYSquOk8kdRwnu4jJr4qklmnh3LwXwkWLL8DtWbckHEY9quzWou4Ye/543Y+0GdSsThplNIY4ORYi1DR4otE8OENQDDNxvr9YySEcs9+Y1drPWLAlEOHtK2argSyCgLyPw6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780412665; c=relaxed/simple;
	bh=hhLyU1suKqRemMZ3uMjdPzeVwrqN8+HIhvS6Kah3daM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aycr/ZFTeH3DWRjFFubWe4n3VtMonxHroFIyPOG82EwBzORLCQQWj/Y18u1qmgb0UeOn5hQCR7H0s/anHyrGPgkFRTpahmAynPpqmzBNfSk7PUKnYAKVrcwgAz6rcIpXq+Q0tmt09xQuVysBJBUMRR5WKBq6BAnFEV1xsn7cmos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=BFgAAH/x; arc=none smtp.client-ip=95.215.58.170
Message-ID: <809635d9-6e66-4ace-8f47-4a5a268f4f18@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1780412652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qHszsEN8PB3ekey0lEf70Vm5pm7eZsuxWjxfuJZ2+RI=;
	b=BFgAAH/xcynmV8UeSdeG6LKfgfP4MDNJFZp6R2gs0qShyj4nudTtq4HPYoLRzSCxM9Q07h
	S1Bs1hlDJFHvewK5FG2GtTvPu6On7jrT47U9dCsObZJ4qcmTaYpELOFFDop47C1nUjkdKp
	4p7LeOgwfHBZmMNNdAtTmnCfVnAO1hS2FmTw9rsw9MUR/HRiPwHhL4aZinED5PCg04yoiX
	8il1U+Dw6dtacMog5D3eXtfu0UsCocDvUxBGFAFRLycFYJaPCl0kQt/ARiekfRIXJy36bl
	lF0nMon19m8s8y3wQlA7IqUh9deLu1ALcxMtcXUaDeH3BVHO7Xbjo4pfwMyoKA==
Date: Tue, 2 Jun 2026 12:03:53 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: hamoa: Reserve low IOVA range for
 Iris
To: Bryan O'Donoghue <bod@kernel.org>, Daniel J Blueman <daniel@quora.org>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260601041336.9497-1-daniel@quora.org>
 <ecavEnqJTDXvfFykc9uJb5No7ioighpjrCdw2CFZ4c8Izr5DxpTs-606Bg7K0RtHTaOqksWivHxWQLzMBP6qow==@protonmail.internalid>
 <20260601041336.9497-2-daniel@quora.org>
 <ec7c564e-745a-4998-af9a-e9632fe063f7@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <ec7c564e-745a-4998-af9a-e9632fe063f7@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305706-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:bod@kernel.org,m:daniel@quora.org,m:vikash.garodia@oss.qualcomm.com,m:dikshita.agarwal@oss.qualcomm.com,m:abhinav.kumar@linux.dev,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[packett.cool:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8831962FE3D


On 6/2/26 7:26 AM, Bryan O'Donoghue wrote:
> On 01/06/2026 05:13, Daniel J Blueman wrote:
>> On X1-family hamoa platforms, Iris DMA below IOVA 0x25800000 (600MB)
>> triggers unhandled SMMU page faults
>
> How do we know that is a correct address - does it come from qcom 
> documentation or trial and error ? 


If you follow the Link:, you can see that it does come from qcom..

https://github.com/qualcomm-linux/kernel-topics/issues/1157#issuecomment-4458933574

This series is basically a "hotfix" version of a more complicated series:

https://lore.kernel.org/linux-media/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

that introduced an extra subnode that let the driver only use that 
restricted IOVA range for non-pixel buffers (only those actually need 
the restriction) but that resulted in a very long discussion and was 
kinda shelved because of that.. x_x


~val


