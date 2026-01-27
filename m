Return-Path: <devicetree+bounces-259682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ/xLjoEeGlvnQEAu9opvQ
	(envelope-from <devicetree+bounces-259682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:18:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6E98E6F5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2FCB301AD3A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CFBD1A23A4;
	Tue, 27 Jan 2026 00:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OJBPEysx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF20EC8F0
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769473075; cv=none; b=U9PksQwfBxdoUmOgoNx3Y/zIrSF8hJEgPCIFKEc0bfRJP/Rl0J9s+7omOsBJG9EOprlAYGsIO11Bx2NmVezourQqHThFN9+DjWSCey1R359qbRlPVuo82/iKqidLkt0PvxbVgqwDC6zRW4h4Vaokcn197rNh878hB++wHpA1Nwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769473075; c=relaxed/simple;
	bh=RpVEtzoVrzSawk7+qHPvsjMhb1DCqqxD9C0qnee1oJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PLHjDJM0SuONtpRVTmF8hJIi2xN7/15fD7Oi6zjq0lOJRT6dR5fOnN1ipQC+nV6HEFO0p/85qFu2hcFKDU5Dk6QGdAUD25zTuDJGvorwzPlh7rh34rK9/5SpU50D+t/7ohv4lqqYq9dPDS23vYYracEkpfr89jaFhx9CCVTl12s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OJBPEysx; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a0a95200e8so33957305ad.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769473074; x=1770077874; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10gNOulRcwGjDJQj45p9YveIo1l7CK5uNMBsUSp82RY=;
        b=OJBPEysxXz5Az/iugbgZEx/dgdKV3ojczzZfZ7POSj9Ni41/0mZPA+SuSH6Qo3iwnZ
         w7tESud5J8hqvQrIbG4o6hX7wBOcVgCzHxBPIqppfdu8DJRquhpMRxy8OB/4rlALAOQb
         1cO4/4Jvpz8qdZnkXaOb3rFG2Cvps64yF1RctsJCgti6lQi16Lb4JFhc6LRx3zoMRsQg
         B+CEH4lODjyH+/OV8d4LCqq4XcWuITRXFFrJh+K11mJHHkkWus4O7D3bCzXaGEeVenLh
         iIr0fP2eoCAHueGI37bBhujazTC7F/zEEhTfVHeUUcn/YSl7U3WNSLP/yaFrKUCGwkUK
         J/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769473074; x=1770077874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=10gNOulRcwGjDJQj45p9YveIo1l7CK5uNMBsUSp82RY=;
        b=usUs80Qg0apporEMVlp8o4KdW4Y9qUnEDZKwwY/ja5qpCbAjnqhnLUg9gICoidsrZ6
         Ss/bqlhzQounxpnnrNBwmxku/95m05KYvcGbbTJXhsnko81gyPQRglxZwvOB3opKWisz
         kuLW87wN/KPDZUx+gHdWO0aZdgz5lCu9Xqvs4yQsyHC15x5QkhCYjZLA3pXCEumAm9jw
         wsi1CLqL38dBpTyr+NfLpj/UC+2CTS8A9UerqmgWXu6dRAQd5X6bZpwVNSQap2MpKl8c
         e+rgwe3Ma6pGShs7L2QTt8gXRjnHcuUYu6DpCWFw9zrYkdOU40KY+FcGuxyTrvb9HYdh
         gbOA==
X-Forwarded-Encrypted: i=1; AJvYcCW0GOZBlCuJJrMFgOk3xxcsFk6T4X2d5KQIIeQUFRzxABn/FryyBA3gkfa3zv+ZhHyMVOAFIRgQasfe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx33JyOzyxqIVJmkViGZ2L9S+W78izWFCDnVwDvuoyusqeQOzO4
	0z330zxyRKSbxlyGP6MjeApkAdZMB70mR5iC9DPw8gVBx59ui8eIbOZO
X-Gm-Gg: AZuq6aLa7RWsI+OnO78UCOVr0HmZZyGu9i3NZZ945BJu1NWK///ZZdQnAZmCtPMHTgU
	d6DljsymZo0Xz8OCQY17SvVmjmXShaKpnRGB7nLqewj6Q/uy5QFqUWTdxzGeVb9ifHm1Zhvd2dX
	JoSzsDCVQNjpVg1h5wv4oMm4t3vEhGXa2u9rQycs/lgimhs8bUJZjOoleVGpcuOIxNDbC4hPKVi
	KtQ2gPBfL85pFBCpSMlullWMyVZSBzPq8VEXCJiQoC8ULk2MzGEDX+N8bZm3DH5OeVubi2zPRrS
	j0wvG25nKHtEBjv3xPyE95Z/gzv9FYGAzuqC/FqLnYm+UXpfdPbpgyyvVzqrzPh4BV6vh/EQtM/
	kn6p/d8qS13f+kZ/mHyRm/W8FzhT+l8Kx/CALK0BAlt6jg17a0vfXDyjeB+2Z4rpRWA81H0bXGs
	L/YlBW7JjMXpSc0Dj9r0OGA+6y
X-Received: by 2002:a17:903:19ec:b0:2a0:d5b0:dd80 with SMTP id d9443c01a7336-2a8452f3833mr59109575ad.54.1769473074110;
        Mon, 26 Jan 2026 16:17:54 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802daa79dsm96600305ad.3.2026.01.26.16.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 16:17:53 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Jan 2026 16:17:52 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Mayank Mahajan <mayankmahajan.x@nxp.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, priyanka.jain@nxp.com,
	vikash.bansal@nxp.com
Subject: Re: [PATCH v5 3/3] hwmon: (tmp108) Add P3T1035 and P3T2030 support
Message-ID: <1571386b-8b67-492b-9ebb-4aef08885fe6@roeck-us.net>
References: <20260119040459.2898998-1-mayankmahajan.x@nxp.com>
 <20260119040459.2898998-3-mayankmahajan.x@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119040459.2898998-3-mayankmahajan.x@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-259682-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid,nxp.com:email]
X-Rspamd-Queue-Id: 3F6E98E6F5
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 09:34:59AM +0530, Mayank Mahajan wrote:
> Update the hwmon driver documentation for sensors: P3T1035 and P3T2030.
> 
> Signed-off-by: Mayank Mahajan <mayankmahajan.x@nxp.com>

Applied.

Thanks,
Guenter

