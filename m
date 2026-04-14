Return-Path: <devicetree+bounces-287288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG5wFlkd3mk1ngkAu9opvQ
	(envelope-from <devicetree+bounces-287288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 12:56:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C154B3F8FFC
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 12:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F1133007662
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 10:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E673D7D9E;
	Tue, 14 Apr 2026 10:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O+bHQ/XX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198223D75B9
	for <devicetree@vger.kernel.org>; Tue, 14 Apr 2026 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776164049; cv=pass; b=LWT9WFAXHplSX3zcjuqPu2VhfiNmHnxZm6Es2sjrRPXXoZC8DFcAc50g+2u2pVY0AziZlaU6ocdsZ1knLAILJ/jwSEgwYPyxF79+5PxlC4lkDUrt4E37AMwr8LED4BVUvDHuRTLiH0qAkT9FW+56YS35gH8YKdnw24fJR7Sn9Bs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776164049; c=relaxed/simple;
	bh=IJ6eZNFa4BvzEyhZzc3NkU6Mj7y0nTg/7TgB/BQzNgs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mskbjtye4pXjSNVealTMksrw96hWQplyVY5VTGM4RLLcqq8YCayyx6aIoPUV0eVtAEyfKxzEBww5bBS1vxTq37jozuVTvQ6o/hyYev9SKrIx8gx0fXoxLVHjhiP5pLHH9HGmoPkcwm884MHLvTMvRvH/mFJ2JQBtkIajCw1KZaU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O+bHQ/XX; arc=pass smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c76b9efc299so2141183a12.0
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2026 03:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776164046; cv=none;
        d=google.com; s=arc-20240605;
        b=UX/K6Ud+TTSU8eAmIVUwYYnQtjtM5FWVPK9dGEQupaNuWTbg4UiUk/Dt5Vvh841HNd
         0/XXzVoO5RceToaS2PR9sVl53FrL0cF8anVR0eljRasq7CfJx6RPnpGBxs2+J4qT+Rmu
         0ih0PGT76iJUnBFQKBWiwUcLeo2pN5L12rwM4BFNQvRdAEdIfUeo1AJdNGi2mJgO4xoF
         qN4Mvl5q1P1S7TjoJkx3FQy/n5DlhpVYaGT8qrHoI+238rlaFL0Qvjc4GAI7N+zzxMsW
         p6RfdR7JnARkWAFOXPZ7cjZXIUEVNcMxzuYf+v5cNNfDS15T4EEGv4ypCYlt7IyMPupe
         66Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IJ6eZNFa4BvzEyhZzc3NkU6Mj7y0nTg/7TgB/BQzNgs=;
        fh=qLE+AxAPrw24OOl1otOAc/nGoLCaDFL3Ah7pYljs7LQ=;
        b=V7FWaDsRGRrGvyXtsH7qtPFo1PW7Ssi7ufBbcGDMUgsCD8YhccFI/nh3nI5YUcVbpb
         seYeikwYN6gB780FLlbImlFp7oGAWGdDwkhj0Dep9ssuSzFQWJwt8UVtaSHEicNCqiGN
         LlXZDjjTF7kYl4w7JlkqRAcAcbkSilFiNXH9reUZ0MzWkGiAw1V7+Lug1o6eASE+9vhi
         GaaRvZO+6sQutmTlKyYBESC6ZOat1sBjTE2+UoovPYOwGOefG+ovP2PSwpcGnKHAdSA7
         K4Kgv9MzijVUzeQMPHAgzKH9dWer7/9ewBwbn9H2xVT0bX2D2tx6KyMpxmUqR+iJVooH
         YWNA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776164046; x=1776768846; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IJ6eZNFa4BvzEyhZzc3NkU6Mj7y0nTg/7TgB/BQzNgs=;
        b=O+bHQ/XXtMGwOQKs7GXvIf1SYUw0hn5HcY0huKkwdIYFQr+5ASKkIzPgfvjvu/SPBm
         wlrKWa7vT2KMB6lrdVmz1jXhGzaMdGt80RelWBHBV27o+OnkDaK4gtNpEY6P/mUzD3Yi
         FQhIQzuJf48ekau/E2Xt65k1WyPv/xlJNadUaPjFhGotWXGMR/7LipkbY33NXiqjF/Eg
         AqxCpCr+5GjZVaTbIZlNtBaDgQSvKnz4BnsRIwokRoomXvjWZZqUtyfJ7hNX/UwYSK2A
         PUl9tqmNgchVRx71zA4nfsGJy3nmyUCsdYffgFWeCxU5eH286nPrCl15Eb80i7HiaRvK
         1DNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776164046; x=1776768846;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IJ6eZNFa4BvzEyhZzc3NkU6Mj7y0nTg/7TgB/BQzNgs=;
        b=JdenIVuJhJIz/zy56G+/BYPyQdPsghAEwjXPyVUZxAsMNgQVJbKJCizvvlWPWkcjQS
         pyWHekiwtBa1d8fmfLQuK6KP/s12fTqDsV4isM3QhK4KG1Iu/29uNEzszda0TjJDkFp3
         d8KcfRLIJeSGmCscnQPcfe5qeG/gscrLLZd6BVMENpnoCbnDNEVCoApHRNwX1H602IOE
         42IIP+FDipahOI5JP3wyF9G9+Wa0IXS7RbYxONcp5EgAc+fQHjb4X2O2aor7zQTxiWab
         w1QlVktVIoiT8M5hP+Ok/1oiNjnOhjN8A0fvVWTTELZxkwPN7OcUHCiuLD3OoaS9+gUs
         Hwpw==
X-Forwarded-Encrypted: i=1; AFNElJ8QFKfo79OHvkupstlwLEHQjdLfcYOke4cEhUsN0mut3RLi9bAWhn/Q4sWFUM3nbE4H/hmTuHnl15ib@vger.kernel.org
X-Gm-Message-State: AOJu0YxG/6fqVX/6JcdoLWNLS4MHiqC/l57iciom4Fx64oK5P0qYSuA5
	PGKAM2ocO03DVjks4iCBGX4d4O8ZAvGzqjjTtHZY2N9zgbDjR53LbYSG2snEzmW2fRXkURmaker
	/uG5fOLOCVnSlzDBVPr5IK71B11A8Ax8=
X-Gm-Gg: AeBDiettCBLvn1rTvZJamu4uhP3BtDaHLpnPyO1kEv9nXzFWcEGtqEkaqQLFShEWsqT
	sVUfiPGOKsRmCachhCW2tFFTOi30w1pJPu9VOKCM3O9EFOH/0pkIHZf5bQEJdEN8mlLFTBQlPXm
	RyNHzVhd80lf/HQc5fqVljbMW35PyCt+RbUu6QjTeBmInl7ia9YN5jwf3Ngk/ZIqssOy2/vBVme
	6gzbcyA94ipUDOEdqXQww8wH+O0KUWvDI0yfuDnAQ/z95DqFtzkLdjAWq60HDYgSaoot4n8NlUW
	NECzE5j8PGdDNWIkkKkNi1ptLKswECs4D2bIJQ==
X-Received: by 2002:a05:6a20:6a13:b0:398:a060:a97b with SMTP id
 adf61e73a8af0-39fe3c2d507mr18527614637.1.1776164046322; Tue, 14 Apr 2026
 03:54:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260413100700.30995-1-phucduc.bui@gmail.com> <20260413100700.30995-2-phucduc.bui@gmail.com>
 <87v7dupfx6.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87v7dupfx6.wl-kuninori.morimoto.gx@renesas.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Tue, 14 Apr 2026 17:53:54 +0700
X-Gm-Features: AQROBzDvbXBRQEOHytM6mfwHKRF-_puUL3-UZMWiLosO-tI7eLbkJKI2mRDU4oM
Message-ID: <CAABR9nGu6HyP7HA-0RJX7t0kbufu7pAkbUq9MV9cWUAd+uzS3g@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] ASoC: renesas: fsi: Add shared SPU clock support
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be, 
	magnus.damm@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linux-sound@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287288-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,glider.be,perex.cz,suse.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C154B3F8FFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Thanks for the review and explanation.

> You added clk_spu in this patch, but not touched.
> When I checked whole patch-set, you initialize it at [4/6], but [2/6] is
> using it. Maybe it works, but is strange.

You are right, clk_spu is used before being initialized.
I was not careful with the patch ordering and only ensured the series
worked as a whole.
I understand now and will fix the ordering accordingly.

Best regards,
Phuc

