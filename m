Return-Path: <devicetree+bounces-289524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKFWEd6L6Wn2cwIAu9opvQ
	(envelope-from <devicetree+bounces-289524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 05:02:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D2044C6DF
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 05:02:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C36803007AF5
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 03:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E273C9EE9;
	Thu, 23 Apr 2026 03:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="OwYGU869"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC0F3C6606;
	Thu, 23 Apr 2026 03:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776913340; cv=none; b=I99FgVt+Ew10wxRbm1nOA8EvxsYp8a6B6lRzZWg3d+aGAnEfA+EqUcHvkzTf64j6VMmqe5VCWsRLC8cTuhw5PEXh3Fgia98AHtL5weZOysk1KeuMwQSzYduw7zv+WzTeOjBdCxhI0QJFfheXirPtBr8itzd3rveOxu4CTGyEtuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776913340; c=relaxed/simple;
	bh=lLlIP0jPgYGLQzrxBdIe3Ph9dd1xygD2miCaAl1qIPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gZvTFduMGjuSkIDcFEEtwhZ74AIa4akef+hsMPJEYXgWNm+f6++oIaRzuCWX82OgDwks8c7pcN17j43q7gF8SgPPvc0X+fC3zcZkwj+8ubJGFLBzWH6zfoY0pq9LZYOfCqvpb70kFRh7Wszb4xPT8ZbIFlVNZnlrYE7PtMBJov0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=OwYGU869; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 50804114A93;
	Thu, 23 Apr 2026 05:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1776913337;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=lLlIP0jPgYGLQzrxBdIe3Ph9dd1xygD2miCaAl1qIPI=;
	b=OwYGU869bg+DL4hfEC+w4PW1E8Ho9x8OqCvekLC17vWbf1T88rQ5yYa8IwVvJ6VMbOGM2M
	i7EkZyjCoyIWegNIVoFJD65ipEZcvIUCUIPE8uhvW21+S8L07aytHD8AXpbCeBuVS/0RDA
	QZc88dzxN58jfw0tUQ4ZZzgJuz33f8yMP2qwxDlQHmNf3GRVgUCB3USyLArPBZocAXBJSQ
	WCv0hk3zGwHFkdfLU9PDy2k4C5k74YdFseopa6WAUEzhfvVGNQGTy25+1jUrT6LsoAPbEb
	8/vmtX/RNA3Qu4ZucGo0jqxmHzsY6uHkhw1n/OfB4um3QMrHLuD4RaYXEYn+wQ==
Message-ID: <39ac804e-af26-44be-b8f4-aeda68833ba4@nabladev.com>
Date: Wed, 22 Apr 2026 21:32:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] ASoC: fsl_sai: Add RX/TX BCLK swap support
To: linux-sound@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Rob Herring <robh@kernel.org>,
 Shengjiu Wang <shengjiu.wang@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Xiubo Li <Xiubo.Lee@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
References: <20260404183547.46509-1-marex@nabladev.com>
 <20260404183547.46509-2-marex@nabladev.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260404183547.46509-2-marex@nabladev.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289524-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nabladev.com:dkim,nabladev.com:mid]
X-Rspamd-Queue-Id: 82D2044C6DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/4/26 8:35 PM, Marek Vasut wrote:
> Add support for setting the Bit Clock Swap bit in CR2 register
> via new "fsl,sai-bit-clock-swap" DT property. This bit swaps the
> bit clock used by the transmitter or receiver in asynchronous mode,
> i.e. makes transmitter use RX_BCLK and TX_SYNC, and vice versa,
> makes receiver use TX_BCLK and RX_SYNC.
Is there anything left over to do with this patch ?

