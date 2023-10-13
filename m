Return-Path: <devicetree+bounces-8587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E44857C8DB7
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 21:22:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDB36B20A5E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC52D224C7;
	Fri, 13 Oct 2023 19:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e1T8v0LC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3F721A0A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 19:22:34 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26476C9;
	Fri, 13 Oct 2023 12:22:33 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-405497850dbso25118175e9.0;
        Fri, 13 Oct 2023 12:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697224950; x=1697829750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kye3A1Yvs5J4Iww0la3AMmDBB+iCND6AhkOM5t1F0VI=;
        b=e1T8v0LCmnb1q9BkjSbXHsudOVsm1t3cXrYbsN+lIH/YeX6qrE8qwOprrSCS6e3F/b
         IiO3D64B/va3eajoiEzFFNRQLSerAo2GPs7HdAhQBnAqmqYG/zb65CiFtoU9PbJw3PTE
         P7ZE9zZBB5acl92KR+rXmKzKjvoRoCRELivSdmg3Yw9w1MwPN1pliCM4ri31z016DLKH
         IK6TzCGV+Wd1ev7TC4LDJTDvGJBzvJ926uLX8QO8w1nPayJvh7NObfG1FqZcmHo2SUeQ
         sct85+k6hiowR1acw63DIr+lFFyR3TiBev1onhm3la4Utqv/ZbqhzNMS0rPaq5F08Dh5
         0EBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697224950; x=1697829750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kye3A1Yvs5J4Iww0la3AMmDBB+iCND6AhkOM5t1F0VI=;
        b=N18TNBUPoDKJt4V+LzQoYuXZee/Ggfnft6DlGzpy3rmGO776IpiFmIkH9WR8RjnTKV
         UwQ0lBlmMxBLf6OuIiVUIhxeESDuLS4gRJefyyYrEIlEsr2z9OffNsF1d8tZ8bgmnuGR
         AHPmFeHaqjEBK2GgQ/4tuaC+xewKsEkiOWcryYcoIpkPg/VEaO7h5PwLW/whoZ1UdYC9
         f+U3Nl9CjkkUDbG8O7CQuxIPXXNZUUstZSRzEuJwJfFV8Wm5S42qz7vJ2Ty42Y5KwVD6
         B9HEaACzZpYPo9cwCylNTNZbWYYqxFPk/OancLxzgzIlUAXViHjVU0fU/7YvM0X8+PHq
         1VcQ==
X-Gm-Message-State: AOJu0Yye3Q18D/m/Zwrz7CLcrUqQonuwUeK8+uwRcl6K94karjqF2fDR
	mHcz33gxcGzmMEmD8Zxy/Z0=
X-Google-Smtp-Source: AGHT+IGajdHE3PweJdvXSQ0yret8uEjGOtFP2vrw3G3CEj2ABtyBTVw14FyU6Qk14fADJaWQKUMP0A==
X-Received: by 2002:a5d:5391:0:b0:32d:9d3d:3025 with SMTP id d17-20020a5d5391000000b0032d9d3d3025mr1851163wrv.26.1697224950584;
        Fri, 13 Oct 2023 12:22:30 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id i2-20020a5d5582000000b00323293bd023sm842831wrv.6.2023.10.13.12.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 12:22:29 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-riscv@lists.indradead.org, Conor Dooley <conor.dooley@microchip.com>
Cc: conor@kernel.org, conor.dooley@microchip.com,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>,
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>, Chen Wang <unicorn_wang@outlook.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-renesas-soc@vger.kernel.org
Subject:
 Re: [PATCH v3 5/6] riscv: dts: allwinner: convert isa detection to new
 properties
Date: Fri, 13 Oct 2023 21:22:28 +0200
Message-ID: <3766810.kQq0lBPeGt@jernej-laptop>
In-Reply-To: <20231009-moonlight-gray-92debdc89f30@wendy>
References:
 <20231009-approve-verbalize-ce9324858e76@wendy>
 <20231009-moonlight-gray-92debdc89f30@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne ponedeljek, 09. oktober 2023 ob 11:37:49 CEST je Conor Dooley napisal(a):
> Convert the D1 devicetrees to use the new properties
> "riscv,isa-base" & "riscv,isa-extensions".
> For compatibility with other projects, "riscv,isa" remains.
> 
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Applied, thanks!

Best regards,
Jernej

> ---
>  arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> index 0856f18dc3cf..64c3c2e6cbe0 100644
> --- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> +++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> @@ -25,6 +25,9 @@ cpu0: cpu@0 {
>  			mmu-type = "riscv,sv39";
>  			operating-points-v2 = <&opp_table_cpu>;
>  			riscv,isa = "rv64imafdc";
> +			riscv,isa-base = "rv64i";
> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> +					       "zifencei", "zihpm";
>  			#cooling-cells = <2>;
>  
>  			cpu0_intc: interrupt-controller {
> 





