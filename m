Return-Path: <devicetree+bounces-265435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBseIMlZj2lxQgEAu9opvQ
	(envelope-from <devicetree+bounces-265435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:05:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC48B13879D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BDA413008E17
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB83F34A76F;
	Fri, 13 Feb 2026 17:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j3swaOtr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AECF36213F
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771002310; cv=none; b=IRJseF3j0AU4zqdVDXHVbIZ4UwHIzpPVu7YpInQtMfsVgCo3htaesFl/yztpAwu+LAjsag7FR+vewGlcw7FeJOUxtUp+0GhBhIWdvlCCy1+i66AViPI3Oy4At8TRDKg/CwdulAnf911zJvD6QXP+iWu5wxcEbEETUe4CUqjGK0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771002310; c=relaxed/simple;
	bh=KwNeEzFfWpRzRcqhfUMoelVTv6pBfRhBCYE/TnDdz7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p22G4uhe4U5g2DjnMXM2/SXgBIzkQUcZGzTIy8oIM+Ty909s7cdSjyT4h+o9hWHHyXJNnNzzoLDmBhWfCluztoenYljE6pHs8fe4y6RxZv34JSnOOykAoahBvkromZo9n59lU7jyrMEtg4d2vOus722gwlL8mpxURW7+hYWyfxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j3swaOtr; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48374014a77so7564695e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 09:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771002308; x=1771607108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KwNeEzFfWpRzRcqhfUMoelVTv6pBfRhBCYE/TnDdz7Y=;
        b=j3swaOtrWX+ICcmlGpYBGFVBPi7vYPYEOJlXoJcb075ywwrI+FZgG/mrTxSthH1D48
         cyAnDA8IiyZoYK+pcNgaBh1nXbICKVaXg/UYvmUyxMqhtUv4JsHjwHcU/tIFQcT3BtHu
         Juk6oSrP8SfW559YWFhhXiGCbx81QugVRJmMTu7XAn4hVW26KRjv3v/v97qmv5Kygw9y
         Jvz2t/3q3kjnOTXTZnVrig0gym06dc3e/ar8e8mPzXox2g222NBVzzADTmCxGR4cjWGM
         qzCniwlo0v0ZuqFuJ92lq2ePo1aYfFb4ttm2orRxxVsgkpXAlQOrjsPmUKoCaqGzM7Cu
         yPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771002308; x=1771607108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KwNeEzFfWpRzRcqhfUMoelVTv6pBfRhBCYE/TnDdz7Y=;
        b=QN38dhxR54zyftKTOOg8Qy4rFebdLdmqBlAprEYl3Z/zx66PBNB/iKu6zb5Zu5P2rL
         1nOhwHIak9mUapAPMhQ/sdaJYV08siDA0x3AiLNSGc1QzusSvOJKR45+FiT2ssP1A1nE
         diCgyvptEYap6yYtuhT13GoGEqjtDfY4yfwrij0Ujs7ZhXZB5/+O/QPiICbyuaFudJpq
         8tNMh7vTZI4XMxKCFLXs+4CjXZkVBkQdf/p+IJnZ+Avw7BkDFRGjVuVl/QLzIcNobyqd
         yv4sFjDOn3Qw+tUBT79eTQHPammuOPalTD4pBnmiP6g/nBMf5C02ydduVs9aMhBiw0+2
         Z/nw==
X-Forwarded-Encrypted: i=1; AJvYcCUBmU1DzWp0SevZiev2z9VR4tHZI7rgiulg25uO6Crt83GbsVaCF3BpUP6c9SA6kN4KwXD20CHr3zbl@vger.kernel.org
X-Gm-Message-State: AOJu0YyWxaEQjZcUd916ozrX/FWq26/q2IZkFKcKJIRTwPY3GTO5Q2Li
	gmI/bTSnvIM6UNL2dhRIwnbuZcJ8pUS64IgFqErMc8ZT0q/Q2m8bhonQ
X-Gm-Gg: AZuq6aKH+zBe38RbQ4cN2vG24kr2wWQltZ2vNKLy3SPpkTvnNsKeOlRarmXw+CydAn2
	wseiXCsITKm4L242eJ+BWR2/iQmWojqCaqYMHvG//T4MeoBHRp8ZcblXe8AWYOWAQXndnVscx50
	i5NlFLjnXRLk9KwkHjUL5svdTq9m7CxA6iXPHtaa8Fxhp5VIkVlnOr84jLJF2+iMkHSzxK+jEwF
	NGmQ9UDSCOS8ZrVa2b4rdfix/sLyS61k7OIIDvAffCXj9ztpkc4naEn5Ii8pOS/4+OwlWcgUBzV
	cuLKGQKchh9QgazTp4fm3uW26WbqDy6Bpb8uf5i4SSMuYOmQYWlX5UHqhIz5okG4+Y6zdOm3gx0
	SfPJh4/CjRFMs+YweursyyPR+ixy31g970yDWlIpVpU6mXXjw3SqDIGg11zwN4T8HhIzugAYZbf
	XW+Q30caMiqla2WBTpstOIClJTqvELp90W1qFT5WhnPLfsdIJUXElEGtY+FFZswdaB
X-Received: by 2002:a05:600c:4f86:b0:477:63b5:7148 with SMTP id 5b1f17b1804b1-483739ff886mr38808915e9.6.1771002307427;
        Fri, 13 Feb 2026 09:05:07 -0800 (PST)
Received: from db07.UM6P.local ([196.200.180.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5b4cdsm7701637f8f.8.2026.02.13.09.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:05:06 -0800 (PST)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: andriy.shevchenko@intel.com
Cc: 0rayn.dev@gmail.com,
	Michael.Hennerich@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	jic23@kernel.org,
	krzk+dt@kernel.org,
	lars@metafoo.de,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mentees@lists.linuxfoundation.org,
	me@brighamcampbell.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v1 2/2] iio: dac: ad5504: use adi,output-range-volts for scale calculation
Date: Fri, 13 Feb 2026 18:05:02 +0100
Message-ID: <20260213170502.28465-1-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <aY40-0v9tbXC4tPY@smile.fi.intel.com>
References: <aY40-0v9tbXC4tPY@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,kernel.org,vger.kernel.org,baylibre.com,metafoo.de,lists.linuxfoundation.org,brighamcampbell.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265435-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: EC48B13879D
X-Rspamd-Action: no action

Hi Andy,

Thank you for the detailed feedback, I'll make sure to add those changes
in the upcoming v2 series.

Best regards,
Taha

