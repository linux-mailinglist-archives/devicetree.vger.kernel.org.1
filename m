Return-Path: <devicetree+bounces-269467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLWtMktJomkp1gQAu9opvQ
	(envelope-from <devicetree+bounces-269467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:47:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3211A1BFC77
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1B903048551
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29BB2FDC26;
	Sat, 28 Feb 2026 01:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sin5BcY6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7502A19D8A8
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772243254; cv=none; b=Y3zy4OCbdPSqTIFgRCCCkzmDvd6AuEqHTedIjQ2e5xO6h+1vAOtOjtEz6H1a4HgT0fyqMLZDs1rACnZoue85Gjgi6SYuGSgt+ArumkcTHrBG5CJ/+tgtw2Rh+malO9zsOTmZo/CVtNrcyLVrGW8fpa+XPVYPxbWneZHbGhRM+p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772243254; c=relaxed/simple;
	bh=kzLke4p4CBWVI/C3pxjA5vKdqdSS/ijW2W88xu76WA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fxFgKukxaQzoZcfVqRf4S+I0kBozAQ8/bo7DITfEd5fNCXQUp3eEPubyMcdtVfxr1Qwyck5pnvE6KPdwF3UutqERYa6X2uAge9jVaCy9sS5B2Q0FtNJf4c0USUTe5tHWeTfEy1JHFTdiScAUCdMh0OFofvlxtw5X8Fhfdx+45fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sin5BcY6; arc=none smtp.client-ip=74.125.82.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2bdca815fdfso1399803eec.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772243252; x=1772848052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYm62l7h9IssC8pYlAqoKgXtyHZXXq6P9yH72X8r6sw=;
        b=Sin5BcY6Dnfs2uHgnQGdY1/M1VQPWh94AD06GMcgbWaehAw8mrsiJJKy4WRwUQn4Wz
         GvIlhjfJ/92t+8oU3VxblOzvFXCVu5YmeVI6B2A9xVzkIpzluU0kjyDF5UQZysvfrMnd
         nLvWru5EApw1Cr1ammWgbUEmk5sbj6GKyBEvmicUYEWNFml7lMxDBD1AXOVxGAOegYp1
         kqQXhiH415CkadGI4IRD9xDQApsOTIPBh48IvljKK4JPvjre/xYyEL0WVlWwt11hnYHC
         4Pi2KL0c5cA27y6FxfvnrqEAXc9C9vttYgJXueuflWrPlIsj4AlvNYEvexJzf4A19/gt
         uJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772243252; x=1772848052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nYm62l7h9IssC8pYlAqoKgXtyHZXXq6P9yH72X8r6sw=;
        b=L1bf3FZQIIqo3erPH0Xz4M1MVt11Iv/Z4uiv3ckqhOegQtduc/R3svZcQSoG9wVqN4
         I7nnNFf0W+qkcHsrbI0ctlXhjcGocUtwpWNJBp8xEGYREzQR8fdCbqucxW9wbYE1DmRx
         /BHbzIicOs9PprVtz5t4+ofYm+V12lodIkbyxFHIlFZa7d2EZaP+k/lgVOZ/+jPsaBUM
         giGAk5vnCE2+maZFG2mch3Vek1YoCSExcglQkTReNYrU+BtKvfC57KI3juZ3E77lk+0/
         RWu3QCu8geeinVq0CFMlMT+JvC5buPz1apgyI61tahcw4likHf5CPR6EOrW0Z0jsfmft
         N35g==
X-Forwarded-Encrypted: i=1; AJvYcCX2A5BRkdUt2fD/DRsISaulX0flJWu8YUlBTf1k6Q3TF74WKmTOU1h0HiKxtquKmd3Q9pyOs8tva3VE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt8Pj3kbCJGjasaRAUCAqfmI397vtQnsR8Hk05X1F7TnZbnvZ0
	TBQ+7MN92+RjrI5uWewaieiehELkFR/KSFBOJjpNK551o43UuF7FJSLD
X-Gm-Gg: ATEYQzxmgtLXsTHPWtRwjK1nydAnm046SQ0bN9DkGYXxCqc6BOs8/W86UWHls1sJ4qH
	zraOvRyefOHxscLVBfRi1VMVHSRcVPsPod3bdlmOweppno1ObY5lJpgh4lhr4nCkfo6oQfLGvKw
	3NTmuoXWG3Fe9zpTni9/d2hOOpchzLz5nD0R9ryR2dpJx68jGprHR58VBAcdDusDwy3AxNlI8m0
	ssKsyqmC2Oz93cMDZSIyY/C7KKmWL/7di1I7BiEszgTmakP9U2bTInC38SiKbU7VJTVMSgi4Tk2
	LX5WcPyeOlcsjCNkSPNXF8LDc9jdUlDFO8CGaIShyqsAiuqcNJ1IKXadtVzf3PAoXss1NjSMqWX
	wDEfyEZe9D+pO86kjq7vgZ1a7ZAp6gnI1v8SHj7KQuczr5kjxMtIFIacQ/gKR/hCLH2xQoAUBI1
	JG1yX8d01XTmE9FilBvNfIQnHFfZ2SM/yQVfCHqyMZuGUkHNAVgoL/DyftgZImfiv4qkf/J5Od
X-Received: by 2002:a05:7022:20d:b0:121:9f05:7e4c with SMTP id a92af1059eb24-1278fc5c3demr2053905c88.16.1772243252369;
        Fri, 27 Feb 2026 17:47:32 -0800 (PST)
Received: from arch.localdomain ([149.34.251.245])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12789a43a18sm7734470c88.13.2026.02.27.17.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 17:47:32 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: jerrysteve1101@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	jernej.skrabec@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	mripard@kernel.org,
	robh@kernel.org,
	samuel@sholland.org,
	wens@kernel.org
Subject: Re: [PATCH v2 0/3] board: sunxi: Add TaiqiCat (TQC) A01
Date: Sat, 28 Feb 2026 09:47:24 +0800
Message-ID: <20260228014726.258796-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227155801.211376-1-jerrysteve1101@gmail.com>
References: <20260227155801.211376-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,lists.linux.dev,sholland.org];
	URIBL_MULTI_FAIL(0.00)[archive.org:server fail,sea.lore.kernel.org:server fail];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269467-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3211A1BFC77
X-Rspamd-Action: no action

> This series adds support for the TaiqiCat (TQC) A01 — 
> a set-top box based on the Allwinner H6 SoC. 
> Originally released by Ultrapower(UQSoft) as a blockchain terminal, 
> the device has been discontinued and is no longer officially
> supported.
>   
>   https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html

My apologies for not including the Changes section.

Changes in v2:                                                                                                                                                                         
- Replace "UQSoft" with "Ultrapower", and add relevant explanations.
- Link to v1: https://lore.kernel.org/all/20260226084850.417731-1-jerrysteve1101@gmail.com

> 
> Jun Yan (3):
>   dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co.,
>     Ltd.
>   dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
>   arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
>  4 files changed, 369 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts
> 
> -- 
> 2.53.0



