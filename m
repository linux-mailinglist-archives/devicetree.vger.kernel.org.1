Return-Path: <devicetree+bounces-273152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDq+NHFBr2mYSwIAu9opvQ
	(envelope-from <devicetree+bounces-273152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:53:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 744FD241F00
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D64AE3021BA6
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F92836C595;
	Mon,  9 Mar 2026 21:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="waWtEAQX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E9A34B197
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773093229; cv=none; b=j+YbSu9f0+5+8plp1m5pU6iQry9ia21hLVQ6tnps9jiUKT7Mszfa56ENrSxQ24jGI1y+oT1PsaPIhrhotoDPU1NlPqmndytM8Jk500TIZMQAwcPwRdG2Cz/1krncOaWUTSoSVkkkW4ThUIdB/kmkj1r38pDyvPnLluJHQPh4XS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773093229; c=relaxed/simple;
	bh=hW7oxczAfLOiX1UbKUB2maxX7hRC/oqrpS/3AHkjstg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tZ1BNVkXQV+JYM4SwBwuYCa4R0N970RRN/pHaUlGezJVoF5x29jGgKvlV504POIjG1Pf7cQ5UCzgEekbkDuGTNU3WmNn+LaH52i7WvyO7jELS2KNNGsvfSFf7n5y4mnEfR2KRz07iI/nl+g6rYl5Hw0Tsjxey9FeaYqSF7ZMJlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=waWtEAQX; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-8297e0b27e5so3154261b3a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773093227; x=1773698027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oksk2SC8l8gNKVZ+ppxouzhJxiVNngQ5O52QXz7r3AM=;
        b=waWtEAQXxlBdUB56hHricTwkVs73XWdE+D6uwisg3o7l0BV3w0h6wB1R73cMvRfR3l
         +u4XQMDN/PmsjlnevfiNSjZDwklehcg2Vs9KuoNY9lx+zG9/0cqGVBDyW679yRR0EfuU
         D4xT/ZZfXKxVnS0iisuKzSGAxHmqbo/7W2XSWeXTDufjA/mDnRSHJrl46eBLbXUPcIQM
         lRDdbY9hTyD2kX16rqwhsXB/3btmu13hx+2/jMd0Vyh6lRRKMDdscx+/pFpkGrwHpbxq
         LRay9GzYAwt4mnV1O7ioXfUKwcWg6RZMMgo1oxT+A9E6olqpF1ZKSZen/jXp+V47f/1o
         GA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773093227; x=1773698027;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oksk2SC8l8gNKVZ+ppxouzhJxiVNngQ5O52QXz7r3AM=;
        b=Qla/Jxk6iS/8JdA1aAxDrPSof5DCH27+dU+5I6ryvPyuCf62Cv6yzge+hWzu91NtH8
         wXuKvZVhtTcd2/f4Em3RgplYhaqJRgIamfihjsjYRLb22Mpzsz3LMoghekYm5+Zp/m3q
         4ioJvWFDUvp6AVTbpJ/PJSMVs3PDev/VLmOXLu5oNQQhbz2f5q92Cg2uNMwEJwpIY/zV
         unexJ0MrHDprapR3IhOB/Gp4D6nhoyr1M6RehVKHuKWJferbEHz5SEMdlpRhAap9zTlN
         ERPPXwrJM2IEAsT9jeZ0iLdle3MxCsBpgZ9Or0htPmuly63luHyDZ5Jwa7QAeVyZzHVV
         ZmtQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0zs27KMyA/tLSnQOrbSQy7OIJdg+T7PwdLlu2ylueltbaw8ws3qgP8s3918UbfaEm8P2YPwedHb09@vger.kernel.org
X-Gm-Message-State: AOJu0YzI1LZdjmaZKzZiNmVJ6SVEbx3qgq+4sYz7jcRduflu443XWpHc
	A0GoT9rcb4BJGXsVw0mQWXhOcgQyg7kcPxJzwRMCLpbocvCsJqE9lA90fzExPG+AzOc=
X-Gm-Gg: ATEYQzwo1/jYxLH7qSAOGs1TB+sEDX/9wMtqcLcfYGH2+DYOiszRONmLOxM3Y7cGgSj
	ZXZhBZEX4YMpDBzAkwhsjGsmbzenrg6lOXz5pSAN30LrVe3EtGgFqAYAgs3NMy/WOqXUGLiWA2u
	3byu/ZI1UBmeCr8zs2IBOZQPCFOaVS11lYN57mWn8qUCWybrBQIjvbuFFZdNw9dLR0Ls3/kABHV
	xy8suXWA56t4uhlbSOAMuv9xW+2coYBUMjrOzaaHGzmLFcSs8gf6ECmfsZJFMSa6bPiAu7GL0jU
	erLHv7lYsxBtFemyFg47bNkeQt+syVsdCV9GTHKvTrE+0yFbOu9pfLpisr/dnjTjQDtj+OQvnNp
	FDL+4el5IQSj1BM4I+Y7XXLMFbK/4xnCtlmLqQq37kK1aIXUma/YsZ1VCoR5PBPsxkJM+vE/hoG
	pg0eblrT9hg9GHUUf0KKdM
X-Received: by 2002:a05:6a00:1f10:b0:829:862d:6b46 with SMTP id d2e1a72fcca58-829a2db6622mr11130108b3a.6.1773093226656;
        Mon, 09 Mar 2026 14:53:46 -0700 (PDT)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48de551sm11460977b3a.57.2026.03.09.14.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:53:45 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@ti.com>, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
Subject: Re: [PATCH v4 1/3] arm: dts: ti: omap: align node patterns with
 established convention
Message-Id: <177309322512.4034405.1932369183802712305.b4-ty@baylibre.com>
Date: Mon, 09 Mar 2026 14:53:45 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Queue-Id: 744FD241F00
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	TAGGED_FROM(0.00)[bounces-273152-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,iki.fi,kemnade.info,atomide.com,ti.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action


On Fri, 23 Jan 2026 15:39:02 +0000, Charan Pedumuru wrote:
> Update OMAP DTS node patterns to match established conventions.
> 
> 

Applied, thanks!

[1/3] arm: dts: ti: omap: align node patterns with established convention
      commit: 7adefbf4dff31e016c0edc653b85823afff541fe

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


