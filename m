Return-Path: <devicetree+bounces-267961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GUCG8rFnWnsRwQAu9opvQ
	(envelope-from <devicetree+bounces-267961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:37:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2BA18923B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5181930C8F74
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C913A4F40;
	Tue, 24 Feb 2026 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V89Df0sM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E17A3A4F44
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771947383; cv=none; b=oqjq2m41a63UsYieMYeassb+a+K3IFljtv3Q3763vz3KYQSmqHtpAPnwfymDlgme2y1bLlHLKRG0kx7S+ckyDWphevmN0VqGXaA1gfZg3Rg1iqh1xO/SBCJYv961KD8jZFYzB4D7AtCkUwedgLqjU8HoGUbEQkynOQkC5NWCRjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771947383; c=relaxed/simple;
	bh=zkHGizcSxrSe+SkTAhDf0QJI9pxLq5PTMLmpw9CcwM4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b7t+LGsnOo5DYp7xvuY7C3VGVh5OywpCWzPvAoB1Pmvotf89iWOJn2ZyhPWCDp8sIbYIrLY6767wiM2ArvjeZ5bc+AP1N3mfISq/q4EB15RLqS8Hexy2Gwx9Hy8buv4O8lw0P7OEDE53zdMHO+pLT785NpSKyM3eFM9TN/8XeEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V89Df0sM; arc=none smtp.client-ip=74.125.82.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2bdb17511aaso208660eec.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771947381; x=1772552181; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DWYKuznTXu6LTPchE0wWFH1RbEKaWRHjh/hMMhxoCRY=;
        b=V89Df0sMCre3aGWcw2yNtP0yXl5P5YgoXHWcQlLKcD5CCm426EjM0y6UiT9pk0Nycf
         1L1+NKGZi9zjihhVRcf3zObeDppO0HjpxEJ7cDxoZDRATvs+MBs+sXlwmYIJg+riySuq
         Z3McZEywoGw7ybksPKADi7gdBfqKYEbr0JUIWR6tYLq4C6r1pEkTilC2nLnZsxm7CEL1
         0DVtONsVyGzO7G6v/H78uEia+rpwMG3VUTNOdKaAolZoAPMKSJCituRPEZlG9M/Elof7
         MJVGji97/cwfy51zNJcPVSUkhoLJxh7r4leqWGgAYdBgk4MPR4vSbIDOp49tS/RtYnQr
         8lSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771947381; x=1772552181;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DWYKuznTXu6LTPchE0wWFH1RbEKaWRHjh/hMMhxoCRY=;
        b=XhJlA7ziu8TyAHaa8HjKg6Zy8CmU3ygFiXj/B3xxA0dv0dADQodGxuepznBO/Qc1eW
         nXurLPn/t8b14q6HcAk/PlsN+wDP9dBOvqGFYUmfeocQ4tSmjvUrZ0UjGRA842d0X7bL
         xkfWBYaQe12QBt+Hc34Svm+PnJXJJ/c+9jG81E9xRe725gtqNz1/CrR14d4ROkTTZ38i
         n/HseITRUUcQnzBT4i1itiVy3li0nT6AvEJoJS/QpUFrZ5jr8jKNjf4Prc0yyU32GtRo
         lwvY0nDeIqayKxkoHVhHVeCjM0+/AbJBd14DibPApj/yZoNOGq0ZHxAdoHEY2IJ+y5YZ
         PVzQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0C67fJ5tkofKSCCBNV/lrpOvP7lRgqO1KkpPHWQz5kzsazU6BVNrN/JZxLB8LT/PY1qUlbsTLnxBh@vger.kernel.org
X-Gm-Message-State: AOJu0YwA+2ewXgZHbhZNN3tw5n+QPeVCQeITYhTcHtFcPDkbtkem7QxO
	R9wPU/mFBAy4B62rexBtPS1+IdbVPHA76sChy45oWqV05Qy8jcpP5BHd
X-Gm-Gg: ATEYQzxQ1cPqTI0R3LG7Rg69AuiU1kWFKBYkZQqB0wrbQ/ujBVefX0upggkDAXcqjHP
	gjWaFER5Nqzv3KzEPsd32gNCAYtKCKq0ibRFjNOTyUvdtsmNn6t/TdulJHww5vPnRUjJ278NeqF
	qi4Q40yoos6x3CJ+YYmjK/KebXWN7e2Ej0aeCRPyuAz0RCB+WL65jpGZvIQs7M4H37QweRq+tHB
	Zd4MlgFHaNAejlX+BfhxbCqRPYfxn7eb2DR3Aur4ly2DjXeWsUvutNNKJz8rIVwgo2yT/eaOmst
	Z9AtbFbhsYZYbqUi2tjIcgFG+bbDCa4rz5zctqFkjAao0egYJzzGj5bO/2bMoFfEBUodsjlXRvy
	MiFrzlb8QETm5F6635TntyKIcm1Z5dfPB331MlTVRE016PMrAApp8BFIRIP9EPQmZ9T4uqy9Hbt
	MGPt7nFYnGUp4ozrRweBrOhixG7Uz9WgLAV4d9
X-Received: by 2002:a05:7301:434b:b0:2b0:571a:28a5 with SMTP id 5a478bee46e88-2bd7bd2aacemr6348857eec.18.1771947381249;
        Tue, 24 Feb 2026 07:36:21 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7da3eefasm6934968eec.5.2026.02.24.07.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:36:20 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 24 Feb 2026 07:36:19 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: ASHISH YADAV <ashishyadav78@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: Re: [PATCH v3 2/3] hwmon: (pmbus/core) Add support for NVIDIA
 nvidia195mv mode
Message-ID: <c42f58a1-149f-4d61-9c48-0e340431b9a4@roeck-us.net>
References: <20260223050804.4287-1-Ashish.Yadav@infineon.com>
 <20260223050804.4287-3-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223050804.4287-3-Ashish.Yadav@infineon.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267961-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DC2BA18923B
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:38:03AM +0530, ASHISH YADAV wrote:
> From: Ashish Yadav <ashish.yadav@infineon.com>
> 
> Extend the PMBus core vrm_version handling to support NVIDIA nvidia195mv
> VID mode. This adds a new VRM/VID encoding type and the corresponding
> voltage conversion logic so devices reporting nvidia195mv can have their
> VOUT/VID values interpreted correctly by the hwmon PMBus core.
> 
> Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>

Applied.

Thanks,
Guenter

