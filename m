Return-Path: <devicetree+bounces-232393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D4AC17569
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 262191AA82EE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 23:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE93E36999B;
	Tue, 28 Oct 2025 23:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aofOEJwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535B435502B
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 23:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761693842; cv=none; b=cKXnBy7R66NHXBfyPiQy30XhJTAj3m3diwnTksSFIFjUDd1HXmIAEGPflOTkDHIX/+EjMyZrfDKa2BF86Y6wNL5A2xbLnkvwtzlmhBPHBg24cJjwObTPtMTjDpfhkGK1lLKvqctxowANAjDsOFXpGIJnxnaaxFOFLZgKSFsQWZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761693842; c=relaxed/simple;
	bh=TNW+jdMT4hhh3TmJ2jO7B8JrIZfypTmPlWlWhLV1ke8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FPPNSk7jreu/sZzwlS9mOz2GgnyN3kdMKeyFKVWs4/Y2453P1v36fooyifKkxpIuTC/Y0/Vydufg7gahsMk/TxX5MDrYn4DUUhBryaykXz1gRlc6A77lwZ3VuVNn052BXcWTS+0/0dGWoDYyNJs8XKTkgHIc18jU0IyfAKvQb4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aofOEJwq; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-89e93741839so321997485a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761693840; x=1762298640; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2OTfru6F2MqwOi8D04rM0pc9yuTPYWyscODXsRwOPaw=;
        b=aofOEJwqe9jDxWk7DL2EgqQJbD+TSd/nl/N9jBQBuTILjNkH0/1+ZgpzysiFN+Ya3s
         gpoeWcbGXio8iGqIYwFRmcts5MT50d+n2yyBGySGFK7G2sLD9iSXpkAySN1V7TINhkYA
         PteGzxxAQUSmxU+2AlskKrzDKnxW5IwGG8mwc4EtKvszkulDfib3cXEZQdcuWAy42xhG
         0j8HQf+ThDLlGB9yEw5NYHZlZQJFxMHoN/QA9gkoA4NVhklbsvaCWF81ebgNOLMvwE1A
         qi3nl6SdW73XYl3GqtPHzZzgDkmpHSeYdzXeOz8uxtRi0HV35idpk0Entboh8vDifPxV
         pkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761693840; x=1762298640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2OTfru6F2MqwOi8D04rM0pc9yuTPYWyscODXsRwOPaw=;
        b=SgBEEXR2GKcfOmkej9k4SMgC8sXcpjMoGIPSKTSPkMglrMGO68+3iIZuKyzfoTYJe7
         1ATjdTLVyCzjDeY1guqfMm2ueGi7HEv5pyKYCkInZST+y6gP02GBOqXyVYiyMz6d6QM6
         RUjLKm1cMoSmPvHSVqWTES2rCGWdLhsbqGbYAIzzjOV1L+nft8Ptg+c4oEOLHI6sGMnT
         4PcpXxHxwH8sgAMa0MC8IyyBPfl1ja97eRYwmCKPJgyXeruW2sF82Jv5hi9PvUTlX0wM
         S5HwGni24JNUGtL1ybMup98quoiewK2O/z9hqgSHFSx2jCd+K8u8r2Ki19boCFNwmetO
         PiCw==
X-Forwarded-Encrypted: i=1; AJvYcCUUINe2lMLBJTbPs8ULW0aO/dtbrUy01EYu2TTbf4APf122/msC/lvt40ml5XkIPtuDrGVm0WOpTD5z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4SmXy/g6yqkH2Efb8JY/2o6rM7LmZa2hNpUIv7AtUMvxjQ+R5
	W0SPFXk/Y+buoiFzi/IrkjqIsJ35gZiwKir9YGvjJU50LEmAcTA+ypBc
X-Gm-Gg: ASbGnctixYq2G28Sa8OQU/MHAyKwD/k0HWrcLR7S7dJZIXhSrkEqY6IqzkM8zC5LTSM
	QieYrJheRt4r5XQpxAtEkrccwKxbwP69/NylK5OJY1Vhy1ldffFn1TZ7CAXIUrG2vkujDn53hb5
	fCNT3+4jH7WGCio/S2bKjdVQu13J66Nss6XjyD4ukVGxjPAO5PfrTm70NGOY3GhGW3NKE1nZ+9/
	wQPpKmZH2zsyR+Ab6MiJcT1RxRNJgWRCM3cUg7uBlgZU0hYuFu2W7WkraYwTB5PDilAUJX3wykl
	fLESstbP6igglwEJeGBNKqzw3E/SBlrU/HiBnUJiuPl11xtX/b8PVYfiNcdWr+INTy1XiHU4MuV
	kHraQsl4gC4W2QDWgKsCS6CYcd1lo6fXQcrT9QRsOSz3uu72dIefF0dRa4b7gwUMwstX4Z8Whjb
	cImA20LIx6wUpC3zGEFs7TZ+fyUJY2yuT7FQ==
X-Google-Smtp-Source: AGHT+IGl/mFFQsS3epO7xa4Ze0vaEzgt45AdQHMyUoXToezCc+n8l4Ctnz9kWotaEaGAlioq6/UHwQ==
X-Received: by 2002:a05:622a:a10:b0:4e8:a254:c771 with SMTP id d75a77b69052e-4ed15beace8mr15238211cf.54.1761693840067;
        Tue, 28 Oct 2025 16:24:00 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4eba37d68e9sm81382761cf.8.2025.10.28.16.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 16:23:59 -0700 (PDT)
Date: Tue, 28 Oct 2025 19:23:58 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: Inochi Amaoto <inochiama@gmail.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, alexander.sverdlin@gmail.com, rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aQFQjnbfwU6pqUbu@sleek>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-3-josh.milas@gmail.com>
 <hkdnjyldwr4watvizsju4qcvpvkb3mtt5rathaooembpceyufx@ega5xrqj6v3y>
 <aOqtt7BDXxItrs7W@sleek>
 <bsol3uim4brrrsdmvuk6f3uzampbki2pyhziap6x4rw7txl435@rwoxrnctkf3y>
 <aP6UJFPP-ReYPzmq@sleek>
 <4bdad288-250b-4e94-abea-eb231fba5beb@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4bdad288-250b-4e94-abea-eb231fba5beb@rootcommit.com>

Hello Michael,

Thanks for your explanation, I didn't know it might cause an error.
My plan is it enable i2c4, uart0, and spi3 since those are the
default on the pinctrl mux. I have tested uart0 and i2c4, but I am
getting an error with SPI

[    2.423553] dw_spi_mmio 41b0000.spi: DMA init failed

Not sure what is going on. I have the DMA controller enabled and it
seems to be initalizing correctly.

[    0.732791] dw_axi_dmac_platform 4330000.dma-controller: DesignWare AXI DMA Controller, 8 channels

Let me submit v3 so I can get some eyes on it.

Thanks,
- Joshua Milas

