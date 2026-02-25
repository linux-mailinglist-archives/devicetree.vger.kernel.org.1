Return-Path: <devicetree+bounces-268562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DGKHWKSn2kicwQAu9opvQ
	(envelope-from <devicetree+bounces-268562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 01:22:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D7619F5D1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 01:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 839D730182A8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F822010EE;
	Thu, 26 Feb 2026 00:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GdhwxjmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAD85B21A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 00:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772065321; cv=none; b=BhsejlY1RBQRPdvVbHgnRY3qsqUhMvnE2Beqxnea3uPyK/4K5jFhimT25to1RHvx8UseI7kJfI2Z48bhX9WFlSmeL5UL16LISl800lG9qWqF7HXgHCnuINTG1eCHmlph/bupXcIB3PM2EAQUZ35pcZ/j3ohDm7UUPOePrzSqJ24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772065321; c=relaxed/simple;
	bh=bPNWxJ0PsKswuNugUux6ENRUt7NN3n0Zwy2e/5d8BA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iFq9y5NtdLX0NJE6NzOl59k4MjxWiv7WLBC1dpgMdkjNGYN1ul2IAZAPrqEyV/wlJZLSrn9uagYOf52jHI7+NHyunfDoSH1jAQug/gKaAn2etVMnJehZMzKyPT2wvnG+HbMcWyhYRRQ0ButMtTo4cuYA+lX1TrHfno24+nNtiB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GdhwxjmR; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5688b9e4e80so163855e0c.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772065319; x=1772670119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+vrInnbX0KCc1ynABnNky7B7FYswXUG4HFiI8RLfvys=;
        b=GdhwxjmRO6AsytvDKjPOWF1rH9SdAHDNFu4svtUnD2mHs6aRfrJXf2Tia3xA3D8TEn
         M5QimZQlDdBYtBUmCBj/REY7y3Lse+f4NbA9BdmE9Rof2Ih8jjndw22wR1Yr3UJPnp2v
         Ql0D1g1U6m/Eu8CJy0T5Dp8XVsbss15LNUV7Ur1fLe1aKm/ucy2gm2T1tPugqFuQu+wx
         yEt+F18ChfjPhQPWTI3L/9gDsjl9YlHm5KR928ADIfHNu463y5lWofV6swl+MeFST80A
         jDtFQzyD1TAufTWgCoxAhRRiVBw/irWi2UUn8XPdCTgzaKh7i9esL6RTvHs474WiLdX5
         jlxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772065319; x=1772670119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+vrInnbX0KCc1ynABnNky7B7FYswXUG4HFiI8RLfvys=;
        b=g4+tqRh3OvZp3jwCGGx7UhXTDXUPe07qdI6cXzm3YAvWwfJd6vtaOeo+++g450v0Tt
         dWrMiO8m667TbclTHqan57EuN4QoO4cSctfChOP3i1g46sOfMerjV2r9unihSyoFSM/Y
         ieXnyITBnrFC/GMW0exzsRtERCMUYRtTQsi13O9POEGALKrzOwznRKpSYQBt8HkrINcx
         a328lU7cVqAcGEWKC90PnN3hS0MWezCvMTG5PjeXzac1asTWfHPbCc6YQj5UNjQGoIVq
         VtcNwB0Z13qIpkiX8X9VayfAW1u9nKX7EWoO1jvoFBW8yTLwZnDZYrNbIeeBW/zZzqIH
         8yWw==
X-Forwarded-Encrypted: i=1; AJvYcCWvsYYeKw6llSuLdRDmgc9pwz2WDgVacG3HyEZoXQ/zoHAebTqretVJrO953Pd75p9cFADe3DkgedbL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv1+BnftiDGFnIwZmGLMV3ftbb17FOAFVnQyqwlLd3xB4X1hp7
	zb1re3pdb4xPuPijogWcHMV9/K91Xpkeycoynrs4diisKnrb7sEnUpKI52RNbv3B
X-Gm-Gg: ATEYQzze0e4o3/sHmSxWQL2IRkS5guEU1RdVzykfIFxZms74jUJXt7AfkHtRamKhFcE
	04bKRco7tQ7rcR6vQd1IlSJzzqtBTGadwYEM9V4D4/ST+PWjRVKkmmlmfCrEmWBz9WIgHVpHM5B
	a3cZbsAqBOhhEUNMGx0Pa+shVIc9L3AKH0tFRn07g7QWw1wYgw9k5QXSBoYwCtBn/A5OnZAJ690
	f/Fk/iS5sLvZz5R/6FsxzGFPdshpxjvhsvmkQUOy++wL2NTI/yamlZEH+3tJX4wV/rjtbiGPOgz
	S3IC1WcTzhhsma91Ds0BzQ2mNYA8GBzoBW8WNhluTQO68KuLJwRsH1zGL2ClnPBRdAD8f0KcXZR
	3AMw71ctlDoBbxKqRApoEqkqNrxyGim2ZymrIWmkRkCiPwlCrrzY/QT0FUeKdw+NiHWCCUE55/M
	0=
X-Received: by 2002:a05:6a00:2d1d:b0:824:3ef6:a815 with SMTP id d2e1a72fcca58-82739767b3emr516796b3a.8.1772058091345;
        Wed, 25 Feb 2026 14:21:31 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d544ffsm290363b3a.12.2026.02.25.14.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 14:21:31 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Frank Li <Frank.Li@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Yixun Lan <dlan@kernel.org>,
	Ze Huang <huangze@whut.edu.cn>,
	"Anton D. Stavinskii" <stavinsky@gmail.com>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: Re: (subset) [PATCH v4 0/3] riscv: sophgo: allow DMA multiplexer set channel number for DMA controller
Date: Thu, 26 Feb 2026 06:21:07 +0800
Message-ID: <177205806122.119215.17895713731232514155.b4-ty@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225104042.1138901-1-inochiama@gmail.com>
References: <20260225104042.1138901-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268562-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[synopsys.com,kernel.org,outlook.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,whut.edu.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D5D7619F5D1
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 18:40:38 +0800, Inochi Amaoto wrote:
> As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
> the SoC provides a dma multiplexer to reuse the DMA channel. However,
> the dma multiplexer also controlls the DMA interrupt multiplexer, which
> means that the dma multiplexer needs to know the channel number.
> 
> Change the DMA phandle args parsing logic so it can use handshake
> number as channel number if necessary.
> 
> [...]

Applied to dt/riscv, thanks!

[3/3] riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel number for DMA controller
      https://github.com/sophgo/linux/commit/7b159ed9c81cf7e0d0b75666e6548ceface2e1b5

Thanks,
Inochi


