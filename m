Return-Path: <devicetree+bounces-274801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB/vLlses2l/SQAAu9opvQ
	(envelope-from <devicetree+bounces-274801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:13:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF5F2789B1
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D302318DEB8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2FCB402BAE;
	Thu, 12 Mar 2026 20:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mAm7PGQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D7740242C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773346034; cv=none; b=nmYTyqSJ1Lk/E8yC8gB+DoaRUFnBgX/Y6vs+5t1AOLnnRf7tFUIenEMzmS/zTF/nRozlORfU3Hb4e1ea3fu4ZYAUrOZBEWRirjYCqXVQPNVVauf2gnqIe0ajJxVFZ02KRPK1a2kaNNUWyS+N4iQ7Xm+EUEi8SP8MUFkTkFzzKHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773346034; c=relaxed/simple;
	bh=CMNpkQG0OX1ZmIY4eNoRhc5pN1fKRttQ1DPPmQGZ5Ok=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=DwXsuJa+WdEOUxDYvt0Sh3z6LUlVkNz+JPbY6qxGNw16Pc8Z5B2rbJ4+NOBTGOq8WwFqbUKOXtgRrOdg0pSzxs+6vc8YZUM91N1w1QIIudnSOQIKQa4vitWes7sKcs4DfyZfpGDNPUthXP0DAiPXeAuYVeUWHYKwS1gSjIa0DWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mAm7PGQu; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-466f00535cfso1054668b6e.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773346032; x=1773950832; darn=vger.kernel.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TE8SfkVbVBBUM4eryiGIysgS23QgsEj7qFxF34WfEmM=;
        b=mAm7PGQu766QLdcOkMPI+qUB5mZZPzXals0SwH6kB2P+4sWPgb87QZPSYPCL11TtpI
         AX+rgqNIK1TeOHSn30zOXJNgxv7H6LXbfhriQjSY7sjIKP/beCMLNEOEPeYh1Vj6YLqG
         Nu/X7Bwf2kOCIE4tslvrqPNVSSnpuR6dJgstefLiAihaLia32PeBJK0dhMbg85k9UxwR
         ZxWYe5yLniCfvazFw3scVVby8X+aIJ3Gxof3H3eExroFRWiaSrYtaZ9hdmYXYEXrCJRB
         /Pl+BeXF97DSlmpqrfgaAhIGgYWUjN/xWBkDSQ7I/LdNQubEovFcFEc2uZ96fp7VaXKs
         oqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773346032; x=1773950832;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TE8SfkVbVBBUM4eryiGIysgS23QgsEj7qFxF34WfEmM=;
        b=okmww+acXMC/p52fxx2Zpj5SHIrP0O2pV8Vwtv6notjMoqu2Wp627lN+IO58GnCB3T
         1iu6LM8BfFlJugztDtznZHfffHcl+tsTCwPyXXO8SLnQlwOJjQUw5/mjKTuaVthgDsQL
         4SYm5eo7C51+21O2fsovbsR2VNRyYwS2zYuf/nGjsX4/whNysBh/88i0VWVZLrevIwbo
         8qtZAhDpRjZeLQ0NlER4VPTi6Wn1VSw9j1/h8wDSLnuvHvUw3ihE10qVOHuHM1fr+POw
         4qoINMJdQ5vq6rFFv5xOh/2OIKpQV2x1VTG/QyDzLSoobf5Y9BNE7e+ShpRBtl3yewl5
         ZNCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuIT19MRY0NSiUPurW5U7SjH59n6ihW6fK/TLRxpoXSpbXCi+STTUWHVZvPZ+JfvSxniuubtejA0Aa@vger.kernel.org
X-Gm-Message-State: AOJu0YyjK/orbr5Jelm2xmogwbkMHUHFFsrPB4Kf8aRJuTrLXnEMqls7
	7rd4CR0in6RRmHJMKLfzqdg8HLymJFfLGKDmg9QpapYVatwxH6nNtP/S6fz4rmrC+gM=
X-Gm-Gg: ATEYQzxCpMsmyaCA7J5C5HpKpdjNxGhG5sOAOlYyUqD+lVMf1QJby2qlm0YL0nM1ZPN
	ms9rUA4UCLwFYelDkBMErj2F5HJSNtT5+dYuhPtIj4tvOvHHIM8+3DB9nBHAYDQIiRoGBBOlqkf
	GHh3ri1DfRMqGDVs1QV5HdFOCyiIlOyH+Z79bJ+im5K3EC51CagRBzQjvSZlzJGVNzH2Mlugt1o
	PkAW/G1vFfegGiHge3qvQffNJME+0Lji/rQ0PbIrTBrrHfa99xEtW6x8N10gW2X/1RmDI2bUOe/
	ps5Oxe4N36hLhCUuatky+a0+0OZAmYn1Dce4+6+P6hy4DIiGQKl4AbJUn/CwM/OA6yv2EtkiOYj
	27/qNFpSSfnKr7hpPcihqkQ4OVmhiwLJ8GnllNA6ovrJaajGQUoZUJ5W/ltvJgW+jujteO6KWDO
	tCAuisi3dmIKJa+TNUvWmz2zL4Ua3Rd3+Ovyf2yQI=
X-Received: by 2002:a05:6808:86a4:b0:467:2584:873f with SMTP id 5614622812f47-467575432eamr241621b6e.40.1773346032433;
        Thu, 12 Mar 2026 13:07:12 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:1f95:f82e:8747:8137])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e6c7885sm5600081fac.17.2026.03.12.13.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 13:07:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v6 15/18] clk: mediatek: Add MT8189 dispsys clock
 support
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
In-Reply-To: <20260309120512.3624804-16-irving-ch.lin@mediatek.com>
References: <20260309120512.3624804-1-irving-ch.lin@mediatek.com>
 <20260309120512.3624804-16-irving-ch.lin@mediatek.com>
Date: Thu, 12 Mar 2026 15:06:36 -0500
Message-Id: <177334599652.4124794.12067751220383417571@freyr>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=622; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=CMNpkQG0OX1ZmIY4eNoRhc5pN1fKRttQ1DPPmQGZ5Ok=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpsxzklpGpUf/ZQQIyqz1DGbRxkAj3JX3gj9Fst
 kHYKcWEcLiJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCabMc5AAKCRDCzCAB/wGP
 wAB9B/0amsj5mtHGl7JwYJ4m/8bCDd5vMrY9EYIYFmV67HC/3VsGnfj1wPsBIVVvEBbRl+IhIIA
 ZsVi+f/fEjvU6prplQZ/YZd8np1yTT1IWdeKgbGDDKpmhj+ay9gbv30oTZ7hntcUeH8jUMJrP/q
 tZU8uftAxgDKfME+lIWGswpoBwlUSOzobxeouycG+WNAHOkJA6P9MGeEtvRIK+FKpHbvhe8km04
 Ox8e94DXUVshX9UMS9lDnF5G0nMYaWHn1RibGjXUQ/s0dnAAbbdC5p20fdx+NRF7/D6TTyYAO4N
 AauC6vpKcGuJ+POQeLop+wx9WdMiq97CgGUQthHxIRLRvwFx
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
	TAGGED_FROM(0.00)[bounces-274801-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 1FF5F2789B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 09 Mar 2026 20:04:57 +0800, irving.ch.lin <irving-ch.lin@mediatek.com> wrote:
> Add support for the MT8189 dispsys clock controller,
> which provides clock gate control for display system.
> 

...

> +	GATE_MM0(CLK_MMSYS_0_DISP_DVO, "mmsys_0_disp_dvo", "disp0_sel", 20),
> +	GATE_MM0(CLK_MMSYS_0_DISP_DSI0, "mmsys_0_CLK0", "disp0_sel", 21),

Why the random CAPS here? Seems like the name should be "mmsys_0_disp_dsi0"
instead of "mmsys_0_CLK0".

> +	/* MM1 */
> +	GATE_MM1(CLK_MMSYS_1_DISP_DSI0, "mmsys_1_CLK0", "dsi_occ_sel", 0),

Similar case here.

-- 
David Lechner <dlechner@baylibre.com>

