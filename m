Return-Path: <devicetree+bounces-314714-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YXLSGgdJOmpO5QcAu9opvQ
	(envelope-from <devicetree+bounces-314714-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 10:51:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D376B5689
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 10:51:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=YVS+Hz7U;
	dkim=pass header.d=redhat.com header.s=google header.b=eFRKYZqf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314714-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314714-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78E133013A51
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 08:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C089C3CE4B6;
	Tue, 23 Jun 2026 08:50:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EEA43C584E
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 08:50:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782204627; cv=none; b=cO6VVdsrMwVCmMJ9nW0YxFBpZCg35XJ69aP4ABZdAYa8KRA4EB8U9kPna7WD2v8AK/VSgp34V+UcqPo4LhmsQ8YlzDq/bea8eiOWOpkJWVKdueDQLEkNowwT7HSv7MqiYilUAGNdGsW4TWOkAXE04/kMRN1VMIXC91RABDVLzGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782204627; c=relaxed/simple;
	bh=TZ0+5146xwe6OT/CbQdW0d6uHCZxJf8UjdEd5HflsKE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NpMOVh1fCcVYEiZEOAnPYyGrfJXWLI2P3HSZyCXg9mmWU0SrbEu1XlsgsS39/4lYZafPp5hgrsmdF5Ic6CYpuMgr+zv7oHpfaYtjKQafNlvNoIpOxMy3uPIXF9ryi7ezDI2Mi36ptET2EjHavBvIVaRDJgBSgdWBsSJIJsGxKFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YVS+Hz7U; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=eFRKYZqf; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1782204625;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BuoRitIZndRdwR/IA+zUZeOYUkqVtr5e2wU2WIH4U+g=;
	b=YVS+Hz7U8F9d9rj7BnA4z+BzVB+g0apBKbVVieZPywox+7O0SzCfGPZ9jfCxdTAVUZ5HL6
	nctU/nkmmPLS801t1bdx43e0OZxAtS1QDxPCU7c+XZ/pCOb6I8Y7L2W4n4SfKP6yUr/tTo
	N+D/Hny29EaK/IUq049Xflifyk0UJ2k=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-641-zSg0NVFCN_25Z4W6E_cYRw-1; Tue, 23 Jun 2026 04:50:24 -0400
X-MC-Unique: zSg0NVFCN_25Z4W6E_cYRw-1
X-Mimecast-MFC-AGG-ID: zSg0NVFCN_25Z4W6E_cYRw_1782204623
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-45eec2ba533so3753486f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1782204623; x=1782809423; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=BuoRitIZndRdwR/IA+zUZeOYUkqVtr5e2wU2WIH4U+g=;
        b=eFRKYZqfEI4d2Ou1bhQqmi/QNCxjvMsJWN8mPBRzgAE+UqsoMXJj30zi3lY++wtvg8
         ZcaFoJuvUPR/7qck1mL4PuhmQkJ2Wpir85Oi19FVC/PHyxZztb51IvpePSN/jn7ajwFT
         5kOdmo3JYHKA7Dw8QA47JhZpwZAdXSNSq/6VE2ivTR3CwWCwcDJyc2eDCJJPY3NlSEjR
         u/I9RYcGDE+USlg5BXroQOqnyiMdZMozp0wp62IdGYh02oOstrrpERwwToe1hvziW2a6
         hz17mfmC1UDoOfYpARPyPty3Ak6v4hkCGn5GpnHmNcEDC5ZqP+fSrGIoLh/gG1agenQp
         wKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782204623; x=1782809423;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BuoRitIZndRdwR/IA+zUZeOYUkqVtr5e2wU2WIH4U+g=;
        b=edd155NC9Ex3tLlwReFXD7GP79Ph7iG9e32lH9yaVqtETATnlhgF/FUOZYVfsBvbf1
         xZrA/CQMGKu94Q7V9upurTmtttBS1zWlwj3qK7ryNGuPWoM24jnzITg28NU6L9Xq/IoC
         yDsASFEMN13V8qRHZHfbAY8ME5cS6SAoqUsGRMuRqDjJxdVEOo7JqC65iqpzo4MSMsjk
         Ki2K9K4ufijUCVStzCB1+RqYjNvala1P6BSqMAl6Gbz4UZ2xHfem132KA7G8ikg2K4Vk
         MMYxz/ladvBdUCP6uyjeh69JGdL0q+KoCYvljI5/cx7PWTnBcn3a4+bQyE3a4wMGYSNu
         6Ldg==
X-Forwarded-Encrypted: i=1; AFNElJ9/v18CU7AYZ2GmdBlFWeci+XuxG2GP20Kn6qunwDoPYERPROFfjk15Nz+Rwnqg/KlIm/JPlIbTsgCo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz135tX1U/TfaGPeN+pYK/UY1HpgIcli4zcbWJ5+Yw8Rhm8luQj
	Jf89yhGJhN1RG0c6oeBJc21pb74ppMOD1hPoKZfitvxkbO9bwf4Ok0LijkhB05Jtsl/1EOOYrx+
	WfjQHZ3kufGg4TwNgT7UzwAdJohgLhtig8sbqVWTmAhaxxt16HBYO5jOvcAHiXlw=
X-Gm-Gg: AfdE7cmklQON30hMb8QN67cVRMxpnTgL7zu1ORWTYn9AiEBJfEa3RVftHgO9BBSuWdO
	iUurbN2UnaHm6aiB1Y+uC7NvtbX8XH/y0E3S1OVPo9xoXbznIb1dmSO9gYiKh9HDfbrXndZbCnK
	ixnSygWQYansUUbYUBJuDkk5LMq+mLagGmIuz9D0JzZenHcEpJqTODZBCVGasOGhMJBb+xqx9uh
	wnHVbKkyWRz67cJFBZHpiJ5aowJR6UijowL/mkjsAAM5XSQahu51xHKBgeYhPHSYLiP6PfDfloY
	HO0PZAiJ2tyGiksCARiRFun5fDpO9T0XddLi9+9IsMV1LIp2MxQ6PpNrXEc3t+/NNxQnWh+spQA
	3a4/MxVJWDkWtFQkMm+JyFNhWTHlVXAt+CauHfc8DsnZmW5lfomy+KYNMMMwHpepwypSDzg==
X-Received: by 2002:a05:600c:4503:b0:490:50c5:8153 with SMTP id 5b1f17b1804b1-4925b3896ffmr24629485e9.2.1782204623032;
        Tue, 23 Jun 2026 01:50:23 -0700 (PDT)
X-Received: by 2002:a05:600c:4503:b0:490:50c5:8153 with SMTP id 5b1f17b1804b1-4925b3896ffmr24628745e9.2.1782204622485;
        Tue, 23 Jun 2026 01:50:22 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4923ff8a9e3sm389322615e9.14.2026.06.23.01.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 01:50:21 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>, Amit Barzilai
 <amit.barzilai22@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andy@kernel.org,
 gregkh@linuxfoundation.org, deller@gmx.de, azuddinadam@gmail.com,
 chintanlike@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 4/4] staging: fbtft: remove fb_ssd1351 driver
In-Reply-To: <ajpGy7K4eM8oJIfD@ashevche-desk.local>
References: <20260622152506.78627-1-amit.barzilai22@gmail.com>
 <20260622152506.78627-5-amit.barzilai22@gmail.com>
 <ajpGy7K4eM8oJIfD@ashevche-desk.local>
Date: Tue, 23 Jun 2026 10:50:20 +0200
Message-ID: <87ik79iqsz.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-314714-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:amit.barzilai22@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy@kernel.org,m:gregkh@linuxfoundation.org,m:deller@gmx.de,m:azuddinadam@gmail.com,m:chintanlike@gmail.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-fbdev@vger.kernel.org,m:linux-staging@lists.linux.dev,m:amitbarzilai22@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,gmx.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[javierm@redhat.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6D376B5689

Andy Shevchenko <andriy.shevchenko@intel.com> writes:

> On Mon, Jun 22, 2026 at 06:25:06PM +0300, Amit Barzilai wrote:
>> The SSD1351 support was added to the ssd130x DRM driver. To avoid
>> confusion and irrelevant updates, the staging fb_ssd1351 driver is
>> removed.
>
> NAK, the fbtft has two drivers in one (SPI + parallel), plus as Maxime said,
> it has its own binding.
>

Yes, I agree that we don't want to delete the fbtft driver.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


