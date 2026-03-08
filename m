Return-Path: <devicetree+bounces-272605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAbVBoCyrWkW6QEAu9opvQ
	(envelope-from <devicetree+bounces-272605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:31:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEBF2316CC
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54299300A11E
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 17:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27EF32D839C;
	Sun,  8 Mar 2026 17:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j3P3wEUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AF43148AE
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 17:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772991101; cv=none; b=IzTpMfTq8gZi1XT21iGeAxjLNue8uxl7gT+J4VwnxwFzQMBMdl+LoZxDN7yjBzXqvmuN8plledpNCKlazM0NzoJj50KDUqER1NrFkP/Ie1LcLjVu8C6uMxFWXi2bjlzSrNUU7EBxiqF99QSNt36K0MQ+W1SCfJaad7+5laPM4bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772991101; c=relaxed/simple;
	bh=BAd7md9tw6EfRKEG5QtWON+EHxe1egsLBG33S3XVfdg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UGV5eInT3a/Ep0V2llV1pKdtjBJ+yip0OxkNrfyPrnQtYiID6j6dxAYkCV7NBpOgrb0IBO5z0xre/ZFnXUfglNXzXjW14hkv7G7tFZQD5W+I6XZ+wVAVUNiCC92PmFg6NhxXTXGCtzakyrFbGJu6J2xtz9VicRFUz7/uCVDQQMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j3P3wEUr; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2bdd40d3c61so9224306eec.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 10:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772991099; x=1773595899; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wtq9/lhU2REDT28M9py6Cq5xxsx16xGsyDZF6Ur883M=;
        b=j3P3wEUrKT2eqO/PrLai6VeftX3dJG+bVwnCoB4JYCtlbhhoC5oiQuyhrqimsFg0rv
         WI16mZPjusZPyE/11UAloeNKNNgysKjDv9EV5uVjj17zq2xbX25zB0ZamFCPb0EXbDAv
         pgNlCF+h/NUmA6C81lz2VFCHt/6O6V2GkHb10rCZx5r4zvXIQI9QsPxG7r2GAE/dZTUT
         ANlyQGwescbxWJR0f/IuiLnmSWn0X8+K5HrQkLFSvr1hHNMTjGOkntIVz4xdr2Q0NAcc
         z0S1MuLgptkuQlwIVF6RgM3idLGHALJb5a70MB9aMy4u0JTvljH5U+GlbMQMYWkkdIhc
         /PHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772991099; x=1773595899;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wtq9/lhU2REDT28M9py6Cq5xxsx16xGsyDZF6Ur883M=;
        b=fR5zuHxUFQacr8SeMleRS5CSXHwHkqAyLIObJJWwz/TGSoV78VQogQE9qUdOIBkYKl
         L1re/qKlKqM8Dr/5RwZPZ3hc8hMoHTOknLiJ4g383xjpaCwNUZpH1CPDSLyQXcwKItk+
         JIuFhCfIK2v44bkTxlrOzlwPCPMrLHgQVtkkB04FcxZELE50QcuPZOfV/UD9O35mOpkM
         hpZ8Vs+zITvEBowzkU56NAlPgZ3P0nyi0TrKiYexthayzSe3D50Yxn7toW1g1CsWJ85a
         v5CDhdoLMeQMVDp/0Jp67hOYcOmQs/bgi7DglxS+BedAP1Iz5QTVGAJRYxswAkgc56Bt
         UMsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCyHgPdffZmiBrzj4yOeKLBhi1UlReRNHy3migO52BoRRYdtyYHtq5uZlZ4bTkr3Tljfj6SmZdaZQI@vger.kernel.org
X-Gm-Message-State: AOJu0YwT2a+NnBUXtVB8VOQsQ2nWQnbAKLH2/PJkIfBystKTBQPBya04
	9qtHd2iEJLGGHWdxISxKkOifjl1zV6HHWTjTvGlbtwBdkw8MKxGAEGNA
X-Gm-Gg: ATEYQzwkwVMHk2MfKx+ygytTNapNCA36zqsdBtURyD/um80WXWWUam3WkNF6YqHtIE3
	yVzKgKMFM3OsFjLVcc2j74zE46eAHo4jYDVOqWwKgo5exEJwghorHXv+h+pQS2fcrv7VGtV+cDl
	hhoidhyZl1cCm/bJk/Lejptqb2FiCtlDltZI+YRyHmYmiQp5drGdm18gKPqCJvsH0ylwF+/49pU
	ptpJ401crvSSyv4ooKUyp7zVEDLhgL9sC5qVX989OWDLBhRU5sFjnSafQ6mxmNuMzCUWW7CrJ1l
	2fepidVHtx59amRZSECzraHgQR/E+xJYrReOZiFE25zrLj+EUMo4LBliSpvz392b9KaEyoRx0WH
	QxkMftNIE5/flxKrTXGTwzfhA3DyuGcxlz5jxCAMiJRCtGHQP3wZm7B7gNgV5irtoBzw8UyvvUa
	iGmymQDZ5XvoW0/9ytjfhyi64r626RccJzHLPd
X-Received: by 2002:a05:693c:8086:b0:2be:6709:3d97 with SMTP id 5a478bee46e88-2be67094029mr502015eec.17.1772991098821;
        Sun, 08 Mar 2026 10:31:38 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f80d6dcsm6838747eec.2.2026.03.08.10.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 10:31:38 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 8 Mar 2026 10:31:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Stoyan Bogdanov <sbogdanov@baylibre.com>
Cc: jbrunet@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net, skhan@linuxfoundation.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: hwmon: pmbus/tps1689: Add TPS1689
Message-ID: <326f3dad-b2d4-44fb-a4b1-d09fb0dc5024@roeck-us.net>
References: <20260217081203.1792025-1-sbogdanov@baylibre.com>
 <20260217081203.1792025-3-sbogdanov@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217081203.1792025-3-sbogdanov@baylibre.com>
X-Rspamd-Queue-Id: 8FEBF2316CC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-272605-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,roeck-us.net:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 10:12:02AM +0200, Stoyan Bogdanov wrote:
> Add device compatible support for TPS1689
> 

The title and description of this patch are really misleading
since they don't mention that support is added to ti,tps25990.yaml.

Also, the "title" field in the .yaml file still refers to "Texas
Instruments TPS25990 Stackable eFuse" which isn't really accurate
anymore.

Guenter

> Signed-off-by: Stoyan Bogdanov <sbogdanov@baylibre.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml          | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
> index f4115870e450..973ee00c2c49 100644
> --- a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
> @@ -16,7 +16,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: ti,tps25990
> +    enum:
> +      - ti,tps1689
> +      - ti,tps25990
>  
>    reg:
>      maxItems: 1

