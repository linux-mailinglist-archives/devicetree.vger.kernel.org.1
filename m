Return-Path: <devicetree+bounces-272368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CNxNHGSq2nWeQEAu9opvQ
	(envelope-from <devicetree+bounces-272368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 03:50:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DACD229ACD
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 03:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CB74303CA7F
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 02:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A942DCF41;
	Sat,  7 Mar 2026 02:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GxvKbsJ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D935A283FF5
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 02:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772851820; cv=none; b=rciCRENryAboRYwwZ+WZcgkMmOcGs1jDysI8jGIUGdMTRDeM+GbIdlat5XsixwV4W4G8EEO6bBx/tJDusEcdw/in6poLa5JuNEV9Rvv9j+JdAJaaOOUwkJ11IRTUuQNpYEIkALG+A673Xq/TNxjlT1Tw6FOs05e0zRXlkb9cAWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772851820; c=relaxed/simple;
	bh=lk2h+apOO3IJRH+msqUtPdH8EFN4HRYrGLzxyBLLPJI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WAtuDNvR3ihE0dQTFe9f19JD3BxE9EX3J1k8d8Pi9od8hDvwBd6WZ/9YHTAxpRFjbkACog7KvzYir06EravoZG2r3Sv7cG68lOs+CJ9rKv/13ByG7xRhxDDF49XMBpNangwy5eL66bsnIBbqB1rIiVXS9ozioSAccXhEAL1vxoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GxvKbsJ+; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-829759ca646so1903645b3a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 18:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772851819; x=1773456619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KbPWhHn0q5436GJTGEpUj7I/Dk6nllWjPQ6fEPdh+4o=;
        b=GxvKbsJ+BZySsoevjOZfhqhytMRyrbkmrMQNbaXTjRJ5Qi3IDcPhUNxr7ebJDNPWPk
         AlceA4dlF9cUl8/h8Ww91c1i0rZ2wcRmz8LIiRbsw3FWHIWqEPaNFIQZMHksQI6klt8L
         VWxqqNREk1TicyxIWkm0JZB49vpi930RBGgMjDJqInvn1bOQpqZfoJyNUaa+O1v/dpM1
         bFXN7uh+lTVCvsS5m87CFDzYrjhOTnIow0I+fFabNzLiZH5vvbGIbvYbi3wSQ5hZSYol
         ANxL6GTEbB11PyZBpuzz2OUXYvfTZ451tbNwQSoFb4NcHA77sfv1q74AU8X0ECjjbFzf
         WObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772851819; x=1773456619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KbPWhHn0q5436GJTGEpUj7I/Dk6nllWjPQ6fEPdh+4o=;
        b=ka8J0vfGPuBzx6kmPdR1Fv46qZt4uK7s0jZ0msMcwCuWo+EItoZf8DN4tjcLfYFnMj
         PTNKGPErsUNUU8yo0Sm25X9DdHBLXPDa1P/abgsqXXKUiJQsEvhBIcXLL9qFat6Yb1n1
         QKyaloAXZYwLS1axOpHnWL1HVferihGNxxXVS2plechClzeJxAmr1zOAN6L0iZCRscFy
         k2FUXlU1+jrxvPU08k+aEzHR1+ViXygxlTT6pI0mNmjIrSXE1HlI9s5PucLR1+N9jONZ
         /Eo+kQliINaEkmdDNlnHfZ+OOW1lBTp2ynaZgrf3Lq6ZJzBDNyP7cjK3JJMe9QOdfHd1
         NLLw==
X-Forwarded-Encrypted: i=1; AJvYcCVXvGl7Y9Bec4CUEjgz8mEvKhcJgy3Wh4S/lxhX1RXXmSe+QDQa/Me8nb8d6wYaZGI49qzOkTYSKaFy@vger.kernel.org
X-Gm-Message-State: AOJu0YySG2yv08d+FYowE3e1CGYo7WcqaVycgH0D/MC8oFvsjPrYOnkz
	t9ZltNH+eSb6qnB1jVvoKMWcP8wXDGJTWkITmIxU3B9jZZeB/EB+8hK+
X-Gm-Gg: ATEYQzzi3KuE+vlpYdvcPyi81pzIebcm1E0qxVqThJLoEcuZ2BT1ykhbKj6zdAxte9U
	1vrAZgvyXkz4NIxQtt/MY4JtpkWs46f5nj9UcnM5GAXGXLf7f7XSv/ny/F2LsvzNA3h3QX+h8AL
	jKmGOEMIqpVLBvRyWY0Q7LebGvmiliIrJhJ+Nk0bRjhqaikEqDu71e9+RODnXtM1tR5gs6IbQPA
	YNNk9BkxgyDnjZZ9Zurznp2hC+fQ8SjLg4ZB4P6fY6qmBzPSKwh+RPWOBCB/oCWIccBL0UcGuf7
	UNIsD6dDjdX4jK8KnSbfMFgnsaS0qhC4bCDZSQKBKuQOaXi6JFs8bn2rT15ZrjF1UfGFd5LLBfx
	W0M0s/kW+TivMYzi9VjNl2px7Y/k5VjwKK45uHXTkI7BmIASpidd3Q5CTs0pqeAp+Qw6zm/sTpf
	L41x9UPw9zOg9CWi0Xnp+l3aRWxekbdNWQCEln9xWbZZ74a463Zh6Go5kxnhivq4JuaAlafgRJl
	k535PXnMaQA+X2vEA==
X-Received: by 2002:a05:6a00:88f:b0:823:1c83:e4cb with SMTP id d2e1a72fcca58-829a30d70c8mr3467800b3a.62.1772851819244;
        Fri, 06 Mar 2026 18:50:19 -0800 (PST)
Received: from localhost.localdomain ([2001:ee0:8207:3134:c1c0:ef7d:b1c8:1597])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a465b702sm3134244b3a.20.2026.03.06.18.50.15
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 06 Mar 2026 18:50:18 -0800 (PST)
From: phucduc.bui@gmail.com
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	geert+renesas@glider.be,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	krzk+dt@kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH v2 3/3] input: touchscreen: st1232: add system wakeup support
Date: Sat,  7 Mar 2026 09:50:12 +0700
Message-Id: <20260307025012.1539-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <ff7a9a31-2dfb-4588-83bd-1a3aa7809972@kernel.org>
References: <ff7a9a31-2dfb-4588-83bd-1a3aa7809972@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7DACD229ACD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,glider.be,wolfvision.net,labundy.com,sang-engineering.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-272368-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Krzysztof,

> > +	dev_info(dev, "st1232: suspend called\n");
> > +	dev_info(dev, "st1232: irq=%d wakeup=%d\n", client->irq, 
> device_may_wakeup(dev));
> 
> No, there is no need to add success messages.
> 
> >  
> > -	if (!device_may_wakeup(&client->dev))
> > +	if (device_may_wakeup(dev)) {
> > +		ret = enable_irq_wake(client->irq);
> > +		dev_info(dev, "st1232: Supend use wakeup\n");
> > +		dev_info(dev, "enable_irq_wake ret=%d\n", ret);
> 
> Drop both
>  
> 
> > +	} else {
> > +		dev_info(dev, "st1232: Suspend Don't use wakeup\n");
> 
> Drop

My apologies. You are absolutely right. I realized these debug messages 
were unnecessary and already removed them in the v3 I sent (though I 
unfortunately messed up the threading for that version). 
I will ensure they stay removed in v4, which will be sent as a fresh 
thread.

Best regards,
Phuc

