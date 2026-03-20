Return-Path: <devicetree+bounces-278377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAghAd98vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFCD2DE206
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E5DCB3049331
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 694FD3DEFED;
	Fri, 20 Mar 2026 16:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KEqnn9hf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50B53DE442
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025150; cv=none; b=jARQ2mRSjwsTBWXEacPuf/Gap21DSg3n2hakPZaG5ZPwlIroIYJUVNEpPc2lpWMHo4AJtpOzkf+6hnpQkouBiyU2DACp0jSvYuK5cCcXOiw+6Hv1tdlDQIX9iJSuq/Pa6sFb/peqXaJbwTz9gg2lxMm0tyrfniVDd+Xuwc6jlcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025150; c=relaxed/simple;
	bh=ZojnK09Mc+1usbeK5j9s42nV+91No9sdCY+jKtF7KAg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bz5Yyt4IdR+smHj9eiB+V4U8R18s5/s03NvboRq1AEX0j5eej9T9fS0evGY6YSmjj5r9IGy/CwQadaxMpoO9lAldIFHNfzK9K/kp4/5ANzfWdYiRl3ULq9vCyANPaaWDB/QW1vCw+ITrXG+Ezfr/pwOyEYwGHNTUyefKctm1c5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KEqnn9hf; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b98133bdc4bso258713266b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025147; x=1774629947; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Jvo2/D8IcbrXgv/nfUWpfBkPNW+8ec4futg+Nh84xo=;
        b=KEqnn9hfl/Zx5D98fCEqYbBoxP0HUxhsAXydwTMC7QqJgUsBy0Y48E6fzXH8gGjRho
         wND/w/918KEvsiSHDcH8iPtfmuj243HFANSLLP/3Qkfffy4Iq871eoaHIEzvQLQWuKef
         5jj+R/2vzHRlSimnLj2AdKLjZBDHWG09OldGKzB752QH3QwgjioV6Os9+tzuR8eX650u
         oY+Ou84mlZ/HP+dJk1Z24UMYfGetSd7sn6GGJtTqzKqZPoeLACyODFxSuSb4KqlKJrNT
         xRyW9wSe51C/TYJxRVx30e2O1BN/G1Vw6TFXnTXEf6sUpUtcs+H+1kAGezMkGV/ZXs6A
         VyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025147; x=1774629947;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Jvo2/D8IcbrXgv/nfUWpfBkPNW+8ec4futg+Nh84xo=;
        b=XEx4r3Fa7YMzGik4vlkrR1cF/8Zvn0P/gMcZQ4IIwXtW3rh4YQZvOiXtiaf2CGjGFU
         uL1+NWBcjQX4K1RPkLcHvYtqSrq58GBrtW5ytEAYbLDr61eaeEw1j8LSdYltxkrIF62n
         VZBuux+Ou4as/GZqfJrsXfTjkUTv0gS2kEBS8xcsIRt4tyW3MrPivD0Y2c5LE89CVn3A
         3ViEsfa4Z1bPqeHuYB4gy9bSEPxSi6zGPR79KZiwZI0nm3TFwQbY7Rvhal8BBeYkUhTH
         DiUAEiIVHtU6Bse8dckFKT2se0aMmCF0+FguWzDol7T4mnADlFe88ihZXTjVnQ8yFpp6
         UzzA==
X-Forwarded-Encrypted: i=1; AJvYcCVR7fV4wY85VL6mUp0hzCA53Ok4clEeNBcV9IxUmzCHDxOK+a5ohaapjlK+FtUXDjuPMDx7cy0qRU9v@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh4SQVKMupKgeafMv2bBXHvgG3Gy0ckFtkboCveCh8RJ6mdS1r
	nNdlXh2kwHcmsmATTlTJpX0MhT4ppJym5JUUv0S2eyFOtgwOsizmWKwA
X-Gm-Gg: ATEYQzxrcexDOu+ZrXFL0M8bC98reinOUfAnyhOLawJSV4gvX2qafFjcgoUae/z7TEZ
	zUH15BKBZHlmQYgBIjynG8YUvLIffeVK/wdT8b4amzcxNUkWDQVJPlQQ42sK5h6lkKEzw4odOxA
	rkfYaeirLC6SsI9HtxoqUQnTNiZ3CDmbGETc7zgb37SA73FJVS9bICdgywdn7zD7PFeO/wnJIC3
	A74jwTRZssYAqPIP0a6z3H29NnqZFXqt1Dkx+tWEbrbjS72T9/smgOfDRGF7mM25Cx1lzWlc8Qm
	g2nzl9oPtFMNGqt36nPRbqXyDe9oivDHed1N3PyZdBWpWxQMYHh8XZtF6jFikvOwwKiBxQVoYOC
	Q+guItSjmsAoycQL33UnBewYrXrBCIpbY4ECEVD5ioQfNZe7pwlSfCpIEYSy4FNN4iskAgXCG3d
	adauGPGQAiFYtsQsZeGvzxOpLjJQ==
X-Received: by 2002:a17:907:e107:b0:b97:bc30:1bd with SMTP id a640c23a62f3a-b982f1ff0eamr149690066b.21.1774025147086;
        Fri, 20 Mar 2026 09:45:47 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:46 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:38 +0200
Subject: [PATCH v6 3/8] iio: light: vcnl4000: move power enablement from
 init to probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-3-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
In-Reply-To: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278377-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: DFFCD2DE206
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Given both vcnl4000_init() and vcnl4200_init() end with
dev->chip_spec->set_power_state(), they can be called once from the
probe to enable the sensors. Move the set_power_state function from init
and call it after init function in probe.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 939ff2d65105..287ccd89cfb2 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -280,7 +280,7 @@ static int vcnl4000_init(struct vcnl4000_data *data)
 	data->rev = ret & 0xf;
 	data->al_scale = 250000;
 
-	return data->chip_spec->set_power_state(data, true);
+	return 0;
 };
 
 static ssize_t vcnl4000_write_als_enable(struct vcnl4000_data *data, bool en)
@@ -425,10 +425,6 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 	if (ret < 0)
 		return ret;
 
-	ret = data->chip_spec->set_power_state(data, true);
-	if (ret < 0)
-		return ret;
-
 	return 0;
 };
 
@@ -2003,6 +1999,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	ret = data->chip_spec->set_power_state(data, true);
+	if (ret)
+		return ret;
+
 	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 

-- 
2.53.0


