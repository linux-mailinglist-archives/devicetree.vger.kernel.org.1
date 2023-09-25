Return-Path: <devicetree+bounces-3194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 358817AD9E6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 20B0E1C20403
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A4451BDF2;
	Mon, 25 Sep 2023 14:16:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B021BDE5
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:16:15 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B7FACE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:16:13 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-52fe27898e9so7758693a12.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695651372; x=1696256172; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NtHT6aiMIDBr0VhsvuAUelOWNt+yCga/yEkC3vej9HA=;
        b=DRDrjOTcdt6DhF5MyxOpP2MAcZi+3g6VF2dvO3kILu+kjJVYg6QPGucwTrEykKtthL
         jDBzUusJ0zcgu2C7wNU+kDziyy4qjdH3BQXFAwkK2sCpgRvU7dG8btmyA/x/qabRJnzh
         ZKP+AgFSNr7KFIXzzegzQynfJVzzeJHa5syMjEROweQWMJW+c+7N8g1Ve+R5ZxK/zlIl
         ThxSmpiu79PVx0xy8JXa89Ntwxsd2LewnOg1Jo35v+/2zHRaDU6NJteO3atZ558cJhAX
         f1hWCK2Z7ebyl5HR7zsHl+XcfK6BnjTzfL0b4SEXSQ6lDPI5YCeBzDBXR7Xrmjq0pwox
         I27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695651372; x=1696256172;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtHT6aiMIDBr0VhsvuAUelOWNt+yCga/yEkC3vej9HA=;
        b=CQdMz0HmEntvzaon27O9O57nZTAWJeKRykSYkqMg/mc6pOtw5lWa1zJkxqHeVsi5eg
         o3lZKpBrLOVVjmw1Emz+NRHsj3pq7gnOq3NCN9sJ3oHviP6bSFE8zKfVd5rt6SAFzo+T
         cBF1tD5UqRD+Fzu2UC2tdHuoLH1W+P9ocvB7IXp60UTngPlzfknP/9JtPrPxqoPw8ycf
         l+bKdVEnJKyeFqtbyakYAlVs4uwQ9JTQsPoI+PbEk69tvGArpEQWE7En0UZT29kWx1A6
         r1uMjFWb0R1O+nEtEsouHV5UHLHH2Szhw+/8GyWcnhR/8Xc/YKWm84B+yaRL1gwy6bto
         b0PQ==
X-Gm-Message-State: AOJu0Yxp7xRu4+eosP2Fdxns6bWytOzxHH9EguhoIW2/moclqyLZuu2w
	S4dXkEN4IW0GI2g4EWxuirrL0Q==
X-Google-Smtp-Source: AGHT+IFD3EpGZBsAbJ+J5vxX8ZTKeYXM/hyB7APD30MTz1CFpgRcVl20BIQ92V7DyV6X8ncqPzNWDQ==
X-Received: by 2002:aa7:d1d0:0:b0:530:a0a9:ee36 with SMTP id g16-20020aa7d1d0000000b00530a0a9ee36mr5827166edp.38.1695651371793;
        Mon, 25 Sep 2023 07:16:11 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id q6-20020aa7da86000000b005307e75d24dsm5531414eds.17.2023.09.25.07.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:16:10 -0700 (PDT)
Date: Mon, 25 Sep 2023 16:16:09 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 9/9] KVM: riscv: selftests: Add condops extensions to
 get-reg-list test
Message-ID: <20230925-3ceb6ef98455349935bcd504@orel>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925133859.1735879-10-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925133859.1735879-10-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 07:08:59PM +0530, Anup Patel wrote:
> We have a new conditional operations related ISA extensions so let us
> add these extensions to get-reg-list test.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  .../selftests/kvm/riscv/get-reg-list.c        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

