Return-Path: <devicetree+bounces-268920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFIFD09soGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:52:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B031A9237
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E24230BC835
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8AE27F18F;
	Thu, 26 Feb 2026 15:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BAWlRUQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2EC22F177
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772119631; cv=none; b=RxK129jOU9hyP0/G8B87wm0YnZwEGW9qYJ9paOHt9z7q5wd7Gqsq2VweIzDuhym8oDNe9Dss1Me/iz8C7H+WUAmBLa6f5ypyAdWV+YXj0OO27k1BzNxcXZPJzQaTIHRM1JGeioBQa2py0Sogg/H+YU9NFR1fELnI0F4r8AeUTFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772119631; c=relaxed/simple;
	bh=TqPrfZLT95yVJpouFPAY4mg27r8HgvUrMOyGUoLI24s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bRL7rGu9jIG1rgTPNAz+GOT/x63xGWN7qI3ZmVCPdrOcWEwx3EfZX2/C7pt7nkD7OWF/BqKUr/To2dSQZsUhB/thjTlS1NLd9qOHUUvgNauAx+f5AqNTyqNsoqJiLsuCZwD0fRzGNsxjqJ0smYiVcFz9RWyk4JkkCwMgCp+0dS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BAWlRUQq; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-1271257ae53so1145750c88.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772119629; x=1772724429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ysB8qazw9WdL090G1GcBnHN4qzpigP9WSIuSWTG5Q2o=;
        b=BAWlRUQqRXXi/354nlNvqXdlGLZsPWtIiJC5Icvp/zQPl5eRzVuFw6GI+jvAqkjkzd
         h+ihgBsjHxYCUSsf5Aw5BboVlQlHWEnrGLaWvgsNKDgR8nIkGCP6q8ChTVxc7vaiMb3O
         0ILN5Rz9x/ohlArGWihnYgYVnEl0cKQR4TYUNhau2dUTuaxaDAbd7yx7QkocEq4c3JoR
         ZpWe1vs4ZSJygvCIf3VWXqiYjOfNO259g2EUYOEVVDhpPh+TnEbRNUYrFlfY4uNdH5pf
         LGtukVd+DHBRGaOCmjr+2iM0u2wEXCxwKfQ5i82PaWdp0I3K20Rm3YRRguGXbNmO1tIV
         5eyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772119629; x=1772724429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ysB8qazw9WdL090G1GcBnHN4qzpigP9WSIuSWTG5Q2o=;
        b=lIZQU3TgV5DfHskz96Z4pEEE531Wm/Hm3hUaOg17Y4Dp5L//bdmoT3dNyVcb4tcGl5
         7PWZY0/zof/rMlDNmMzqoFZOuCncKTgy09Lzxalzk3GI/1DCgdBXNmeeftWdK9nRFCKz
         q1MQiWUsO2cGVMGEPGC8m3sEvkShY4w5y3TSfcEL5y1DDCcCxOeDXMSoesxjk9ieiGG+
         sw/oEGkjypgwtHM2ak4sb7ktfX8ok/HPB4kPS5IT8cOk5RgKBYaft4FvS1+Xzo18yDmh
         TwOkj2wh2eQZ5fbtmWRAaoqnso2X0i0rp25YEJfKHWo87JeTeP2Y7kEkEm46sxpA8oc7
         cjRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLuj57vpOWR1BS0mJg5S5YsUhvjEiv3Lwh7Tykfm0yOoo//DRgegPfzaYUXompy60UcagCWqPMN515@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+/BKYj5bUfp16OgqCpk621vtXxzBHD2z6ZKEuOX8aOxgf16wJ
	iszo9Waf1TZOP91P01y1IWe00HRUgDViZEBrwREMFghw7iMHBC+Y7CYF
X-Gm-Gg: ATEYQzw23icNX08LBN5YdXYd6qxcifjM+9oNbzSbcf4lg+5ctcPgBwwsV/9y/iUVscT
	hgUt04971kBT56t8S/XtzcMGXUbxaD2uiB4oStzEByxa/G7hd/g5MRHNCalLMKAYLN51uN/zc4Y
	NydDU+HRbMaxiZx6iUh3tk/9USwz9tcxp6o6efX7JF+F0aySYerRJA5sv5zAhXxk+of7OxiXRQb
	bU/tSPkFz70h95Hk5msiZTbLOA9pLR8jL2XR2RTxmPfOiIPL+o/7/xvIJH8Sdkym0rm1DutMd6q
	mB/JEv39QDuuQlIQrs7XvcuP7a/mXCDGPtNXP323UWPd7wDKXXttSEeIZoefudjpmOLCkJcoeGC
	RQTH0Ep/+IzuYCwpYvr6e2qWjLfHIRIK7pMpvwWrowb4yTQYHZcEkHfjzHy7zWjPdaCAJ2ZX2bi
	Ub1Rtd10Pfjax2DWH8BTLT19o+CYIbpbcxe9J4M3IgIOboEWCBEsoNVH0Q6JyyNw==
X-Received: by 2002:a05:7022:4384:b0:11c:ec20:ea1f with SMTP id a92af1059eb24-12789ccb8d4mr1228765c88.33.1772119629259;
        Thu, 26 Feb 2026 07:27:09 -0800 (PST)
Received: from arch.localdomain ([149.34.251.245])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-127899dfc47sm2694569c88.6.2026.02.26.07.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:27:08 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	jernej.skrabec@gmail.com,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	mripard@kernel.org,
	robh@kernel.org,
	samuel@sholland.org,
	wens@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Date: Thu, 26 Feb 2026 23:27:02 +0800
Message-ID: <20260226152702.42051-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <4d6c13d8-fd06-4cf4-9ac1-0a3e595092b7@kernel.org>
References: <4d6c13d8-fd06-4cf4-9ac1-0a3e595092b7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,lists.linux.dev,sholland.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268920-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ultrapower.com.cn:url]
X-Rspamd-Queue-Id: 90B031A9237
X-Rspamd-Action: no action

> On 26/02/2026 09:48, Jun Yan wrote:
> > TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
> > equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
> > WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
> > one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
> > infrared input.
> > 
> > It was released by UQsoft as a blockchain-based terminal and is
> > now discontinued and no longer supported.
> > 
> >   https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
> 
> This name and footer at that page suggests name "ultrapower" not "uqsoft".
UQSoft (Beijing UQSOFT Interactive Technology Co., Ltd.) is a wholly-owned subsidiary of 
Ultrapower (Beijing Ultrapower Software Co., Ltd.).

TaiqiCat A01 was released by UQSoft, with its product homepage[1] hosted on Ultrapower's 
official website[2].

It should be noted that UQSoft's official website is no longer operational, and the 
company is seemingly discontinued.

Therefore, I think it appropriate to revise the relevant information to Ultrapower, 
if this is acceptable to you.

[1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
[2] https://www.ultrapower.com.cn/
> 
> 
> 
> Best regards,
> Krzysztof


