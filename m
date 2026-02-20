Return-Path: <devicetree+bounces-266778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBPFJ6Kvl2nO5QIAu9opvQ
	(envelope-from <devicetree+bounces-266778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 01:49:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6F5164024
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 01:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6C09308B777
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 00:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9982192FA;
	Fri, 20 Feb 2026 00:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V99lUJsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CA8212FAD
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 00:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771548245; cv=none; b=KrGiycUOWatsSSbeRjpOXWGZ2N3ozqZUyde4GuZ5eS2SfxSSrszyciU6sbnQiHfETMvcklVVYJJh7s2IXjTd5n6kCPCKqTryVVdGxmGMe1geEeqQIYd/jl6/s9kiTXvvAd8Il71hbAkp1peRxVaAvJFbANaQf/8GzEcZD+wAbls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771548245; c=relaxed/simple;
	bh=BDTw+eDfdE7M+/+F6uei5ntF2At6yGsAeLZmalhgCMA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rB6dZHYBR7YFcT0EFwcVQ5NHDRE6sWDyGe8RpwtT4FnLAED2XwXkClfRv3w8Loq4AttYGBmMoe2It7HQbGmCBDEOOzbKO2PtP5OBIR9QWsPGQsMrGIe1zrcZ3caQ6y5RG+G01+t+KOArqvsb9F4UKQSYkQ37fSs+h1eoBpLLN7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V99lUJsk; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-82418b0178cso914646b3a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771548243; x=1772153043; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8Swd7ImjQhdLe4zf/a8DbqXYw6m4TT3gQEggQly90A=;
        b=V99lUJskYWRAl+jvMTTTaUdoTiMLfugcMEnmLBT+CuC+aclQi/E1f5zZ2wYP+aqDET
         SjUHG6vBSEGzC23JB2SgjoWX1LQRSuLOB5jm0QEeI0AIavINU2Nk9ux6S7nYQtlTcEJF
         1FO9soZhKk+QWCDN4jVJhGqZqVUvJwRwPnaVkBRNGg+j0N2Vce1ypwmrwBY0YKRLdJpU
         itgcdcOWycN0AlgE8eyIUp/8FDYE/E+9FG5IyrRZXMh0Y46Wi5v+BN69VugLVdZTqnjC
         OzJod0OwftweCH0SAUeQRdU/FRKAtrGLg5tf6CbJ61Z8CLiciLnJOJLFMkRvUgeijYGg
         gv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771548243; x=1772153043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W8Swd7ImjQhdLe4zf/a8DbqXYw6m4TT3gQEggQly90A=;
        b=SYwxU74gPnMTqpIzLJYxPuBih0YyiGIFLtRLqFjIesTgQuOOI198zS7BI5s3z7FEka
         nJHY+5gs4XRdPT+v19cYK+AbSSAu3czl4tJSVksqsuibBDEGXZfsSGhC25uib7+MX6Bx
         DA+Z/pYGq1WR+bKkKNQWHhSG99TvBU5K83NZwwfUPVOLXEURG8RVVLfJGOyi9GPDXYsm
         r0W6TtbUcVK9SvB+use9VglmIToTyd5dpi9wlO/dcnk17DIVKFYc20DBXWfFIOYCs6Vc
         jzvO+SOdqhB/WqfTVxHsJqSvfiMlq+5VegPjwbLm2mYmQk33oF+ukx2ZPH0CbAaypymK
         PcSA==
X-Forwarded-Encrypted: i=1; AJvYcCXaXo3KptcK+B144FVPszSATBEaW2E0XVZ6ZbR2W6iXdFsm1X6uIfyH9Aoz7PhMcrSW1mhn3vIaEkhl@vger.kernel.org
X-Gm-Message-State: AOJu0YysEPgYN9ZMhRzEEPB/rkkr3jnJvhvfcmMYAMRbj26uF5GA/++m
	twoXpEv6eKyfKr5SXl0ZCRswRjv4Mr9g2zYutEz8+nXrxlZis1qEY7sOP1Wimw==
X-Gm-Gg: AZuq6aKA7c/WIEvHgZJnKhZf1VnV4y9PiIuc8BvBwnezl/dCJb5C3L/MxTUVZ0sTSYD
	biZp3xgBtNg7l3R4egXhrKLw4hy82nQHN1thsysYdknGowmRRIXblhW1iNzfd0V6BMf+NVuQcI/
	lGlU0YkYXR2XltGYSJBeJrJimQSEeKVOgoCc3eAhkva/zeJJdQC3lQr2EO+tFyVEclEJ52+3m/4
	2YEvyL0jBRp2F1dlimyFrP/Nt/qmdzagAzuE50B3mtANbBwmD3uDorPMJ2IcqV1MRN7LXswMxQZ
	qCi2AkFmbkEtmuKJgrVsfrNxqq7BtOfihFoSWHJvoWuAgMXvVf8qWLyrrDApeA1sk2893lDoMAb
	Fa39OS4lKbEprL/2Hys4Ck4a1zpbm8HfN8jlFc+GugTe6OVfmoRVpWNw+2J/vZ/+11+7mJ2HP+x
	d3LHrr6QstzIOUKrEvfGC/g4ukdkMG/b2hcz3ZwRYTJbvAHGbi62XR5Jc=
X-Received: by 2002:a05:6a00:3909:b0:824:9451:c1ea with SMTP id d2e1a72fcca58-82527746e8amr5298075b3a.67.1771548243229;
        Thu, 19 Feb 2026 16:44:03 -0800 (PST)
Received: from localhost.localdomain ([14.0.16.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a3e15bsm21194743b3a.19.2026.02.19.16.44.00
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 19 Feb 2026 16:44:02 -0800 (PST)
From: phucduc.bui@gmail.com
To: geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: phucduc.bui@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: renesas: r8a7740-armadillo800eva: Enable 
Date: Fri, 20 Feb 2026 07:43:57 +0700
Message-Id: <20260220004357.1680-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <20260212073819.41304-1-phucduc.bui@gmail.com>
References: <20260212073819.41304-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[glider.be,gmail.com];
	TAGGED_FROM(0.00)[bounces-266778-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3F6F5164024
X-Rspamd-Action: no action

Sorry for the previous HTML email.

Hi Geert, hi Magnus,

Gentle ping for this patch:
https://lore.kernel.org/all/20260212073819.41304-1-phucduc.bui@gmail.com/

Additional hardware clarification regarding SDHI1:

SDHI1 is routed through a mechanical DIP switch selecting either
the SD slot (CON8) or the AWL13 SDIO interface (CON14). Only one
device is electrically connected at a time and no runtime
reconfiguration is required.

Tested in both configurations:

SD card (CON8):
  mmc1: new high speed SDHC card
  mmcblk1: 29.7 GiB

SDIO (CON14):
  mmc1: new high speed SDIO card

So the SDHI1 host works correctly in both cases.

Please let me know if any changes are needed.

Thanks,
Bui Duc Phuc

