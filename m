Return-Path: <devicetree+bounces-13289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F427DD575
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 18:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA3E91C20C88
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 17:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E15CC20B10;
	Tue, 31 Oct 2023 17:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C696208CF
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 17:50:59 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CD9F91;
	Tue, 31 Oct 2023 10:50:58 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6cf65093780so3891351a34.0;
        Tue, 31 Oct 2023 10:50:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698774657; x=1699379457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6LXEKMIQBHWExNoLzEH7yaoOr9MepvhTk3e16pDybk=;
        b=Xe9aLxvA5yfiE+zGT6OHI3UGLxHMNC5Bp48ddiAD1+fH+G8SGD81RD4ukFISLlWVX1
         5/0sqJWc/yBA+F1i6pDjpMarKDOIsWHuCtJFCsSU9fXVaqHrmtTSVD8vt1jvmBNxGlLV
         09jERYD2HuiopgD3tRqRaXWqqTH8mgiIbcbPMcHN1SqtzM1QrkUVp+bd8aEy10VDyK98
         NdKT5dyLrKBWtA/K8y7nSXyqxtJYbIfnCfTj7g7d2KJQdvNuuXnWm+2a0H1ujSQ5c5+q
         MVboXT0kTOYeOv906GPsQgb8mOsHTK0Rh8nEuS7L1JIr3O4hYnPyAKDhk98DpGfKbJJW
         ymHA==
X-Gm-Message-State: AOJu0Yxq7nd1iW9WW4EqdJQW1HHbUmnL/bj8+/EXTcuNpyPi+gZozUkI
	/xEw9PV/RjHvdRRMKefOkQ==
X-Google-Smtp-Source: AGHT+IF6amwnL96zaqgjWU/gPMPzFFt/FEvX0qd8KigwuyUizv23oH+g+thHN3mTxakQUBWJOkY5Uw==
X-Received: by 2002:a9d:4f14:0:b0:6b7:43eb:c1a with SMTP id d20-20020a9d4f14000000b006b743eb0c1amr13069731otl.36.1698774657634;
        Tue, 31 Oct 2023 10:50:57 -0700 (PDT)
Received: from herring.priv ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id v5-20020a4a8c45000000b00581fedcb06csm341637ooj.19.2023.10.31.10.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 10:50:57 -0700 (PDT)
Received: (nullmailer pid 1803571 invoked by uid 1000);
	Tue, 31 Oct 2023 17:50:55 -0000
Date: Tue, 31 Oct 2023 12:50:55 -0500
From: Rob Herring <robh@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, loongson-kernel@lists.loongnix.cn, devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org, lvjianmin@loongson.cn, WANG Xuerui <git@xen0n.name>, loongarch@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: interrupt-controller:
 loongson,liointc: Standardize the naming of 'loongson,parent-int-map'
Message-ID: <20231031175055.GA1801059-robh@kernel.org>
References: <cover.1698717154.git.zhoubinbin@loongson.cn>
 <dc6621dd09b4710c66140b830d0b345682c7b707.1698717154.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc6621dd09b4710c66140b830d0b345682c7b707.1698717154.git.zhoubinbin@loongson.cn>

On Tue, Oct 31, 2023 at 10:36:36AM +0800, Binbin Zhou wrote:
> Since the 'loongson,parent_int_map' attribute naming is non-standard, we
> should use 'loongson,parent-int-map' instead.
> Also, 'loongson,parent_int_map' should be marked as deprecated.

While yes, '-' is preferred over '_', I don't think it is worth carrying 
support (here and in the kernel) for both.

> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../interrupt-controller/loongson,liointc.yaml    | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)

