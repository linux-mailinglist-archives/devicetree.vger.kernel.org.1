Return-Path: <devicetree+bounces-274766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIGBKGoOs2koSAAAu9opvQ
	(envelope-from <devicetree+bounces-274766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:05:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 627E4277739
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:05:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B4505303F576
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B723B3947AE;
	Thu, 12 Mar 2026 19:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="f/iHSCa6";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="b7U648rh"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14C3381AF2
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773342307; cv=none; b=XtmskQ7KlPziMQnUiNLlEqT/x0XQnj17yFaqW292h/Otmbb/3xAa0pb4GC1r+D7VgHb8ANOtVMar5fJBU6i5MBm5mOVjtpwkMRnTIqFbANHfddRf/ZnBuas13DO2xMZmIYNDd5QxAPGZCdt0IrxDvNItLJaFLjIuzkr2C2q/L1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773342307; c=relaxed/simple;
	bh=gRz5kv+ZQGoeaBp3JZPi0keg8FC++izwtJHUj7bGlzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U9kczHeiBLdetEmcDvicmOtPqFAQPWbwtESN4JzjQcKT3WEa4sLv9ccV3PP7gjhhT7EqdLWwDof/H4yzrNX4PNM68XwFSFnosnBc5cuNmLGF1XK2lAaDvPE+pieW2r8UbzJnk8qsdkbjQgZAm5bmQjo9I2E7qyu+TDoWGnIImZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=f/iHSCa6; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=b7U648rh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773342305;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AlGHEWxU5rIBCwzyS3n9Fsdg8fqOw24aBbYZdNgyOtE=;
	b=f/iHSCa6ORkbJGaNJ/mhYEi0evXmQ/2TJ0OsjvrqPIgxzc76KXxfuSb5sTQEMU8xKNpDkv
	QoX+bMRSmf2vpPVG0LAV1V3+N5qc+H9NKLJDkcoPsAsIByQrjOGtwoYby+vYbYjE3zPAK0
	jU69WZHM4yVeSZIoSmRjaydeEIjKgNI=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-323-10zPZfXeMpSfcdk3WlpnBQ-1; Thu, 12 Mar 2026 15:05:03 -0400
X-MC-Unique: 10zPZfXeMpSfcdk3WlpnBQ-1
X-Mimecast-MFC-AGG-ID: 10zPZfXeMpSfcdk3WlpnBQ_1773342303
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd77e5e187so718040385a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773342303; x=1773947103; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AlGHEWxU5rIBCwzyS3n9Fsdg8fqOw24aBbYZdNgyOtE=;
        b=b7U648rh3RlhlQp+2AlnKUt+gm5LxwFO3wWKD7jb1DtCe1hzRX8dlaX9sPfqi4VeDv
         a0/PUdNOTZ4bhbnJwSQa21ObeTxnpuZrKycDYi10Awo2dMJH17mbiqEfNoo+kjZtv91T
         Ff7iTJ4h/ECofZnKOv+BNebcSp8jQOlsqt9yOI6VZRqeHuH7hoLG8DGdOlB1bEup7F8n
         lf/QsexdmRsnTHPW4MtnenBzZFyGmUIO6CFqNgDSqQzWnEv/npEj6xMBSIjJ/Mspvn0x
         0Y7J9c7P8o5LRVg00vP6M7qRGCJ+J9WGqyWJZVBU4CnHsvErKc+1oT6wgas+lpWE7koz
         cySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773342303; x=1773947103;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AlGHEWxU5rIBCwzyS3n9Fsdg8fqOw24aBbYZdNgyOtE=;
        b=btXmvPH30H8sUGh4qYAKbMJJUE5X7zwuAYqQClhp7IbjNSi1Z+mljXWotMBJbjAr60
         Bt8mG7KdlV8dmY/Ks1ND8zB5hM+sOBM2r9jY5IQpDuyOLOtmCEtz7b1TpGF7dwGjzJT/
         QcGoA4GSkROLAP6FqS19Asy45eRCpMc5o5P/lrtWZdZSAvC6LYr9FRgNC7BL9gorFAko
         onZL99BkymDXBrz3RaPGpOaSE2xWGhp8FwTJTvdMNbEK3tXal2b4R3NrvTvZfkMaSmhy
         H0gMONz3LFM9H6Q2CUYPKmv2/fFQscyGH7of4V2M3cduc3aLrHhY0SsWxDbpsNko9epM
         usdw==
X-Forwarded-Encrypted: i=1; AJvYcCUnxlLWOJDTe075k6Sjt3rIzMud7XSVWbKSDJmZPV8nCnKP0vspC9E2V2ZunV/z+2tuc9llRoH3kEcn@vger.kernel.org
X-Gm-Message-State: AOJu0YwYMrk6675bnsEHfGC0owIm5jg6oPDBgtlL7XwprarHnyFhsI/2
	ojfiOc22Y8l0hbqdRue9O/j24GaC2jOopqI5IfLz4keJw/WAnaWPm44bg83EZ+Si6ne7C1ShPn1
	ihIe4EsD54CVp+127cYlznd9z/NphJ6M9/FiGVjus0f8J7WrPbK2t1m2vqiZEsCU=
X-Gm-Gg: ATEYQzwCqsCQ6pedevXJbG5gkQwXt8yBwYTFhU8jJj9coVXLJRznU27+XuO3hy/W8Qb
	Ab5D97yREs7lNRLd0XzQbAhUyKHFQyXwJSoeG4hEMFXGiJ5CrKL0cOeyVT7GEEtPD9J3h6RTKw3
	ZILHx7zKNMPiPsfqK5wuYGhcJwOaja/uKyG+O9NbQe9zoxpCV68vOsQuBkmJHQ0pxKZiq8dnorN
	DnQzKLvrjHeuqLYWj3M5Q4iPhT4rVJ/lc/bA6ZUIhFGa8wYJyqDa9Bi0fRtzjpnMKIKbpIAeQby
	ayP++o3dVRXqwjlHyX4PaPBMvqi56JRjUURJrBGhYjMwdqQRsyrRqS+Rzgxl7WH7Hr692ijrHbN
	c3eTq/amRWBkUIf3tmdCGx94is3v+pTrnRgXj6OZ11Aorp95pe3sftSB2
X-Received: by 2002:a05:620a:468c:b0:8cd:8fc7:8308 with SMTP id af79cd13be357-8cdb5baaa87mr107674785a.75.1773342302977;
        Thu, 12 Mar 2026 12:05:02 -0700 (PDT)
X-Received: by 2002:a05:620a:468c:b0:8cd:8fc7:8308 with SMTP id af79cd13be357-8cdb5baaa87mr107669385a.75.1773342302313;
        Thu, 12 Mar 2026 12:05:02 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65bd54f9sm41198836d6.6.2026.03.12.12.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:05:01 -0700 (PDT)
Date: Thu, 12 Mar 2026 15:04:59 -0400
From: Brian Masney <bmasney@redhat.com>
To: Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-clk@vger.kernel.org, linux-mips@vger.kernel.org,
	naseefkm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	lee@kernel.org, p.zabel@pengutronix.de, nbd@nbd.name,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] clk: airoha: Add econet EN751221 clock/reset support
 to en7523-scu
Message-ID: <abMOW9N-qWqqbmYD@redhat.com>
References: <20260312162449.569359-1-cjd@cjdns.fr>
 <20260312162449.569359-3-cjd@cjdns.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312162449.569359-3-cjd@cjdns.fr>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,baylibre.com,kernel.org,pengutronix.de,nbd.name];
	TAGGED_FROM(0.00)[bounces-274766-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[cjdns.fr:email]
X-Rspamd-Queue-Id: 627E4277739
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 04:24:49PM +0000, Caleb James DeLisle wrote:
> EcoNet EN751221 clock/reset driver is significantly similar to the
> EN7523 / EN7581, however the EN751221 does not have a neat batch of clock
> divider registers so there are fewer known clocks, and the frequency of
> each clock is derived differently. This clock driver will probably work
> correctly on EN751627, EN7528, and EN7580.
> 
> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>

Reviewed-by: Brian Masney <bmasney@redhat.com>


