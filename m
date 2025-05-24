Return-Path: <devicetree+bounces-180149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0437AC2CE9
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 03:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4360C1BA68FF
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 01:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C718C1DF977;
	Sat, 24 May 2025 01:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="zNoI9kDz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400B641C71
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 01:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748049957; cv=none; b=rg8AWTJRpCYii+OuODf40w9W4teIzmWXWdvzOV7OIQHBxKOolsr7VlxrMkFrcj4sCuTIXqWrynkbbTcW1XDqkTdzcRz8WZM+CCJAsZdWI0YGr3X6yXLRo57v+jb/GauxFpTUli6q/SrdalPpK95b4nZ8vKo6acey6ljdqRCLdeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748049957; c=relaxed/simple;
	bh=l1ZDZS/SgRZKCVPpw+35tAdRnJSUkZtdbbKhB270Ijw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XUXPu9Mfq+lPqPYwwxWpTmsFLZJc2ldBmur4zpIYRAiihM7MboxMzf5AqIT4kVrThqyCZzqwoyxsnwSb3jK3RoqKrZzoZ7R3E3+98tXhyHvIUCa01HVZEANRWrFnCFklwwsGN01fVyR5IAJjEHnRA81nLtbPBe3GEluQK81An9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=zNoI9kDz; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-74019695377so340206b3a.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1748049955; x=1748654755; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gsJDbHj9dierw4BMguGhVwoJuBKXsLDgRKWknpTgP/w=;
        b=zNoI9kDz9zZj0CWQUwjYqIo8oyli45+NrwFolMv8e44TFIzdWQsWPrvtWRFvflHLOC
         IPMIRkAqZpw9iF0yCPeH3YifjnyKCTFVNwBDMS4vEDl+H2wqhl5zPn1Eeko0Ot+pPW7X
         Gnz8PB4HEq46BxVoID3khIgmA4+VNpiuhCQTl3Xtd6jBrHxAh/DUvOLQ8OzstcACj8/X
         hafRu7bHY+lPFOH9wNGCMVrbmY9IsLOcuWHYwmsCZJsqOqTTnPvNX/QZ3Nq/qqZH1dl5
         b513lwx3IAAVg+F0hrGm3zUfTSzX3RJvVhmN2LkDUE+j5vxGmjzmZO92+GeA3SpSQMtg
         q65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748049955; x=1748654755;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gsJDbHj9dierw4BMguGhVwoJuBKXsLDgRKWknpTgP/w=;
        b=Nza5WsEvxmoKGgpnWYOxq+c1dT3NVwtL8xPS4uMMSW/U7iqufIHLeLkZv//X5u2IgP
         qBhhwYi68IibycyryFh3JS2NF89DEf8KnUYTtRE1kj9sZVrrVNd8QDQDvsLGv7vZxEEA
         iTcP4dvx/cbMil2UNIDPA3NhLyB2niUNPQLSycchZauVFpsJdTu+ZstuRdv4N/WZ9P+V
         XOQqEmushvhvG8y0eJJCtn5pJd0IjsiJ9adupUWrJSxE1B7RJRIGQQcd+EFMRO9NqK+l
         c/4atYWmnafZ/1qjrEEWvhdmhChGOuqdi/FrtNe2OKTmk4lylkwq03tU26vt0xugERos
         TukQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbzUq8MYiPlaS6VeiZsTHF8eDlbfSsE+OWVEQKd2cg7gpNCLkE4yr/MQDHjErP96nBq+Wt28VorY28@vger.kernel.org
X-Gm-Message-State: AOJu0YzPBNWJq5M25RIqBAQXJw270dC4wpJ0V/ZdgdEDyA5WE5qvzJIw
	UoVUgSJeJEpe/SUXWjnTepEi1IKniMtsV/rdEGR8aSukeBABukJOTADBVfVcX3ALrdg=
X-Gm-Gg: ASbGncthIQX2/UUzN8lh22/cm4In5kVs5J8Ga14opaZts4tA3/37Kyf3yet4rqgdws/
	u4SZFIddejE6EYwc5hRkflEK12dBRpWmYNPckMA8gYI2G6Nr0KfuOVDpKk5Va/Ql8iKUsFCTIue
	dlemvvc3FEVfwuzXPEWeq14dsQIxa5LQPdX77bA0324Ufm2a0ZVJd/BVuMWPRhAdJINqhUUVXny
	PK8+3NlVdGe/5hsS9IzpsQspSX8Ua0HEoCwe4spc8wBoegLXUerlRFwIODoZ/GFmg16JOJT6fyb
	K7ena7pfaZ7LIXhQvvPMG5k6CsWEHOSPnzI+zwJs/C4ZB0mNtHDVeoCrrm4CdMs=
X-Google-Smtp-Source: AGHT+IEOGeOW+PhuQhUWHpeQcMcmiGpwG3vk6rjPFlkV6C76xF/ii0bBJjaE1/tPG81FTngDhnjmmA==
X-Received: by 2002:a05:6a21:1089:b0:216:6060:971d with SMTP id adf61e73a8af0-2188c3b49bemr2223604637.37.1748049955462;
        Fri, 23 May 2025 18:25:55 -0700 (PDT)
Received: from x1 (97-120-251-212.ptld.qwest.net. [97.120.251.212])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2c208eeeeasm195364a12.13.2025.05.23.18.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 18:25:55 -0700 (PDT)
Date: Fri, 23 May 2025 18:25:53 -0700
From: Drew Fustini <drew@pdp7.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Fu Wei <wefu@redhat.com>,
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Subject: Re: [GIT PULL] clk: thead: Updates for v6.16
Message-ID: <aDEgIfYl2f7zcO3O@x1>
References: <aBus+Yc7kf/H2HE5@x1>
 <018214f410632eb3dc6c6bd6ab58cba1@kernel.org>
 <aC+mJ560HbscG38R@x1>
 <655ea20d-ed2a-4727-b7c1-65fd69d3c027@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <655ea20d-ed2a-4727-b7c1-65fd69d3c027@kernel.org>

On Fri, May 23, 2025 at 08:25:38AM +0200, Krzysztof Kozlowski wrote:
> On 23/05/2025 00:33, Drew Fustini wrote:
> > On Thu, May 22, 2025 at 03:24:02PM -0700, Stephen Boyd wrote:
> >> Quoting Drew Fustini (2025-05-07 11:56:57)
> >>> The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:
> >>>
> >>>   Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)
> >>>
> >>> are available in the Git repository at:
> >>>
> >>>   git@github.com:pdp7/linux.git tags/thead-clk-for-v6.16
> >>
> >> I changed this to https://github.com/pdp7/linux.git but please fix it
> >> next time.
> > 
> > Sorry about that. I'll use https in the future.
> This should be kernel.org. I remember Drew we meet few times and you
> never asked for signing your key. Just get in touch next time on a
> conference to get it signed (and bring printed fingerprints).

Good idea. I would like to get kernel.org setup. The Portland kernel
meetup is next week so hopefully I can get some signatures. And I would
definitely appreciate your signature at the next conference we are both
at - maybe ELC Europe?

Thanks,
Drew

