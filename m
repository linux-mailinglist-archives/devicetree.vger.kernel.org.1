Return-Path: <devicetree+bounces-274799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MM6OEwoes2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:11:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF065278940
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42FE9317A3A8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55982401A34;
	Thu, 12 Mar 2026 20:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hkLUX7Ae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F325401A38
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773346032; cv=none; b=aqbFyb55tf59GKUUuo1OppuwDhOf8UytIKavakZx0ffYq+M9+wJ5Vzvt/sUfyJmAlAZ9Rmdp/qWHxg+fXUpv7tKwbG/VGeyRH/aS8fxCdwCTtqA6RDvD6lO1p4MnJHwSn2J08vAgDme89SamjZ5wPg8BjvgXdBWgbWt6b3G+RVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773346032; c=relaxed/simple;
	bh=tkQxE/WaHOTyLw9z/sp813AJR6zA4pd2NdpV7fP6+0M=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=U7mCzLh89iUmnlTXFtsRNze+Fa//8zp5nVa0qe8224nzujIKmCuiPNe0aKSyQZbcvmOf8VBAJBgsvrahC9sO98Nqc756NV3BMc3sBZeFa11a9VpVyu7mgX5EDtwhrUDpEPuFMg2MswKBo0hBfmQRMfP9ZsyZLKgyYJKbT3xKHvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hkLUX7Ae; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-408778a8ec4so929689fac.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773346029; x=1773950829; darn=vger.kernel.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XrfqSRvy369yVc6mkzBE9cxk9/iWVTONTSjcJTlQJR0=;
        b=hkLUX7AezApsn2UftlxCJ8GJ/vrCumzYXlseIeyLMluuINpCxDzs/Ae7ugqMbIeoKj
         1nV5oXdDSpWXjLTvht+TRjhEfYBJF9luuw5agujzRoLdCK0QWQJlMJ23rB4AuXWsrMSf
         ZVEO7KxxLrdwK0isqrQHjDA8cGDM2CARAuusAco8/1bErafCg86zlOZVjbJnKvZdyetB
         75GiscdohhYZ8q+sT/wO1DUpdnMXzqxmdG9He93qeC5KRomW/d+9m4ahhDp1Op7WDV0Y
         pyJsmT3TtTBOSfSdSYOsSL8KHAF8oI/eWrPveWjg2QgibaeW5YWu5/FfgalOZ3omS2TW
         k4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773346029; x=1773950829;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XrfqSRvy369yVc6mkzBE9cxk9/iWVTONTSjcJTlQJR0=;
        b=NIN+5M7f64Nvl5yuU5X1r2n2PaPs4xAjzOydPj60JKmIJ/SNYj/AmZ0XCw1mfu2sIR
         xsdfTQOUhE5VwG9GPH6iIvuBVSAWaO8r5kY0SewZpQmSsrsy7em+fvxfswUZ+eJ5++8/
         AVw6nQKF0BsziC4EScsgAk3ZCKKxqfxua4pOCewMlvWiZya7sThw2tLFJCfJrL/eIxeA
         s+Szc8ZO86zv3ligMNemZA6H7G2DA1fwhABi4pq68pBSo+Ruh/QXPWQA0GRlD3D3Meo7
         2ASKiKSVZMd3kvnzIgTCpk+KcjFvBiF3R2A++sVW+lNeR8fWg+yYkUfRwL9p0J8pnjp5
         wQWw==
X-Forwarded-Encrypted: i=1; AJvYcCX5ISyarQYZkE401dp1CeqAcyN0/rJxXFXRNuc9wJL02tDQBUqrEi3lGwIGLyG8xoBBs0FAOzb/MwrM@vger.kernel.org
X-Gm-Message-State: AOJu0YxqiMLzofcVchOUHQp/rcebPQiM5DalbHawcoVauhbSO+w52v9h
	Akdq137/1NkbsbQ8f0FgpZPm8jy575hJjR5kX8lMlBm8s5+TfMkoMaNvA9jeeS54/Jc=
X-Gm-Gg: ATEYQzwA5WMEGyeCqFQjj3k3sBMWV0Wt9HwP6ecb+ICS9RpX37RyaQbjF9dmdMssIxT
	W3nbarn/YAHXDUHuOhU0miKjXBtN4yYsUQqBqRoxqjKgq3JFreL8+9BOeOglA2WO1COC5rNRWn4
	gT5Ht6k4kMTqSj/m9vzBQqTar/ZtnYDYlKMEQLJwjqT6VcyyJtxWiNuUl73tDWPIRbigHp0bbb/
	Zt8ZTnj6WmclWYj6SWhhOyS2zxYUlSEs0yHuFFWr9nJNE4uE/lu6o886m63lDli3VQ/HRtk3+cM
	VLCi77B4pk8fFqfeAkoa/fKRqD/lt+p65fo/TE35RN1dd3G7H9SAt1sBk8faEXLwBl7WpcUc4gW
	8sn5UjFbDuW7Q8MAbcH1dpVHCm/Visykl/kxw6pKcN1kdm/k4TJ5MIJscjG0id9sgxmBcedDEZn
	J8uCAhQf2CyaTQ+hzjhNRRumc9vI8QbTQBZJbcVtE=
X-Received: by 2002:a05:6871:5292:b0:417:482c:5c0e with SMTP id 586e51a60fabf-417b93fd827mr366324fac.43.1773346029164;
        Thu, 12 Mar 2026 13:07:09 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:1f95:f82e:8747:8137])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e6c7885sm5600081fac.17.2026.03.12.13.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 13:07:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v6 01/18] dt-bindings: clock: Add MediaTek MT8189 clock
From: David Lechner <dlechner@baylibre.com>
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Bartosz Golaszewski <brgl@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>, 
 Miles Chen <miles.chen@mediatek.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 netdev@vger.kernel.org, Project_Global_Chrome_Upstream_Group@mediatek.com, 
 Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com, 
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
In-Reply-To: <20260309120512.3624804-2-irving-ch.lin@mediatek.com>
References: <20260309120512.3624804-1-irving-ch.lin@mediatek.com>
 <20260309120512.3624804-2-irving-ch.lin@mediatek.com>
Date: Thu, 12 Mar 2026 15:06:36 -0500
Message-Id: <177334599652.4124794.9130759829438828661@freyr>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=520; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=tkQxE/WaHOTyLw9z/sp813AJR6zA4pd2NdpV7fP6+0M=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpsxzWwLcwCiJ8Z4K49ki7iVfChNgBVHE7qCgpm
 Y/2/Iw4lzGJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCabMc1gAKCRDCzCAB/wGP
 wC7SB/0fcJl+IqsMtJ0KbpayFuuIWaEoKx2Y+kspgWFvDk3ZZN5eiVoAGyzSde4TNg8/MKEDTzR
 zssxuG27VwnhdKRK5hXY3KyVuHfvUo+Q+l1vWWM6d47IkLLuJIESKy+aV6ajhGZD5ExQkBpqLUf
 /vCSyDwGMkE9rkFHUQ9p6WuFUFifDb0HOWvcvuM9MQ36kTfp9Ub0ufAYs4MbrMujowXIBE5YR5K
 5KfOPmbBOw6gtvbrhPFp8Jcwft/caJjstn4wz3XNF9+w6So2N7A2xaO+U+M3NrKjgHLBAscD6wX
 SU78NqGacCN8wXbg9BmNJJebWwHSdHSmXbCCXImCwsfnHKTq
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274799-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,collabora.com,chromium.org,mediatek.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,mediatek.com:email,baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BF065278940
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 09 Mar 2026 20:04:43 +0800, irving.ch.lin <irving-ch.lin@mediatek.com> wrote:
> Add dt schema and IDs for the clocks of MediaTek MT8189 SoC.
> The MT8189 clock IP provide clock control for main system
> (apmixedsys, topcksys and vlpcksys) and
> subsys (eg. peri, mfg, venc/vdec ...).
> 

...

> +#define CLK_TOP_DRAMULP_CK_EN				205

This one does not appear to be referenced anywhere.

Should it be added to `static const struct mtk_gate top_clks[]`?

-- 
David Lechner <dlechner@baylibre.com>

