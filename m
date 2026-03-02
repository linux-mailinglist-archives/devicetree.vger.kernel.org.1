Return-Path: <devicetree+bounces-270129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wECyM3m7pWnNFQAAu9opvQ
	(envelope-from <devicetree+bounces-270129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:31:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABCB1DCE0B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7397A30AF5A6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7AA3CC9EC;
	Mon,  2 Mar 2026 16:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NybzX7s7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0963093B2
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468726; cv=none; b=rznh+9nzEBgIqO6MCGanwpskNie2c6c5Gft5Thg64UaF/0jC0KaCILFf3fm8KgCaFSeJZofnHFGUYVAlx7u128Y8gocaJ7lH07mlVoE4/Ah/o6goCWAErG5qTIEGv0bre0ibf10LpiHkjFSIq1YIab3mUfb2GRYt/y0NWIfokIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468726; c=relaxed/simple;
	bh=w0JfEAL8UQJ6mwvoIym34kQuZstRGM9t3S3tUgFM7p8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uqpFvhSEArVd0G1KuRTdQXzvZPb5yh5YpovdYDkxUNQhLfKQkaVF6VbPnDa2uHEK9u6nieGWrRsyiqibbW4Q/rrt5MDCIU3W/WYyT2gRjvajE8RG6QmuPgpeu2MWTXvkPkrz6w8V4rkyYLJxtkQIDDsuFO70rvIJYPYne1GSNvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NybzX7s7; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b9b1900bso691371f8f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772468724; x=1773073524; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zsRF/yJZ5HdWuSiQ8L7Xgp4L8TnqAkrXaWtbBnRsnSw=;
        b=NybzX7s7FTuQY3g/l0A65lOcwxaR2inYaNu8p9A3zaC0tf9hayJC6WzIb88ea8wx6I
         WJnkyovdWgzi8cdVZHSNLuErCv/hiAT+gmPVz1AvOxxUbADQ+44TWD+whbw/xiYgWcYk
         CrS+l47SQid4pDb/4GFAahuIcZqojAsT7rHc/GPNeRiJpbzrDY9GuH6hNW/RZiHd46/+
         8mv74ZI8ZEz5Gol6HjzoxqVDA3jO4O8DC0UzEp5iHXLO2isiIDvzZG7/xwS1o6ICPVzY
         gE69PrqTHuFPhzTU+Gb9drGfmMSS8eb8EhusyvkIDwxOP5JHn0x4in5ZQiFrhYjGfwO6
         f/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772468724; x=1773073524;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zsRF/yJZ5HdWuSiQ8L7Xgp4L8TnqAkrXaWtbBnRsnSw=;
        b=evqfNsdtdtrJzx7vjkJ9rjKc36Op1iX9e85bAN+lON0V+V5CB6F0sWDCz20ZI8qgGL
         Kow2sJps4vc6LKAolDpSu3OcXAWyM6X/r+9tnSbi68RE1StUULH3u65Lz9fz8zhxrGst
         /fV2zR7r8WXqVCFdfegSz4x7sCoBwfbcbyWLJrR8AA+flx6ztWgrpV7D4/LKxAu+i6cg
         SFDQvfPs/9U5M/R/6hDBzJZDMq2V7njxd7OAvqXCDTsOYX4KaL9x7cnRaw2TlmCJH6vz
         KwLz1I4hOh7mMnygkPmPFEM2KrRhESgfEsq+FqnnxHlB+66HQQNQKeQy1qTKMJfQtEjF
         5ZFw==
X-Forwarded-Encrypted: i=1; AJvYcCV5KwgjThnLZ8PFW9FghdMiWZojrEgbI1WYyLO3s6KorS1O6xQR6+EgV3kGhZTZysUObzEYcYnYKpzm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnq97eueEmFrZQGRDpRDZEaH4/XoqLgwNgffBHjYG2b0gxE0mp
	F56QGDuLVn1G/CskqTPF1E6ku/eG7Kgb6HlRnNzW4A8r+iWeNzNGR8PVo+sOgEhX4VA=
X-Gm-Gg: ATEYQzz0wVPRxK61ia7QpvQUmOrHQhPBNfk9dkOQEA4YGbz0B8DHbKoTZ5zvw0G8rYk
	X91Jz5VQhrVC2poNVyhu6vJnUE9tmz5jyRXojz1ovvbPtxfrG/tNduFN9aioSwiczzRkJzp3tVW
	OpmztANIaPCGKHx+DIaNezHMsdEcg3JND23Phm3fMJmkWzNSp3Qd5Q2XVhPP28hDJDDutGw5QFz
	N5EyoscvlryqgJP4wP2661+ayjZr49U3mNwygbz4gvnsM/n/85qdFVsBhEOBLRvjaDX7zTcQVSW
	e0l+s/XF4Y8cX4JLAwYpwiRVqPB1GEDPRikWRsYQjuDEZTBeIDpuRTcl5hVJyqwGhmSk36Ul4m3
	wdW+Zf0k/byRAIVnidrYmKqdyYrr/kklnfRqCbyx0jEaVM8ea4lKRnIWcLL3I0vuNqy1HPAEvWw
	+Pz+jRAxY6qVuY+Itxl3p1A8z4V5SZ8S4gemgDTfLTQlaS/XI=
X-Received: by 2002:a05:6000:1acb:b0:437:6629:9b82 with SMTP id ffacd0b85a97d-4399de3aacfmr21667465f8f.52.1772468724121;
        Mon, 02 Mar 2026 08:25:24 -0800 (PST)
Received: from [172.19.170.194] ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ba2a5970sm5477752f8f.33.2026.03.02.08.25.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:25:23 -0800 (PST)
Message-ID: <3b30df38-3a68-4d1b-9e61-77a80d3fe8a2@tuxon.dev>
Date: Mon, 2 Mar 2026 18:25:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 11/15] PCI: rzg3s-host: Add PCIe Gen3 (8.0 GT/s) link
 speed support
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260227153236.55988-1-john.madieu.xa@bp.renesas.com>
 <20260227153236.55988-12-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227153236.55988-12-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7ABCB1DCE0B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270129-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi, John,

Something got wrong with the patch description for this version. See below.

On 2/27/26 17:32, John Madieu wrote:
> Extend the link speed configuration to support Gen3 (8.0 GT/s) in
> additionvto Gen2 (5.0 GT/s). This is required for RZ/G3E PCIe host

s/additionvto/addition to

> support, which is Gen3 capable.
> 
> Instead of relying on DT max-link-speed for configuration, read the
> hardware capabilities from the PCI_EXP_LNKCAP register to determine the
> maximumvsupported speed. The DT max-link-speed property is now only used

s/maximumvsupported/maximum supported

> as anvoptional limit when explicitly specified, which aligns with PCIe

s/anvoptional/an optional

> subsystemvexpectations.

s/subsystemvexpectations/subsystem expectations

Thank you,
Claudiu

> 
> Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

