Return-Path: <devicetree+bounces-6160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A687BA0C4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0687B281A6E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3466726E09;
	Thu,  5 Oct 2023 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IN4d99Ap"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00F82E627
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:48:58 +0000 (UTC)
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B0521A2A;
	Thu,  5 Oct 2023 07:48:17 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1dd4eed487dso659376fac.3;
        Thu, 05 Oct 2023 07:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696517288; x=1697122088; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QFHmzKPqEL1IkLNEOF7MGTVK5JnE7Z6AEnyd82Qfqa4=;
        b=IN4d99ApaeKhBZi3NAetUfmoLG5KmXvmfABB9WW32txzsL4D/l3F2JKjfyDgOOnAxu
         ibzu67t8DZ0cFs5V/upkwz9mqol4vrLAflxu6YqKu9n+zTqtVHh1SYH0O65dHUe3odsA
         353ry3wpSIKj8Vjho6tx6zz1X6cQlsix03gdPQWWdG9vMSSNdG/HNmrgkZNZSB7Oj8rc
         dnOj3hgUx3TcwAKHM97cUaRC3HwD9moVG4bzKcN584/gnYp0eBVXYIpeTTKesseSIK8M
         gkhK+hRBpoTiNKoe+Who7qmrRc8BTcoO8aNdaOaC/QCezQO1O78wBt7pTmD6wFNONtpB
         VP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696517288; x=1697122088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QFHmzKPqEL1IkLNEOF7MGTVK5JnE7Z6AEnyd82Qfqa4=;
        b=H1Kea3iCd8JD/NWmacEJ6INufvMFQbvbOZRXQAxEdD+pFYo5rcrh5lKYkuXAeveAgZ
         EziREAfl5flJ3Ixx8mBjglAvaLfGXPOCWbe+0h0t2eZujb8J23kcDhw+aFebww2jeNYn
         Ty+tHItNxphyZH/H8qTr2fsFMqbB7X+THGIZJ3+AwpDJip+UvXnF4z9I+YwmS+50kxOp
         ZuxD50yTEHDOshlIsqWJ5vZc3AqnTKk+C0HGYi5USG0B/uLDHQtdivf6UsKGqoZc4Xsx
         zGypLj1Ut2HjWWzq+LO66p8HdLObSnfa+Yu4cObqIF6cdsAQoe7lbnj8Hw6whN1LdBxV
         Bang==
X-Gm-Message-State: AOJu0YyQfsVVZ56UPb2dp6mKKcgup1CLaX7nU3oFIgOPxLzKtngBlo5p
	+XUtGLoMZpTbdVqXLwDfBwylzOO5cxxOn+W8AyapaNizXnY=
X-Google-Smtp-Source: AGHT+IGnl1Pk7F/KSz2dgwrjyZeemiswBz/QKHtQVnyuJ9bOGr3K8xBX7W4X5wPWwL53ZMV2OLDF463z8mdIe93OPA0=
X-Received: by 2002:a05:6870:5ba6:b0:1bb:9c27:c7e6 with SMTP id
 em38-20020a0568705ba600b001bb9c27c7e6mr5704458oab.41.1696517288135; Thu, 05
 Oct 2023 07:48:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004161038.2818327-1-gregory.clement@bootlin.com> <20231004161038.2818327-6-gregory.clement@bootlin.com>
In-Reply-To: <20231004161038.2818327-6-gregory.clement@bootlin.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 5 Oct 2023 16:47:57 +0200
Message-ID: <CAMhs-H9Y=7j04mienYdqCPJYFrH9ms6UarbtVzEDFzxwSPuLuw@mail.gmail.com>
Subject: Re: [PATCH 05/11] dt-bindings: mips: cpu: Add I-Class I6500
 Multiprocessor Core
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Paul Burton <paulburton@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@intel.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 4, 2023 at 6:15=E2=80=AFPM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> The MIPS Warrior I-class I6500 was announced by Imagination
> Technologies in 2016 and is used in the Mobileye SoC EyeQ5.
>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mips/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

