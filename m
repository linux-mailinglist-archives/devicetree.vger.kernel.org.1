Return-Path: <devicetree+bounces-257178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 842AFD3BE85
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 30B0C35901B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0CCE352F8E;
	Tue, 20 Jan 2026 04:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nbBCzfA5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6816D33C50B
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768884073; cv=none; b=Fay26IcucDKus00dBGOXZz+ChLv6DZos9RhVmX2fwxhProaHjqd6YRR6f7dZDyoN4l1dZoSnyW4O11S37fUTuh73vpiTnTFQptdTnYHF6SiDIIPnp7g6OIdBHufAUMZRhLkGhS6LGNd80IMkMx0fZXPACprKdWtjpS2veNEN9ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768884073; c=relaxed/simple;
	bh=su3uEXlT84BJihz2o9XFbF/J8Fa9DMBq2JoIbnsewPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IZLkgmIAIlW3vu6TxOssSyYlYiCvxY5RgPa8OpM9/Y96yEYyOALgp7ZRrSWLdrildS/pkxm+d4n6M85O+HcuxrWq5340QS02QIofkwv7q9EDvQCtz5H1uqjbVun9vWsKNVhBxz/mdi2kt7WPm8suKowMdiI3w4wIo2Xe/JhTJEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nbBCzfA5; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-894638da330so1860836d6.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 20:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768884071; x=1769488871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gv5G6VMcszifsvErGVwkIh6g0xPeD3R1+Dyj40SWmEo=;
        b=nbBCzfA5uiFPF+nLtsaxAG77N216jx0X0uhaD5p9DM7WJC2AYiwapG6yl2RaAX5H3t
         RwLsbS8abdUowbNxP7DuJ0wprrAhZWO5D8XSVpyLVjSDHY0hANW7fZHIOhseEwrYG+XG
         u6+2cirGZo/Jz/JOsaXXUxdE7+1LUjDGja2ot6K0w70bUJRp1fdjaNV37z0Z8TkVSvYH
         ISlMrukSSa2RadyCmFXHmIiH51kiejsM1y+Qt0bSFxffykWCmLwy/NUGBHglduKSpzSQ
         CZ3SK2lh+jJUN4ESh9y4E3Ne8r+AkmAi2mnbBSvz0MMDWWLcXYEqQi5r1vdZHFTaApk+
         d6mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768884071; x=1769488871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gv5G6VMcszifsvErGVwkIh6g0xPeD3R1+Dyj40SWmEo=;
        b=jBVAnG4qsSqVH1z6crYhXBF/+aU0Xfy/1uqxNUqyqc0KzxH++u/a47yL0IqmcEBCni
         5XdXr9YqpG3Mv513OIF9TEKaATPhO4PeP1uZXRsQWXCswQ9bFoKduLdal2gudwcxHZmq
         uQcxnKdzqUHld2lBjRuX5LHkdC8P8Z5wDDaynp+QEpk1usovmZz5+pKAF2uOGssIq59v
         zr5evviZDozOdOBHJ6FyYY25sLbj8JDha/tIRXOvRtC38lpCDWBW6LDTMPNz5x2ikySj
         skPbh6sJ/l7Q7qiyBBe0/bbAW3V6pBvnq8YqeydoWRKRozRA20PmO2UlrgWjM8fDNmyL
         0pXQ==
X-Gm-Message-State: AOJu0YxA13UMPaig1tWzesamIeZOEb41K530RkxsAMROOlwDvAuNA7W/
	gOhzxcx2IA1cg0PXW/6Tu6ROsKMWdAGIfNAxGaKNBDOUj71PRCwSHCB28rtdi1El
X-Gm-Gg: AZuq6aL/oDweXR1A138NHjS+XqkutpBi7PYMIRQ30xdSndj1SmGdglxXAFYY0MhjZc6
	Pd00XDOswvr27yUklD+A17Z9Y93CBpq92d5MLvPsAFRmD4Acwc9ui86v1aFs8VNZRiJU4FJcedk
	rZcROsjvtyqm7j5GOrv8HEq2gWW7KIyVCxuJh9CRnpA1DAQxf2I+LfPbT/bkw+AfWZIzRoTMwNa
	7EUPft8tlzVAPeS5Ide1Y62Di2ZcLDgHzE1nN3/k1nZFnBEKsKsixS06hrpj5CYqKwfLf5X7wzE
	fjONrnpCdAjduXsJxPjs7bo1ml5koE52xUXClaBhvxRYH1xUgajGmkhWZ49uKXuU+RgCi2NT1j2
	hKXKQVTniFl6leT/eN2VH4ygdcGeiH5239JyPKdrbn5oEWhQq6nvfNlKfAZYnMN5dPXI4x01N9P
	xpg3VFgEztEA==
X-Received: by 2002:a05:7300:8189:b0:2ac:2e71:90d with SMTP id 5a478bee46e88-2b6fd5d8192mr302967eec.6.1768877334281;
        Mon, 19 Jan 2026 18:48:54 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b34c0e22sm14967921eec.6.2026.01.19.18.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 18:48:53 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Zixian Zeng <sycamoremoon376@gmail.com>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 1/2] riscv: dts: sophgo: Move PLIC and CLINT node into CPU dtsi
Date: Tue, 20 Jan 2026 10:48:41 +0800
Message-ID: <176887176535.427065.12899087990982068409.b4-ty@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260113023828.790136-1-inochiama@gmail.com>
References: <20260113023828.790136-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 13 Jan 2026 10:38:26 +0800, Inochi Amaoto wrote:
> As we have a separate CPU dtsi file, move the PLIC and CLINT
> node to the CPU dtsi file. This will make the sg2042.dtsi force
> peripheral devices, and make the CPU dtsi force CPU related
> devices.
> 
> 

Applied to dt/riscv, thanks!

[1/2] riscv: dts: sophgo: Move PLIC and CLINT node into CPU dtsi
      https://github.com/sophgo/linux/commit/5e6836e735f9c9c5e8e1d1dce02dfed5fe566e8f
[2/2] riscv: dts: sophgo: fix the node order of SG2042 peripheral
      https://github.com/sophgo/linux/commit/ebb87dd74c34a76e1e93041e9329cf9269be35ed

Thanks,
Inochi


