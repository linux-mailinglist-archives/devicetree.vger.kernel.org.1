Return-Path: <devicetree+bounces-32072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E2182DC80
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 16:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C7201F22584
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 15:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D09717744;
	Mon, 15 Jan 2024 15:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="in4w1tCh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC1A17BBF
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 15:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a2c67be31edso479417866b.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1705333283; x=1705938083; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IoPBd+9cqFRLXfeae6ug1abvNfzBQzrAtdxiFLBULy8=;
        b=in4w1tChfAKwkV+SbJJHCH7kBtKUxUL1R/zgajr+9q+bNP8HvT05ND7kP+cUAYWtVU
         fOlZqR+UsyIlHfk42uvTVHw5593d7qRrdE4sBo2BVAl8j2qj4cS957JEbOKzZS1ibibi
         qrnfB3rMUxdwVdcmNXD5g0jrGR4mA065/vnSkyo1H39KdjiQ9+k5oUJ7kWIODPzPLQtI
         K+SWVWXJwBeVnzfpPjKkmG6xcQoe9wLQOkwLIzFSCBVQdQg8zlPja9hpRaNNYqZ4MYKT
         ZNPdNtzMI5/HCEeCXZUMdZDnP0Zt6lWoGGtvncFKC36rGdln+O2qMjn2iKVacRFK3+6d
         KUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705333283; x=1705938083;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IoPBd+9cqFRLXfeae6ug1abvNfzBQzrAtdxiFLBULy8=;
        b=C+JUHr4hfeExq0GT5N+To0pScK7wZiwiHaK2XgpZnP3gb7TLgBMbGo9rmOvzXFWqA6
         /PzOZ1yE5iT31h9PrwglTiGv3MgUgZgzH634LO+RZMokKudJ/vDL6QzO7w/SnmzbO4OJ
         zXaoao4rS1MV+VpipGwCGcK92CqSkTx7TLZJsOooplTB4B4oS+Ta6/0x+hJPIEYqJnXy
         O1JNXIzMbXS1Q0IIMIQysAPz7yrcc2nXf42qX8BY4klTrHcC5K8n1U2E96MTFVz95q2t
         FV+Uisca+tAfMexxOEKP2OdwSM/7BSMgo34U04ZV0rsEWGLnYBJk0dVlnqRLrUTKseTv
         QS9w==
X-Gm-Message-State: AOJu0Yw/ZWv13PVbGxtCQq8aGxySe2h4Dxz6LDW0wZMRj1rtqYODOPU+
	jGRK8WLqvUTdq+yLRXbOjgDE7AQ6puXvaA==
X-Google-Smtp-Source: AGHT+IFKkPeCi7wmzN9qV4FM3v9RTTO3ePVJwXYR2KVsSk7g3fKbnojc19QbqZiEL00Tk7sLG0iIGA==
X-Received: by 2002:a17:907:20e3:b0:a2b:2615:25d1 with SMTP id rh3-20020a17090720e300b00a2b261525d1mr1367400ejb.90.1705333283455;
        Mon, 15 Jan 2024 07:41:23 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id v24-20020a1709067d9800b00a2a4efe7d3dsm5425091ejo.79.2024.01.15.07.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 07:41:23 -0800 (PST)
Date: Mon, 15 Jan 2024 16:41:22 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Shuah Khan <shuah@kernel.org>, Anup Patel <anup@brainfault.org>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 07/15] KVM: riscv: selftests: Add vector crypto
 extensions to get-reg-list test
Message-ID: <20240115-8ab964d5a932bc2c5d9da188@orel>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
 <20231128145357.413321-8-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128145357.413321-8-apatel@ventanamicro.com>

On Tue, Nov 28, 2023 at 08:23:49PM +0530, Anup Patel wrote:
> The KVM RISC-V allows vector crypto extensions for Guest/VM so let us
> add these extensions to get-reg-list test. This includes extensions
> Zvbb, Zvbc, Zvkb, Zvkg, Zvkned, Zvknha, Zvknhb, Zvksed, Zvksh, and Zvkt.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  .../selftests/kvm/riscv/get-reg-list.c        | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

