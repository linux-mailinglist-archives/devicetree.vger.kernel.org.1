Return-Path: <devicetree+bounces-6805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6096E7BCEB3
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 16:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E620428178A
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 14:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16A0FC8E8;
	Sun,  8 Oct 2023 14:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZaF7WLva"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 819BAC8C8
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 14:01:29 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 165218F
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 07:01:28 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50435a9f800so4782995e87.2
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 07:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696773686; x=1697378486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PSMUdpgtTg04OpFZxfxSUvT4pwJGZAYPeTOexRIr+Ds=;
        b=ZaF7WLvaSTRCyOqPouUAV/H36xzPfWUriPc01EHczkl4v1Dj/+6MKx/9Bsxl0LIJAZ
         +oF2jlhvAJgw+J9jyipad4J090HJTUq1MfOlFM5dpf4IRnxlksS+GsfaSLj9VDoMaXlz
         IW/eKNdCmjMMaRSTRF3f7E/oVAl2pmhNb7lTIOY4pb3w7grcNrNxsMDQLbPdvb+N9Igr
         868V70ZH7LgZCw8z83IJxNjoh+UfnCQThZmDk4qApOog9VX53pq2oAL/J5+qieeurVgf
         vRIcodLPxA7qZIaV0sNbXKSTN+2TBw3xpPUaAtA8MjELvxM/e6W3gB8XTe4+gLjuRVio
         P9kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696773686; x=1697378486;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PSMUdpgtTg04OpFZxfxSUvT4pwJGZAYPeTOexRIr+Ds=;
        b=QRvA6T5nIFomoN3Ol9PeZuje7A1N1IFphoTrnA6Sq1h3rfh13cVx8M8PTHla4qGxKw
         HG+gDQ9hUvo3HRK7fim987UAuEhXv7nIWPfay9m2D55R/6IoItAtmA6ObEtQXxZh/h8m
         Gdq3jnjz7KLH97LwWuJAdeqamb+jCBPLbcfCgzzLsukxQ/qp0QSA/5sczI/oyx22URTv
         n6oPPq6nSB3XIaabuND8GDEk6W8UDdrR5nDSymtG6iFque1RZgU0ZActlKQ/x5z8n0WM
         W1u0AGyYWvCq0PjHkRd+trRzCJYEka6QJKkNlYrhNHaKdrXtAKPtbcjdVvMggoG6HDek
         /Dlw==
X-Gm-Message-State: AOJu0YzUANlQ5R26yuqnOBhJseVEtCfWmFpC+ZT/oWYe3aTqk+fkSx99
	gzsmu9Ogh6m8lZUUBDXv//VE1g==
X-Google-Smtp-Source: AGHT+IGxfVDd6z3b4aL3PVKq8C7Mjb21gUGAEM9IbcbsGG5OCtfSfwwara4kEgcUl8RPGr9RfAl4FA==
X-Received: by 2002:ac2:4a81:0:b0:4fb:8585:eefe with SMTP id l1-20020ac24a81000000b004fb8585eefemr9557457lfp.57.1696773686418;
        Sun, 08 Oct 2023 07:01:26 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q14-20020ac24a6e000000b00504211d2a73sm1080455lfp.230.2023.10.08.07.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 07:01:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: msm: Add missing unevaluatedProperties on child node schemas
Date: Sun,  8 Oct 2023 17:01:17 +0300
Message-Id: <169677325602.2570975.10339984139706350311.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230925212434.1972368-1-robh@kernel.org>
References: <20230925212434.1972368-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Mon, 25 Sep 2023 16:24:24 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> 

Applied, thanks!

[1/2] dt-bindings: display: msm: Add missing unevaluatedProperties on child node schemas
      https://gitlab.freedesktop.org/lumag/msm/-/commit/08bf97ab16f3
[2/2] dt-bindings: display: msm: Make "additionalProperties: true" explicit
      https://gitlab.freedesktop.org/lumag/msm/-/commit/55bbcadccdec

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

