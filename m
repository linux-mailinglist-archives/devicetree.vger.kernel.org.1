Return-Path: <devicetree+bounces-260908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBGeJIVre2mMEgIAu9opvQ
	(envelope-from <devicetree+bounces-260908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:15:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 004CCB0CF8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:15:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B116D3024134
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4256238551C;
	Thu, 29 Jan 2026 14:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z3vO0pc0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F50385EF4
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 14:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769696050; cv=none; b=n9XsLLaTnwoj8u/95TGkWo6tCiFrp0c9lfm3ssi9P/o7Z1SiSZ7CCQnCd9el37SvmntqIj/CKcGYqC9VdNgNYCCKqV/qW/qi6bcHB6eXrpYYsNxBgGq22h3YBKh6fvJYAhkCiH+P1kYx2yvQcPnSxhn1wtJJFSnE/8DmcAm9dQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769696050; c=relaxed/simple;
	bh=YNZSYKXHZdrx6lbBVL0AeaoKB27UlCZgZytgr0im8rM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BFPltLEsrHyKsxcSR5YexyfhZenO8HHF7Hf5RPLYKZkc3KA3djaWnnYRbBJufyEafePYwntCpNxEFneRUZ+JFUGo8L4bMa5xIZDMj8ejaVz2jRhgA80XEhDzJB6UaStm58smoBzymMqnrgfcFNtdtsXp68/3Lw9pska92pKvdEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z3vO0pc0; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a79ded11a2so7380225ad.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769696048; x=1770300848; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gPatX0lBa6B/Z2f7JJnbZz/QEQunw/4SlKLt7srwt8E=;
        b=Z3vO0pc0fdUPzCtNyYly+k0cEjmqreCwPiVZRK+PFR/F/lopHh2JnL83Rnk5DUUPZ8
         p39KtNh+X7cFNUAQSssahfxep5qv8llFWRTMDVF5yTFl0yUQF6raiBhmglihK9qWe97B
         5BLAdx4qPWOGppKLuvS/9AORTjNMxQ4df6+oUfM+gd60RYdzsQPqBseArcqbA9RvtSzM
         k7LK8jEgCMgDrAc1zhmlp40tpVoN6rluOgHBku8O0KaQcYDQPjQt4Z4ytBHP3oHOsvfh
         VtalAC58OwQy0GlA4vioZbfpluRYERHwgf4BKRV0LAcC3gP1vYLEUw9e4Bfri241P4I8
         IE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769696048; x=1770300848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gPatX0lBa6B/Z2f7JJnbZz/QEQunw/4SlKLt7srwt8E=;
        b=xSrFyt9LCtRc7uWCfZjUL8Kd/sewuYxar+rbz89ko4c2tvLPmUwQB89tTF28PFW2l0
         yxxrRUA/z3Zq2wRUHsmWoI0iApaHq8kdfQL2oGcCv65POyG4dHLhDsERzpZrXMn9QvWB
         aF/Mrznzhu2fxV2RuvL53zdftH5vMZKlHhxdf5GD6sw9FxxVhSS5YvZIyX6IFvzYTrIu
         UfnheWfT3BhNVKJBdxaYsU3/yxOtMsChs55PS0LO68xSdCzo7wJ6j5Ewm5qahQCuV7Ur
         tNiyzS4gPnKrigxqGal3vTkElX5OQrQvUi/a/Ldkq1Llrt9szJBvnm/xjyeAXbVhBq0c
         EcUw==
X-Forwarded-Encrypted: i=1; AJvYcCUZrPzbw1rmG83YkZ+362bzYyBQoVc4pxT7mp/zB832/mgF2xY/fP6t7yILCKCN6lxhqwQ95huXY1vP@vger.kernel.org
X-Gm-Message-State: AOJu0YwpHiVuDabgtnx72l4zPI19tcoA7RACvwVVqLLNcoTiIKan4kKm
	fOHBSEUG47F/HN9xG2igZvlgh77Zk3hJAJdyz0SxBteuLeJtdhbUoGtfXevirGt8
X-Gm-Gg: AZuq6aKDLBdVh0FYIzlij0ya4or6aNQP9XfFtt7FJLTTrGa1ZYIwuQONhTXcEEbbIRU
	iCSwxnQaW0FY5WdgJuvxXONR1//Y3sqEn9e1WrGECL2R9ImlOTgGRDSwwI2p8WjsMU+c3WO26/p
	yfw2jR/Cn64e7TMdqOGtPMR98rhqhuy/MEmMPbiqdAOEXj4c5gCf06ZcJV+bJJ5fu361xCRu7M9
	Olsvj/bTby0Q4xPf0xcJs3iN4x+HAsGwOp/03Ui/rmQmzJ5ytNu8UksAxb/snz6S/Wxq6QjyncB
	St3lmslxWgVp2pjdGnFPUhF5cydzlf9W3ZqBKEI0YgRtxbGy4o4d+LnbntFZE3Y5fZaLNWL6v3r
	yjJfxvOi7NB4/mUFQa2t5xlulQtVqW3gsvqmFqo/NykHzRcJgBgtO0MgbNtLovUjp03sCPG0TpP
	FXhjKWMuE+/+Q6LXRyW6uUgu+D
X-Received: by 2002:a17:902:e548:b0:2a0:d662:7285 with SMTP id d9443c01a7336-2a870c1b0dbmr82171225ad.0.1769696047607;
        Thu, 29 Jan 2026 06:14:07 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c22459sm5485051b3a.48.2026.01.29.06.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 06:14:06 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 29 Jan 2026 06:14:06 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Charles Hsu <hsu.yungteng@gmail.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	huah Khan <skhan@linuxfoundation.org>, linux-doc@vger.kernel.org,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 2/2] hwmon: pmbus: add support for STEF48H28
Message-ID: <010c8002-e1d6-4cca-a326-a29bdb3c21f2@roeck-us.net>
References: <20260126063712.1049025-1-hsu.yungteng@gmail.com>
 <20260126063712.1049025-2-hsu.yungteng@gmail.com>
 <46a42764-6cf0-46c8-b764-4c4b394b04d0@roeck-us.net>
 <20260129081743.50ab5a66@foz.lan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129081743.50ab5a66@foz.lan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-260908-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lwn.net,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,huawei,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid,roeck-us.net:email]
X-Rspamd-Queue-Id: 004CCB0CF8
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 08:17:59AM +0100, Mauro Carvalho Chehab wrote:
> Hi Gunter/Charles,
> 
> On Mon, 26 Jan 2026 16:12:42 -0800
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
> > On Mon, Jan 26, 2026 at 02:37:12PM +0800, Charles Hsu wrote:
> > > Add support for STEF48H28 hot-swap controller.
> > > 
> > > Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>  
> 
> This patch completely broke docs build, as it is using a markup meant
> to identify section titles to mark the beginning/ending of a table.

Yes, I know. Randy already sent a patch to fix it.

Guenter

