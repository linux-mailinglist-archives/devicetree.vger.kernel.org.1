Return-Path: <devicetree+bounces-6404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6677BB36E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8C48281F60
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 08:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E2F1FDF;
	Fri,  6 Oct 2023 08:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kp5+Uha7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99026386
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 08:45:07 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F89B83;
	Fri,  6 Oct 2023 01:45:05 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9ae75ece209so352471666b.3;
        Fri, 06 Oct 2023 01:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696581904; x=1697186704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PiQG9eB+81jnnKh5yBXb7DYjjmAPfSYQYgGlMxFuycQ=;
        b=Kp5+Uha7qWwlKpAiIeTeA0zBoHwgd2BmOHRaCFW+WwCP+1lADq/WweqfkH9Cics/fK
         8MEo/z7TABDt/edznmniuSZ+ao11TkYUSbdEHwa6oTOiA46ygrecH25FffRb6xG6Lg7B
         iJ3zwHZZm5Dwj8gQSpg7pr7TX3H+bOXOuL98E5A7oxY2xNd/n1Wvj693akD5/Kf0DevU
         OyaJQcMtYYVVi8TKsQx7AG2WWJKiKq669ftpmi8Gv1nMe5T9tMC3adN/KAiLRZ1aZQ+8
         krMCb0qj7LigwBH1WnNsmrrpphLZkJ9AqkGjeYFz3EnqeUI8BRQmMQ0hJvOWFXNoyJmJ
         byqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696581904; x=1697186704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PiQG9eB+81jnnKh5yBXb7DYjjmAPfSYQYgGlMxFuycQ=;
        b=ef3xPd1XMm2RiNI0eijP5CGcMjbtSal24QYvDJYk0EASvuDQPkFoQt8tWJeLaF07DU
         Nbelih9qLtRi/u9QnU7u6sVFikGLVMaTOa+grwubJ1QdsLAWVRbMUqGJ762ph3Q9VHu/
         A1qC+87XeCGimR0cmtrBthVgcI5DRAvAVPXe/JDwsWGHIFPqIo2glECoPkpTneob8QdK
         UxmP7Ap9XDsxjPpdj8RbYUJ+bGYrrpZ1xRk56C4z3XfkOZL9eIhIwvgj/+gd7eO2U2XH
         fyokOcg83Tm0fm3e/TPaz9qcBwad41lugp9Jws+bj8diQA3A3hVxVPM8rc6DGJ9VdXYz
         BVFg==
X-Gm-Message-State: AOJu0YzpgpYIY+nYmS503Oj471rkY3mZrwl2xkertcATtxmAjtWbOYB9
	JrQgAT/feyUtoQY/gNgnlDk=
X-Google-Smtp-Source: AGHT+IG7gav62CWXqgxy3Oc+Bt9zEBpNR9pS09uNaXeA3kHMd6ruw2I+CKCVmI2UXUURkmYPneMOlw==
X-Received: by 2002:a17:906:8a71:b0:9ae:3d75:4c83 with SMTP id hy17-20020a1709068a7100b009ae3d754c83mr5879512ejc.0.1696581903844;
        Fri, 06 Oct 2023 01:45:03 -0700 (PDT)
Received: from localhost (p200300e41f3f4900f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f3f:4900:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id gr22-20020a170906e2d600b009b2ba067b37sm2467713ejb.202.2023.10.06.01.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 01:45:03 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: shawnguo@kernel.org,
	Fabio Estevam <festevam@gmail.com>
Cc: u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: pwm: mxs: Document fsl,imx28-pwm
Date: Fri,  6 Oct 2023 10:45:01 +0200
Message-ID: <169658188181.78451.16194002929003687751.b4-ty@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230922124229.359543-1-festevam@gmail.com>
References: <20230922124229.359543-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Fri, 22 Sep 2023 09:42:27 -0300, Fabio Estevam wrote:
> imx28 uses the same PWM block that is found on imx23.
> 
> Add an entry for fsl,imx28-pwm.
> 
> 

Applied, thanks!

[1/3] dt-bindings: pwm: mxs: Document fsl,imx28-pwm
      commit: c3c653422a265a3b5dfdf8567eebd5116311c36d
[2/3] dt-bindings: pwm: mxs: Document the clocks property
      commit: 42b9116ce12579692ec18ad9446ea5ad832ea0ef

Best regards,
-- 
Thierry Reding <thierry.reding@gmail.com>

