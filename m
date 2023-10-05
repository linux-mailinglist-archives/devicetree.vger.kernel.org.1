Return-Path: <devicetree+bounces-6190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB897BA34F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:53:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1F873281E86
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E329630D1A;
	Thu,  5 Oct 2023 15:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wVeMFehN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A00030CF1
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:53:27 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36748B3D26
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:53:22 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-405417465aaso10797795e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521200; x=1697126000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6on8ffrySqAq/m4pO8p/bA0nUIKSyU+b6e/OY+Ah1XA=;
        b=wVeMFehNrHMRF7txWmenooN/FK0UpDQPW38MGKa/H9FeFFUi+TS3wS5C9SXL3DgdC4
         EsvmEMEi+EFUJJtDeDkcQtn3tbJJCtT5xKfR5IdwyXltbxnj1MlnDm8wvD3IcRcFCRQE
         UI9pz3VjoYwHU13XHLU82MP17gtRacqVstUodiGh5E16/LBMDi0ND6NhCjWuozKdJP9T
         huNEs0CmSsfPAN9V7w/dEnChSOgHx4nc9o8WUtHHWvox+wrNVsN2aQTzSv2TXyWo6ey2
         84OlViM6xNsA2kd0wh3jM162Elqr4UT6dx4c1VdolAQOlLpMnuBMCtmFK7lVthVVYwLh
         WkFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521200; x=1697126000;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6on8ffrySqAq/m4pO8p/bA0nUIKSyU+b6e/OY+Ah1XA=;
        b=hf19bJQSMEa+s3H9+eOVHL8VaGYmj1ydbDmMslL+scKs0uI4aZAKdYnVDGxhlO33Ru
         i5WWRD6pO9eSjIRkee7RLSoz4PUZLlQ6+F5wvZHOpybuK86rw4lCfFfki2/oYmvjoDGP
         MS1Vdi967Ypr+6EtGUvHuSbspm2/50X1xzNx1naMvRgB9HpwgkzAS2B5Q2gQZqrVK6u5
         qAgJlXEGpPqqlXvxnqU9dpM+Ei3uynthpuE1ZgF/20q1hy+D+njD+KwMfjNFFTpS3O6e
         q419AanyEcOBqyqzIpI546C4D+tRjafeBamIoXPhBJf+BdS7ZijWC1mVeGDDRVCsLEnf
         1Ntw==
X-Gm-Message-State: AOJu0Yy5sNVO3p6GOesg8LoOZgZAOjp3x4iaipZz/UlPZrdv0IIVmxu8
	6SfOUW3/XTziH4JtoiswUwzVNQ==
X-Google-Smtp-Source: AGHT+IGGeY3ThKEEt2JmsAquN6pbjtqahVAImq5gq47rbdTM/UI+nWpdZQeOUKarnDKT/gIYk/3Q/g==
X-Received: by 2002:a7b:c8d6:0:b0:405:3803:5588 with SMTP id f22-20020a7bc8d6000000b0040538035588mr5204388wml.22.1696521200000;
        Thu, 05 Oct 2023 08:53:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q15-20020a7bce8f000000b00405391f485fsm1777093wmj.41.2023.10.05.08.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:53:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, conor+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, 
 airlied@gmail.com, sam@ravnborg.org, Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20231003163355.143704-1-macroalpha82@gmail.com>
References: <20231003163355.143704-1-macroalpha82@gmail.com>
Subject: Re: [PATCH V4 0/2] Support Anbernic RG351V Panel
Message-Id: <169652119904.115752.1507145837573801131.b4-ty@linaro.org>
Date: Thu, 05 Oct 2023 17:53:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, 03 Oct 2023 11:33:53 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG351V panel. This panel is mostly
> identical to the one used in the 353 series, except it has a different
> panel ID when queried (0x4000 for the 351V, 0x3052 for the 353 panel)
> and will not work without the inclusion of the
> MIPI_DSI_CLOCK_NON_CONTINUOUS flag.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: newvision,nv3051d: Add Anbernic 351V
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=1b063368ee71f252c5a7f86e100b3b67271608ae
[2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=eba90a7aa2258cae4caeaa8f748506c315c30bd1

-- 
Neil


