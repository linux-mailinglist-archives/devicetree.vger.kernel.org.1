Return-Path: <devicetree+bounces-224002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E85BC00CC
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 04:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08ECE189910C
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 02:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E85F1C84B9;
	Tue,  7 Oct 2025 02:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="hPlVM721"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EECA34BA3A
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 02:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759805779; cv=none; b=CXs0EEVC+qVSCY7qpEAC+L0RyCzB1FColnaR9XgB/oJsK1GnPBWd2yVbKs1g3TlVYyDOgMou4pY6DIW/iXzfqS6wKFutJ2V4yHzax+8Rk97v5UaPjiLEirofaiSlEFM718xuYuD2le8D9v1hyPGxAx5NHLuh+pXJ2sFrZDQxc/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759805779; c=relaxed/simple;
	bh=fuFAPKshWl//JiXRjMB35HbsTIfb2+26+cuu4EjKaKg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WQiW5MPvKK9AAcvF19Ln3bZkHL8HpZbOuIerL9a9lPPO8PADytmZeQie5N90muEGdPV0J7aDm9BBj0arR5FFdReAwfcBT38lxnOU08vivZ9uoE8vcKjUBZfgt+eXATQ9WyXVjHu4CgzZ/koKWU0U4uM6TWe/uOyRwOfJ/aw9+qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=hPlVM721; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-63605f6f64eso5057421d50.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 19:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1759805777; x=1760410577; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fuFAPKshWl//JiXRjMB35HbsTIfb2+26+cuu4EjKaKg=;
        b=hPlVM721TgeVjFwhVnKlXC1zv/TXS90X2HqbyhPOvSdpDAAsOASRBYlTJh8zJPd2gg
         WZ8pe+JCtfzQACzcUjTidy91Vn/3XxL20lqPcaz1hbgqs8u8ymg7TbIci4ny7EZa4ZDK
         zvTNUmfYDdf80yPUKoLkLC/F3h7PPLOBxJiaGQrXlqCfw6z8/C03zWqt7XM4TmrKrQlj
         Xv7WzNHHYm8Tc9P7H5sysTLAic+k6ewQAfj/PdLjRHh9ZW7V1nmH6VMn+zqja0lceV/g
         7m+U8dCaCKX5+sQcaqgx4YT1S5pw/KoxAcTNmseUdm8QjVv0hCY1V+aXT8t8v4UmTpYg
         Xd3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759805777; x=1760410577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fuFAPKshWl//JiXRjMB35HbsTIfb2+26+cuu4EjKaKg=;
        b=YPIu7B65j8SWGyyPNaKuWBu5jruql/Nm4XQTF6kBK1FwVxwxszj7DYzwuOgPqeJD86
         LJQba2/s2MWwYFyb31K0USFtIyYoZTsbDyTmD3nJeWfNx6HNABw0nVM5AEXUIS1wzJCR
         Cj0saroX53J11tb0QnS6/grNRGeukh/6JJvC6vuxcRPkmjdBc20CuRk5zjvDwwGfYevw
         Ig0QSyck9aQ/MEfiKZgqdToUB3K7a6p41qd0NVSfdEvZelnEpvVzyEyqgd+VUb1aHCD+
         qGRUGfejHbBpday5lRIAr6zkdCZdN761cUvgw0POdo0Q8Qny6B7E5si/aNuf9xbUDqrK
         cQrQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8nJ/PpKY2X58iGubOzuE9t0uaN9YPwd4ahyHvPpVSzggNx6TiQR44l6VGiWuvjHmjfGqal6SlYc5C@vger.kernel.org
X-Gm-Message-State: AOJu0YxV0sW0HztN2sPRgTtc+dh7bwBnzbiuUUhAU2qsEda3vZnFkTdb
	F0O3mtaXP7OmBVqM4ecVfPvmkE/4bsiId4UauuN4KapaNT1OSkuMdEro4HjZQrszTRPtIcnf+qk
	vYYIO6YtYwYQomlkSxrytWpFy66X6kFYWfnAptvLHXQ==
X-Gm-Gg: ASbGncvTjTtYZOe870q03JfdK0+yZLeVh33LG5yGKFNPUIerVa0k3NlvzE3Qe3RdZfg
	VXBEJAF++C7MvyW4Kv5cnrs9l2U7aSdxRLRYZMhbJ6w+hXOBGj7EOybtST6fyujMr6s0vX3mIIi
	3//y/qAgFThwHU3sq9U5YDI5AqtJpiBncTHaSUC/AA5gnMiANbaBB/gJzIozgGEE5rAxqZrMG3P
	QIvaGo5M7Az7pK1H3zjiXslc5mfYaE=
X-Google-Smtp-Source: AGHT+IGiL5ZbUyw4GIm1wEiPzbvi0bFG0G6zf6Qg7uBuzVV7lluUj++swICMyX/mIRT04h7owb9dsBoqFDjT19u1Wdo=
X-Received: by 2002:a53:a090:0:b0:635:4ecd:75a5 with SMTP id
 956f58d0204a3-63b9a107b85mr10946438d50.51.1759805777473; Mon, 06 Oct 2025
 19:56:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006-tt-bh-dts-v2-0-ed90dc4b3e22@oss.tenstorrent.com>
 <20251006-tt-bh-dts-v2-6-ed90dc4b3e22@oss.tenstorrent.com> <a05be32b-dc8f-444f-8c1c-2d49eb19536d@kernel.org>
In-Reply-To: <a05be32b-dc8f-444f-8c1c-2d49eb19536d@kernel.org>
From: Joel Stanley <jms@tenstorrent.com>
Date: Tue, 7 Oct 2025 13:26:01 +1030
X-Gm-Features: AS18NWDhncaNX_AgRBWrUJDmiFjfXWDY84NNzl_Nu5rdMYVHwC56fOAaV3Fa3Jw
Message-ID: <CAM3sHeBweq285Mwqzwd7no3zwzoosRgsHkunnVkYSgHyh37eAw@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] riscv: dts: Add Tenstorrent Blackhole SoC PCIe cards
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <fustini@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Samuel Holland <samuel.holland@sifive.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Anup Patel <anup@brainfault.org>, Arnd Bergmann <arnd@arndb.de>, 
	Joel Stanley <joel@jms.id.au>, Michael Neuling <mikey@neuling.org>, Nicholas Piggin <npiggin@gmail.com>, 
	Michael Ellerman <mpe@kernel.org>, Andy Gross <agross@kernel.org>, 
	Anirudh Srinivasan <asrinivasan@tenstorrent.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Drew Fustini <dfustini@oss.tenstorrent.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 11:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> You should have at least serial or any other interface, otherwise I
> don't see how this can be used at this stage.

If you read the cover letter it explains how it is used:

 > The HVC SBI console is sufficient for boot testing.

