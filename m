Return-Path: <devicetree+bounces-265860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOWpKPU3k2mV2gEAu9opvQ
	(envelope-from <devicetree+bounces-265860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A15145982
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 50A9A300BE06
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6ED329E5A;
	Mon, 16 Feb 2026 15:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KA8sHyoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF999328B58
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771255575; cv=none; b=WO7sxVNk96gpqmRNSBy8zyfDoymENZ4fmfnmU3LD8R8DOIQmViEK/8O7UeTOPidYmEGHpSc2BD7FNlXS1i6lHq24cvYS6kqm9zzNF8w0/zShDs5rN/SiZjCm6taRuk6/lXHFSW6HKI6U9nRDRuA7BeGszpNYnXPT5430/eTchRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771255575; c=relaxed/simple;
	bh=IvIb1zg+Lc89a3qeO65yqaxHb3TlmL8e7T9TqiXkOBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NYrIKGD+wsEukYU2WDfs4pQU5JyGK4yU+BFvsLS2bW3BDrihYLIkb/CdGjgd+GFbF2Dty6PSmpRY2Qn3GqJYmQoJf69dtwPVceDC3Ds4RJoEJHE8afM/09iEwRokb0B0EW7yVSqOkgCU1Cw0CtpIVMjATj8cQmx9geekeNqFl90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KA8sHyoU; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a95bfdb31eso14104515ad.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 07:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771255572; x=1771860372; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0L0LRV69FMCCwapk/tKlx7ALfhm9oqfw2MhnEs9iHQc=;
        b=KA8sHyoU2vgQXF5nPYK6qbpTps8AjJaEY4PTlVTVfuGyZMAOEcT4gaVCU9Pk8qtGIL
         7SnJ5ovdq96PNdKqUnxAfFZ/Nme+iwrzSYJaq6BAcM3CzdXpX58iBtA93KpWfF+p/zCB
         MvEntmASZ5SGiFN5/U/bA+zjOigH7MxUrlVGZqWri2djVRmT40qXB9JDgZPrgCg8l3K2
         BHoSL6yp2j2I6pRmlKFoRO/XX0JT7ZJPkyQMn9qMpLGfKWwNfLt770s6EXvYRhtGmrs5
         hhjZCOuW2NQoWwGxIpbDM4MZdK4wwE+pLQ9nc8NkwQ3XwqU1yU7dRQ0G8bHQ0OtCLip8
         7QkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771255572; x=1771860372;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0L0LRV69FMCCwapk/tKlx7ALfhm9oqfw2MhnEs9iHQc=;
        b=vpCs5absIUpuvJpCHOmp6S3GGmySjnSbTKSKILK0iia9T5mdDFGgD6GilECuA5vbaa
         roQ8/ucliM+2OxvAZUUkCfhDbLMwubanzD/0fc3aMz1t2id59pMFpXkkB9NOgsdkGOy9
         NRuPUbauNf3iZCUozwF1HyRF6dnomCKjGYP4zeOWYtrs6BbRvidAwZDqHePB7l+o8hwt
         8ck//MgUYjecKOiBZtV5ia+JUt/vHYudK0QLi34ZNXeVvagLNJUndeRu2v/xdAucxI08
         19Ax+DxtIp+QZnbYmZdebW3d2BfA1q3FrO8V6bS3ohkEwQ7D4ysiTmqxw6rlOdI6FdcO
         ojfA==
X-Forwarded-Encrypted: i=1; AJvYcCWICJtFdaoYn/kNrEdhhsbdmgEbkIXzvz2fk/mGqHZ1vt/FpY72bUMTKH97G24xFJsXkLVkRFjTq5t2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy77U6udymGA+fO+028JLoGG9KxvESrtyJf5TzzQsi/WBYV+rxB
	BMtrkqaR6jmh4D5OxeanOR//qpRpirYXANXQn65CjlBLaewPI66D+tol
X-Gm-Gg: AZuq6aIiHDJEzap3pdTF31YPA3R0jbrj6pkTe3l/tbWUPP97gWlpLpRsnrMsnyCwgb3
	AvjyxfhqUJshXXz/KIeFCmGtMd7QHG5tzqEYzzcL9Bv3dXfi+Tr0SqgX2n7BX4rvTYULNV+QGMr
	pHbru/qrH27fihr09HAo1XuJt4V5LaQpT/XB7EyxbsTQ7pVUY/8gyUUCBBE5r14xyj0eLjr5cl+
	6dVBHVWUnc0juDrd4jgoFpDPdqjRl7qb9yQMxdkbER/vHyKdyFD8Rljo+hPD6BCWK3TtDFtud+X
	FMY811Yl0CrbrZWiNvGk4PEc7foBkjYpPH+NNlmZrmAznkEWyrXQ9yzdU5LWD5CDnl8hW78ZwLW
	SZSP31f7LEX/S/I0EzBg6CrGoSUCbayEFO+nBInniC/juZ7dMItKQjup1vT3mRVvdxucb+h6Dig
	3S+tRJGtRcFOO+Zq6T4gffgyNrOVdCRGEQRDZR
X-Received: by 2002:a17:903:1a44:b0:2a9:62f1:3fbb with SMTP id d9443c01a7336-2ab505b61bbmr114047525ad.37.1771255572099;
        Mon, 16 Feb 2026 07:26:12 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1ace5e1asm72375535ad.92.2026.02.16.07.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 07:26:11 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 16 Feb 2026 07:26:10 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: andrew@codeconstruct.com.au, avifishman70@gmail.com,
	tali.perry1@gmail.com, wim@linux-watchdog.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, venture@google.com,
	yuenn@google.com, benjaminfair@google.com, joel@jms.id.au,
	openbmc@lists.ozlabs.org, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] watchdog: npcm: Add reset status support
Message-ID: <21707662-d2b3-4742-9b0a-c964225e6ea4@roeck-us.net>
References: <20260210133843.1078463-1-tmaimon77@gmail.com>
 <20260210133843.1078463-3-tmaimon77@gmail.com>
 <e946baf7-4c3e-42a6-9cd2-a4b917ce09bf@roeck-us.net>
 <CAP6Zq1gGVB+hk+=xSRyPgddq07F_B+oE-dc246JRW2_waoe_bg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP6Zq1gGVB+hk+=xSRyPgddq07F_B+oE-dc246JRW2_waoe_bg@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265860-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,gmail.com,linux-watchdog.org,kernel.org,google.com,jms.id.au,lists.ozlabs.org,vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0A15145982
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 04:30:46PM +0200, Tomer Maimon wrote:
> Hi Guenter,
> 
> Thanks for your review.
> 
> From your comments and from Krzysztof’s earlier feedback, I understand that
> I cannot use Device Tree properties to describe software behavior, and DT
> should only describe hardware.
> 
> Given that, I am trying to understand what would be the correct upstream
> way to expose the different reset causes that the GCR reports. The watchdog
> framework provides only a few standardized bootstatus flags, and I would
> like to check whether it is acceptable to map the different reset causes
> into these existing flags.
> 
> For example, conceptually:
> 
>    - WDIOF_CARDRESET → power‑on reset
>    - WDIOF_OVERHEAT → core reset
>    - WDIOF_FANFAULT → watchdog reset
>    - WDIOF_EXTERN1 → SW0 reset
>    - WDIOF_EXTERN2 → SW1 reset
>    - WDIOF_POWERUNDER → SW2 reset
>    - WDIOF_POWEROVER → SW3 reset
> 
> Is such a mapping acceptable?
> 

Ok with me as long as it is well documented (i.e., in
Documentation/watchdog/npcm_wdt.rst or similar).

Guenter

