Return-Path: <devicetree+bounces-269535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAcQNfbPomnW5gQAu9opvQ
	(envelope-from <devicetree+bounces-269535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:22:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C701C2899
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E72B630101F3
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1364B42DFF2;
	Sat, 28 Feb 2026 11:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ywOq+IXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93754423A7F
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772277749; cv=none; b=DukTDu/MmFAyeJ/GCTfnEDLHuwU9N5xW+pCeRMiGI9ZXBrByaaG4GgbKIju4q0H3zHq/AHRXo2SLrl8TzCucYMqFg27W3pzaP/6PqtCnstjmHRGp+6FfkU+63yMbHrWlfYxYdnyX7wSp14P781XpmS9gKPBzraIKWpo34eoDjlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772277749; c=relaxed/simple;
	bh=C+sfOTthVWYAsmxzvHSDXHnyBjqjv5fm9/IRCp46bzU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X9aGWjrKE5Ww7GQgjQLB/wpYza2NKP0azpjV3rvx7o8jZyvzYtaG6SdeAl2EVo0yC2DsEgzCp21MWZyFSJdkfotvcvG+V03Rzjc9Tj1tlKxnlu+Kq1AZ/euktmWlSb1el3P/CMsHGA4GSa7weOfdHRUc5KQzpqaqgNRG71hUynY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ywOq+IXh; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso25124205e9.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 03:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772277746; x=1772882546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=isAbEiLpfLN3mIWVHPphfERAokwE3nCBTgU9KXPJdSk=;
        b=ywOq+IXhirMjEjXGNru7n8ZFGJiktVDdiGrZx3OJah72fJVx3HCnNDP+yMGSS0DAM2
         4vSIwesB28TGx+/LVta5fpHDlVzZ4P3HiU/W3Zf3NLX+n3gXopQBy3xvnZE4irWLhpBN
         dNIAbsUSX3aYBjHPK5+Kl66nkWLPYPBV2Ih0A8F73T7DqVp6LLV9ZiIgBdrJRDMoXbwI
         bKbhHhfeAWRTc3br56+7kwEtQngoscVh8PgYIGgq99RpxhaftPGAKx3BXLOOXvA7WusN
         mDTh37La1t1qbVOWpy6mc3L/xWNFIV/6//vu5o6TLDPsbxjz4cPK5wRetvYujY4cCU7g
         Wb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772277746; x=1772882546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=isAbEiLpfLN3mIWVHPphfERAokwE3nCBTgU9KXPJdSk=;
        b=gEyImUMcDKvsSOIfXfzujDxAuwQxFUeJCPEAQPJ/9QuAkbXX0X8WE16TlvQijnKJEf
         4bU74nwoveh/zeA9fOOaQaGazurj7mKjlUJrbDti7BveNeTvWe/pWue3c/r3o5AkD7RK
         rOn4+D4VXgsKKAWxxONVh70owsY1CHKRgdjNDHNkEkJ+p1Tgp6i3JicgV60icmJ2GXp0
         U4nwEJUsHkRLD34T5iKzMzcRMcMy95bKoEqjC4BVTrbvLa/fMOSaCdiUoUaGgUHnxBc3
         loX6NSQAEmBrJMdNnTngdROzHIQPI7BqNmYhOfIxm2bDb5z7+i+sCLydSIW0cFyYzaJ2
         rgSw==
X-Forwarded-Encrypted: i=1; AJvYcCUFtq9LauOsyZ81jX0JZvdte0rfvGziHaDo1njIe2z0+v3zk2XZbBKnRQj6rB4dViJ883SBnyqMIgFU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/iMCOgu2u0Yy/ejjFfjNmQ+vRAEQsXBipytg4eELwrYsRN6TR
	8bY867wI8Vy6MxCUE9efBYxD0803H3s9/54zs2IZz4rzgm9gKz01NSsOOvzlOAtO1oU=
X-Gm-Gg: ATEYQzz81tY+rfOK7DTa42msa6tOH4h7fY6L4yMysT2KO3w6twJ2n65rruE8rrwjadb
	LWv94xPAUz20fTQ06xuh+ArE5gpEeYu+Xrg0fkZU+P0/2ltGHrfcMJ803gm3KYSgv/LTKcjbCVc
	fzDIGJCyfUnG8yjWxX6vCoqRHtIZEwxL568emL8LJnPosM4R3YNIwpu3ckYoYFvIIWk2cfrtU5u
	UiCoGAVfjlZdobjx5l30FtMehb2/VOSIGLseZtAi1pc1TYfzt+o2QEUCnWAyRINt1LlxHkV/usi
	k4fVkKCeHtdZajNw1VRe2+1lI29sqAVD9Eqn1jgpgYxgmQCvgTo8nl1C/NM1HJVm1oYYqFWAB/1
	Bc7uSBWg7BiUULDeskN5TsG1tXKfpczKw8R4lZT0k0phMi0HjE2HWYs+Gh5CHMPkpph8Lh2l75r
	Oe0NisWjWA/0K7ESIl4UA73/HMTKs1
X-Received: by 2002:a05:600c:1c28:b0:471:14af:c715 with SMTP id 5b1f17b1804b1-483c9bc5643mr105380795e9.3.1772277745834;
        Sat, 28 Feb 2026 03:22:25 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfccd7b6sm82361655e9.24.2026.02.28.03.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 03:22:25 -0800 (PST)
Date: Sat, 28 Feb 2026 14:22:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ovidiu.panait.oss@gmail.com,
	devicetree@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 3/3] staging: axis-fifo: fix alignment and handle
 boolean properties
Message-ID: <aaLP7tXHSNyf5ZoU@stanley.mountain>
References: <20260227-unboxed-customary-7ce6eda1858c@spud>
 <20260227181051.36207-1-lucas.fariamo08@gmail.com>
 <20260227181051.36207-4-lucas.fariamo08@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227181051.36207-4-lucas.fariamo08@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,gmail.com,vger.kernel.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-269535-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,stanley.mountain:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: 85C701C2899
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 03:10:45PM -0300, Lucas Faria Mendes wrote:
> Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
> ---
>  drivers/staging/axis-fifo/axis-fifo.c | 55 +++++++--------------------
>  1 file changed, 13 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> index c64a7249feca..4b2cab2f8357 100644
> --- a/drivers/staging/axis-fifo/axis-fifo.c
> +++ b/drivers/staging/axis-fifo/axis-fifo.c
> @@ -387,66 +387,37 @@ static void axis_fifo_debugfs_init(struct axis_fifo *fifo)
>  
>  static int axis_fifo_parse_dt(struct axis_fifo *fifo)
>  {
> -	int ret;
> -	unsigned int value;
>  	struct device_node *node = fifo->dt_device->of_node;
> -
> -	ret = of_property_read_u32(node, "xlnx,axi-str-rxd-tdata-width",
> -				   &value);
> +	int ret;
> +	
> +	ret = of_property_read_u32(node, "xlnx,axi-str-rxd-tdata-width", &ret);
        ^^^                                                              ^^^^


>  	if (ret) {
>  		dev_err(fifo->dt_device, "missing xlnx,axi-str-rxd-tdata-width property\n");
> -		goto end;
> -	} else if (value != 32) {
> -		dev_err(fifo->dt_device, "xlnx,axi-str-rxd-tdata-width only supports 32 bits\n");
> -		ret = -EIO;
> -		goto end;
> +		return -EINVAL;
>  	}

What?  I'm so puzzled by this patch.  It's totally wrong.

regards,
dan carpenter


