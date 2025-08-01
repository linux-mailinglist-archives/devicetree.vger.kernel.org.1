Return-Path: <devicetree+bounces-201219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E64BB17CBA
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 08:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70F33164B62
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 06:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997841F2C45;
	Fri,  1 Aug 2025 06:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yFYtcW0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1154433987
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 06:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754028160; cv=none; b=dI76+ametrSyvfxL7BL6Nra/EhYGwt20SDLz/1E/TREpT6SAHpO34wYUQ/Nd9j41yrKwnIb1hIcXwMEtGrZdvrBJ3TJddYCqQO5g/5dAcwPycZs7ZjztUiQ76/Zv4t5IE4FSh6/XB2/FLjQ5I4ud8KOENGC9PG5x7Vb1ZJPPTxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754028160; c=relaxed/simple;
	bh=//2vQw+cUbGbrW44zq/SOMI+CYziL7FvtoNZUM7AIYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ksKiZd4l4vYVK1xS7yOo4xkbBAqXqtLdM75nP/Cx0lMtpxpBWc3mx8yFmxuTtnJgh9mRf0d/gq63/sCNDbhR0CO10MmcblBrkqRHRYhJyO+v0LLtM5B2LfLcOO95IVv/xpHK0hjCUYM5bcldEpv1QgkzthRVhOpzRdkRSNCuASQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yFYtcW0H; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2405c0c431cso18095185ad.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 23:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754028158; x=1754632958; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YLSiyGnrFJyz6l0vLF59aMG7JUJUfV+my1hPfRT96tU=;
        b=yFYtcW0H0UbjIL2EGSJ8SY+jLEt5wI96yZWZcuXeafc7PhMbLCwVZzMrhjibImZhKU
         RXxPkKssX3ahSdRc9d2ogFq3XubdAfbwn5KjdhnI3sqTE00FUhsqmxNyPhOX+3As/t9v
         t4k2W0Ni9jeypEotmIBy+4ZsidHhey5w+Gvgnb1My6JHMYy6gPtz6Rw2wz/r0uleG0iA
         034jys8xhacOrt2cf1syZ1K6awS1F6LbfeMJ2g3cqxhbWro+VRehenn/FqMne9mjRrMT
         moFAiKw+/DNuSs2PUqUQHfla6IQJOApql4AoiKR4CFnbwkWL5YCoDdLT2mogiHU9MTrA
         z5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754028158; x=1754632958;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YLSiyGnrFJyz6l0vLF59aMG7JUJUfV+my1hPfRT96tU=;
        b=gEEoZXUCe60Dfw7Db/5g0urWMkOEwp9fEPXyyMCaue8T8wN72v2btPmsVHG1Y6mawI
         YqgW8YyG9WOQi4ZPPJiibwFTO74v92bt8V0KBXaVjJERADsWIv/lwgYba/C7xwQFoPhD
         qF9iMoUjZwh8dw8K9GiZghnTRccFnHxVw/QfTPqqTzV91plwgggdGrTgnA5odISfbuSf
         Fd6XvGAt4Q/uprYshon+KCljI9bl4ssW6s/jsqI1HIM3GeGzp8E2PcXG83hCa/7vm0Wb
         Ro/oLOzrpdtF/uqNH5dg+g/ENDaKzSzrgJooPwARgPiI2I6AX21nmZSg6Tvnx9bSpYIx
         Q5cg==
X-Forwarded-Encrypted: i=1; AJvYcCX/sIaOKdsORlK57xjsRhWMApwv1+dme76czuF2v3WF2aaGQi+FOgGit49udyJJ/YJOsW9hfYsCAcYb@vger.kernel.org
X-Gm-Message-State: AOJu0YwXtUpBR5uUokdHvTUlJ37l5Mo6A4TzBlI2R1H0RcOKv469De46
	UnILafUKthr84Z7+MbQQXl+87OOv3XLaUxxFdejnWE620DmInhHsh0qDwlIFRgZyEJQ=
X-Gm-Gg: ASbGncs9BQwadsQCpOHHfT5t3NVK40ABVB6xvbf9Nd5ZOoSR8lJM8QTwco6VUdNEtk5
	xocE0cViv4vcz44EglT1tonoaBoPTYsS5pSTtaTjgnd7wY+R9ukIYXIHi6k7wzkhNGgByckXXJQ
	IvByiudERXD1XH03IdQPb/Ihp2SR4fiY0+iy1QpNWOb43m6Dn9viEtBBX1vbV4uFDvJNMIRrn5H
	B8g4UWSDJEbjX28IxFK1kqk0ttLTYl9Nc9Er5LN2P/59Ybe1/kfjdR5VkCrpYjPWXIgfD8mGVaY
	UUi7y2r6HayfLNDffberi6iKzWyuVee8IgXSu/dL04pPq0vQNK/hNUlkOEOY8SRraKic9nSmBDS
	6Y8618TAZ5/xVFAk+v95uucE=
X-Google-Smtp-Source: AGHT+IG+rKm59m6f7TtpkJkR7eXRlTess2vFcE5Gxxpl8KSw3MlEUn76oh5vAQyq+9JPBKJ01jTdYQ==
X-Received: by 2002:a17:903:198d:b0:23f:b112:2eaa with SMTP id d9443c01a7336-24096b23962mr151086215ad.41.1754028158240;
        Thu, 31 Jul 2025 23:02:38 -0700 (PDT)
Received: from localhost ([122.172.83.75])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8977345sm33273115ad.108.2025.07.31.23.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 23:02:37 -0700 (PDT)
Date: Fri, 1 Aug 2025 11:32:35 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
	Bill Mills <bill.mills@linaro.org>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, Sudeep Holla <sudeep.holla@arm.com>,
	Bertrand Marquis <bertrand.marquis@arm.com>,
	"Edgar E . Iglesias" <edgar.iglesias@amd.com>,
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [RFC PATCH 2/6] of: reserved-memory: Add
 of_reserved_mem_lookup_by_name
Message-ID: <20250801060235.coascv4ynfmlzbqt@vireshk-i7>
References: <cover.1753865268.git.viresh.kumar@linaro.org>
 <feb4591cc48c70f9790c3f4d37c149fc336c3110.1753865268.git.viresh.kumar@linaro.org>
 <b32b9698-0254-43b3-8109-ee8e37482bae@kernel.org>
 <20250730105744.w5arednoluxufvio@vireshk-i7>
 <462402ce-22cf-492b-bc40-bd9dbc3a2f16@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <462402ce-22cf-492b-bc40-bd9dbc3a2f16@kernel.org>

On 30-07-25, 13:24, Krzysztof Kozlowski wrote:
> I am speaking about coding style. It's explicitly requested to use only
> the full constructor syntax (see long time Linus' remark or just read
> cleanup.h docs).

Ahh, I wasn't aware of the interdependency problem. Thanks.

-- 
viresh

