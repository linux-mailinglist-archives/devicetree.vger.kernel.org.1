Return-Path: <devicetree+bounces-276257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GY/NxAduGlYZAEAu9opvQ
	(envelope-from <devicetree+bounces-276257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:09:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0DB29C069
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B855D3028C0B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334C939E18B;
	Mon, 16 Mar 2026 15:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="a+kwyXBg";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="UCTi4TMt"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDC831E82D
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773673458; cv=none; b=bELYzB3nvST3M8gDZtvBH0AAmd6sb5Q+tGCv5V6uCEzYZayWZObteFzgfrfs9dOx+d0horYBe/HRIZHgJih6WQMjn9U/s3S8fuQ/lFyoGPP1JojJV+vqqTqRAipPdpJ5LnQ68FLDm5ptdj/sRRtRL2k9r+srQTGZ1XJto0jLFAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773673458; c=relaxed/simple;
	bh=j9s4nW6rffGEhd1lXVR9dLdMc9z31vqESmtM4Se29VA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DMHViroL33/Ej2k4xmCcz2PHRejcWZxQR5FX/ixnNVUWPasmIf7G5MpH5Dlo8rT4/zu0E/jvNApIeNqmDfFjHDXYp2KHrxMX8nGMP1rXIAcekQTQzF3m1KCOiPqwYbq5+pYoI8xconKkuuHNeM0BIRYFK8bDfs2qe/JRTN2eA70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=a+kwyXBg; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=UCTi4TMt; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773673454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Co7Rw9SvGXfO2Q1q4O/QAU8a4dAjFS1ZZErcH+Mevyc=;
	b=a+kwyXBgbCa+R7M+Rqf2agB+CL3pziEoyXUP/cB8nCjtAtxJArA2cjrmRjL44o4IApbJ8e
	r4BA39fsTz4VsWSJpuAtob6OKLs+tKyOeS0lZ9RBXsf9Qr9oFjI/4nAf6qQoJ16KchS1+7
	N4K0FvE88b2qItWnlzHh6wqP1r2bwC0=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-489-RY8ibV9QOEerA1NmM8Sbug-1; Mon, 16 Mar 2026 11:04:13 -0400
X-MC-Unique: RY8ibV9QOEerA1NmM8Sbug-1
X-Mimecast-MFC-AGG-ID: RY8ibV9QOEerA1NmM8Sbug_1773673453
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89c4d85d619so108283026d6.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773673453; x=1774278253; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Co7Rw9SvGXfO2Q1q4O/QAU8a4dAjFS1ZZErcH+Mevyc=;
        b=UCTi4TMtFf/heKvZVpp7jz+SRM7yZo5NI345+27HedlwITaXf1HUNaXmtPzXEI7JBi
         hNpfV4jnVQT7Vw+rA4ecqiJR9VPs4dSLCkEfzbi6otYfcbVpaf+IcVG7jRiQpaDmqOM2
         /A92hZ7zMrWov7Jsy7nvqFcNe/yLAYNE6LNK+YgIzdl+buoTzfybTpuiLNgnnO29DYY3
         GJFOVNh23vMa/9e4Im9kmaobYVwI/UpgGU03A4tIxzdPvO3sw6ekSQIa8tj8BMQGEJod
         tI7HxT+IPgCb8Ts6/1RXKCxSbAPz253ZnYObfX9UIUFETJY5xPBJTD7NmwKCBtiOPjVr
         kLJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773673453; x=1774278253;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Co7Rw9SvGXfO2Q1q4O/QAU8a4dAjFS1ZZErcH+Mevyc=;
        b=b8/TUhM2D7/tBGCjeNtjOeiiYcocGJR4iJvvbfwhA+ea0ZiCxUI1c/St6J5b7xfxse
         MPSb6hsCrxTz27ao8eC+M8AzG5Qy75y/Z+A1+lLe8UXja6cmKko6GQAyuBrm/79otH0X
         UAgHhre48mHQO6atiwmGd/i/WuFCKjzNAwKY+H/88YPcn8IhiFr4YxQxhmF219V6SNdT
         qlI3erTdLwArfoBsfbDg4jmWzIarhwQtA4SLP0Yz1C3Vl61OOLOz5iHPanKxo9AHBDCh
         VrhJlbwOwIze7epE3Y3NQbPChglcJzyW3kTYQnJ9aIwM4rVDyClyzsuyRfoQYefWvEKP
         zIlA==
X-Forwarded-Encrypted: i=1; AJvYcCV+dQ/MnajNpmvpWsiOXTIQIfQZuKfOtrg7jkeA3Mib8CxvSd70mms39N7cjwtNxLKpYtAppD7uXOp+@vger.kernel.org
X-Gm-Message-State: AOJu0YxcA+TVDXc3hIw/esvKEMzHj0DeAtMwNPn6nsAlMb0XS8QLDUdo
	j1yB7UplSAuvxMqazj2gNIKBg8i9SlyKQwv6mFpCz+vQpw58cFjbvcVGT2zdEL5M/unZjNPXPlY
	TpEmSY2ynxw2IAOtnc7KhVVYs8AHP90/YS8UJ709x2aOtHhzxqzTIDRUyyHUuVp4=
X-Gm-Gg: ATEYQzzGuW5TzErhwQEEi1ewQBqhrM8S7fG1SO4bB8YTGK/OyiUoDgsYkimGcPYadMc
	iwO8uJs0cCf+WrI+DP4nGa00fH1RtRlcMCoAP4wb3lUJII+7phW+VlhBe2AhuAHGnE5tYRZ2g/n
	WhcqBO0VPh/fKwlad5Gxmrrjax/6mPYHMdqU1IczX7wj+baa6OCISAM38G8DH+aBomjjsfxPzHZ
	s41MFcj6zOTk4EvwScq6Lf+Emm4R/odwdRtkZcfy/PQGHbWtEIAvjyau9mYwWBDbAfx9/pxQpCe
	qR/gaK+ors9cTe5YgpywJCvZdOdeuW6imXAP/Xltf+ozlknUD7jqDAujVcL5KQ9jlMCMsl88mR9
	jKU7R5Scy3/jaVZ39y+4FXnSYtdsZswejxvwzgEwJKKrPi2ivfk+nF13P
X-Received: by 2002:a05:622a:244:b0:509:38d2:858c with SMTP id d75a77b69052e-50957e10b71mr185453441cf.61.1773673450663;
        Mon, 16 Mar 2026 08:04:10 -0700 (PDT)
X-Received: by 2002:a05:622a:244:b0:509:38d2:858c with SMTP id d75a77b69052e-50957e10b71mr185450851cf.61.1773673448468;
        Mon, 16 Mar 2026 08:04:08 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-509400d018csm130100651cf.24.2026.03.16.08.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 08:04:07 -0700 (PDT)
Date: Mon, 16 Mar 2026 11:04:04 -0400
From: Brian Masney <bmasney@redhat.com>
To: Xuyang Dong <dongxuyang@eswincomputing.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, ganboing@gmail.com,
	marcel@ziswiler.com
Subject: Re: [PATCH v15 0/4] Add driver support for ESWIN eic700 SoC clock
 controller
Message-ID: <abgb5OcSFbt3FzjI@redhat.com>
References: <20260303080513.2042-1-dongxuyang@eswincomputing.com>
 <54e32101.4409.19cf56c4aae.Coremail.dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <54e32101.4409.19cf56c4aae.Coremail.dongxuyang@eswincomputing.com>
User-Agent: Mutt/2.3.0 (2026-01-25)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	TAGGED_FROM(0.00)[bounces-276257-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sifive.com:url]
X-Rspamd-Queue-Id: 5F0DB29C069
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Xuyang (and Stephen),

On Mon, Mar 16, 2026 at 02:54:00PM +0800, Xuyang Dong wrote:
> > 
> > The link [1] provides the official documentation for the EIC7700. Section 3.2
> > covers the clock subsystem.
> > 
> > [1] https://www.sifive.com/document-file/eic7700x-datasheet
> > 
> > Updates:
> >   Change in v15:
> >   - Updated driver file
> >     - Add 'Reviewed-by: Brian Masney <bmasney@redhat.com>' for patch 2/4, 3/4 and 4/4.
> >     - Add space between the name and < in MODULE_AUTHOR.
> >     - Remove memset_p() and commit in eswin_clk_init().
> >       The current implementation ensures that parent clocks are registered
> >       before child clocks, thus preventing the creation of invalid clocks.
> > 
> 
> Hi Stephen,
> 
> I received your review comments on v9. After addressing them and submitting
> v10 through v14, I received additional comments from Brian, Bo, Marcel, 
> and the kernel test robot. 
> v15 now has a Reviewed-by tag from Brian and a Tested-by tag from Marcel.
> Do you have any further comments on v15? I would like to send a GIT PULL 
> request for 7.0-rc4 by the end of this week.
> Do you think this is okay?

It's been a month since Stephen posted on the list, so I'm not sure when
he'll be able to reply. I know he's been busy.
https://lore.kernel.org/linux-clk/?q=f%3Asboyd%40kernel.org

If you don't hear from him by rc7 (or even rc6), then I think that you
should send him a pull request. He'll either pull it, or tell you what
needs to change.

Once this driver is in tree, you'll still need to post patches to the
list, get them reviewed on list, and then send Stephen a pull for that
merge window. That's what the other SoC vendors do.

Stephen: I went through all of your v9 review comments for this driver,
and ensured that Xuyang addressed all of your concerns. The only thing
is that drivers/clk/eswin/clk-eic7700.c still includes linux/clk.h,
and you asked if it could be dropped. If we remove it, then it fails to
compile because of the clk notifier support:

drivers/clk/eswin/clk-eic7700.c: In function ‘eic7700_clk_pll_cpu_notifier_cb’:
drivers/clk/eswin/clk-eic7700.c:1270:23: error: ‘PRE_RATE_CHANGE’ undeclared (first use in this function)
 1270 |         if (action == PRE_RATE_CHANGE) {
      |                       ^~~~~~~~~~~~~~~
drivers/clk/eswin/clk-eic7700.c:1270:23: note: each undeclared identifier is reported only once for each function it appears in
drivers/clk/eswin/clk-eic7700.c:1273:30: error: ‘POST_RATE_CHANGE’ undeclared (first use in this function)
 1273 |         } else if (action == POST_RATE_CHANGE) {
      |                              ^~~~~~~~~~~~~~~~
drivers/clk/eswin/clk-eic7700.c: In function ‘eic7700_clk_probe’:
drivers/clk/eswin/clk-eic7700.c:1313:15: error: implicit declaration of function ‘devm_clk_notifier_register’; did you mean ‘mmu_notifier_register’? [-Wimplicit-function-declaration]
 1313 |         ret = devm_clk_notifier_register(dev, pll_clk, &clk_data->pll_nb);
      |               ^~~~~~~~~~~~~~~~~~~~~~~~~~
      |               mmu_notifier_register

These are currently defined in clk.h. This code was present in the v9.

Brian


