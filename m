Return-Path: <devicetree+bounces-276758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AEuBGl5uWnQGQIAu9opvQ
	(envelope-from <devicetree+bounces-276758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:55:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AA42AD5D7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:55:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D24B301BED2
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B2C28A3FA;
	Tue, 17 Mar 2026 15:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PucHr8pI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79649280329
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773762908; cv=none; b=W8UTHTRQVdOfNG+r4YVnSw8UIsoRp4kMFJrJAup+9ie1n0cG3YcioqtXi51K3P3Emh2x7vaG/asa0KhC+1lCicDQwuDjlNVHjlxkfstAUhio3fBdQrl2aQHesiSitTxSuHaNVA0HiJ/7NJ0iOVb4PkdOXeirdk+jkiCT9IRfCTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773762908; c=relaxed/simple;
	bh=DVl7jLgxMIXSLk+EDXb7k2RJJDz3Mx+eRUZGPcAqzKE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBJ1uyHFko84hzu5AAIVg2X172fkDXQD3AM5DZGR/zZhfBivPfV66pWW6rXelKdYko+Pt4Tc+Pa4sS9FWPExpX1QdiEMhZu98V9FJr9FyM5zdvaIpWn5SSxkk3pUzOanajJRDwoWNo6gXvtSHJ7+srxTYrme5cZA/Gf0by0lbsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PucHr8pI; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-829759ca646so3581568b3a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773762907; x=1774367707; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f8ibux8nB/MhHnX1SyYOz0IsNXVQjw67zWlanOsT53c=;
        b=PucHr8pIUbZBx3gBF2TE+YGpLglnXec1O2hk7PJEM1Y4ZETngyf/W26vQTSdOQDMyx
         EcPnLgEPBnV4MQZtgv1LJ07x04RR/t1LsYdQ2/1yTmWRIuGitAwUDryuAc47dmrZdXNp
         H1GjNjZaARQnKpWHcZ95JAtEbm+MUlw2f5NTCzTM0RGxKEqVDO+i2AgOwN2SmqnBddTu
         /GHa1sFRA1sIIch8D8GTcGVueyrUTZfnhZzLv0eW8Pk2DJgfUCOMDIG+NMFmjbJZl4AR
         ZD2KWomntn0Olle+FlezQNbJG0X31SqeoqnhBoXdBNdsLCoyZBqztDV8WqwEQI76UWA8
         Xv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773762907; x=1774367707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f8ibux8nB/MhHnX1SyYOz0IsNXVQjw67zWlanOsT53c=;
        b=fBUEPsnlSRgsVISwAtILjAazcLYg11aexdsBgrKwI2QODv8vguzcOU88G2z6gpCf1F
         x9f4pFbRsrZTgXmcCBNZ4Yn4lBqIERT1IY172I0JUVxfXoPcEPPKESsAwl4g14xbSQwY
         hzKuTVCPQuOY/RsUwgCsq5TgqyTCpDzrDpUciDcuDBpYBrFWlCEzClZvIlJ75UnS4SbT
         0aSkXQFGWo/MYmvYFdi6awEImA+KsmEz40Jp5VcY7V25dnhS/coEZzhGP/a+SS6KWujO
         IZGmSPTIVmuSecTsLy9X2b4evNBDQcUskMycgBZZqcHxAblU8pStAxCTAdE5vhygYoEP
         w5Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXq11WPWaIBfyxiOzhYs5pRrClhibzdnJz7eVsJEoUbqr95i8DI+JwGnFRkUv50KGCopphCcw0t2rmp@vger.kernel.org
X-Gm-Message-State: AOJu0YxsDtoMj1wzCatgzYDhA81FChN2iijXThlx2UNgIa/1faFtujFO
	eh8xwUhPzlkVNx17moWpdXkb6k2WsLzzsJne97lek8eWpLheAO8mIQ3c
X-Gm-Gg: ATEYQzxenhnhVi6GDw7t4h4Ca0OrCfAdYx41ogIYwd63QUYO10Hpr7wJ0JXVwhNEl2G
	DZSi0HX5gY4wPR+OoyXWIwGchjWF/jfxB893WNPim8lymKISGEQig62e07fyT3e37FHGnj8cN6S
	0xLKdou1/oKs7/dalKOGL+qMmXy+oxDDijhpX3pA4SGNjS5M6JxYaRt9eQAJVmJTtYCOjW7Caz2
	x+0R8/pZucNcP75n5DimujG9SdJyFisntiR7TlinrKHdUIB0uOwss19nPnwGtub+LxUiBTmjymb
	rm1L91XwcC2zbyx8p0rXnz5t9ftsfPOgPuXNqEPfvRlL1R9TfFRIJh/vChxFU1HA7oYXzEYZacM
	navUi394p9E0gg5595zc6+DrBNera63ZcLaShgmSuUJO5ynA9NspjcrkrsZD6nagtbh0oUSIbte
	AZt6IcaRrgyFLX7DU5VG4gPpGbfzXxPQFJcChN
X-Received: by 2002:a05:6a21:516:b0:398:9044:77b7 with SMTP id adf61e73a8af0-398ecdd8a48mr15587743637.59.1773762906804;
        Tue, 17 Mar 2026 08:55:06 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e5691b8sm21201a12.25.2026.03.17.08.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:55:06 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 17 Mar 2026 08:55:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rahul Tanwar <rtanwar@maxlinear.com>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>, Han Gao <rabenda.cn@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: moortec,mr75203: adapt
 multipleOf for T-Head TH1520
Message-ID: <7f043ae1-c863-4884-a2c7-710a8d9d8771@roeck-us.net>
References: <20260309162457.4128205-1-zhengxingda@iscas.ac.cn>
 <20260309162457.4128205-2-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309162457.4128205-2-zhengxingda@iscas.ac.cn>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276758-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,redhat.com,maxlinear.com,vger.kernel.org,lists.infradead.org,icenowy.me,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,roeck-us.net:mid,iscas.ac.cn:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 73AA42AD5D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 12:24:56AM +0800, Icenowy Zheng wrote:
> The G and J coefficients provided by T-Head TH1520 manual (which calls
> them A and C coefficients and calls H coefficient in the binding as B)
> have 1/100 degree Celsius precision (the values are 42.74 and -0.16
> respectively), however the binding currently only allows coefficients as
> precise as 100 milli-Celsius (1/10 degree Celsius).
> 
> Change the multipleOf value of these two coefficients to 10 (in the unit
> of milli-Celsius) to satisfy the need of TH1520.
> 
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Reviewed-by: Drew Fustini <fustini@kernel.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

